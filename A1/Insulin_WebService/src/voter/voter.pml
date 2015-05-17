#define N 3
#define MAX_ITERATIONS 1
#define NUMBER_RESULTS 30

int results[N];
int cardinalityResults[NUMBER_RESULTS];
int processTimeout;
int hasEqual;
int maxCardinality;
int maxCardinalityIndex;
int numberTimeouts;
int voterResult;
int currentIteration;
int i;
int MY_FALSE;

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
	numberTimeouts = 0;

	MY_FALSE = 0;
}

proctype H()
{
	int myResult;

	////
	// Select behaviour for the WebService: Output value or block
	////
	do
	:: results[_pid-1] == -1 -> printf("[%d]Vou dar timeout\n", _pid); (MY_FALSE); break;
	:: else -> myResult = 1;
			   do
			   :: myResult < 6 -> myResult++;
			   :: break;
			   od;
			   break;
	od;

	//Store result and increment its cardinality
	//(This is code is getting so beautiful I cannot look at it anymore)
	do
	:: MY_FALSE == 0 -> results[_pid-1] = myResult; cardinalityResults[myResult-1]++; printf("[%d]Retornei %d\n", _pid, results[_pid-1]); break;
	:: else -> break;
	od;
}

inline callWebServices()
{
	// Decide which WebServices CAN have timeout (Cover all the combinations)
	for (i : 1 .. N) {
		//2am: Promela decided that selects are too mainstream so now I have to use do's everywhere... God I love this language <3 <3
		processTimeout = 0;
		do
		:: processTimeout < N -> processTimeout++;
		:: break;
		od;

		if
		:: processTimeout < N -> results[processTimeout] = -1; numberTimeouts++;
		:: else -> skip;
		fi;
	}

	//Actually call the WebServices
	atomic
	{
		run H();
		run H();
		run H();
	}
}

inline doMajority()
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

inline vote()
{
	if
	:: numberTimeouts > 1 -> voterResult = -1;
	:: else -> doMajority();
	fi;
}

init
{
	for (currentIteration : 1 .. MAX_ITERATIONS) {
		clearVariables();
		callWebServices();

		do
		:: _nr_pr == 1 -> vote(); break;
		:: timeout -> vote(); break;
		od;

		if
		:: voterResult > -1 -> break;
		:: else -> skip;
		fi;
	}

	printf("The result is %d\n", voterResult);

	if
	:: hasEqual == 1 -> assert(voterResult==-1);
	:: numberTimeouts > 1 -> assert(voterResult==-1);
	:: else -> assert(voterResult!=-1);
	fi;

	MY_FALSE = 1;

	printf("Terminei %d\n", _nr_pr);
}