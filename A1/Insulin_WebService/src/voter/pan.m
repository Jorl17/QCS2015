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
	case 3: // STATE 1 - voter.pml:111 - [currentIteration = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.currentIteration;
		now.currentIteration = 1;
#ifdef VAR_RANGES
		logval("currentIteration", now.currentIteration);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - voter.pml:111 - [((currentIteration<=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.currentIteration<=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - voter.pml:17 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - voter.pml:17 - [((i<=3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.i<=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - voter.pml:18 - [results[(i-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.results[ Index((now.i-1), 3) ];
		now.results[ Index((now.i-1), 3) ] = 0;
#ifdef VAR_RANGES
		logval("results[(i-1)]", now.results[ Index((now.i-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - voter.pml:17 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 12 - voter.pml:21 - [i = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - voter.pml:21 - [((i<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((now.i<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 14 - voter.pml:22 - [cardinalityResults[(i-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = now.cardinalityResults[ Index((now.i-1), 4) ];
		now.cardinalityResults[ Index((now.i-1), 4) ] = 0;
#ifdef VAR_RANGES
		logval("cardinalityResults[(i-1)]", now.cardinalityResults[ Index((now.i-1), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 15 - voter.pml:21 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 21 - voter.pml:25 - [maxCardinality = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = 0;
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 22 - voter.pml:26 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 23 - voter.pml:27 - [maxCardinalityIndex = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex =  -(1);
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 24 - voter.pml:28 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 27 - voter.pml:58 - [processTimeout = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 0;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 29 - voter.pml:59 - [processTimeout = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = processTimeout;
		processTimeout = 1;
#ifdef VAR_RANGES
		logval("processTimeout", processTimeout);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 30 - voter.pml:59 - [results[0] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = now.results[0];
		now.results[0] =  -(1);
#ifdef VAR_RANGES
		logval("results[0]", now.results[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 33 - voter.pml:69 - [(run H())] (0:0:0 - 3)
		IfNotBlocked
		reached[1][33] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 34 - voter.pml:70 - [(run H())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 35 - voter.pml:71 - [(run H())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 37 - voter.pml:116 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 38 - voter.pml:94 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 39 - voter.pml:94 - [((i<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!((now.i<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 40 - voter.pml:96 - [((cardinalityResults[(i-1)]>maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 4) ]>now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 41 - voter.pml:96 - [maxCardinality = cardinalityResults[(i-1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = now.cardinalityResults[ Index((now.i-1), 4) ];
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 42 - voter.pml:96 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 43 - voter.pml:96 - [maxCardinalityIndex = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex = now.i;
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 44 - voter.pml:97 - [((cardinalityResults[(i-1)]==maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 4) ]==now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 45 - voter.pml:97 - [hasEqual = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 1;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 50 - voter.pml:94 - [i = (i+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 56 - voter.pml:104 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 57 - voter.pml:104 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 59 - voter.pml:105 - [voterResult = maxCardinalityIndex] (0:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult = now.maxCardinalityIndex;
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 63 - voter.pml:117 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 37: // STATE 64 - voter.pml:87 - [printf('Deu timeout!\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		Printf("Deu timeout!\n");
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 65 - voter.pml:94 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 66 - voter.pml:94 - [((i<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!((now.i<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 67 - voter.pml:96 - [((cardinalityResults[(i-1)]>maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 4) ]>now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 68 - voter.pml:96 - [maxCardinality = cardinalityResults[(i-1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = now.maxCardinality;
		now.maxCardinality = now.cardinalityResults[ Index((now.i-1), 4) ];
#ifdef VAR_RANGES
		logval("maxCardinality", now.maxCardinality);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 69 - voter.pml:96 - [hasEqual = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 0;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 70 - voter.pml:96 - [maxCardinalityIndex = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = now.maxCardinalityIndex;
		now.maxCardinalityIndex = now.i;
#ifdef VAR_RANGES
		logval("maxCardinalityIndex", now.maxCardinalityIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 71 - voter.pml:97 - [((cardinalityResults[(i-1)]==maxCardinality))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!((now.cardinalityResults[ Index((now.i-1), 4) ]==now.maxCardinality)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 72 - voter.pml:97 - [hasEqual = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.oval = now.hasEqual;
		now.hasEqual = 1;
#ifdef VAR_RANGES
		logval("hasEqual", now.hasEqual);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 77 - voter.pml:94 - [i = (i+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 83 - voter.pml:104 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 84 - voter.pml:104 - [voterResult = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult =  -(1);
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 86 - voter.pml:105 - [voterResult = maxCardinalityIndex] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = now.voterResult;
		now.voterResult = now.maxCardinalityIndex;
#ifdef VAR_RANGES
		logval("voterResult", now.voterResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 93 - voter.pml:121 - [((voterResult>-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		if (!((now.voterResult> -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 99 - voter.pml:111 - [currentIteration = (currentIteration+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = now.currentIteration;
		now.currentIteration = (now.currentIteration+1);
#ifdef VAR_RANGES
		logval("currentIteration", now.currentIteration);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 105 - voter.pml:126 - [printf('The result is %d\\n',voterResult)] (0:0:0 - 5)
		IfNotBlocked
		reached[1][105] = 1;
		Printf("The result is %d\n", now.voterResult);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 106 - voter.pml:129 - [((hasEqual==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		if (!((now.hasEqual==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 107 - voter.pml:130 - [((voterResult==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (!((now.voterResult== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 108 - voter.pml:130 - [printf('Tudo ok\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		Printf("Tudo ok\n");
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 110 - voter.pml:131 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 114 - voter.pml:134 - [((voterResult==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		if (!((now.voterResult== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 115 - voter.pml:134 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 117 - voter.pml:135 - [printf('Tudo ok\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		Printf("Tudo ok\n");
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 122 - voter.pml:139 - [printf('Terminei %d\\n',_nr_pr)] (0:0:0 - 7)
		IfNotBlocked
		reached[1][122] = 1;
		Printf("Terminei %d\n", ((int)now._nr_pr));
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 123 - voter.pml:140 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC H */
	case 62: // STATE 1 - voter.pml:44 - [((results[(_pid-1)]==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 2 - voter.pml:44 - [(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(0))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 4 - voter.pml:45 - [myResult = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 1;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 5 - voter.pml:45 - [myResult = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 2;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 6 - voter.pml:45 - [myResult = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 3;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 7 - voter.pml:45 - [myResult = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->myResult;
		((P0 *)this)->myResult = 4;
#ifdef VAR_RANGES
		logval("H:myResult", ((P0 *)this)->myResult);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 12 - voter.pml:49 - [results[(_pid-1)] = myResult] (0:0:1 - 7)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ];
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = ((P0 *)this)->myResult;
#ifdef VAR_RANGES
		logval("results[(_pid-1)]", now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 13 - voter.pml:50 - [cardinalityResults[(myResult-1)] = (cardinalityResults[(myResult-1)]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 4) ];
		now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 4) ] = (now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 4) ]+1);
#ifdef VAR_RANGES
		logval("cardinalityResults[(H:myResult-1)]", now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 14 - voter.pml:52 - [printf('[%d]Retornei %d\\n',_pid,results[(_pid-1)])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		Printf("[%d]Retornei %d\n", ((int)((P0 *)this)->_pid), now.results[ Index((((int)((P0 *)this)->_pid)-1), 3) ]);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 15 - voter.pml:53 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
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

