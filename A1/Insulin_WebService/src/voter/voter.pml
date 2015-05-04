#define N 3

short behaviours[N];

proctype H()
{
	////
	// Select behaviour for the system:
	//  1 - Correct Value
	//  2 - Incorrect Value
	//  3 - Timeout
	//  4 - Wrong Parameters (Needed?)
	////
	:: behaviours[_pid-1] = 1;
	:: behaviours[_pid-1] = 2;
	:: behaviours[_pid-1] = 3;
	:: behaviours[_pid-1] = 4;
	od;
}

init
{
	//Execute processes
	atomic
	{
		run H();
		run H();
		run H();
	}

	//Wait for the child processes to die
	(_nr_pr == 1);

	
}
