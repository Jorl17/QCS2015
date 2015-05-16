#define N 3
#define MAX_ITERATIONS 1
#define NUMBER_RESULTS 5

////
// Every single line of code in this document feels wrong, useless and, quite frankly, stupid.
// I have no idea how to formally verify the proposed voter in the context of the proposed problem, and the more I
// code the more I feel that I have learnt nothing from the classes.
// Now, more than ever, I know I don't understand anything related to formal verification of programs. I
// simply cannot understand how can one implement the given voter in a way that will allow us to actually state that
// the given voter is correct in a formal way: I feel it is impossible to assure the correct behaviour of our voter
// based on a model implemented in Promela, mostly because I cannot understand how to formulate this model according
// to what was taught in the classes. It simply does not make sense to me, it feels wrong and useless.
//
// Joaquim Leitão - QCS 2014/2015
//
////

int results[N];
int cardinalityResults[NUMBER_RESULTS];
int processTimeout;
int hasEqual;
int maxCardinality;
int maxCardinalityIndex;
int voterResult;
int currentIteration;
int i;

inline clearVariables()
{
	for (i : 1 .. N) {
		results[i-1] = 0;
	}

	for (i : 1 .. NUMBER_RESULTS) {
		cardinalityResults[i-1] = 0;
	}

	maxCardinality = 0;
	hasEqual = 0;
	maxCardinalityIndex = -1;
	voterResult = -1;
}

proctype H()
{
	int myResult;

	////
	// Select behaviour for the WebService:
	//  1 - Correct Value
	//  2 - Correct Value
	//  3 - Correct Value
	//  4 - Incorrect Value
	//  5 - Incorrect Value
	//  Otherwise just block
	////
	if
	:: results[_pid-1] == -1 -> (false);
	:: else -> 	select ( myResult : 1..5 );
	fi;

	//Store result and increment its cardinality
	results[_pid-1] = myResult;
	cardinalityResults[myResult-1]++;

	printf("[%d]Retornei %d\n", _pid, results[_pid-1]);
}

inline callWebServices()
{
	////
	// Decide which WebServices CAN have timeout
	// 0 - No one has timeout
	// 1 - WebService 1 has timeout
	// 2 - WebService 2 has timeout
	// 3 - WebService 3 has timeout
	// 4 - WebServices 1 and 2 have timeout
	// 5 - WebServices 1 and 3 have timeout
	// 6 - WebServices 2 and 3 have timeout
	// 7 - WebServices 1, 2 and 3 have timeout
	////
 	if
    :: true -> processTimeout = 0;
    :: true -> processTimeout = 1; results[0] = -1;
    :: true -> processTimeout = 2; results[1] = -1;
    :: true -> processTimeout = 3; results[2] = -1;
    :: true -> processTimeout = 4; results[0] = -1; results[1] = -1;
    :: true -> processTimeout = 5; results[0] = -1; results[2] = -1;
    :: true -> processTimeout = 6; results[1] = -1; results[2] = -1;
    :: true -> processTimeout = 7; results[0] = -1; results[1] = -1; results[2] = -1;
  	fi;

	//Actually call the WebServices
	atomic
	{
		run H();
		run H();
		run H();
	}
}

inline voteTimeout()
{
	printf("Deu timeout!\n");
	vote();
}

inline vote()
{
	//Get element with majority
	for (i : 1 .. NUMBER_RESULTS) {
		if
		:: cardinalityResults[i-1] > maxCardinality -> maxCardinality = cardinalityResults[i-1]; hasEqual = 0; maxCardinalityIndex = i;
		:: cardinalityResults[i-1] == maxCardinality -> hasEqual = 1;
		:: else -> skip;
		fi;
	}

	//Check if more than one element has majority
	if
	:: hasEqual == 1 -> voterResult = -1;
	:: else -> voterResult = maxCardinalityIndex;
	fi;
}

init
{
	for (currentIteration : 1 .. MAX_ITERATIONS) {
		clearVariables();
		callWebServices();

		if
		:: _nr_pr == 1 -> vote();
		:: timeout -> voteTimeout();
		fi;

		if
		:: voterResult > -1 -> break;
		:: else -> skip;
		fi;
	}

	printf("The result is %d\n", voterResult);

	if
	:: hasEqual == 1 -> if
						:: voterResult == -1 -> printf("Tudo ok\n");
						:: else -> assert(0);
						fi;
	:: else -> if
			   :: voterResult == -1 -> assert(0);
			   :: else -> printf("Tudo ok\n");
			   fi;
	fi;

	printf("Terminei %d\n", _nr_pr);
}