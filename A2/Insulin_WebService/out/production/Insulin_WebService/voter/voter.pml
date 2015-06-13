#define N 3
#define MAX_ITERATIONS 10
#define NUMBER_RESULTS 30

//Will store the results of the Web Services
int results[N];

//Stores the frequency of each possible Web Service response
int cardinalityResults[NUMBER_RESULTS];

int processTimeout;
int hasEqual;
int maxCardinality;
int maxCardinalityIndex;
int numberTimeouts;
int currentIteration;
int i;

//Stores the result of a given process modelling the behaviour of a Web Service
int voterResult;

////
// Used for our implementation of the "false" variable. With this implementation we can change the value of this
// variable, thus unlocking blocked processes to avoid some errors in our model
////
int MY_FALSE;

////
// Just an inline function to reset some variables
////
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

////
// Models the behaviour of a Web Service
////
proctype H(int index)
{
	int myResult;

	////
	// Select behaviour for the WebService: Output value or block
	////
	do
	:: results[index] == -1 -> (MY_FALSE); break;
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
	:: MY_FALSE == 0 -> results[index] = myResult; cardinalityResults[myResult-1]++; break;
	:: else -> break;
	od;
}

////
// Calls all the Web Services
////
inline callWebServices()
{
	// Decide which WebServices CAN have timeout (Cover all the combinations)
	for (i : 1 .. N) {
		////
		// 2am: Promela decided that selects are too mainstream so now I have to use do's everywhere...
		// God I love this language <3 <3
		////
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
	for (i : 1 .. N) {
		run H(i-1);
	}
}

////
// Checks if we have one majority answer among the Web Services' results
////
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

////
// Inline function that models the behaviour of the voter: Checks if we have enough results to actually make the voting,
// and acts accodingly
////
inline vote()
{
	if
	:: numberTimeouts > 1 -> voterResult = -1;
	:: else -> doMajority();
	fi;
}

////
// Inline function to unlock all the timeout processes by changing the value of MY_FALSE to 1 (Was 0)
////
inline unlockProcesses()
{
	MY_FALSE = 1;
	(_nr_pr == 1);
}

init
{
	//Simulate the maximum response time with a maximum number of invocations to the Web Services
	for (currentIteration : 1 .. MAX_ITERATIONS) {
		clearVariables();
		callWebServices();

		//Wait for all the processes called to finish, detecting whenever a timeout occurs and proceeds to the voter
		do
		:: _nr_pr == 1 -> vote(); break;
		:: timeout -> vote(); break;
		od;

		//Check if majority was achieved. If so, break the loop and terminate the process
		if
		:: voterResult > -1 -> break;
		:: else -> skip;
		fi;

		//Unlock all the locked processes and wait for them to die
		unlockProcesses();
	}

	//Unlock all the locked processes and wait for them to die
	unlockProcesses();

	//Assert that everything went according to plan
	assert(_nr_pr == 1);

	if
	:: hasEqual == 1 -> assert(voterResult==-1);
	:: numberTimeouts > 1 -> assert(voterResult==-1);
	:: else -> assert(voterResult!=-1);
	fi;

	//Just a final print to see the result
	printf("The result is %d\n", voterResult);
}