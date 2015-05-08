#define N 3

short behaviours[N];

proctype H()
{
	////
	// Select behaviour for the system:
	//  1 - Correct Value -- Meter aqui dois valores possiveis correctos
	//  2 - Incorrect Value + Timeout
	////
	:: behaviours[_pid-1] = 1;
	:: behaviours[_pid-1] = 2;
	od;
}

init
{
	//Decide which process CAN have timeout

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
