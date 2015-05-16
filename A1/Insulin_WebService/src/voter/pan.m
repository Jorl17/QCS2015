#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - voter.pml:119 - [currentIteration = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.currentIteration;
		now.currentIteration = 1;
#ifdef VAR_RANGES
		logval("currentIteration", now.currentIteration);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - voter.pml:119 - [((currentIteration<=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.currentIteration<=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - voter.pml:18 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - voter.pml:18 - [((i<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.i<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - voter.pml:19 - [results[(i-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.results[ Index((now.i-1), 3) ];
		now.results[ Index((now.i-1), 3) ] = 0;
#ifdef VAR_RANGES
		logval("results[(i-1)]", now.results[ Index((now.i-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - voter.pml:18 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 12 - voter.pml:22 - [i = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - voter.pml:22 - [((i<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((now.i<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 14 - voter.pml:23 - [cardinalityResults[(i-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = now.cardinalityResults[ Index((now.i-1), 5) ];
		now.cardinalityResults[ Index((now.i-1), 5) ] = 0;
#ifdef VAR_RANGES
		logval("cardinalityResults[(i-1)]", now.cardinalityResults[ Index((now.i-1), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 15 - voter.pml:22 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 21 - voter.pml:26 - [maxCardinality = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = 0;
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 22 - voter.pml:27 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 23 - voter.pml:28 - [maxCardinalityIndex = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex =  -(1);
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 24 - voter.pml:29 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 25 - voter.pml:31 - [MY_FALSE = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = now.MY_FALSE;
		now.MY_FALSE = 0;
#ifdef VAR_RANGES
		logval("MY_FALSE", now.MY_FALSE);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 28 - voter.pml:63 - [processTimeout = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 0;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 30 - voter.pml:64 - [processTimeout = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 1;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 31 - voter.pml:64 - [results[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = now.results[0];
		now.results[0] =  -(1);
#ifdef VAR_RANGES
		logval("results[0]", now.results[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 33 - voter.pml:65 - [processTimeout = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 2;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 34 - voter.pml:65 - [results[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = now.results[1];
		now.results[1] =  -(1);
#ifdef VAR_RANGES
		logval("results[1]", now.results[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 36 - voter.pml:66 - [processTimeout = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 3;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 37 - voter.pml:66 - [results[2] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = now.results[2];
		now.results[2] =  -(1);
#ifdef VAR_RANGES
		logval("results[2]", now.results[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 39 - voter.pml:67 - [processTimeout = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 4;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 40 - voter.pml:67 - [results[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = now.results[0];
		now.results[0] =  -(1);
#ifdef VAR_RANGES
		logval("results[0]", now.results[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 41 - voter.pml:67 - [results[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = now.results[1];
		now.results[1] =  -(1);
#ifdef VAR_RANGES
		logval("results[1]", now.results[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 43 - voter.pml:68 - [processTimeout = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 5;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 44 - voter.pml:68 - [results[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = now.results[0];
		now.results[0] =  -(1);
#ifdef VAR_RANGES
		logval("results[0]", now.results[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 45 - voter.pml:68 - [results[2] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = now.results[2];
		now.results[2] =  -(1);
#ifdef VAR_RANGES
		logval("results[2]", now.results[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 47 - voter.pml:69 - [processTimeout = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 6;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 48 - voter.pml:69 - [results[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = now.results[1];
		now.results[1] =  -(1);
#ifdef VAR_RANGES
		logval("results[1]", now.results[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 49 - voter.pml:69 - [results[2] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = now.results[2];
		now.results[2] =  -(1);
#ifdef VAR_RANGES
		logval("results[2]", now.results[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 51 - voter.pml:70 - [processTimeout = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 7;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 52 - voter.pml:70 - [results[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = now.results[0];
		now.results[0] =  -(1);
#ifdef VAR_RANGES
		logval("results[0]", now.results[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 53 - voter.pml:70 - [results[1] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = now.results[1];
		now.results[1] =  -(1);
#ifdef VAR_RANGES
		logval("results[1]", now.results[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 54 - voter.pml:70 - [results[2] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = now.results[2];
		now.results[2] =  -(1);
#ifdef VAR_RANGES
		logval("results[2]", now.results[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 57 - voter.pml:76 - [(run H())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 58 - voter.pml:77 - [(run H())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 59 - voter.pml:78 - [(run H())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 62 - voter.pml:124 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 63 - voter.pml:102 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 64 - voter.pml:102 - [((i<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!((now.i<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 65 - voter.pml:104 - [((cardinalityResults[(i-1)]>maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 5) ]>now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 66 - voter.pml:104 - [maxCardinality = cardinalityResults[(i-1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = now.cardinalityResults[ Index((now.i-1), 5) ];
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 67 - voter.pml:104 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 68 - voter.pml:104 - [maxCardinalityIndex = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex = now.i;
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 69 - voter.pml:105 - [((cardinalityResults[(i-1)]==maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 5) ]==now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 70 - voter.pml:105 - [hasEqual = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 1;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 75 - voter.pml:102 - [i = (i+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 81 - voter.pml:112 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 82 - voter.pml:112 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 84 - voter.pml:113 - [voterResult = maxCardinalityIndex] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult = now.maxCardinalityIndex;
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 88 - voter.pml:125 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 55: // STATE 89 - voter.pml:95 - [printf('Deu timeout!\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		Printf("Deu timeout!\n");
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 90 - voter.pml:102 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 91 - voter.pml:102 - [((i<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!((now.i<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 92 - voter.pml:104 - [((cardinalityResults[(i-1)]>maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 5) ]>now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 93 - voter.pml:104 - [maxCardinality = cardinalityResults[(i-1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = now.cardinalityResults[ Index((now.i-1), 5) ];
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 94 - voter.pml:104 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 95 - voter.pml:104 - [maxCardinalityIndex = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex = now.i;
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 96 - voter.pml:105 - [((cardinalityResults[(i-1)]==maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 5) ]==now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 97 - voter.pml:105 - [hasEqual = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 1;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 102 - voter.pml:102 - [i = (i+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 108 - voter.pml:112 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 109 - voter.pml:112 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 111 - voter.pml:113 - [voterResult = maxCardinalityIndex] (0:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult = now.maxCardinalityIndex;
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 118 - voter.pml:129 - [((voterResult>-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		if (!((now.voterResult> -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 124 - voter.pml:119 - [currentIteration = (currentIteration+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][124] = 1;
		(trpt+1)->bup.oval = now.currentIteration;
		now.currentIteration = (now.currentIteration+1);
#ifdef VAR_RANGES
		logval("currentIteration", now.currentIteration);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 130 - voter.pml:134 - [printf('The result is %d\\n',voterResult)] (0:0:0 - 5)
		IfNotBlocked
		reached[1][130] = 1;
		Printf("The result is %d\n", now.voterResult);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 131 - voter.pml:137 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 132 - voter.pml:138 - [((voterResult==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		if (!((now.voterResult== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 133 - voter.pml:138 - [printf('Tudo ok\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		Printf("Tudo ok\n");
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 135 - voter.pml:139 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 139 - voter.pml:142 - [((voterResult==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][139] = 1;
		if (!((now.voterResult== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 140 - voter.pml:142 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 142 - voter.pml:143 - [printf('Tudo ok\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		Printf("Tudo ok\n");
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 147 - voter.pml:147 - [MY_FALSE = 1] (0:0:1 - 7)
		IfNotBlocked
		reached[1][147] = 1;
		(trpt+1)->bup.oval = now.MY_FALSE;
		now.MY_FALSE = 1;
#ifdef VAR_RANGES
		logval("MY_FALSE", now.MY_FALSE);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 148 - voter.pml:149 - [printf('Terminei %d\\n',_nr_pr)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		Printf("Terminei %d\n", ((int)now._nr_pr));
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 149 - voter.pml:150 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC H */
	case 81: // STATE 1 - voter.pml:48 - [((results[(_pid-1)]==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 2 - voter.pml:48 - [(MY_FALSE)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(now.MY_FALSE))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 4 - voter.pml:49 - [myResult = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 1;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 5 - voter.pml:49 - [myResult = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 2;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 6 - voter.pml:49 - [myResult = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 3;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 7 - voter.pml:49 - [myResult = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 4;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 8 - voter.pml:49 - [myResult = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 5;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 13 - voter.pml:55 - [((MY_FALSE==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((now.MY_FALSE==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 14 - voter.pml:55 - [results[(_pid-1)] = myResult] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ];
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = ((P0 *)this)->myResult;
#ifdef VAR_RANGES
		logval("results[(_pid-1)]", now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 15 - voter.pml:55 - [cardinalityResults[(myResult-1)] = (cardinalityResults[(myResult-1)]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 5) ];
		now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 5) ] = (now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 5) ]+1);
#ifdef VAR_RANGES
		logval("cardinalityResults[(H:myResult-1)]", now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 16 - voter.pml:55 - [printf('[%d]Retornei %d\\n',_pid,results[(_pid-1)])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		Printf("[%d]Retornei %d\n", ((int)((P0 *)this)->_pid), now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 21 - voter.pml:58 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

