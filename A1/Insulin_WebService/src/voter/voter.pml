#define N 3

short behaviours[N];
short processTimeout;

proctype H()
{
    int myBehaviour;

	////
	// Select behaviour for the system:
	//  1 - Correct Value
	//  2 - Correct Value
	//  3 - Incorrect Value + Timeout
	////
	if
	:: processTimeout == _pid -> myBehaviour = 3;
	:: else -> 	select ( myBehaviour : 1..2 );
	fi;

	behaviours[_pid-1] = myBehaviour;
}

init
{
	//Decide which process CAN have timeout
	select ( processTimeout : 0..3 );

	//Execute processes
	atomic
	{
		run H();
		run H();
		run H();
	}

	//Wait for the child processes to die
	(_nr_pr == 1);

	printf("[DEBUG]VALUES: %d %d %d --> %d\n", behaviours[0], behaviours[1], behaviours[2], processTimeout);

	//Process the result values returned from the web services -- Either do the middle value or the median of the two values!


}