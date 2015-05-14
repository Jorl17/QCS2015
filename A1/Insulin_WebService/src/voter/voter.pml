#define N 3

short behaviours[N];
short processTimeout;
short numberOnes;
short numberTwos;

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
	
	if
	:: myBehaviour == 1 -> numberOnes = numberOnes + 1;
	:: else -> numberTwos = numberTwos + 1;
	fi;
}

init
{
	int result, i;

	//Reset variables
	result = 0;
	numberOnes = 0;
	numberTwos = 0;

	//Decide which process CAN have timeout (0 means no timeout)
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

	////
	// Process the result values returned from the web services
	// 1 - Sort the values, excluding the invalid value, if any -- Use insertion sort or other sorting algorithm?
	// 2 - Select the median value (which depends on the number of values considered)
	////
	if
	:: processTimeout > 0 ->	for (i : 1 .. N) {
								if
								:: i != processTimeout -> result = result + behaviours[i-1];
								:: else -> skip;
								fi;
								}
								result = result / (N - 1);
	:: else ->	if
				:: numberOnes > numberTwos -> result = 1;
				:: else -> result = 2;
				fi;
	fi;

	printf("Deu %d\n", result);
}