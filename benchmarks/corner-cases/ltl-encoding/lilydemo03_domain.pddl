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
	aut_0_q_5 - autstate
	aut_0_q_6 - autstate
	aut_0_q_7 - autstate
	aut_0_q_8 - autstate
	aut_0_q_9 - autstate
	aut_1_q_0 - autstate
	aut_1_q_1 - autstate
	aut_1_q_2 - autstate
	aut_1_q_3 - autstate
	aut_1_q_4 - autstate
	aut_1_q_5 - autstate
	aut_2_q_0 - autstate
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
	aut_0_t_21 - transition
	aut_0_t_22 - transition
	aut_0_t_23 - transition
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
	cancel - var
	go - var
	req - var
	grant - var
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
        
	(:action env_move_cancel
		:precondition (and (turn cancel))
		:effect (oneof 
			(and (not (turn cancel)) (turn go) (not (poss aut_0_t_16)) (not (poss aut_0_t_8)) (not (poss aut_0_t_4)) (not (poss aut_0_t_12)) (not (poss aut_0_t_14)) (not (poss aut_0_t_6)) (not (poss aut_0_t_18)) (not (poss aut_0_t_0)) (not (poss aut_0_t_22)) (not (poss aut_0_t_1)) (not (poss aut_0_t_20)) (not (poss aut_0_t_9)) (not (poss aut_1_t_12)) (not (poss aut_1_t_14)) (not (poss aut_1_t_6)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_4)))
			(and (not (turn cancel)) (turn go) (not (poss aut_0_t_2)) (not (poss aut_0_t_5)) (not (poss aut_0_t_17)) (not (poss aut_0_t_7)) (not (poss aut_0_t_13)) (not (poss aut_0_t_21)) (not (poss aut_0_t_19)) (not (poss aut_0_t_3)) (not (poss aut_0_t_15)) (not (poss aut_0_t_11)) (not (poss aut_0_t_23)) (not (poss aut_0_t_10)) (not (poss aut_1_t_7)) (not (poss aut_1_t_13)) (not (poss aut_1_t_2)) (not (poss aut_1_t_15)) (not (poss aut_1_t_11)) (not (poss aut_1_t_3)) (not (poss aut_1_t_5)) (not (poss aut_1_t_10)))
			)
		
	)
	(:action env_move_go
		:precondition (and (turn go))
		:effect (oneof 
			(and (not (turn go)) (turn req))
			(and (not (turn go)) (turn req) (not (poss aut_0_t_9)) (not (poss aut_0_t_8)) (not (poss aut_0_t_14)) (not (poss aut_0_t_7)) (not (poss aut_0_t_6)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_15)) (not (poss aut_0_t_11)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_10)) (not (poss aut_1_t_7)) (not (poss aut_1_t_14)) (not (poss aut_1_t_6)) (not (poss aut_1_t_15)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_11)) (not (poss aut_1_t_10)))
			)
		
	)
	(:action env_move_req
		:precondition (and (turn req))
		:effect (oneof 
			(and (not (turn req)) (turn grant))
			(and (not (turn req)) (turn grant) (not (poss aut_0_t_10)) (not (poss aut_0_t_2)) (not (poss aut_0_t_1)) (not (poss aut_0_t_9)))
			)
		
	)
	(:action move_safe_aut_0_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_0) (safe aut_0_t_0) (oldCnt aut_0_q_0 ?m))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)))
	)
	(:action move_safe_aut_0_t1_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_1) (safe aut_0_t_1) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?m) (not (poss aut_0_t_1)))
	)
	(:action move_safe_aut_0_t2_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_2) (safe aut_0_t_2) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_2)))
	)
	(:action move_safe_aut_0_t3_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_3) (safe aut_0_t_3) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_3)))
	)
	(:action move_safe_aut_0_t4_1_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_4) (safe aut_0_t_4) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_4)))
	)
	(:action move_safe_aut_0_t5_1_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_5) (safe aut_0_t_5) (oldCnt aut_0_q_1 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_5)))
	)
	(:action move_safe_aut_0_t6_2_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_6) (safe aut_0_t_6) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_6)))
	)
	(:action move_safe_aut_0_t7_2_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_7) (safe aut_0_t_7) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_7)))
	)
	(:action move_safe_aut_0_t8_3_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_8) (safe aut_0_t_8) (oldCnt aut_0_q_3 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_8)))
	)
	(:action move_safe_aut_0_t9_3_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_9) (safe aut_0_t_9) (oldCnt aut_0_q_3 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?m) (not (poss aut_0_t_9)))
	)
	(:action move_safe_aut_0_t10_3_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_10) (safe aut_0_t_10) (oldCnt aut_0_q_3 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_10)))
	)
	(:action move_safe_aut_0_t11_3_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_11) (safe aut_0_t_11) (oldCnt aut_0_q_3 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_11)))
	)
	(:action move_safe_aut_0_t12_4_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_12) (safe aut_0_t_12) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_12)))
	)
	(:action move_safe_aut_0_t13_4_7
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_13) (safe aut_0_t_13) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
		:effect (and (F aut_0_q_7) (newCnt aut_0_q_7 ?m) (not (poss aut_0_t_13)))
	)
	(:action move_safe_aut_0_t14_5_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_14) (safe aut_0_t_14) (oldCnt aut_0_q_5 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_14)))
	)
	(:action move_safe_aut_0_t15_5_7
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_15) (safe aut_0_t_15) (oldCnt aut_0_q_5 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)))
		:effect (and (F aut_0_q_7) (newCnt aut_0_q_7 ?m) (not (poss aut_0_t_15)))
	)
	(:action move_unsafe_aut_0_t16_6_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_16) (not (safe aut_0_t_16)) (oldCnt aut_0_q_6 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_16)))
	)
	(:action move_unsafe_aut_0_t17_6_9
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_17) (not (safe aut_0_t_17)) (oldCnt aut_0_q_6 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?n) (not (poss aut_0_t_17)))
	)
	(:action move_unsafe_aut_0_t18_7_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_18) (not (safe aut_0_t_18)) (oldCnt aut_0_q_7 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_18)))
	)
	(:action move_unsafe_aut_0_t19_7_9
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_19) (not (safe aut_0_t_19)) (oldCnt aut_0_q_7 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?n) (not (poss aut_0_t_19)))
	)
	(:action move_unsafe_aut_0_t20_8_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_20) (not (safe aut_0_t_20)) (oldCnt aut_0_q_8 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_20)))
	)
	(:action move_unsafe_aut_0_t21_8_9
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_21) (not (safe aut_0_t_21)) (oldCnt aut_0_q_8 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?n) (not (poss aut_0_t_21)))
	)
	(:action move_unsafe_aut_0_t22_9_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_22) (not (safe aut_0_t_22)) (oldCnt aut_0_q_9 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_22)))
	)
	(:action move_unsafe_aut_0_t23_9_9
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_23) (not (safe aut_0_t_23)) (oldCnt aut_0_q_9 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?n) (not (poss aut_0_t_23)))
	)
	(:action move_safe_aut_1_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_0) (safe aut_1_t_0) (oldCnt aut_1_q_0 ?m))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)))
	)
	(:action move_safe_aut_1_t1_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_1) (safe aut_1_t_1) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)))
		:effect (and (F aut_1_q_1) (newCnt aut_1_q_1 ?m) (not (poss aut_1_t_1)))
	)
	(:action move_safe_aut_1_t2_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_2) (safe aut_1_t_2) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?m) (not (poss aut_1_t_2)))
	)
	(:action move_safe_aut_1_t3_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_3) (safe aut_1_t_3) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_3)))
	)
	(:action move_unsafe_aut_1_t4_1_4
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_4) (not (safe aut_1_t_4)) (oldCnt aut_1_q_1 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?n) (not (poss aut_1_t_4)))
	)
	(:action move_unsafe_aut_1_t5_1_5
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_5) (not (safe aut_1_t_5)) (oldCnt aut_1_q_1 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)))
		:effect (and (F aut_1_q_5) (newCnt aut_1_q_5 ?n) (not (poss aut_1_t_5)))
	)
	(:action move_unsafe_aut_1_t6_2_4
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_6) (not (safe aut_1_t_6)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?n) (not (poss aut_1_t_6)))
	)
	(:action move_unsafe_aut_1_t7_2_5
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_7) (not (safe aut_1_t_7)) (oldCnt aut_1_q_2 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)))
		:effect (and (F aut_1_q_5) (newCnt aut_1_q_5 ?n) (not (poss aut_1_t_7)))
	)
	(:action move_safe_aut_1_t8_3_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_8) (safe aut_1_t_8) (oldCnt aut_1_q_3 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_8)))
	)
	(:action move_safe_aut_1_t9_3_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_9) (safe aut_1_t_9) (oldCnt aut_1_q_3 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)))
		:effect (and (F aut_1_q_1) (newCnt aut_1_q_1 ?m) (not (poss aut_1_t_9)))
	)
	(:action move_safe_aut_1_t10_3_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_10) (safe aut_1_t_10) (oldCnt aut_1_q_3 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)))
		:effect (and (F aut_1_q_2) (newCnt aut_1_q_2 ?m) (not (poss aut_1_t_10)))
	)
	(:action move_safe_aut_1_t11_3_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_11) (safe aut_1_t_11) (oldCnt aut_1_q_3 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)))
		:effect (and (F aut_1_q_3) (newCnt aut_1_q_3 ?m) (not (poss aut_1_t_11)))
	)
	(:action move_unsafe_aut_1_t12_4_4
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_12) (not (safe aut_1_t_12)) (oldCnt aut_1_q_4 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?n) (not (poss aut_1_t_12)))
	)
	(:action move_unsafe_aut_1_t13_4_5
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_13) (not (safe aut_1_t_13)) (oldCnt aut_1_q_4 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)))
		:effect (and (F aut_1_q_5) (newCnt aut_1_q_5 ?n) (not (poss aut_1_t_13)))
	)
	(:action move_unsafe_aut_1_t14_5_4
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_14) (not (safe aut_1_t_14)) (oldCnt aut_1_q_5 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)))
		:effect (and (F aut_1_q_4) (newCnt aut_1_q_4 ?n) (not (poss aut_1_t_14)))
	)
	(:action move_unsafe_aut_1_t15_5_5
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_15) (not (safe aut_1_t_15)) (oldCnt aut_1_q_5 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)) (not (poss aut_1_t_3)) (not (poss aut_1_t_4)) (not (poss aut_1_t_5)) (not (poss aut_1_t_6)) (not (poss aut_1_t_7)) (not (poss aut_1_t_8)) (not (poss aut_1_t_9)) (not (poss aut_1_t_10)) (not (poss aut_1_t_11)) (not (poss aut_1_t_12)) (not (poss aut_1_t_13)) (not (poss aut_1_t_14)))
		:effect (and (F aut_1_q_5) (newCnt aut_1_q_5 ?n) (not (poss aut_1_t_15)))
	)
	(:action enable_var_grant
		:precondition (and (turn grant))
		:effect (and (not (turn grant)) (turn y) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_12)) (not (poss aut_0_t_14)) (not (poss aut_0_t_7)) (not (poss aut_0_t_13)) (not (poss aut_0_t_6)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
	)
	(:action disable_var_grant
		:precondition (and (turn grant))
		:effect (and (not (turn grant)) (turn y) (not (poss aut_1_t_7)) (not (poss aut_1_t_2)) (not (poss aut_1_t_6)) (not (poss aut_1_t_9)) (not (poss aut_1_t_1)) (not (poss aut_1_t_5)) (not (poss aut_1_t_4)) (not (poss aut_1_t_10)))
	)
	(:action start_sync
		:precondition (and (turn y) (forall (?t - transition) (not (poss ?t))))
		:effect (and (turn sync) (not (turn y)) (forall (?q - autstate  ?m  - alphacounter) (not (oldCnt ?q ?m ) ) ))
	)
	(:action sync_F_aut_0_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_0))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (poss aut_0_t_3) (oldCnt aut_0_q_0 alphacount_0) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_4) (poss aut_0_t_5) (oldCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_2) (newCnt aut_0_q_2 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)))
		:effect (and (poss aut_0_t_6) (poss aut_0_t_7) (oldCnt aut_0_q_2 alphacount_0) (not (F aut_0_q_2)) (forall (?n - alphacounter) (not (newCnt aut_0_q_2 ?n))))
	)
	(:action sync_F_aut_0_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_3) (newCnt aut_0_q_3 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)))
		:effect (and (poss aut_0_t_8) (poss aut_0_t_9) (poss aut_0_t_10) (poss aut_0_t_11) (oldCnt aut_0_q_3 alphacount_0) (not (F aut_0_q_3)) (forall (?n - alphacounter) (not (newCnt aut_0_q_3 ?n))))
	)
	(:action sync_F_aut_0_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_4) (newCnt aut_0_q_4 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)))
		:effect (and (poss aut_0_t_12) (poss aut_0_t_13) (oldCnt aut_0_q_4 alphacount_0) (not (F aut_0_q_4)) (forall (?n - alphacounter) (not (newCnt aut_0_q_4 ?n))))
	)
	(:action sync_F_aut_0_q_5_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_5) (newCnt aut_0_q_5 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)))
		:effect (and (poss aut_0_t_14) (poss aut_0_t_15) (oldCnt aut_0_q_5 alphacount_0) (not (F aut_0_q_5)) (forall (?n - alphacounter) (not (newCnt aut_0_q_5 ?n))))
	)
	(:action sync_F_aut_0_q_6_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_6) (newCnt aut_0_q_6 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)))
		:effect (and (poss aut_0_t_16) (poss aut_0_t_17) (oldCnt aut_0_q_6 alphacount_0) (not (F aut_0_q_6)) (forall (?n - alphacounter) (not (newCnt aut_0_q_6 ?n))))
	)
	(:action sync_F_aut_0_q_7_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_7) (newCnt aut_0_q_7 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)))
		:effect (and (poss aut_0_t_18) (poss aut_0_t_19) (oldCnt aut_0_q_7 alphacount_0) (not (F aut_0_q_7)) (forall (?n - alphacounter) (not (newCnt aut_0_q_7 ?n))))
	)
	(:action sync_F_aut_0_q_8_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_8) (newCnt aut_0_q_8 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)))
		:effect (and (poss aut_0_t_20) (poss aut_0_t_21) (oldCnt aut_0_q_8 alphacount_0) (not (F aut_0_q_8)) (forall (?n - alphacounter) (not (newCnt aut_0_q_8 ?n))))
	)
	(:action sync_F_aut_0_q_9_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_9) (newCnt aut_0_q_9 alphacount_0) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)))
		:effect (and (poss aut_0_t_22) (poss aut_0_t_23) (oldCnt aut_0_q_9 alphacount_0) (not (F aut_0_q_9)) (forall (?n - alphacounter) (not (newCnt aut_0_q_9 ?n))))
	)
	(:action sync_F_aut_1_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_0) (newCnt aut_1_q_0 alphacount_0))
		:effect (and (poss aut_1_t_0) (poss aut_1_t_1) (poss aut_1_t_2) (poss aut_1_t_3) (oldCnt aut_1_q_0 alphacount_0) (not (F aut_1_q_0)) (forall (?n - alphacounter) (not (newCnt aut_1_q_0 ?n))))
	)
	(:action sync_F_aut_1_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_1) (newCnt aut_1_q_1 alphacount_0) (not (F aut_1_q_0)))
		:effect (and (poss aut_1_t_4) (poss aut_1_t_5) (oldCnt aut_1_q_1 alphacount_0) (not (F aut_1_q_1)) (forall (?n - alphacounter) (not (newCnt aut_1_q_1 ?n))))
	)
	(:action sync_F_aut_1_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_2) (newCnt aut_1_q_2 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)))
		:effect (and (poss aut_1_t_6) (poss aut_1_t_7) (oldCnt aut_1_q_2 alphacount_0) (not (F aut_1_q_2)) (forall (?n - alphacounter) (not (newCnt aut_1_q_2 ?n))))
	)
	(:action sync_F_aut_1_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_3) (newCnt aut_1_q_3 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)) (not (F aut_1_q_2)))
		:effect (and (poss aut_1_t_8) (poss aut_1_t_9) (poss aut_1_t_10) (poss aut_1_t_11) (oldCnt aut_1_q_3 alphacount_0) (not (F aut_1_q_3)) (forall (?n - alphacounter) (not (newCnt aut_1_q_3 ?n))))
	)
	(:action sync_F_aut_1_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_4) (newCnt aut_1_q_4 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)) (not (F aut_1_q_2)) (not (F aut_1_q_3)))
		:effect (and (poss aut_1_t_12) (poss aut_1_t_13) (oldCnt aut_1_q_4 alphacount_0) (not (F aut_1_q_4)) (forall (?n - alphacounter) (not (newCnt aut_1_q_4 ?n))))
	)
	(:action sync_F_aut_1_q_5_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_5) (newCnt aut_1_q_5 alphacount_0) (not (F aut_1_q_0)) (not (F aut_1_q_1)) (not (F aut_1_q_2)) (not (F aut_1_q_3)) (not (F aut_1_q_4)))
		:effect (and (poss aut_1_t_14) (poss aut_1_t_15) (oldCnt aut_1_q_5 alphacount_0) (not (F aut_1_q_5)) (forall (?n - alphacounter) (not (newCnt aut_1_q_5 ?n))))
	)
	(:action sync_F_aut_2_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_0) (newCnt aut_2_q_0 alphacount_0))
		:effect (and (oldCnt aut_2_q_0 alphacount_0) (not (F aut_2_q_0)) (forall (?n - alphacounter) (not (newCnt aut_2_q_0 ?n))))
	)
	(:action continue
		:precondition (and (turn sync) (forall (?q - autstate) (not (F ?q))))
		:effect (oneof 
			(and (dummy_goal))
			(and (turn cancel) (not (turn sync)))
			)
		
	))