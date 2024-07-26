(define (domain dom)
        (:requirements :typing :strips :negative-preconditions :non-deterministic :adl)
        (:types 
	 autstate
	 transition
	 alphacounter
	 var)
        (:constants 

	aut_0_q_0 - autstate
	aut_0_q_1 - autstate
	aut_0_q_2 - autstate
	aut_0_q_3 - autstate
	aut_0_q_4 - autstate
	aut_1_q_0 - autstate
	aut_1_q_1 - autstate
	aut_1_q_2 - autstate
	aut_1_q_3 - autstate
	aut_1_q_4 - autstate
	aut_2_q_0 - autstate
	aut_2_q_1 - autstate
	aut_2_q_2 - autstate
	aut_2_q_3 - autstate
	aut_2_q_4 - autstate
	aut_3_q_0 - autstate
	aut_3_q_1 - autstate
	aut_3_q_2 - autstate
	aut_3_q_3 - autstate
	aut_3_q_4 - autstate
	aut_4_q_0 - autstate
	aut_4_q_1 - autstate
	aut_5_q_0 - autstate
	aut_5_q_1 - autstate
	aut_6_q_0 - autstate
	aut_6_q_1 - autstate
	aut_7_q_0 - autstate
	aut_7_q_1 - autstate
	aut_8_q_0 - autstate
	aut_8_q_1 - autstate
	aut_9_q_0 - autstate
	aut_9_q_1 - autstate
	aut_0_t_0 - transition
	aut_0_t_1 - transition
	aut_0_t_2 - transition
	aut_0_t_3 - transition
	aut_0_t_4 - transition
	aut_0_t_5 - transition
	aut_0_t_6 - transition
	aut_0_t_7 - transition
	aut_0_t_8 - transition
	aut_0_t_9 - transition
	aut_0_t_10 - transition
	aut_0_t_11 - transition
	aut_0_t_12 - transition
	aut_0_t_13 - transition
	aut_0_t_14 - transition
	aut_0_t_15 - transition
	aut_0_t_16 - transition
	aut_0_t_17 - transition
	aut_0_t_18 - transition
	aut_0_t_19 - transition
	aut_0_t_20 - transition
	aut_1_t_0 - transition
	aut_1_t_1 - transition
	aut_1_t_2 - transition
	aut_1_t_3 - transition
	aut_1_t_4 - transition
	aut_1_t_5 - transition
	aut_1_t_6 - transition
	aut_1_t_7 - transition
	aut_1_t_8 - transition
	aut_1_t_9 - transition
	aut_1_t_10 - transition
	aut_1_t_11 - transition
	aut_1_t_12 - transition
	aut_1_t_13 - transition
	aut_1_t_14 - transition
	aut_1_t_15 - transition
	aut_1_t_16 - transition
	aut_1_t_17 - transition
	aut_1_t_18 - transition
	aut_1_t_19 - transition
	aut_1_t_20 - transition
	aut_2_t_0 - transition
	aut_2_t_1 - transition
	aut_2_t_2 - transition
	aut_2_t_3 - transition
	aut_2_t_4 - transition
	aut_2_t_5 - transition
	aut_2_t_6 - transition
	aut_2_t_7 - transition
	aut_2_t_8 - transition
	aut_2_t_9 - transition
	aut_2_t_10 - transition
	aut_2_t_11 - transition
	aut_2_t_12 - transition
	aut_2_t_13 - transition
	aut_2_t_14 - transition
	aut_2_t_15 - transition
	aut_2_t_16 - transition
	aut_2_t_17 - transition
	aut_2_t_18 - transition
	aut_2_t_19 - transition
	aut_2_t_20 - transition
	aut_3_t_0 - transition
	aut_3_t_1 - transition
	aut_3_t_2 - transition
	aut_3_t_3 - transition
	aut_3_t_4 - transition
	aut_3_t_5 - transition
	aut_3_t_6 - transition
	aut_3_t_7 - transition
	aut_3_t_8 - transition
	aut_3_t_9 - transition
	aut_3_t_10 - transition
	aut_3_t_11 - transition
	aut_3_t_12 - transition
	aut_3_t_13 - transition
	aut_3_t_14 - transition
	aut_3_t_15 - transition
	aut_3_t_16 - transition
	aut_3_t_17 - transition
	aut_3_t_18 - transition
	aut_3_t_19 - transition
	aut_3_t_20 - transition
	aut_4_t_0 - transition
	aut_4_t_1 - transition
	aut_4_t_2 - transition
	aut_4_t_3 - transition
	aut_4_t_4 - transition
	aut_4_t_5 - transition
	aut_4_t_6 - transition
	aut_4_t_7 - transition
	aut_4_t_8 - transition
	aut_4_t_9 - transition
	aut_4_t_10 - transition
	aut_4_t_11 - transition
	aut_4_t_12 - transition
	aut_4_t_13 - transition
	aut_4_t_14 - transition
	aut_4_t_15 - transition
	aut_5_t_0 - transition
	aut_5_t_1 - transition
	aut_5_t_2 - transition
	aut_5_t_3 - transition
	aut_5_t_4 - transition
	aut_5_t_5 - transition
	aut_5_t_6 - transition
	aut_5_t_7 - transition
	aut_5_t_8 - transition
	aut_5_t_9 - transition
	aut_5_t_10 - transition
	aut_5_t_11 - transition
	aut_5_t_12 - transition
	aut_5_t_13 - transition
	aut_5_t_14 - transition
	aut_5_t_15 - transition
	aut_6_t_0 - transition
	aut_6_t_1 - transition
	aut_6_t_2 - transition
	aut_6_t_3 - transition
	aut_6_t_4 - transition
	aut_6_t_5 - transition
	aut_6_t_6 - transition
	aut_6_t_7 - transition
	aut_6_t_8 - transition
	aut_6_t_9 - transition
	aut_6_t_10 - transition
	aut_6_t_11 - transition
	aut_6_t_12 - transition
	aut_6_t_13 - transition
	aut_6_t_14 - transition
	aut_6_t_15 - transition
	aut_7_t_0 - transition
	aut_7_t_1 - transition
	aut_7_t_2 - transition
	aut_7_t_3 - transition
	aut_7_t_4 - transition
	aut_7_t_5 - transition
	aut_7_t_6 - transition
	aut_7_t_7 - transition
	aut_7_t_8 - transition
	aut_7_t_9 - transition
	aut_7_t_10 - transition
	aut_7_t_11 - transition
	aut_7_t_12 - transition
	aut_7_t_13 - transition
	aut_7_t_14 - transition
	aut_7_t_15 - transition
	aut_8_t_0 - transition
	aut_8_t_1 - transition
	aut_8_t_2 - transition
	aut_8_t_3 - transition
	aut_8_t_4 - transition
	aut_8_t_5 - transition
	aut_8_t_6 - transition
	aut_8_t_7 - transition
	aut_8_t_8 - transition
	aut_8_t_9 - transition
	aut_8_t_10 - transition
	aut_8_t_11 - transition
	aut_8_t_12 - transition
	aut_8_t_13 - transition
	aut_8_t_14 - transition
	aut_8_t_15 - transition
	aut_9_t_0 - transition
	aut_9_t_1 - transition
	aut_9_t_2 - transition
	aut_9_t_3 - transition
	aut_9_t_4 - transition
	aut_9_t_5 - transition
	aut_9_t_6 - transition
	aut_9_t_7 - transition
	aut_9_t_8 - transition
	aut_9_t_9 - transition
	aut_9_t_10 - transition
	aut_9_t_11 - transition
	aut_9_t_12 - transition
	aut_9_t_13 - transition
	aut_9_t_14 - transition
	aut_9_t_15 - transition
	r1 - var
	r2 - var
	r3 - var
	r4 - var
	g1 - var
	g2 - var
	g3 - var
	g4 - var
	y - var
	sync - var
	alphacount_0 - alphacounter)
        (:predicates 
	(safe ?t - transition)
	(poss ?t - transition)
	(turn ?n - var)
	(F ?q - autstate)
	(oldCnt ?q - autstate ?m - alphacounter)
	(newCnt ?q - autstate ?m - alphacounter)
	(nxt ?n - alphacounter ?m - alphacounter)
	(dummy_goal))
        
	(:action env_move_r1
		:precondition (and (turn r1))
		:effect (oneof 
			(and (not (turn r1)) (turn r2) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_2)) (not (poss aut_0_t_0)) (not (poss aut_0_t_9)) (not (poss aut_0_t_15)) (not (poss aut_0_t_18)) (not (poss aut_0_t_1)) (not (poss aut_0_t_13)) (not (poss aut_0_t_10)) (not (poss aut_0_t_17)) (not (poss aut_0_t_19)) (not (poss aut_0_t_14)) (not (poss aut_0_t_7)) (not (poss aut_0_t_11)) (not (poss aut_1_t_7)) (not (poss aut_1_t_17)) (not (poss aut_1_t_9)) (not (poss aut_1_t_15)) (not (poss aut_1_t_6)) (not (poss aut_1_t_2)) (not (poss aut_1_t_14)) (not (poss aut_1_t_0)) (not (poss aut_1_t_19)) (not (poss aut_1_t_11)) (not (poss aut_1_t_13)) (not (poss aut_1_t_10)) (not (poss aut_1_t_1)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_18)) (not (poss aut_2_t_5)) (not (poss aut_2_t_13)) (not (poss aut_2_t_15)) (not (poss aut_2_t_19)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_14)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_0)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_2)) (not (poss aut_2_t_4)) (not (poss aut_2_t_11)) (not (poss aut_2_t_1)) (not (poss aut_3_t_7)) (not (poss aut_3_t_18)) (not (poss aut_3_t_1)) (not (poss aut_3_t_15)) (not (poss aut_3_t_19)) (not (poss aut_3_t_6)) (not (poss aut_3_t_13)) (not (poss aut_3_t_0)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_10)) (not (poss aut_3_t_9)) (not (poss aut_3_t_14)) (not (poss aut_3_t_2)) (not (poss aut_3_t_11)) (not (poss aut_3_t_17)) (not (poss aut_4_t_2)) (not (poss aut_4_t_9)) (not (poss aut_4_t_12)) (not (poss aut_4_t_0)) (not (poss aut_4_t_13)) (not (poss aut_4_t_10)) (not (poss aut_4_t_4)) (not (poss aut_4_t_14)) (not (poss aut_4_t_5)) (not (poss aut_4_t_8)) (not (poss aut_4_t_1)) (not (poss aut_4_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_8)) (not (poss aut_5_t_10)) (not (poss aut_5_t_14)) (not (poss aut_5_t_2)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_1)) (not (poss aut_5_t_5)) (not (poss aut_5_t_9)) (not (poss aut_5_t_0)) (not (poss aut_5_t_3)) (not (poss aut_6_t_8)) (not (poss aut_6_t_14)) (not (poss aut_6_t_13)) (not (poss aut_6_t_0)) (not (poss aut_6_t_4)) (not (poss aut_6_t_3)) (not (poss aut_6_t_12)) (not (poss aut_6_t_5)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_7_t_1)) (not (poss aut_7_t_0)) (not (poss aut_7_t_8)) (not (poss aut_7_t_13)) (not (poss aut_7_t_14)) (not (poss aut_7_t_2)) (not (poss aut_7_t_5)) (not (poss aut_7_t_10)) (not (poss aut_7_t_12)) (not (poss aut_7_t_4)) (not (poss aut_7_t_3)) (not (poss aut_7_t_9)) (not (poss aut_8_t_5)) (not (poss aut_8_t_2)) (not (poss aut_8_t_0)) (not (poss aut_8_t_14)) (not (poss aut_8_t_4)) (not (poss aut_8_t_10)) (not (poss aut_8_t_12)) (not (poss aut_8_t_8)) (not (poss aut_8_t_13)) (not (poss aut_8_t_9)) (not (poss aut_8_t_1)) (not (poss aut_8_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_2)) (not (poss aut_9_t_1)) (not (poss aut_9_t_3)) (not (poss aut_9_t_10)) (not (poss aut_9_t_5)) (not (poss aut_9_t_13)) (not (poss aut_9_t_14)) (not (poss aut_9_t_12)) (not (poss aut_9_t_9)) (not (poss aut_9_t_0)) (not (poss aut_9_t_8)))
			(and (not (turn r1)) (turn r2) (not (poss aut_0_t_4)))
			)
		
	)
	(:action env_move_r2
		:precondition (and (turn r2))
		:effect (oneof 
			(and (not (turn r2)) (turn r3) (not (poss aut_0_t_8)) (not (poss aut_0_t_20)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_4)) (not (poss aut_0_t_0)) (not (poss aut_0_t_9)) (not (poss aut_0_t_12)) (not (poss aut_0_t_3)) (not (poss aut_0_t_18)) (not (poss aut_0_t_1)) (not (poss aut_0_t_13)) (not (poss aut_0_t_10)) (not (poss aut_0_t_17)) (not (poss aut_0_t_16)) (not (poss aut_0_t_14)) (not (poss aut_1_t_17)) (not (poss aut_1_t_9)) (not (poss aut_1_t_8)) (not (poss aut_1_t_6)) (not (poss aut_1_t_14)) (not (poss aut_1_t_0)) (not (poss aut_1_t_3)) (not (poss aut_1_t_13)) (not (poss aut_1_t_10)) (not (poss aut_1_t_1)) (not (poss aut_1_t_12)) (not (poss aut_1_t_20)) (not (poss aut_1_t_5)) (not (poss aut_1_t_18)) (not (poss aut_1_t_16)) (not (poss aut_2_t_5)) (not (poss aut_2_t_16)) (not (poss aut_2_t_13)) (not (poss aut_2_t_9)) (not (poss aut_2_t_3)) (not (poss aut_2_t_10)) (not (poss aut_2_t_12)) (not (poss aut_2_t_6)) (not (poss aut_2_t_14)) (not (poss aut_2_t_20)) (not (poss aut_2_t_0)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_8)) (not (poss aut_2_t_4)) (not (poss aut_2_t_1)) (not (poss aut_3_t_18)) (not (poss aut_3_t_1)) (not (poss aut_3_t_16)) (not (poss aut_3_t_20)) (not (poss aut_3_t_6)) (not (poss aut_3_t_13)) (not (poss aut_3_t_0)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_10)) (not (poss aut_3_t_9)) (not (poss aut_3_t_12)) (not (poss aut_3_t_8)) (not (poss aut_3_t_14)) (not (poss aut_3_t_17)) (not (poss aut_4_t_2)) (not (poss aut_4_t_9)) (not (poss aut_4_t_12)) (not (poss aut_4_t_15)) (not (poss aut_4_t_0)) (not (poss aut_4_t_13)) (not (poss aut_4_t_11)) (not (poss aut_4_t_8)) (not (poss aut_4_t_1)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_3)) (not (poss aut_5_t_8)) (not (poss aut_5_t_6)) (not (poss aut_5_t_2)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_1)) (not (poss aut_5_t_9)) (not (poss aut_5_t_15)) (not (poss aut_5_t_0)) (not (poss aut_5_t_3)) (not (poss aut_5_t_7)) (not (poss aut_5_t_11)) (not (poss aut_6_t_8)) (not (poss aut_6_t_11)) (not (poss aut_6_t_13)) (not (poss aut_6_t_0)) (not (poss aut_6_t_6)) (not (poss aut_6_t_3)) (not (poss aut_6_t_7)) (not (poss aut_6_t_12)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_9)) (not (poss aut_6_t_15)) (not (poss aut_7_t_1)) (not (poss aut_7_t_0)) (not (poss aut_7_t_8)) (not (poss aut_7_t_13)) (not (poss aut_7_t_11)) (not (poss aut_7_t_2)) (not (poss aut_7_t_12)) (not (poss aut_7_t_7)) (not (poss aut_7_t_6)) (not (poss aut_7_t_3)) (not (poss aut_7_t_15)) (not (poss aut_7_t_9)) (not (poss aut_8_t_2)) (not (poss aut_8_t_0)) (not (poss aut_8_t_12)) (not (poss aut_8_t_8)) (not (poss aut_8_t_15)) (not (poss aut_8_t_13)) (not (poss aut_8_t_11)) (not (poss aut_8_t_9)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_1)) (not (poss aut_8_t_3)) (not (poss aut_9_t_7)) (not (poss aut_9_t_2)) (not (poss aut_9_t_1)) (not (poss aut_9_t_3)) (not (poss aut_9_t_15)) (not (poss aut_9_t_13)) (not (poss aut_9_t_12)) (not (poss aut_9_t_9)) (not (poss aut_9_t_0)) (not (poss aut_9_t_11)) (not (poss aut_9_t_8)) (not (poss aut_9_t_6)))
			(and (not (turn r2)) (turn r3) (not (poss aut_1_t_4)))
			)
		
	)
	(:action env_move_r3
		:precondition (and (turn r3))
		:effect (oneof 
			(and (not (turn r3)) (turn r4) (not (poss aut_0_t_8)) (not (poss aut_0_t_20)) (not (poss aut_0_t_5)) (not (poss aut_0_t_4)) (not (poss aut_0_t_2)) (not (poss aut_0_t_0)) (not (poss aut_0_t_9)) (not (poss aut_0_t_12)) (not (poss aut_0_t_3)) (not (poss aut_0_t_15)) (not (poss aut_0_t_13)) (not (poss aut_0_t_17)) (not (poss aut_0_t_16)) (not (poss aut_0_t_19)) (not (poss aut_0_t_7)) (not (poss aut_0_t_11)) (not (poss aut_1_t_7)) (not (poss aut_1_t_17)) (not (poss aut_1_t_9)) (not (poss aut_1_t_15)) (not (poss aut_1_t_8)) (not (poss aut_1_t_2)) (not (poss aut_1_t_0)) (not (poss aut_1_t_19)) (not (poss aut_1_t_11)) (not (poss aut_1_t_3)) (not (poss aut_1_t_13)) (not (poss aut_1_t_12)) (not (poss aut_1_t_4)) (not (poss aut_1_t_20)) (not (poss aut_1_t_5)) (not (poss aut_1_t_16)) (not (poss aut_2_t_5)) (not (poss aut_2_t_16)) (not (poss aut_2_t_13)) (not (poss aut_2_t_15)) (not (poss aut_2_t_19)) (not (poss aut_2_t_9)) (not (poss aut_2_t_3)) (not (poss aut_2_t_20)) (not (poss aut_2_t_12)) (not (poss aut_2_t_7)) (not (poss aut_2_t_0)) (not (poss aut_2_t_17)) (not (poss aut_2_t_8)) (not (poss aut_2_t_2)) (not (poss aut_2_t_11)) (not (poss aut_3_t_7)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_19)) (not (poss aut_3_t_20)) (not (poss aut_3_t_13)) (not (poss aut_3_t_0)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_9)) (not (poss aut_3_t_12)) (not (poss aut_3_t_8)) (not (poss aut_3_t_2)) (not (poss aut_3_t_11)) (not (poss aut_3_t_17)) (not (poss aut_4_t_12)) (not (poss aut_4_t_15)) (not (poss aut_4_t_0)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_4_t_4)) (not (poss aut_4_t_14)) (not (poss aut_4_t_5)) (not (poss aut_4_t_8)) (not (poss aut_4_t_1)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_5_t_4)) (not (poss aut_5_t_8)) (not (poss aut_5_t_10)) (not (poss aut_5_t_14)) (not (poss aut_5_t_6)) (not (poss aut_5_t_12)) (not (poss aut_5_t_1)) (not (poss aut_5_t_5)) (not (poss aut_5_t_15)) (not (poss aut_5_t_0)) (not (poss aut_5_t_11)) (not (poss aut_5_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_14)) (not (poss aut_6_t_11)) (not (poss aut_6_t_0)) (not (poss aut_6_t_4)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_12)) (not (poss aut_6_t_5)) (not (poss aut_6_t_1)) (not (poss aut_6_t_15)) (not (poss aut_6_t_10)) (not (poss aut_7_t_1)) (not (poss aut_7_t_0)) (not (poss aut_7_t_8)) (not (poss aut_7_t_11)) (not (poss aut_7_t_14)) (not (poss aut_7_t_5)) (not (poss aut_7_t_10)) (not (poss aut_7_t_12)) (not (poss aut_7_t_7)) (not (poss aut_7_t_4)) (not (poss aut_7_t_6)) (not (poss aut_7_t_15)) (not (poss aut_8_t_5)) (not (poss aut_8_t_0)) (not (poss aut_8_t_14)) (not (poss aut_8_t_4)) (not (poss aut_8_t_10)) (not (poss aut_8_t_12)) (not (poss aut_8_t_8)) (not (poss aut_8_t_15)) (not (poss aut_8_t_11)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_1)) (not (poss aut_9_t_7)) (not (poss aut_9_t_4)) (not (poss aut_9_t_1)) (not (poss aut_9_t_10)) (not (poss aut_9_t_14)) (not (poss aut_9_t_5)) (not (poss aut_9_t_15)) (not (poss aut_9_t_12)) (not (poss aut_9_t_0)) (not (poss aut_9_t_11)) (not (poss aut_9_t_8)) (not (poss aut_9_t_6)))
			(and (not (turn r3)) (turn r4) (not (poss aut_2_t_4)))
			)
		
	)
	(:action env_move_r4
		:precondition (and (turn r4))
		:effect (oneof 
			(and (not (turn r4)) (turn g1) (not (poss aut_0_t_8)) (not (poss aut_0_t_20)) (not (poss aut_0_t_6)) (not (poss aut_0_t_2)) (not (poss aut_0_t_4)) (not (poss aut_0_t_12)) (not (poss aut_0_t_3)) (not (poss aut_0_t_15)) (not (poss aut_0_t_18)) (not (poss aut_0_t_1)) (not (poss aut_0_t_10)) (not (poss aut_0_t_16)) (not (poss aut_0_t_14)) (not (poss aut_0_t_7)) (not (poss aut_0_t_11)) (not (poss aut_0_t_19)) (not (poss aut_1_t_7)) (not (poss aut_1_t_15)) (not (poss aut_1_t_8)) (not (poss aut_1_t_6)) (not (poss aut_1_t_2)) (not (poss aut_1_t_14)) (not (poss aut_1_t_19)) (not (poss aut_1_t_11)) (not (poss aut_1_t_3)) (not (poss aut_1_t_10)) (not (poss aut_1_t_1)) (not (poss aut_1_t_4)) (not (poss aut_1_t_12)) (not (poss aut_1_t_20)) (not (poss aut_1_t_18)) (not (poss aut_1_t_16)) (not (poss aut_2_t_16)) (not (poss aut_2_t_15)) (not (poss aut_2_t_19)) (not (poss aut_2_t_10)) (not (poss aut_2_t_3)) (not (poss aut_2_t_14)) (not (poss aut_2_t_12)) (not (poss aut_2_t_6)) (not (poss aut_2_t_20)) (not (poss aut_2_t_7)) (not (poss aut_2_t_18)) (not (poss aut_2_t_8)) (not (poss aut_2_t_2)) (not (poss aut_2_t_4)) (not (poss aut_2_t_11)) (not (poss aut_2_t_1)) (not (poss aut_3_t_7)) (not (poss aut_3_t_18)) (not (poss aut_3_t_1)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_19)) (not (poss aut_3_t_20)) (not (poss aut_3_t_6)) (not (poss aut_3_t_3)) (not (poss aut_3_t_10)) (not (poss aut_3_t_12)) (not (poss aut_3_t_14)) (not (poss aut_3_t_8)) (not (poss aut_3_t_2)) (not (poss aut_3_t_11)) (not (poss aut_4_t_2)) (not (poss aut_4_t_9)) (not (poss aut_4_t_15)) (not (poss aut_4_t_13)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_4_t_4)) (not (poss aut_4_t_14)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_10)) (not (poss aut_5_t_14)) (not (poss aut_5_t_6)) (not (poss aut_5_t_2)) (not (poss aut_5_t_13)) (not (poss aut_5_t_9)) (not (poss aut_5_t_5)) (not (poss aut_5_t_15)) (not (poss aut_5_t_11)) (not (poss aut_5_t_3)) (not (poss aut_5_t_7)) (not (poss aut_6_t_14)) (not (poss aut_6_t_11)) (not (poss aut_6_t_13)) (not (poss aut_6_t_6)) (not (poss aut_6_t_4)) (not (poss aut_6_t_3)) (not (poss aut_6_t_7)) (not (poss aut_6_t_5)) (not (poss aut_6_t_2)) (not (poss aut_6_t_9)) (not (poss aut_6_t_15)) (not (poss aut_6_t_10)) (not (poss aut_7_t_13)) (not (poss aut_7_t_11)) (not (poss aut_7_t_14)) (not (poss aut_7_t_2)) (not (poss aut_7_t_5)) (not (poss aut_7_t_10)) (not (poss aut_7_t_7)) (not (poss aut_7_t_4)) (not (poss aut_7_t_6)) (not (poss aut_7_t_3)) (not (poss aut_7_t_15)) (not (poss aut_7_t_9)) (not (poss aut_8_t_2)) (not (poss aut_8_t_5)) (not (poss aut_8_t_14)) (not (poss aut_8_t_4)) (not (poss aut_8_t_10)) (not (poss aut_8_t_15)) (not (poss aut_8_t_13)) (not (poss aut_8_t_11)) (not (poss aut_8_t_9)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_3)) (not (poss aut_9_t_7)) (not (poss aut_9_t_4)) (not (poss aut_9_t_2)) (not (poss aut_9_t_10)) (not (poss aut_9_t_3)) (not (poss aut_9_t_14)) (not (poss aut_9_t_5)) (not (poss aut_9_t_13)) (not (poss aut_9_t_15)) (not (poss aut_9_t_9)) (not (poss aut_9_t_11)) (not (poss aut_9_t_6)))
			(and (not (turn r4)) (turn g1) (not (poss aut_3_t_4)))
			)
		
	)
	(:action move_safe_aut_0_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_0) (safe aut_0_t_0) (oldCnt aut_0_q_0 ?m))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)))
	)
	(:action move_safe_aut_0_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_1) (safe aut_0_t_1) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_1)) (not (poss aut_0_t_0)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)))
	)
	(:action move_safe_aut_0_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_2) (safe aut_0_t_2) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_2)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_3)))
	)
	(:action move_safe_aut_0_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_3) (safe aut_0_t_3) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_3)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)))
	)
	(:action move_safe_aut_0_t4_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_4) (safe aut_0_t_4) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?m) (not (poss aut_0_t_4)))
	)
	(:action move_safe_aut_0_t5_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_5) (safe aut_0_t_5) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
	)
	(:action move_safe_aut_0_t6_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_6) (safe aut_0_t_6) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_6)) (not (poss aut_0_t_5)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
	)
	(:action move_safe_aut_0_t7_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_7) (safe aut_0_t_7) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_7)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_8)))
	)
	(:action move_safe_aut_0_t8_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_8) (safe aut_0_t_8) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_8)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)))
	)
	(:action move_unsafe_aut_0_t9_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_9) (not (safe aut_0_t_9)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
	)
	(:action move_unsafe_aut_0_t10_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_10) (not (safe aut_0_t_10)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_10)) (not (poss aut_0_t_9)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
	)
	(:action move_unsafe_aut_0_t11_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_11) (not (safe aut_0_t_11)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_11)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_12)))
	)
	(:action move_unsafe_aut_0_t12_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_12) (not (safe aut_0_t_12)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_12)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)))
	)
	(:action move_unsafe_aut_0_t13_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_13) (not (safe aut_0_t_13)) (oldCnt aut_0_q_3 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
	)
	(:action move_unsafe_aut_0_t14_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_14) (not (safe aut_0_t_14)) (oldCnt aut_0_q_3 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_14)) (not (poss aut_0_t_13)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
	)
	(:action move_unsafe_aut_0_t15_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_15) (not (safe aut_0_t_15)) (oldCnt aut_0_q_3 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_15)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_16)))
	)
	(:action move_unsafe_aut_0_t16_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_16) (not (safe aut_0_t_16)) (oldCnt aut_0_q_3 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?n) (not (poss aut_0_t_16)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)))
	)
	(:action move_safe_aut_0_t17_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_17) (safe aut_0_t_17) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)))
	)
	(:action move_safe_aut_0_t18_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_18) (safe aut_0_t_18) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_18)) (not (poss aut_0_t_17)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)))
	)
	(:action move_safe_aut_0_t19_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_19) (safe aut_0_t_19) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_19)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_20)))
	)
	(:action move_safe_aut_0_t20_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_20) (safe aut_0_t_20) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_20)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)))
	)
	(:action move_safe_aut_1_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_0) (safe aut_1_t_0) (oldCnt aut_1_q_0 ?m))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)))
	)
	(:action move_safe_aut_1_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_1) (safe aut_1_t_1) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_1)) (not (poss aut_1_t_0)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)))
	)
	(:action move_safe_aut_1_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_2) (safe aut_1_t_2) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_2)) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_3)))
	)
	(:action move_safe_aut_1_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_3) (safe aut_1_t_3) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_3)) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)))
	)
	(:action move_safe_aut_1_t4_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_4) (safe aut_1_t_4) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)))
		:effect (and (F aut_1_q_1) (newCnt aut_1_q_1 ?m) (not (poss aut_1_t_4)))
	)
	(:action move_safe_aut_1_t5_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_5) (safe aut_1_t_5) (oldCnt aut_1_q_1 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?m) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)))
	)
	(:action move_safe_aut_1_t6_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_6) (safe aut_1_t_6) (oldCnt aut_1_q_1 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?m) (not (poss aut_1_t_6)) (not (poss aut_1_t_5)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)))
	)
	(:action move_safe_aut_1_t7_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_7) (safe aut_1_t_7) (oldCnt aut_1_q_1 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?m) (not (poss aut_1_t_7)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_8)))
	)
	(:action move_safe_aut_1_t8_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_8) (safe aut_1_t_8) (oldCnt aut_1_q_1 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?m) (not (poss aut_1_t_8)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)))
	)
	(:action move_unsafe_aut_1_t9_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_9) (not (safe aut_1_t_9)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)))
	)
	(:action move_unsafe_aut_1_t10_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_10) (not (safe aut_1_t_10)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_10)) (not (poss aut_1_t_9)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)))
	)
	(:action move_unsafe_aut_1_t11_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_11) (not (safe aut_1_t_11)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_11)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_12)))
	)
	(:action move_unsafe_aut_1_t12_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_12) (not (safe aut_1_t_12)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_12)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)))
	)
	(:action move_unsafe_aut_1_t13_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_13) (not (safe aut_1_t_13)) (oldCnt aut_1_q_3 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)))
	)
	(:action move_unsafe_aut_1_t14_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_14) (not (safe aut_1_t_14)) (oldCnt aut_1_q_3 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_14)) (not (poss aut_1_t_13)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)))
	)
	(:action move_unsafe_aut_1_t15_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_15) (not (safe aut_1_t_15)) (oldCnt aut_1_q_3 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_15)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_16)))
	)
	(:action move_unsafe_aut_1_t16_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_16) (not (safe aut_1_t_16)) (oldCnt aut_1_q_3 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?n) (not (poss aut_1_t_16)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)))
	)
	(:action move_safe_aut_1_t17_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_17) (safe aut_1_t_17) (oldCnt aut_1_q_4 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_17)) (not (poss aut_1_t_18)) (not (poss aut_1_t_19)) (not (poss aut_1_t_20)))
	)
	(:action move_safe_aut_1_t18_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_18) (safe aut_1_t_18) (oldCnt aut_1_q_4 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)) (not (poss aut_1_t_17)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_18)) (not (poss aut_1_t_17)) (not (poss aut_1_t_19)) (not (poss aut_1_t_20)))
	)
	(:action move_safe_aut_1_t19_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_19) (safe aut_1_t_19) (oldCnt aut_1_q_4 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)) (not (poss aut_1_t_17)) (not (poss aut_1_t_18)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_19)) (not (poss aut_1_t_17)) (not (poss aut_1_t_18)) (not (poss aut_1_t_20)))
	)
	(:action move_safe_aut_1_t20_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_20) (safe aut_1_t_20) (oldCnt aut_1_q_4 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)) (not (poss aut_1_t_15)) (not (poss aut_1_t_16)) (not (poss aut_1_t_17)) (not (poss aut_1_t_18)) (not (poss aut_1_t_19)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_20)) (not (poss aut_1_t_17)) (not (poss aut_1_t_18)) (not (poss aut_1_t_19)))
	)
	(:action move_safe_aut_2_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_0) (safe aut_2_t_0) (oldCnt aut_2_q_0 ?m))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)))
	)
	(:action move_safe_aut_2_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_1) (safe aut_2_t_1) (oldCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_1)) (not (poss aut_2_t_0)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)))
	)
	(:action move_safe_aut_2_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_2) (safe aut_2_t_2) (oldCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_2)) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_3)))
	)
	(:action move_safe_aut_2_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_3) (safe aut_2_t_3) (oldCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_3)) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)))
	)
	(:action move_safe_aut_2_t4_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_4) (safe aut_2_t_4) (oldCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)))
		:effect (and (F aut_2_q_1) (newCnt aut_2_q_1 ?m) (not (poss aut_2_t_4)))
	)
	(:action move_safe_aut_2_t5_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_5) (safe aut_2_t_5) (oldCnt aut_2_q_1 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)))
		:effect (and (F aut_2_q_4) (newCnt aut_2_q_4 ?m) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)))
	)
	(:action move_safe_aut_2_t6_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_6) (safe aut_2_t_6) (oldCnt aut_2_q_1 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)))
		:effect (and (F aut_2_q_4) (newCnt aut_2_q_4 ?m) (not (poss aut_2_t_6)) (not (poss aut_2_t_5)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)))
	)
	(:action move_safe_aut_2_t7_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_7) (safe aut_2_t_7) (oldCnt aut_2_q_1 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)))
		:effect (and (F aut_2_q_4) (newCnt aut_2_q_4 ?m) (not (poss aut_2_t_7)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_8)))
	)
	(:action move_safe_aut_2_t8_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_8) (safe aut_2_t_8) (oldCnt aut_2_q_1 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)))
		:effect (and (F aut_2_q_4) (newCnt aut_2_q_4 ?m) (not (poss aut_2_t_8)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)))
	)
	(:action move_unsafe_aut_2_t9_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_9) (not (safe aut_2_t_9)) (oldCnt aut_2_q_2 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)))
	)
	(:action move_unsafe_aut_2_t10_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_10) (not (safe aut_2_t_10)) (oldCnt aut_2_q_2 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_10)) (not (poss aut_2_t_9)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)))
	)
	(:action move_unsafe_aut_2_t11_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_11) (not (safe aut_2_t_11)) (oldCnt aut_2_q_2 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_11)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_12)))
	)
	(:action move_unsafe_aut_2_t12_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_12) (not (safe aut_2_t_12)) (oldCnt aut_2_q_2 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_12)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)))
	)
	(:action move_unsafe_aut_2_t13_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_13) (not (safe aut_2_t_13)) (oldCnt aut_2_q_3 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)))
	)
	(:action move_unsafe_aut_2_t14_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_14) (not (safe aut_2_t_14)) (oldCnt aut_2_q_3 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_14)) (not (poss aut_2_t_13)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)))
	)
	(:action move_unsafe_aut_2_t15_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_15) (not (safe aut_2_t_15)) (oldCnt aut_2_q_3 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_15)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_16)))
	)
	(:action move_unsafe_aut_2_t16_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_16) (not (safe aut_2_t_16)) (oldCnt aut_2_q_3 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)))
		:effect (and (F aut_2_q_2) (newCnt aut_2_q_2 ?n) (not (poss aut_2_t_16)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)))
	)
	(:action move_safe_aut_2_t17_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_17) (safe aut_2_t_17) (oldCnt aut_2_q_4 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)))
		:effect (and (F aut_2_q_3) (newCnt aut_2_q_3 ?m) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_19)) (not (poss aut_2_t_20)))
	)
	(:action move_safe_aut_2_t18_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_18) (safe aut_2_t_18) (oldCnt aut_2_q_4 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)) (not (poss aut_2_t_17)))
		:effect (and (F aut_2_q_3) (newCnt aut_2_q_3 ?m) (not (poss aut_2_t_18)) (not (poss aut_2_t_17)) (not (poss aut_2_t_19)) (not (poss aut_2_t_20)))
	)
	(:action move_safe_aut_2_t19_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_19) (safe aut_2_t_19) (oldCnt aut_2_q_4 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)))
		:effect (and (F aut_2_q_3) (newCnt aut_2_q_3 ?m) (not (poss aut_2_t_19)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_20)))
	)
	(:action move_safe_aut_2_t20_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_20) (safe aut_2_t_20) (oldCnt aut_2_q_4 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)) (not (poss aut_2_t_3)) (not (poss aut_2_t_4)) (not (poss aut_2_t_5)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_8)) (not (poss aut_2_t_9)) (not (poss aut_2_t_10)) (not (poss aut_2_t_11)) (not (poss aut_2_t_12)) (not (poss aut_2_t_13)) (not (poss aut_2_t_14)) (not (poss aut_2_t_15)) (not (poss aut_2_t_16)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_19)))
		:effect (and (F aut_2_q_3) (newCnt aut_2_q_3 ?m) (not (poss aut_2_t_20)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_19)))
	)
	(:action move_safe_aut_3_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_0) (safe aut_3_t_0) (oldCnt aut_3_q_0 ?m))
		:effect (and (F aut_3_q_0) (newCnt aut_3_q_0 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)))
	)
	(:action move_safe_aut_3_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_1) (safe aut_3_t_1) (oldCnt aut_3_q_0 ?m) (not (poss aut_3_t_0)))
		:effect (and (F aut_3_q_0) (newCnt aut_3_q_0 ?m) (not (poss aut_3_t_1)) (not (poss aut_3_t_0)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)))
	)
	(:action move_safe_aut_3_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_2) (safe aut_3_t_2) (oldCnt aut_3_q_0 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)))
		:effect (and (F aut_3_q_0) (newCnt aut_3_q_0 ?m) (not (poss aut_3_t_2)) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_3)))
	)
	(:action move_safe_aut_3_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_3) (safe aut_3_t_3) (oldCnt aut_3_q_0 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)))
		:effect (and (F aut_3_q_0) (newCnt aut_3_q_0 ?m) (not (poss aut_3_t_3)) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)))
	)
	(:action move_safe_aut_3_t4_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_4) (safe aut_3_t_4) (oldCnt aut_3_q_0 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)))
		:effect (and (F aut_3_q_1) (newCnt aut_3_q_1 ?m) (not (poss aut_3_t_4)))
	)
	(:action move_safe_aut_3_t5_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_5) (safe aut_3_t_5) (oldCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)))
		:effect (and (F aut_3_q_4) (newCnt aut_3_q_4 ?m) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)))
	)
	(:action move_safe_aut_3_t6_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_6) (safe aut_3_t_6) (oldCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)))
		:effect (and (F aut_3_q_4) (newCnt aut_3_q_4 ?m) (not (poss aut_3_t_6)) (not (poss aut_3_t_5)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)))
	)
	(:action move_safe_aut_3_t7_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_7) (safe aut_3_t_7) (oldCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)))
		:effect (and (F aut_3_q_4) (newCnt aut_3_q_4 ?m) (not (poss aut_3_t_7)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_8)))
	)
	(:action move_safe_aut_3_t8_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_8) (safe aut_3_t_8) (oldCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)))
		:effect (and (F aut_3_q_4) (newCnt aut_3_q_4 ?m) (not (poss aut_3_t_8)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)))
	)
	(:action move_unsafe_aut_3_t9_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_9) (not (safe aut_3_t_9)) (oldCnt aut_3_q_2 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)))
	)
	(:action move_unsafe_aut_3_t10_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_10) (not (safe aut_3_t_10)) (oldCnt aut_3_q_2 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_10)) (not (poss aut_3_t_9)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)))
	)
	(:action move_unsafe_aut_3_t11_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_11) (not (safe aut_3_t_11)) (oldCnt aut_3_q_2 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_11)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_12)))
	)
	(:action move_unsafe_aut_3_t12_2_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_12) (not (safe aut_3_t_12)) (oldCnt aut_3_q_2 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_12)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)))
	)
	(:action move_unsafe_aut_3_t13_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_13) (not (safe aut_3_t_13)) (oldCnt aut_3_q_3 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)))
	)
	(:action move_unsafe_aut_3_t14_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_14) (not (safe aut_3_t_14)) (oldCnt aut_3_q_3 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_14)) (not (poss aut_3_t_13)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)))
	)
	(:action move_unsafe_aut_3_t15_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_15) (not (safe aut_3_t_15)) (oldCnt aut_3_q_3 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_15)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_16)))
	)
	(:action move_unsafe_aut_3_t16_3_2
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_16) (not (safe aut_3_t_16)) (oldCnt aut_3_q_3 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?n) (not (poss aut_3_t_16)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)))
	)
	(:action move_safe_aut_3_t17_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_17) (safe aut_3_t_17) (oldCnt aut_3_q_4 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?m) (not (poss aut_3_t_17)) (not (poss aut_3_t_18)) (not (poss aut_3_t_19)) (not (poss aut_3_t_20)))
	)
	(:action move_safe_aut_3_t18_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_18) (safe aut_3_t_18) (oldCnt aut_3_q_4 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_17)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?m) (not (poss aut_3_t_18)) (not (poss aut_3_t_17)) (not (poss aut_3_t_19)) (not (poss aut_3_t_20)))
	)
	(:action move_safe_aut_3_t19_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_19) (safe aut_3_t_19) (oldCnt aut_3_q_4 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_17)) (not (poss aut_3_t_18)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?m) (not (poss aut_3_t_19)) (not (poss aut_3_t_17)) (not (poss aut_3_t_18)) (not (poss aut_3_t_20)))
	)
	(:action move_safe_aut_3_t20_4_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_20) (safe aut_3_t_20) (oldCnt aut_3_q_4 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)) (not (poss aut_3_t_6)) (not (poss aut_3_t_7)) (not (poss aut_3_t_8)) (not (poss aut_3_t_9)) (not (poss aut_3_t_10)) (not (poss aut_3_t_11)) (not (poss aut_3_t_12)) (not (poss aut_3_t_13)) (not (poss aut_3_t_14)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_17)) (not (poss aut_3_t_18)) (not (poss aut_3_t_19)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?m) (not (poss aut_3_t_20)) (not (poss aut_3_t_17)) (not (poss aut_3_t_18)) (not (poss aut_3_t_19)))
	)
	(:action move_safe_aut_4_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_0) (safe aut_4_t_0) (oldCnt aut_4_q_0 ?m))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_1) (safe aut_4_t_1) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_1)) (not (poss aut_4_t_0)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_2) (safe aut_4_t_2) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_2)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_3) (safe aut_4_t_3) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_3)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_4) (safe aut_4_t_4) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_4)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_5) (safe aut_4_t_5) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_5)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_6) (safe aut_4_t_6) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_6)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_7)))
	)
	(:action move_safe_aut_4_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_7) (safe aut_4_t_7) (oldCnt aut_4_q_0 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)))
		:effect (and (F aut_4_q_0) (newCnt aut_4_q_0 ?m) (not (poss aut_4_t_7)) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)))
	)
	(:action move_unsafe_aut_4_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_8) (not (safe aut_4_t_8)) (oldCnt aut_4_q_0 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)))
	)
	(:action move_unsafe_aut_4_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_9) (not (safe aut_4_t_9)) (oldCnt aut_4_q_0 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_9)) (not (poss aut_4_t_8)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)))
	)
	(:action move_unsafe_aut_4_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_10) (not (safe aut_4_t_10)) (oldCnt aut_4_q_0 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_10)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_11)))
	)
	(:action move_unsafe_aut_4_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_11) (not (safe aut_4_t_11)) (oldCnt aut_4_q_0 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_11)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)))
	)
	(:action move_unsafe_aut_4_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_12) (not (safe aut_4_t_12)) (oldCnt aut_4_q_1 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_12)) (not (poss aut_4_t_13)) (not (poss aut_4_t_14)) (not (poss aut_4_t_15)))
	)
	(:action move_unsafe_aut_4_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_13) (not (safe aut_4_t_13)) (oldCnt aut_4_q_1 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_4_t_12)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_13)) (not (poss aut_4_t_12)) (not (poss aut_4_t_14)) (not (poss aut_4_t_15)))
	)
	(:action move_unsafe_aut_4_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_14) (not (safe aut_4_t_14)) (oldCnt aut_4_q_1 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_4_t_12)) (not (poss aut_4_t_13)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_14)) (not (poss aut_4_t_12)) (not (poss aut_4_t_13)) (not (poss aut_4_t_15)))
	)
	(:action move_unsafe_aut_4_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_15) (not (safe aut_4_t_15)) (oldCnt aut_4_q_1 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_7)) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_4_t_12)) (not (poss aut_4_t_13)) (not (poss aut_4_t_14)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?n) (not (poss aut_4_t_15)) (not (poss aut_4_t_12)) (not (poss aut_4_t_13)) (not (poss aut_4_t_14)))
	)
	(:action move_safe_aut_5_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_0) (safe aut_5_t_0) (oldCnt aut_5_q_0 ?m))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_1) (safe aut_5_t_1) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_1)) (not (poss aut_5_t_0)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_2) (safe aut_5_t_2) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_2)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_3) (safe aut_5_t_3) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_3)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_4) (safe aut_5_t_4) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_4)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_5) (safe aut_5_t_5) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_5)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_6) (safe aut_5_t_6) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_6)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_7)))
	)
	(:action move_safe_aut_5_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_7) (safe aut_5_t_7) (oldCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_7)) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)))
	)
	(:action move_unsafe_aut_5_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_8) (not (safe aut_5_t_8)) (oldCnt aut_5_q_0 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)))
	)
	(:action move_unsafe_aut_5_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_9) (not (safe aut_5_t_9)) (oldCnt aut_5_q_0 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_9)) (not (poss aut_5_t_8)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)))
	)
	(:action move_unsafe_aut_5_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_10) (not (safe aut_5_t_10)) (oldCnt aut_5_q_0 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_10)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_11)))
	)
	(:action move_unsafe_aut_5_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_11) (not (safe aut_5_t_11)) (oldCnt aut_5_q_0 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_11)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)))
	)
	(:action move_unsafe_aut_5_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_12) (not (safe aut_5_t_12)) (oldCnt aut_5_q_1 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_14)) (not (poss aut_5_t_15)))
	)
	(:action move_unsafe_aut_5_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_13) (not (safe aut_5_t_13)) (oldCnt aut_5_q_1 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)) (not (poss aut_5_t_12)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_13)) (not (poss aut_5_t_12)) (not (poss aut_5_t_14)) (not (poss aut_5_t_15)))
	)
	(:action move_unsafe_aut_5_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_14) (not (safe aut_5_t_14)) (oldCnt aut_5_q_1 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_14)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_15)))
	)
	(:action move_unsafe_aut_5_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_15) (not (safe aut_5_t_15)) (oldCnt aut_5_q_1 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_3)) (not (poss aut_5_t_4)) (not (poss aut_5_t_5)) (not (poss aut_5_t_6)) (not (poss aut_5_t_7)) (not (poss aut_5_t_8)) (not (poss aut_5_t_9)) (not (poss aut_5_t_10)) (not (poss aut_5_t_11)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_14)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_15)) (not (poss aut_5_t_12)) (not (poss aut_5_t_13)) (not (poss aut_5_t_14)))
	)
	(:action move_safe_aut_6_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_0) (safe aut_6_t_0) (oldCnt aut_6_q_0 ?m))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_1) (safe aut_6_t_1) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_1)) (not (poss aut_6_t_0)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_2) (safe aut_6_t_2) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_2)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_3) (safe aut_6_t_3) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_3)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_4) (safe aut_6_t_4) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_4)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_5) (safe aut_6_t_5) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_5)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_6) (safe aut_6_t_6) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_6)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_7)))
	)
	(:action move_safe_aut_6_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_7) (safe aut_6_t_7) (oldCnt aut_6_q_0 ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)))
		:effect (and (F aut_6_q_0) (newCnt aut_6_q_0 ?m) (not (poss aut_6_t_7)) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)))
	)
	(:action move_unsafe_aut_6_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_8) (not (safe aut_6_t_8)) (oldCnt aut_6_q_0 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)))
	)
	(:action move_unsafe_aut_6_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_9) (not (safe aut_6_t_9)) (oldCnt aut_6_q_0 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_9)) (not (poss aut_6_t_8)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)))
	)
	(:action move_unsafe_aut_6_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_10) (not (safe aut_6_t_10)) (oldCnt aut_6_q_0 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_10)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_11)))
	)
	(:action move_unsafe_aut_6_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_11) (not (safe aut_6_t_11)) (oldCnt aut_6_q_0 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_11)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)))
	)
	(:action move_unsafe_aut_6_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_12) (not (safe aut_6_t_12)) (oldCnt aut_6_q_1 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_12)) (not (poss aut_6_t_13)) (not (poss aut_6_t_14)) (not (poss aut_6_t_15)))
	)
	(:action move_unsafe_aut_6_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_13) (not (safe aut_6_t_13)) (oldCnt aut_6_q_1 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)) (not (poss aut_6_t_12)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_13)) (not (poss aut_6_t_12)) (not (poss aut_6_t_14)) (not (poss aut_6_t_15)))
	)
	(:action move_unsafe_aut_6_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_14) (not (safe aut_6_t_14)) (oldCnt aut_6_q_1 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)) (not (poss aut_6_t_12)) (not (poss aut_6_t_13)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_14)) (not (poss aut_6_t_12)) (not (poss aut_6_t_13)) (not (poss aut_6_t_15)))
	)
	(:action move_unsafe_aut_6_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_6_t_15) (not (safe aut_6_t_15)) (oldCnt aut_6_q_1 ?m) (nxt ?n ?m) (not (poss aut_6_t_0)) (not (poss aut_6_t_1)) (not (poss aut_6_t_2)) (not (poss aut_6_t_3)) (not (poss aut_6_t_4)) (not (poss aut_6_t_5)) (not (poss aut_6_t_6)) (not (poss aut_6_t_7)) (not (poss aut_6_t_8)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_6_t_11)) (not (poss aut_6_t_12)) (not (poss aut_6_t_13)) (not (poss aut_6_t_14)))
		:effect (and (F aut_6_q_1) (newCnt aut_6_q_1 ?n) (not (poss aut_6_t_15)) (not (poss aut_6_t_12)) (not (poss aut_6_t_13)) (not (poss aut_6_t_14)))
	)
	(:action move_safe_aut_7_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_0) (safe aut_7_t_0) (oldCnt aut_7_q_0 ?m))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_1) (safe aut_7_t_1) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_1)) (not (poss aut_7_t_0)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_2) (safe aut_7_t_2) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_2)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_3) (safe aut_7_t_3) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_3)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_4) (safe aut_7_t_4) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_4)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_5) (safe aut_7_t_5) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_5)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_6) (safe aut_7_t_6) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_6)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_7)))
	)
	(:action move_safe_aut_7_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_7) (safe aut_7_t_7) (oldCnt aut_7_q_0 ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)))
		:effect (and (F aut_7_q_0) (newCnt aut_7_q_0 ?m) (not (poss aut_7_t_7)) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)))
	)
	(:action move_unsafe_aut_7_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_8) (not (safe aut_7_t_8)) (oldCnt aut_7_q_0 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)))
	)
	(:action move_unsafe_aut_7_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_9) (not (safe aut_7_t_9)) (oldCnt aut_7_q_0 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_9)) (not (poss aut_7_t_8)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)))
	)
	(:action move_unsafe_aut_7_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_10) (not (safe aut_7_t_10)) (oldCnt aut_7_q_0 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_10)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_11)))
	)
	(:action move_unsafe_aut_7_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_11) (not (safe aut_7_t_11)) (oldCnt aut_7_q_0 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_11)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)))
	)
	(:action move_unsafe_aut_7_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_12) (not (safe aut_7_t_12)) (oldCnt aut_7_q_1 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_12)) (not (poss aut_7_t_13)) (not (poss aut_7_t_14)) (not (poss aut_7_t_15)))
	)
	(:action move_unsafe_aut_7_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_13) (not (safe aut_7_t_13)) (oldCnt aut_7_q_1 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)) (not (poss aut_7_t_12)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_13)) (not (poss aut_7_t_12)) (not (poss aut_7_t_14)) (not (poss aut_7_t_15)))
	)
	(:action move_unsafe_aut_7_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_14) (not (safe aut_7_t_14)) (oldCnt aut_7_q_1 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)) (not (poss aut_7_t_12)) (not (poss aut_7_t_13)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_14)) (not (poss aut_7_t_12)) (not (poss aut_7_t_13)) (not (poss aut_7_t_15)))
	)
	(:action move_unsafe_aut_7_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_7_t_15) (not (safe aut_7_t_15)) (oldCnt aut_7_q_1 ?m) (nxt ?n ?m) (not (poss aut_7_t_0)) (not (poss aut_7_t_1)) (not (poss aut_7_t_2)) (not (poss aut_7_t_3)) (not (poss aut_7_t_4)) (not (poss aut_7_t_5)) (not (poss aut_7_t_6)) (not (poss aut_7_t_7)) (not (poss aut_7_t_8)) (not (poss aut_7_t_9)) (not (poss aut_7_t_10)) (not (poss aut_7_t_11)) (not (poss aut_7_t_12)) (not (poss aut_7_t_13)) (not (poss aut_7_t_14)))
		:effect (and (F aut_7_q_1) (newCnt aut_7_q_1 ?n) (not (poss aut_7_t_15)) (not (poss aut_7_t_12)) (not (poss aut_7_t_13)) (not (poss aut_7_t_14)))
	)
	(:action move_safe_aut_8_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_0) (safe aut_8_t_0) (oldCnt aut_8_q_0 ?m))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_1) (safe aut_8_t_1) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_1)) (not (poss aut_8_t_0)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_2) (safe aut_8_t_2) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_2)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_3) (safe aut_8_t_3) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_3)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_4) (safe aut_8_t_4) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_4)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_5) (safe aut_8_t_5) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_5)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_6) (safe aut_8_t_6) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_6)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_7)))
	)
	(:action move_safe_aut_8_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_7) (safe aut_8_t_7) (oldCnt aut_8_q_0 ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)))
		:effect (and (F aut_8_q_0) (newCnt aut_8_q_0 ?m) (not (poss aut_8_t_7)) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)))
	)
	(:action move_unsafe_aut_8_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_8) (not (safe aut_8_t_8)) (oldCnt aut_8_q_0 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)))
	)
	(:action move_unsafe_aut_8_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_9) (not (safe aut_8_t_9)) (oldCnt aut_8_q_0 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_9)) (not (poss aut_8_t_8)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)))
	)
	(:action move_unsafe_aut_8_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_10) (not (safe aut_8_t_10)) (oldCnt aut_8_q_0 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_10)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_11)))
	)
	(:action move_unsafe_aut_8_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_11) (not (safe aut_8_t_11)) (oldCnt aut_8_q_0 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_11)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)))
	)
	(:action move_unsafe_aut_8_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_12) (not (safe aut_8_t_12)) (oldCnt aut_8_q_1 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_12)) (not (poss aut_8_t_13)) (not (poss aut_8_t_14)) (not (poss aut_8_t_15)))
	)
	(:action move_unsafe_aut_8_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_13) (not (safe aut_8_t_13)) (oldCnt aut_8_q_1 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)) (not (poss aut_8_t_12)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_13)) (not (poss aut_8_t_12)) (not (poss aut_8_t_14)) (not (poss aut_8_t_15)))
	)
	(:action move_unsafe_aut_8_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_14) (not (safe aut_8_t_14)) (oldCnt aut_8_q_1 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)) (not (poss aut_8_t_12)) (not (poss aut_8_t_13)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_14)) (not (poss aut_8_t_12)) (not (poss aut_8_t_13)) (not (poss aut_8_t_15)))
	)
	(:action move_unsafe_aut_8_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_8_t_15) (not (safe aut_8_t_15)) (oldCnt aut_8_q_1 ?m) (nxt ?n ?m) (not (poss aut_8_t_0)) (not (poss aut_8_t_1)) (not (poss aut_8_t_2)) (not (poss aut_8_t_3)) (not (poss aut_8_t_4)) (not (poss aut_8_t_5)) (not (poss aut_8_t_6)) (not (poss aut_8_t_7)) (not (poss aut_8_t_8)) (not (poss aut_8_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_11)) (not (poss aut_8_t_12)) (not (poss aut_8_t_13)) (not (poss aut_8_t_14)))
		:effect (and (F aut_8_q_1) (newCnt aut_8_q_1 ?n) (not (poss aut_8_t_15)) (not (poss aut_8_t_12)) (not (poss aut_8_t_13)) (not (poss aut_8_t_14)))
	)
	(:action move_safe_aut_9_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_0) (safe aut_9_t_0) (oldCnt aut_9_q_0 ?m))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_1) (safe aut_9_t_1) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_1)) (not (poss aut_9_t_0)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t2_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_2) (safe aut_9_t_2) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_2)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t3_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_3) (safe aut_9_t_3) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_3)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t4_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_4) (safe aut_9_t_4) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_4)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t5_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_5) (safe aut_9_t_5) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_5)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t6_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_6) (safe aut_9_t_6) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_6)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_7)))
	)
	(:action move_safe_aut_9_t7_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_7) (safe aut_9_t_7) (oldCnt aut_9_q_0 ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)))
		:effect (and (F aut_9_q_0) (newCnt aut_9_q_0 ?m) (not (poss aut_9_t_7)) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)))
	)
	(:action move_unsafe_aut_9_t8_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_8) (not (safe aut_9_t_8)) (oldCnt aut_9_q_0 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)))
	)
	(:action move_unsafe_aut_9_t9_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_9) (not (safe aut_9_t_9)) (oldCnt aut_9_q_0 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_9)) (not (poss aut_9_t_8)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)))
	)
	(:action move_unsafe_aut_9_t10_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_10) (not (safe aut_9_t_10)) (oldCnt aut_9_q_0 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_10)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_11)))
	)
	(:action move_unsafe_aut_9_t11_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_11) (not (safe aut_9_t_11)) (oldCnt aut_9_q_0 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_11)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)))
	)
	(:action move_unsafe_aut_9_t12_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_12) (not (safe aut_9_t_12)) (oldCnt aut_9_q_1 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_12)) (not (poss aut_9_t_13)) (not (poss aut_9_t_14)) (not (poss aut_9_t_15)))
	)
	(:action move_unsafe_aut_9_t13_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_13) (not (safe aut_9_t_13)) (oldCnt aut_9_q_1 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)) (not (poss aut_9_t_12)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_13)) (not (poss aut_9_t_12)) (not (poss aut_9_t_14)) (not (poss aut_9_t_15)))
	)
	(:action move_unsafe_aut_9_t14_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_14) (not (safe aut_9_t_14)) (oldCnt aut_9_q_1 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)) (not (poss aut_9_t_12)) (not (poss aut_9_t_13)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_14)) (not (poss aut_9_t_12)) (not (poss aut_9_t_13)) (not (poss aut_9_t_15)))
	)
	(:action move_unsafe_aut_9_t15_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_9_t_15) (not (safe aut_9_t_15)) (oldCnt aut_9_q_1 ?m) (nxt ?n ?m) (not (poss aut_9_t_0)) (not (poss aut_9_t_1)) (not (poss aut_9_t_2)) (not (poss aut_9_t_3)) (not (poss aut_9_t_4)) (not (poss aut_9_t_5)) (not (poss aut_9_t_6)) (not (poss aut_9_t_7)) (not (poss aut_9_t_8)) (not (poss aut_9_t_9)) (not (poss aut_9_t_10)) (not (poss aut_9_t_11)) (not (poss aut_9_t_12)) (not (poss aut_9_t_13)) (not (poss aut_9_t_14)))
		:effect (and (F aut_9_q_1) (newCnt aut_9_q_1 ?n) (not (poss aut_9_t_15)) (not (poss aut_9_t_12)) (not (poss aut_9_t_13)) (not (poss aut_9_t_14)))
	)
	(:action enable_var_g1
		:precondition (and (turn g1))
		:effect (and (not (turn g1)) (turn g2) (not (poss aut_0_t_8)) (not (poss aut_0_t_20)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_15)) (not (poss aut_0_t_18)) (not (poss aut_0_t_13)) (not (poss aut_0_t_17)) (not (poss aut_0_t_16)) (not (poss aut_0_t_14)) (not (poss aut_0_t_7)) (not (poss aut_0_t_19)) (not (poss aut_4_t_0)) (not (poss aut_4_t_2)) (not (poss aut_4_t_4)) (not (poss aut_4_t_6)) (not (poss aut_5_t_6)) (not (poss aut_5_t_4)) (not (poss aut_5_t_0)) (not (poss aut_5_t_2)) (not (poss aut_6_t_0)) (not (poss aut_6_t_4)) (not (poss aut_6_t_2)) (not (poss aut_6_t_6)))
	)
	(:action disable_var_g1
		:precondition (and (turn g1))
		:effect (and (not (turn g1)) (turn g2) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_5_t_9)) (not (poss aut_5_t_8)) (not (poss aut_5_t_11)) (not (poss aut_5_t_10)) (not (poss aut_6_t_8)) (not (poss aut_6_t_11)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)))
	)
	(:action enable_var_g2
		:precondition (and (turn g2))
		:effect (and (not (turn g2)) (turn g3) (not (poss aut_1_t_7)) (not (poss aut_1_t_17)) (not (poss aut_1_t_15)) (not (poss aut_1_t_8)) (not (poss aut_1_t_6)) (not (poss aut_1_t_14)) (not (poss aut_1_t_19)) (not (poss aut_1_t_13)) (not (poss aut_1_t_20)) (not (poss aut_1_t_5)) (not (poss aut_1_t_18)) (not (poss aut_1_t_16)) (not (poss aut_4_t_1)) (not (poss aut_4_t_5)) (not (poss aut_4_t_7)) (not (poss aut_4_t_3)) (not (poss aut_7_t_2)) (not (poss aut_7_t_0)) (not (poss aut_7_t_6)) (not (poss aut_7_t_4)) (not (poss aut_8_t_4)) (not (poss aut_8_t_6)) (not (poss aut_8_t_2)) (not (poss aut_8_t_0)))
	)
	(:action disable_var_g2
		:precondition (and (turn g2))
		:effect (and (not (turn g2)) (turn g3) (not (poss aut_4_t_8)) (not (poss aut_4_t_9)) (not (poss aut_4_t_10)) (not (poss aut_4_t_11)) (not (poss aut_7_t_10)) (not (poss aut_7_t_8)) (not (poss aut_7_t_11)) (not (poss aut_7_t_9)) (not (poss aut_8_t_10)) (not (poss aut_8_t_8)) (not (poss aut_8_t_11)) (not (poss aut_8_t_9)))
	)
	(:action enable_var_g3
		:precondition (and (turn g3))
		:effect (and (not (turn g3)) (turn g4) (not (poss aut_2_t_5)) (not (poss aut_2_t_16)) (not (poss aut_2_t_13)) (not (poss aut_2_t_15)) (not (poss aut_2_t_19)) (not (poss aut_2_t_20)) (not (poss aut_2_t_14)) (not (poss aut_2_t_6)) (not (poss aut_2_t_7)) (not (poss aut_2_t_17)) (not (poss aut_2_t_18)) (not (poss aut_2_t_8)) (not (poss aut_5_t_1)) (not (poss aut_5_t_5)) (not (poss aut_5_t_3)) (not (poss aut_5_t_7)) (not (poss aut_7_t_1)) (not (poss aut_7_t_5)) (not (poss aut_7_t_3)) (not (poss aut_7_t_7)) (not (poss aut_9_t_0)) (not (poss aut_9_t_4)) (not (poss aut_9_t_2)) (not (poss aut_9_t_6)))
	)
	(:action disable_var_g3
		:precondition (and (turn g3))
		:effect (and (not (turn g3)) (turn g4) (not (poss aut_5_t_9)) (not (poss aut_5_t_8)) (not (poss aut_5_t_11)) (not (poss aut_5_t_10)) (not (poss aut_7_t_10)) (not (poss aut_7_t_8)) (not (poss aut_7_t_11)) (not (poss aut_7_t_9)) (not (poss aut_9_t_11)) (not (poss aut_9_t_8)) (not (poss aut_9_t_10)) (not (poss aut_9_t_9)))
	)
	(:action enable_var_g4
		:precondition (and (turn g4))
		:effect (and (not (turn g4)) (turn y) (not (poss aut_3_t_7)) (not (poss aut_3_t_18)) (not (poss aut_3_t_15)) (not (poss aut_3_t_16)) (not (poss aut_3_t_19)) (not (poss aut_3_t_20)) (not (poss aut_3_t_6)) (not (poss aut_3_t_13)) (not (poss aut_3_t_5)) (not (poss aut_3_t_14)) (not (poss aut_3_t_8)) (not (poss aut_3_t_17)) (not (poss aut_6_t_7)) (not (poss aut_6_t_5)) (not (poss aut_6_t_1)) (not (poss aut_6_t_3)) (not (poss aut_8_t_7)) (not (poss aut_8_t_5)) (not (poss aut_8_t_1)) (not (poss aut_8_t_3)) (not (poss aut_9_t_5)) (not (poss aut_9_t_1)) (not (poss aut_9_t_3)) (not (poss aut_9_t_7)))
	)
	(:action disable_var_g4
		:precondition (and (turn g4))
		:effect (and (not (turn g4)) (turn y) (not (poss aut_6_t_8)) (not (poss aut_6_t_11)) (not (poss aut_6_t_9)) (not (poss aut_6_t_10)) (not (poss aut_8_t_10)) (not (poss aut_8_t_8)) (not (poss aut_8_t_11)) (not (poss aut_8_t_9)) (not (poss aut_9_t_11)) (not (poss aut_9_t_8)) (not (poss aut_9_t_10)) (not (poss aut_9_t_9)))
	)
	(:action start_sync
		:precondition (and (turn y) (forall (?t - transition) (not (poss ?t))))
		:effect (and (turn sync) (not (turn y)) (forall (?q - autstate  ?m  - alphacounter) (not (oldCnt ?q ?m ) ) ))
	)
	(:action sync_F_aut_0_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_0))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (poss aut_0_t_3) (poss aut_0_t_4) (oldCnt aut_0_q_0 alphacount_0) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_5) (poss aut_0_t_6) (poss aut_0_t_7) (poss aut_0_t_8) (oldCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_2) (newCnt aut_0_q_2 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)))
		:effect (and (poss aut_0_t_9) (poss aut_0_t_10) (poss aut_0_t_11) (poss aut_0_t_12) (oldCnt aut_0_q_2 alphacount_0) (not (F aut_0_q_2)) (forall (?n - alphacounter) (not (newCnt aut_0_q_2 ?n))))
	)
	(:action sync_F_aut_0_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_3) (newCnt aut_0_q_3 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)))
		:effect (and (poss aut_0_t_13) (poss aut_0_t_14) (poss aut_0_t_15) (poss aut_0_t_16) (oldCnt aut_0_q_3 alphacount_0) (not (F aut_0_q_3)) (forall (?n - alphacounter) (not (newCnt aut_0_q_3 ?n))))
	)
	(:action sync_F_aut_0_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_4) (newCnt aut_0_q_4 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)))
		:effect (and (poss aut_0_t_17) (poss aut_0_t_18) (poss aut_0_t_19) (poss aut_0_t_20) (oldCnt aut_0_q_4 alphacount_0) (not (F aut_0_q_4)) (forall (?n - alphacounter) (not (newCnt aut_0_q_4 ?n))))
	)
	(:action sync_F_aut_1_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_0) (newCnt aut_1_q_0 alphacount_0))
		:effect (and (poss aut_1_t_0) (poss aut_1_t_1) (poss aut_1_t_2) (poss aut_1_t_3) (poss aut_1_t_4) (oldCnt aut_1_q_0 alphacount_0) (not (F aut_1_q_0)) (forall (?n - alphacounter) (not (newCnt aut_1_q_0 ?n))))
	)
	(:action sync_F_aut_1_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_1) (newCnt aut_1_q_1 alphacount_0) (not (F aut_1_q_0)))
		:effect (and (poss aut_1_t_5) (poss aut_1_t_6) (poss aut_1_t_7) (poss aut_1_t_8) (oldCnt aut_1_q_1 alphacount_0) (not (F aut_1_q_1)) (forall (?n - alphacounter) (not (newCnt aut_1_q_1 ?n))))
	)
	(:action sync_F_aut_1_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_2) (newCnt aut_1_q_2 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)))
		:effect (and (poss aut_1_t_9) (poss aut_1_t_10) (poss aut_1_t_11) (poss aut_1_t_12) (oldCnt aut_1_q_2 alphacount_0) (not (F aut_1_q_2)) (forall (?n - alphacounter) (not (newCnt aut_1_q_2 ?n))))
	)
	(:action sync_F_aut_1_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_3) (newCnt aut_1_q_3 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)) (not (F aut_1_q_2)))
		:effect (and (poss aut_1_t_13) (poss aut_1_t_14) (poss aut_1_t_15) (poss aut_1_t_16) (oldCnt aut_1_q_3 alphacount_0) (not (F aut_1_q_3)) (forall (?n - alphacounter) (not (newCnt aut_1_q_3 ?n))))
	)
	(:action sync_F_aut_1_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_4) (newCnt aut_1_q_4 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)) (not (F aut_1_q_2)) (not (F aut_1_q_3)))
		:effect (and (poss aut_1_t_17) (poss aut_1_t_18) (poss aut_1_t_19) (poss aut_1_t_20) (oldCnt aut_1_q_4 alphacount_0) (not (F aut_1_q_4)) (forall (?n - alphacounter) (not (newCnt aut_1_q_4 ?n))))
	)
	(:action sync_F_aut_2_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_0) (newCnt aut_2_q_0 alphacount_0))
		:effect (and (poss aut_2_t_0) (poss aut_2_t_1) (poss aut_2_t_2) (poss aut_2_t_3) (poss aut_2_t_4) (oldCnt aut_2_q_0 alphacount_0) (not (F aut_2_q_0)) (forall (?n - alphacounter) (not (newCnt aut_2_q_0 ?n))))
	)
	(:action sync_F_aut_2_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_1) (newCnt aut_2_q_1 alphacount_0) (not (F aut_2_q_0)))
		:effect (and (poss aut_2_t_5) (poss aut_2_t_6) (poss aut_2_t_7) (poss aut_2_t_8) (oldCnt aut_2_q_1 alphacount_0) (not (F aut_2_q_1)) (forall (?n - alphacounter) (not (newCnt aut_2_q_1 ?n))))
	)
	(:action sync_F_aut_2_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_2) (newCnt aut_2_q_2 alphacount_0) (not (F aut_2_q_0)) (not (F aut_2_q_1)))
		:effect (and (poss aut_2_t_9) (poss aut_2_t_10) (poss aut_2_t_11) (poss aut_2_t_12) (oldCnt aut_2_q_2 alphacount_0) (not (F aut_2_q_2)) (forall (?n - alphacounter) (not (newCnt aut_2_q_2 ?n))))
	)
	(:action sync_F_aut_2_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_3) (newCnt aut_2_q_3 alphacount_0) (not (F aut_2_q_0)) (not (F aut_2_q_1)) (not (F aut_2_q_2)))
		:effect (and (poss aut_2_t_13) (poss aut_2_t_14) (poss aut_2_t_15) (poss aut_2_t_16) (oldCnt aut_2_q_3 alphacount_0) (not (F aut_2_q_3)) (forall (?n - alphacounter) (not (newCnt aut_2_q_3 ?n))))
	)
	(:action sync_F_aut_2_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_4) (newCnt aut_2_q_4 alphacount_0) (not (F aut_2_q_0)) (not (F aut_2_q_1)) (not (F aut_2_q_2)) (not (F aut_2_q_3)))
		:effect (and (poss aut_2_t_17) (poss aut_2_t_18) (poss aut_2_t_19) (poss aut_2_t_20) (oldCnt aut_2_q_4 alphacount_0) (not (F aut_2_q_4)) (forall (?n - alphacounter) (not (newCnt aut_2_q_4 ?n))))
	)
	(:action sync_F_aut_3_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_0) (newCnt aut_3_q_0 alphacount_0))
		:effect (and (poss aut_3_t_0) (poss aut_3_t_1) (poss aut_3_t_2) (poss aut_3_t_3) (poss aut_3_t_4) (oldCnt aut_3_q_0 alphacount_0) (not (F aut_3_q_0)) (forall (?n - alphacounter) (not (newCnt aut_3_q_0 ?n))))
	)
	(:action sync_F_aut_3_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_1) (newCnt aut_3_q_1 alphacount_0) (not (F aut_3_q_0)))
		:effect (and (poss aut_3_t_5) (poss aut_3_t_6) (poss aut_3_t_7) (poss aut_3_t_8) (oldCnt aut_3_q_1 alphacount_0) (not (F aut_3_q_1)) (forall (?n - alphacounter) (not (newCnt aut_3_q_1 ?n))))
	)
	(:action sync_F_aut_3_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_2) (newCnt aut_3_q_2 alphacount_0) (not (F aut_3_q_0)) (not (F aut_3_q_1)))
		:effect (and (poss aut_3_t_9) (poss aut_3_t_10) (poss aut_3_t_11) (poss aut_3_t_12) (oldCnt aut_3_q_2 alphacount_0) (not (F aut_3_q_2)) (forall (?n - alphacounter) (not (newCnt aut_3_q_2 ?n))))
	)
	(:action sync_F_aut_3_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_3) (newCnt aut_3_q_3 alphacount_0) (not (F aut_3_q_0)) (not (F aut_3_q_1)) (not (F aut_3_q_2)))
		:effect (and (poss aut_3_t_13) (poss aut_3_t_14) (poss aut_3_t_15) (poss aut_3_t_16) (oldCnt aut_3_q_3 alphacount_0) (not (F aut_3_q_3)) (forall (?n - alphacounter) (not (newCnt aut_3_q_3 ?n))))
	)
	(:action sync_F_aut_3_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_4) (newCnt aut_3_q_4 alphacount_0) (not (F aut_3_q_0)) (not (F aut_3_q_1)) (not (F aut_3_q_2)) (not (F aut_3_q_3)))
		:effect (and (poss aut_3_t_17) (poss aut_3_t_18) (poss aut_3_t_19) (poss aut_3_t_20) (oldCnt aut_3_q_4 alphacount_0) (not (F aut_3_q_4)) (forall (?n - alphacounter) (not (newCnt aut_3_q_4 ?n))))
	)
	(:action sync_F_aut_4_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_0) (newCnt aut_4_q_0 alphacount_0))
		:effect (and (poss aut_4_t_0) (poss aut_4_t_1) (poss aut_4_t_2) (poss aut_4_t_3) (poss aut_4_t_4) (poss aut_4_t_5) (poss aut_4_t_6) (poss aut_4_t_7) (poss aut_4_t_8) (poss aut_4_t_9) (poss aut_4_t_10) (poss aut_4_t_11) (oldCnt aut_4_q_0 alphacount_0) (not (F aut_4_q_0)) (forall (?n - alphacounter) (not (newCnt aut_4_q_0 ?n))))
	)
	(:action sync_F_aut_4_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_1) (newCnt aut_4_q_1 alphacount_0) (not (F aut_4_q_0)))
		:effect (and (poss aut_4_t_12) (poss aut_4_t_13) (poss aut_4_t_14) (poss aut_4_t_15) (oldCnt aut_4_q_1 alphacount_0) (not (F aut_4_q_1)) (forall (?n - alphacounter) (not (newCnt aut_4_q_1 ?n))))
	)
	(:action sync_F_aut_5_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_5_q_0) (newCnt aut_5_q_0 alphacount_0))
		:effect (and (poss aut_5_t_0) (poss aut_5_t_1) (poss aut_5_t_2) (poss aut_5_t_3) (poss aut_5_t_4) (poss aut_5_t_5) (poss aut_5_t_6) (poss aut_5_t_7) (poss aut_5_t_8) (poss aut_5_t_9) (poss aut_5_t_10) (poss aut_5_t_11) (oldCnt aut_5_q_0 alphacount_0) (not (F aut_5_q_0)) (forall (?n - alphacounter) (not (newCnt aut_5_q_0 ?n))))
	)
	(:action sync_F_aut_5_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_5_q_1) (newCnt aut_5_q_1 alphacount_0) (not (F aut_5_q_0)))
		:effect (and (poss aut_5_t_12) (poss aut_5_t_13) (poss aut_5_t_14) (poss aut_5_t_15) (oldCnt aut_5_q_1 alphacount_0) (not (F aut_5_q_1)) (forall (?n - alphacounter) (not (newCnt aut_5_q_1 ?n))))
	)
	(:action sync_F_aut_6_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_6_q_0) (newCnt aut_6_q_0 alphacount_0))
		:effect (and (poss aut_6_t_0) (poss aut_6_t_1) (poss aut_6_t_2) (poss aut_6_t_3) (poss aut_6_t_4) (poss aut_6_t_5) (poss aut_6_t_6) (poss aut_6_t_7) (poss aut_6_t_8) (poss aut_6_t_9) (poss aut_6_t_10) (poss aut_6_t_11) (oldCnt aut_6_q_0 alphacount_0) (not (F aut_6_q_0)) (forall (?n - alphacounter) (not (newCnt aut_6_q_0 ?n))))
	)
	(:action sync_F_aut_6_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_6_q_1) (newCnt aut_6_q_1 alphacount_0) (not (F aut_6_q_0)))
		:effect (and (poss aut_6_t_12) (poss aut_6_t_13) (poss aut_6_t_14) (poss aut_6_t_15) (oldCnt aut_6_q_1 alphacount_0) (not (F aut_6_q_1)) (forall (?n - alphacounter) (not (newCnt aut_6_q_1 ?n))))
	)
	(:action sync_F_aut_7_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_7_q_0) (newCnt aut_7_q_0 alphacount_0))
		:effect (and (poss aut_7_t_0) (poss aut_7_t_1) (poss aut_7_t_2) (poss aut_7_t_3) (poss aut_7_t_4) (poss aut_7_t_5) (poss aut_7_t_6) (poss aut_7_t_7) (poss aut_7_t_8) (poss aut_7_t_9) (poss aut_7_t_10) (poss aut_7_t_11) (oldCnt aut_7_q_0 alphacount_0) (not (F aut_7_q_0)) (forall (?n - alphacounter) (not (newCnt aut_7_q_0 ?n))))
	)
	(:action sync_F_aut_7_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_7_q_1) (newCnt aut_7_q_1 alphacount_0) (not (F aut_7_q_0)))
		:effect (and (poss aut_7_t_12) (poss aut_7_t_13) (poss aut_7_t_14) (poss aut_7_t_15) (oldCnt aut_7_q_1 alphacount_0) (not (F aut_7_q_1)) (forall (?n - alphacounter) (not (newCnt aut_7_q_1 ?n))))
	)
	(:action sync_F_aut_8_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_8_q_0) (newCnt aut_8_q_0 alphacount_0))
		:effect (and (poss aut_8_t_0) (poss aut_8_t_1) (poss aut_8_t_2) (poss aut_8_t_3) (poss aut_8_t_4) (poss aut_8_t_5) (poss aut_8_t_6) (poss aut_8_t_7) (poss aut_8_t_8) (poss aut_8_t_9) (poss aut_8_t_10) (poss aut_8_t_11) (oldCnt aut_8_q_0 alphacount_0) (not (F aut_8_q_0)) (forall (?n - alphacounter) (not (newCnt aut_8_q_0 ?n))))
	)
	(:action sync_F_aut_8_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_8_q_1) (newCnt aut_8_q_1 alphacount_0) (not (F aut_8_q_0)))
		:effect (and (poss aut_8_t_12) (poss aut_8_t_13) (poss aut_8_t_14) (poss aut_8_t_15) (oldCnt aut_8_q_1 alphacount_0) (not (F aut_8_q_1)) (forall (?n - alphacounter) (not (newCnt aut_8_q_1 ?n))))
	)
	(:action sync_F_aut_9_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_9_q_0) (newCnt aut_9_q_0 alphacount_0))
		:effect (and (poss aut_9_t_0) (poss aut_9_t_1) (poss aut_9_t_2) (poss aut_9_t_3) (poss aut_9_t_4) (poss aut_9_t_5) (poss aut_9_t_6) (poss aut_9_t_7) (poss aut_9_t_8) (poss aut_9_t_9) (poss aut_9_t_10) (poss aut_9_t_11) (oldCnt aut_9_q_0 alphacount_0) (not (F aut_9_q_0)) (forall (?n - alphacounter) (not (newCnt aut_9_q_0 ?n))))
	)
	(:action sync_F_aut_9_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_9_q_1) (newCnt aut_9_q_1 alphacount_0) (not (F aut_9_q_0)))
		:effect (and (poss aut_9_t_12) (poss aut_9_t_13) (poss aut_9_t_14) (poss aut_9_t_15) (oldCnt aut_9_q_1 alphacount_0) (not (F aut_9_q_1)) (forall (?n - alphacounter) (not (newCnt aut_9_q_1 ?n))))
	)
	(:action continue
		:precondition (and (turn sync) (forall (?q - autstate) (not (F ?q))))
		:effect (oneof 
			(and (dummy_goal))
			(and (turn r1) (not (turn sync)))
			)
		
	))