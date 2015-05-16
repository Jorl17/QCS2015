	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		now.currentIteration = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 5: // STATE 3
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 5
		;
		now.results[ Index((now.i-1), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 6
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 12
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 14
		;
		now.cardinalityResults[ Index((now.i-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 15
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 21
		;
		now.maxCardinality = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 22
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 23
		;
		now.maxCardinalityIndex = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 24
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 25
		;
		now.MY_FALSE = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 28
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 30
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 31
		;
		now.results[0] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 33
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 34
		;
		now.results[1] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 36
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 37
		;
		now.results[2] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 39
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 40
		;
		now.results[0] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 41
		;
		now.results[1] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 43
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 44
		;
		now.results[0] = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 45
		;
		now.results[2] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 47
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 48
		;
		now.results[1] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 49
		;
		now.results[2] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 51
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 52
		;
		now.results[0] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 53
		;
		now.results[1] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 54
		;
		now.results[2] = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 57
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 39: // STATE 58
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 40: // STATE 59
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 42: // STATE 63
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 45: // STATE 66
		;
		now.maxCardinality = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 67
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 68
		;
		now.maxCardinalityIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 70
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 75
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 52: // STATE 82
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 84
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 56: // STATE 90
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 59: // STATE 93
		;
		now.maxCardinality = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 94
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 95
		;
		now.maxCardinalityIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 63: // STATE 97
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 102
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 66: // STATE 109
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 111
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 69: // STATE 124
		;
		now.currentIteration = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 78: // STATE 147
		;
		now.MY_FALSE = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 80: // STATE 149
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC H */
;
		;
		;
		;
		
	case 83: // STATE 4
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 5
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 6
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 7
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 8
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 89: // STATE 14
		;
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 15
		;
		now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 92: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;
	}

