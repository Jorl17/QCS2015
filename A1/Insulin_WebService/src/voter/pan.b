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
		now.cardinalityResults[ Index((now.i-1), 4) ] = trpt->bup.oval;
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

	case 17: // STATE 27
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 29
		;
		processTimeout = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 30
		;
		now.results[0] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 33
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 34
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 35
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 24: // STATE 38
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 27: // STATE 41
		;
		now.maxCardinality = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 42
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 43
		;
		now.maxCardinalityIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 45
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 50
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 57
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 59
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 38: // STATE 65
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 41: // STATE 68
		;
		now.maxCardinality = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 69
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 70
		;
		now.maxCardinalityIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: // STATE 72
		;
		now.hasEqual = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 77
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 84
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 86
		;
		now.voterResult = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 51: // STATE 99
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
		;
		;
		
	case 61: // STATE 123
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
		
	case 64: // STATE 4
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 5
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 6
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 7
		;
		((P0 *)this)->myResult = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 12
		;
		now.results[ Index((((P0 *)this)->_pid-1), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 13
		;
		now.cardinalityResults[ Index((((P0 *)this)->myResult-1), 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;
	}

