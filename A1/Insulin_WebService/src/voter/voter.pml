#define N 3

short behaviours[N];
short process_timeout;

proctype H()
{
	////
	// Select behaviour for the system:
	//  1 - Correct Value
	//  2 - Correct Value
	//  3 - Incorrect Value + Timeout
	////
	if
	:: process_timeout == _pid -> behaviours[_pid-1] = 3;
	:: else -> 	do
               	:: behaviours[_pid-1] = 1;
               	:: behaviours[_pid-1] = 2;
               	od;
	fi;
}

init
{
	//Decide which process CAN have timeout
	do
	:: process_timeout = 0;
	:: process_timeout = 1;
	:: process_timeout = 2;
	:: process_timeout = 3;
	od;

	//Execute processes
	atomic
	{
		run H();
		run H();
		run H();
	}

	//Wait for the child processes to die
	(_nr_pr == 1);

	//Process the result values returned from the web services

	//Exclude the answers with timeout and wrong parameters (?)

	//Take the median result from the valid answers -- If no valid answers return -1?
}
