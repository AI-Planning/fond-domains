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
	aut_0_q_10 - autstate
	aut_0_q_11 - autstate
	aut_0_q_12 - autstate
	aut_0_q_13 - autstate
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
	aut_0_t_24 - transition
	aut_0_t_25 - transition
	aut_0_t_26 - transition
	aut_0_t_27 - transition
	aut_0_t_28 - transition
	aut_0_t_29 - transition
	aut_0_t_30 - transition
	aut_0_t_31 - transition
	aut_0_t_32 - transition
	aut_0_t_33 - transition
	aut_0_t_34 - transition
	aut_0_t_35 - transition
	aut_0_t_36 - transition
	aut_0_t_37 - transition
	aut_0_t_38 - transition
	aut_0_t_39 - transition
	aut_0_t_40 - transition
	aut_0_t_41 - transition
	aut_0_t_42 - transition
	aut_0_t_43 - transition
	aut_0_t_44 - transition
	aut_0_t_45 - transition
	aut_0_t_46 - transition
	aut_0_t_47 - transition
	aut_0_t_48 - transition
	aut_0_t_49 - transition
	aut_0_t_50 - transition
	aut_0_t_51 - transition
	aut_0_t_52 - transition
	aut_0_t_53 - transition
	aut_0_t_54 - transition
	aut_0_t_55 - transition
	aut_0_t_56 - transition
	aut_0_t_57 - transition
	i0 - var
	i1 - var
	i2 - var
	a0 - var
	a1 - var
	a2 - var
	a3 - var
	y - var
	sync - var
	alphacount_0 - alphacounter
	alphacount_1 - alphacounter
	alphacount_2 - alphacounter)
        (:predicates
	(safe ?t - transition)
	(poss ?t - transition)
	(turn ?n - var)
	(F ?q - autstate)
	(oldCnt ?q - autstate ?m - alphacounter)
	(newCnt ?q - autstate ?m - alphacounter)
	(nxt ?n - alphacounter ?m - alphacounter)
	(dummy_goal))

	(:action env_move_i0
		:precondition (and (turn i0))
		:effect (oneof
			(and (not (turn i0)) (turn i1) (not (poss aut_0_t_45)) (not (poss aut_0_t_47)))
			(and (not (turn i0)) (turn i1) (not (poss aut_0_t_46)) (not (poss aut_0_t_48)))
			)

	)
	(:action env_move_i1
		:precondition (and (turn i1))
		:effect (oneof
			(and (not (turn i1)) (turn i2) (not (poss aut_0_t_49)) (not (poss aut_0_t_51)))
			(and (not (turn i1)) (turn i2) (not (poss aut_0_t_50)) (not (poss aut_0_t_52)))
			)

	)
	(:action env_move_i2
		:precondition (and (turn i2))
		:effect (oneof
			(and (not (turn i2)) (turn a0) (not (poss aut_0_t_55)) (not (poss aut_0_t_53)))
			(and (not (turn i2)) (turn a0) (not (poss aut_0_t_56)) (not (poss aut_0_t_54)))
			)

	)
	(:action move_unsafe_aut_0_t0_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_0) (not (safe aut_0_t_0)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
	)
	(:action move_unsafe_aut_0_t1_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_1) (not (safe aut_0_t_1)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_1)) (not (poss aut_0_t_0)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
	)
	(:action move_unsafe_aut_0_t2_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_2) (not (safe aut_0_t_2)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_2)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
	)
	(:action move_unsafe_aut_0_t3_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_3) (not (safe aut_0_t_3)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_3)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
	)
	(:action move_unsafe_aut_0_t4_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_4) (not (safe aut_0_t_4)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_4)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_5)))
	)
	(:action move_unsafe_aut_0_t5_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_5) (not (safe aut_0_t_5)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_5)) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)))
	)
	(:action move_safe_aut_0_t6_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_6) (safe aut_0_t_6) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)))
	)
	(:action move_safe_aut_0_t7_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_7) (safe aut_0_t_7) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_7)) (not (poss aut_0_t_6)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)))
	)
	(:action move_safe_aut_0_t8_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_8) (safe aut_0_t_8) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_8)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_9)))
	)
	(:action move_safe_aut_0_t9_0_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_9) (safe aut_0_t_9) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_9)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)))
	)
	(:action move_safe_aut_0_t10_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_10) (safe aut_0_t_10) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)))
	)
	(:action move_safe_aut_0_t11_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_11) (safe aut_0_t_11) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_11)) (not (poss aut_0_t_10)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)))
	)
	(:action move_safe_aut_0_t12_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_12) (safe aut_0_t_12) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_12)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_13)))
	)
	(:action move_safe_aut_0_t13_0_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_13) (safe aut_0_t_13) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_13)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)))
	)
	(:action move_safe_aut_0_t14_0_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_14) (safe aut_0_t_14) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)))
	)
	(:action move_safe_aut_0_t15_0_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_15) (safe aut_0_t_15) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_15)) (not (poss aut_0_t_14)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)))
	)
	(:action move_safe_aut_0_t16_0_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_16) (safe aut_0_t_16) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_16)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_17)))
	)
	(:action move_safe_aut_0_t17_0_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_17) (safe aut_0_t_17) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_17)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)))
	)
	(:action move_safe_aut_0_t18_0_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_18) (safe aut_0_t_18) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)))
	)
	(:action move_safe_aut_0_t19_0_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_19) (safe aut_0_t_19) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_19)) (not (poss aut_0_t_18)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)))
	)
	(:action move_safe_aut_0_t20_0_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_20) (safe aut_0_t_20) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_20)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_21)))
	)
	(:action move_safe_aut_0_t21_0_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_21) (safe aut_0_t_21) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_21)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)))
	)
	(:action move_safe_aut_0_t22_0_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_22) (safe aut_0_t_22) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)))
	)
	(:action move_safe_aut_0_t23_0_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_23) (safe aut_0_t_23) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_23)) (not (poss aut_0_t_22)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)))
	)
	(:action move_safe_aut_0_t24_0_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_24) (safe aut_0_t_24) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_24)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_25)))
	)
	(:action move_safe_aut_0_t25_0_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_25) (safe aut_0_t_25) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_25)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)))
	)
	(:action move_unsafe_aut_0_t26_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_26) (not (safe aut_0_t_26)) (oldCnt aut_0_q_1 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_26)))
	)
	(:action move_unsafe_aut_0_t27_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_27) (not (safe aut_0_t_27)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)))
	)
	(:action move_unsafe_aut_0_t28_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_28) (not (safe aut_0_t_28)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_28)) (not (poss aut_0_t_27)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)))
	)
	(:action move_unsafe_aut_0_t29_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_29) (not (safe aut_0_t_29)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_29)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)))
	)
	(:action move_unsafe_aut_0_t30_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_30) (not (safe aut_0_t_30)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_30)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)))
	)
	(:action move_unsafe_aut_0_t31_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_31) (not (safe aut_0_t_31)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_31)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_32)))
	)
	(:action move_unsafe_aut_0_t32_2_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_32) (not (safe aut_0_t_32)) (oldCnt aut_0_q_2 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_32)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)))
	)
	(:action move_safe_aut_0_t33_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_33) (safe aut_0_t_33) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)))
	)
	(:action move_safe_aut_0_t34_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_34) (safe aut_0_t_34) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_34)) (not (poss aut_0_t_33)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)))
	)
	(:action move_safe_aut_0_t35_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_35) (safe aut_0_t_35) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_35)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_36)))
	)
	(:action move_safe_aut_0_t36_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_36) (safe aut_0_t_36) (oldCnt aut_0_q_2 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)))
		:effect (and (F aut_0_q_2) (newCnt aut_0_q_2 ?m) (not (poss aut_0_t_36)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)))
	)
	(:action move_unsafe_aut_0_t37_3_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_37) (not (safe aut_0_t_37)) (oldCnt aut_0_q_3 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_37)))
	)
	(:action move_safe_aut_0_t38_3_3
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_38) (safe aut_0_t_38) (oldCnt aut_0_q_3 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)))
		:effect (and (F aut_0_q_3) (newCnt aut_0_q_3 ?m) (not (poss aut_0_t_38)))
	)
	(:action move_unsafe_aut_0_t39_4_10
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_39) (not (safe aut_0_t_39)) (oldCnt aut_0_q_4 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)))
		:effect (and (F aut_0_q_10) (newCnt aut_0_q_10 ?n) (not (poss aut_0_t_39)))
	)
	(:action move_safe_aut_0_t40_4_4
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_40) (safe aut_0_t_40) (oldCnt aut_0_q_4 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)))
		:effect (and (F aut_0_q_4) (newCnt aut_0_q_4 ?m) (not (poss aut_0_t_40)))
	)
	(:action move_unsafe_aut_0_t41_5_12
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_41) (not (safe aut_0_t_41)) (oldCnt aut_0_q_5 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)))
		:effect (and (F aut_0_q_12) (newCnt aut_0_q_12 ?n) (not (poss aut_0_t_41)))
	)
	(:action move_safe_aut_0_t42_5_5
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_42) (safe aut_0_t_42) (oldCnt aut_0_q_5 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)))
		:effect (and (F aut_0_q_5) (newCnt aut_0_q_5 ?m) (not (poss aut_0_t_42)))
	)
	(:action move_unsafe_aut_0_t43_6_13
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_43) (not (safe aut_0_t_43)) (oldCnt aut_0_q_6 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)))
		:effect (and (F aut_0_q_13) (newCnt aut_0_q_13 ?n) (not (poss aut_0_t_43)))
	)
	(:action move_safe_aut_0_t44_6_6
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_44) (safe aut_0_t_44) (oldCnt aut_0_q_6 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)))
		:effect (and (F aut_0_q_6) (newCnt aut_0_q_6 ?m) (not (poss aut_0_t_44)))
	)
	(:action move_safe_aut_0_t45_7_7
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_45) (safe aut_0_t_45) (oldCnt aut_0_q_7 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)))
		:effect (and (F aut_0_q_7) (newCnt aut_0_q_7 ?m) (not (poss aut_0_t_45)))
	)
	(:action move_unsafe_aut_0_t46_7_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_46) (not (safe aut_0_t_46)) (oldCnt aut_0_q_7 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_46)))
	)
	(:action move_safe_aut_0_t47_8_7
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_47) (safe aut_0_t_47) (oldCnt aut_0_q_8 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)))
		:effect (and (F aut_0_q_7) (newCnt aut_0_q_7 ?m) (not (poss aut_0_t_47)))
	)
	(:action move_unsafe_aut_0_t48_8_8
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_48) (not (safe aut_0_t_48)) (oldCnt aut_0_q_8 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)))
		:effect (and (F aut_0_q_8) (newCnt aut_0_q_8 ?n) (not (poss aut_0_t_48)))
	)
	(:action move_safe_aut_0_t49_9_9
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_49) (safe aut_0_t_49) (oldCnt aut_0_q_9 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?m) (not (poss aut_0_t_49)))
	)
	(:action move_unsafe_aut_0_t50_9_10
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_50) (not (safe aut_0_t_50)) (oldCnt aut_0_q_9 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)))
		:effect (and (F aut_0_q_10) (newCnt aut_0_q_10 ?n) (not (poss aut_0_t_50)))
	)
	(:action move_safe_aut_0_t51_10_9
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_51) (safe aut_0_t_51) (oldCnt aut_0_q_10 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)))
		:effect (and (F aut_0_q_9) (newCnt aut_0_q_9 ?m) (not (poss aut_0_t_51)))
	)
	(:action move_unsafe_aut_0_t52_10_10
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_52) (not (safe aut_0_t_52)) (oldCnt aut_0_q_10 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)))
		:effect (and (F aut_0_q_10) (newCnt aut_0_q_10 ?n) (not (poss aut_0_t_52)))
	)
	(:action move_safe_aut_0_t53_11_11
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_53) (safe aut_0_t_53) (oldCnt aut_0_q_11 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)) (not (poss aut_0_t_52)))
		:effect (and (F aut_0_q_11) (newCnt aut_0_q_11 ?m) (not (poss aut_0_t_53)))
	)
	(:action move_unsafe_aut_0_t54_11_12
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_54) (not (safe aut_0_t_54)) (oldCnt aut_0_q_11 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)) (not (poss aut_0_t_52)) (not (poss aut_0_t_53)))
		:effect (and (F aut_0_q_12) (newCnt aut_0_q_12 ?n) (not (poss aut_0_t_54)))
	)
	(:action move_safe_aut_0_t55_12_11
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_55) (safe aut_0_t_55) (oldCnt aut_0_q_12 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)) (not (poss aut_0_t_52)) (not (poss aut_0_t_53)) (not (poss aut_0_t_54)))
		:effect (and (F aut_0_q_11) (newCnt aut_0_q_11 ?m) (not (poss aut_0_t_55)))
	)
	(:action move_unsafe_aut_0_t56_12_12
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_56) (not (safe aut_0_t_56)) (oldCnt aut_0_q_12 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)) (not (poss aut_0_t_52)) (not (poss aut_0_t_53)) (not (poss aut_0_t_54)) (not (poss aut_0_t_55)))
		:effect (and (F aut_0_q_12) (newCnt aut_0_q_12 ?n) (not (poss aut_0_t_56)))
	)
	(:action move_unsafe_aut_0_t57_13_13
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_57) (not (safe aut_0_t_57)) (oldCnt aut_0_q_13 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)) (not (poss aut_0_t_3)) (not (poss aut_0_t_4)) (not (poss aut_0_t_5)) (not (poss aut_0_t_6)) (not (poss aut_0_t_7)) (not (poss aut_0_t_8)) (not (poss aut_0_t_9)) (not (poss aut_0_t_10)) (not (poss aut_0_t_11)) (not (poss aut_0_t_12)) (not (poss aut_0_t_13)) (not (poss aut_0_t_14)) (not (poss aut_0_t_15)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_18)) (not (poss aut_0_t_19)) (not (poss aut_0_t_20)) (not (poss aut_0_t_21)) (not (poss aut_0_t_22)) (not (poss aut_0_t_23)) (not (poss aut_0_t_24)) (not (poss aut_0_t_25)) (not (poss aut_0_t_26)) (not (poss aut_0_t_27)) (not (poss aut_0_t_28)) (not (poss aut_0_t_29)) (not (poss aut_0_t_30)) (not (poss aut_0_t_31)) (not (poss aut_0_t_32)) (not (poss aut_0_t_33)) (not (poss aut_0_t_34)) (not (poss aut_0_t_35)) (not (poss aut_0_t_36)) (not (poss aut_0_t_37)) (not (poss aut_0_t_38)) (not (poss aut_0_t_39)) (not (poss aut_0_t_40)) (not (poss aut_0_t_41)) (not (poss aut_0_t_42)) (not (poss aut_0_t_43)) (not (poss aut_0_t_44)) (not (poss aut_0_t_45)) (not (poss aut_0_t_46)) (not (poss aut_0_t_47)) (not (poss aut_0_t_48)) (not (poss aut_0_t_49)) (not (poss aut_0_t_50)) (not (poss aut_0_t_51)) (not (poss aut_0_t_52)) (not (poss aut_0_t_53)) (not (poss aut_0_t_54)) (not (poss aut_0_t_55)) (not (poss aut_0_t_56)))
		:effect (and (F aut_0_q_13) (newCnt aut_0_q_13 ?n) (not (poss aut_0_t_57)))
	)
	(:action enable_var_a0
		:precondition (and (turn a0))
		:effect (and (not (turn a0)) (turn a1) (not (poss aut_0_t_8)) (not (poss aut_0_t_12)) (not (poss aut_0_t_48)) (not (poss aut_0_t_11)) (not (poss aut_0_t_15)) (not (poss aut_0_t_23)) (not (poss aut_0_t_16)) (not (poss aut_0_t_47)) (not (poss aut_0_t_34)) (not (poss aut_0_t_22)) (not (poss aut_0_t_33)) (not (poss aut_0_t_35)) (not (poss aut_0_t_7)) (not (poss aut_0_t_14)) (not (poss aut_0_t_19)) (not (poss aut_0_t_18)) (not (poss aut_0_t_6)) (not (poss aut_0_t_20)) (not (poss aut_0_t_24)) (not (poss aut_0_t_45)) (not (poss aut_0_t_10)) (not (poss aut_0_t_37)) (not (poss aut_0_t_46)))
	)
	(:action disable_var_a0
		:precondition (and (turn a0))
		:effect (and (not (turn a0)) (turn a1) (not (poss aut_0_t_1)) (not (poss aut_0_t_28)) (not (poss aut_0_t_0)) (not (poss aut_0_t_2)) (not (poss aut_0_t_29)) (not (poss aut_0_t_27)))
	)
	(:action enable_var_a1
		:precondition (and (turn a1))
		:effect (and (not (turn a1)) (turn a2) (not (poss aut_0_t_13)) (not (poss aut_0_t_50)) (not (poss aut_0_t_39)) (not (poss aut_0_t_25)) (not (poss aut_0_t_11)) (not (poss aut_0_t_15)) (not (poss aut_0_t_9)) (not (poss aut_0_t_23)) (not (poss aut_0_t_51)) (not (poss aut_0_t_21)) (not (poss aut_0_t_49)) (not (poss aut_0_t_17)) (not (poss aut_0_t_34)) (not (poss aut_0_t_36)) (not (poss aut_0_t_22)) (not (poss aut_0_t_33)) (not (poss aut_0_t_7)) (not (poss aut_0_t_14)) (not (poss aut_0_t_19)) (not (poss aut_0_t_18)) (not (poss aut_0_t_52)) (not (poss aut_0_t_6)) (not (poss aut_0_t_10)))
	)
	(:action disable_var_a1
		:precondition (and (turn a1))
		:effect (and (not (turn a1)) (turn a2) (not (poss aut_0_t_4)) (not (poss aut_0_t_30)) (not (poss aut_0_t_3)) (not (poss aut_0_t_0)) (not (poss aut_0_t_31)) (not (poss aut_0_t_27)))
	)
	(:action enable_var_a2
		:precondition (and (turn a2))
		:effect (and (not (turn a2)) (turn a3) (not (poss aut_0_t_8)) (not (poss aut_0_t_13)) (not (poss aut_0_t_12)) (not (poss aut_0_t_25)) (not (poss aut_0_t_41)) (not (poss aut_0_t_9)) (not (poss aut_0_t_21)) (not (poss aut_0_t_16)) (not (poss aut_0_t_17)) (not (poss aut_0_t_36)) (not (poss aut_0_t_22)) (not (poss aut_0_t_33)) (not (poss aut_0_t_35)) (not (poss aut_0_t_14)) (not (poss aut_0_t_18)) (not (poss aut_0_t_53)) (not (poss aut_0_t_55)) (not (poss aut_0_t_6)) (not (poss aut_0_t_20)) (not (poss aut_0_t_24)) (not (poss aut_0_t_56)) (not (poss aut_0_t_54)) (not (poss aut_0_t_10)))
	)
	(:action disable_var_a2
		:precondition (and (turn a2))
		:effect (and (not (turn a2)) (turn a3) (not (poss aut_0_t_30)) (not (poss aut_0_t_3)) (not (poss aut_0_t_1)) (not (poss aut_0_t_28)) (not (poss aut_0_t_32)) (not (poss aut_0_t_5)))
	)
	(:action enable_var_a3
		:precondition (and (turn a3))
		:effect (and (not (turn a3)) (turn y) (not (poss aut_0_t_43)) (not (poss aut_0_t_16)) (not (poss aut_0_t_15)) (not (poss aut_0_t_20)) (not (poss aut_0_t_24)) (not (poss aut_0_t_17)) (not (poss aut_0_t_34)) (not (poss aut_0_t_9)) (not (poss aut_0_t_36)) (not (poss aut_0_t_35)) (not (poss aut_0_t_8)) (not (poss aut_0_t_7)) (not (poss aut_0_t_13)) (not (poss aut_0_t_12)) (not (poss aut_0_t_19)) (not (poss aut_0_t_21)) (not (poss aut_0_t_23)) (not (poss aut_0_t_25)) (not (poss aut_0_t_57)) (not (poss aut_0_t_11)))
	)
	(:action disable_var_a3
		:precondition (and (turn a3))
		:effect (and (not (turn a3)) (turn y) (not (poss aut_0_t_4)) (not (poss aut_0_t_32)) (not (poss aut_0_t_2)) (not (poss aut_0_t_31)) (not (poss aut_0_t_29)) (not (poss aut_0_t_5)))
	)
	(:action start_sync
		:precondition (and (turn y) (forall (?t - transition) (not (poss ?t))))
		:effect (and (turn sync) (not (turn y)) (forall (?q - autstate  ?m  - alphacounter) (not (oldCnt ?q ?m ) ) ))
	)
	(:action sync_F_aut_0_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_0) (not (newCnt aut_0_q_0 alphacount_1)) (not (newCnt aut_0_q_0 alphacount_2)))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (poss aut_0_t_3) (poss aut_0_t_4) (poss aut_0_t_5) (poss aut_0_t_6) (poss aut_0_t_7) (poss aut_0_t_8) (poss aut_0_t_9) (poss aut_0_t_10) (poss aut_0_t_11) (poss aut_0_t_12) (poss aut_0_t_13) (poss aut_0_t_14) (poss aut_0_t_15) (poss aut_0_t_16) (poss aut_0_t_17) (poss aut_0_t_18) (poss aut_0_t_19) (poss aut_0_t_20) (poss aut_0_t_21) (poss aut_0_t_22) (poss aut_0_t_23) (poss aut_0_t_24) (poss aut_0_t_25) (oldCnt aut_0_q_0 alphacount_0) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_1) (not (newCnt aut_0_q_0 alphacount_2)))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (poss aut_0_t_3) (poss aut_0_t_4) (poss aut_0_t_5) (poss aut_0_t_6) (poss aut_0_t_7) (poss aut_0_t_8) (poss aut_0_t_9) (poss aut_0_t_10) (poss aut_0_t_11) (poss aut_0_t_12) (poss aut_0_t_13) (poss aut_0_t_14) (poss aut_0_t_15) (poss aut_0_t_16) (poss aut_0_t_17) (poss aut_0_t_18) (poss aut_0_t_19) (poss aut_0_t_20) (poss aut_0_t_21) (poss aut_0_t_22) (poss aut_0_t_23) (poss aut_0_t_24) (poss aut_0_t_25) (oldCnt aut_0_q_0 alphacount_1) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_2))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (poss aut_0_t_3) (poss aut_0_t_4) (poss aut_0_t_5) (poss aut_0_t_6) (poss aut_0_t_7) (poss aut_0_t_8) (poss aut_0_t_9) (poss aut_0_t_10) (poss aut_0_t_11) (poss aut_0_t_12) (poss aut_0_t_13) (poss aut_0_t_14) (poss aut_0_t_15) (poss aut_0_t_16) (poss aut_0_t_17) (poss aut_0_t_18) (poss aut_0_t_19) (poss aut_0_t_20) (poss aut_0_t_21) (poss aut_0_t_22) (poss aut_0_t_23) (poss aut_0_t_24) (poss aut_0_t_25) (oldCnt aut_0_q_0 alphacount_2) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_0) (not (newCnt aut_0_q_1 alphacount_1)) (not (newCnt aut_0_q_1 alphacount_2)) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_26) (oldCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_1) (not (newCnt aut_0_q_1 alphacount_2)) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_26) (oldCnt aut_0_q_1 alphacount_1) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_2) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_26) (oldCnt aut_0_q_1 alphacount_2) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_2) (newCnt aut_0_q_2 alphacount_0) (not (newCnt aut_0_q_2 alphacount_1)) (not (newCnt aut_0_q_2 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)))
		:effect (and (poss aut_0_t_27) (poss aut_0_t_28) (poss aut_0_t_29) (poss aut_0_t_30) (poss aut_0_t_31) (poss aut_0_t_32) (poss aut_0_t_33) (poss aut_0_t_34) (poss aut_0_t_35) (poss aut_0_t_36) (oldCnt aut_0_q_2 alphacount_0) (not (F aut_0_q_2)) (forall (?n - alphacounter) (not (newCnt aut_0_q_2 ?n))))
	)
	(:action sync_F_aut_0_q_2_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_2) (newCnt aut_0_q_2 alphacount_1) (not (newCnt aut_0_q_2 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)))
		:effect (and (poss aut_0_t_27) (poss aut_0_t_28) (poss aut_0_t_29) (poss aut_0_t_30) (poss aut_0_t_31) (poss aut_0_t_32) (poss aut_0_t_33) (poss aut_0_t_34) (poss aut_0_t_35) (poss aut_0_t_36) (oldCnt aut_0_q_2 alphacount_1) (not (F aut_0_q_2)) (forall (?n - alphacounter) (not (newCnt aut_0_q_2 ?n))))
	)
	(:action sync_F_aut_0_q_2_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_2) (newCnt aut_0_q_2 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)))
		:effect (and (poss aut_0_t_27) (poss aut_0_t_28) (poss aut_0_t_29) (poss aut_0_t_30) (poss aut_0_t_31) (poss aut_0_t_32) (poss aut_0_t_33) (poss aut_0_t_34) (poss aut_0_t_35) (poss aut_0_t_36) (oldCnt aut_0_q_2 alphacount_2) (not (F aut_0_q_2)) (forall (?n - alphacounter) (not (newCnt aut_0_q_2 ?n))))
	)
	(:action sync_F_aut_0_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_3) (newCnt aut_0_q_3 alphacount_0) (not (newCnt aut_0_q_3 alphacount_1)) (not (newCnt aut_0_q_3 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)))
		:effect (and (poss aut_0_t_37) (poss aut_0_t_38) (oldCnt aut_0_q_3 alphacount_0) (not (F aut_0_q_3)) (forall (?n - alphacounter) (not (newCnt aut_0_q_3 ?n))))
	)
	(:action sync_F_aut_0_q_3_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_3) (newCnt aut_0_q_3 alphacount_1) (not (newCnt aut_0_q_3 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)))
		:effect (and (poss aut_0_t_37) (poss aut_0_t_38) (oldCnt aut_0_q_3 alphacount_1) (not (F aut_0_q_3)) (forall (?n - alphacounter) (not (newCnt aut_0_q_3 ?n))))
	)
	(:action sync_F_aut_0_q_3_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_3) (newCnt aut_0_q_3 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)))
		:effect (and (poss aut_0_t_37) (poss aut_0_t_38) (oldCnt aut_0_q_3 alphacount_2) (not (F aut_0_q_3)) (forall (?n - alphacounter) (not (newCnt aut_0_q_3 ?n))))
	)
	(:action sync_F_aut_0_q_4_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_4) (newCnt aut_0_q_4 alphacount_0) (not (newCnt aut_0_q_4 alphacount_1)) (not (newCnt aut_0_q_4 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)))
		:effect (and (poss aut_0_t_39) (poss aut_0_t_40) (oldCnt aut_0_q_4 alphacount_0) (not (F aut_0_q_4)) (forall (?n - alphacounter) (not (newCnt aut_0_q_4 ?n))))
	)
	(:action sync_F_aut_0_q_4_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_4) (newCnt aut_0_q_4 alphacount_1) (not (newCnt aut_0_q_4 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)))
		:effect (and (poss aut_0_t_39) (poss aut_0_t_40) (oldCnt aut_0_q_4 alphacount_1) (not (F aut_0_q_4)) (forall (?n - alphacounter) (not (newCnt aut_0_q_4 ?n))))
	)
	(:action sync_F_aut_0_q_4_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_4) (newCnt aut_0_q_4 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)))
		:effect (and (poss aut_0_t_39) (poss aut_0_t_40) (oldCnt aut_0_q_4 alphacount_2) (not (F aut_0_q_4)) (forall (?n - alphacounter) (not (newCnt aut_0_q_4 ?n))))
	)
	(:action sync_F_aut_0_q_5_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_5) (newCnt aut_0_q_5 alphacount_0) (not (newCnt aut_0_q_5 alphacount_1)) (not (newCnt aut_0_q_5 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)))
		:effect (and (poss aut_0_t_41) (poss aut_0_t_42) (oldCnt aut_0_q_5 alphacount_0) (not (F aut_0_q_5)) (forall (?n - alphacounter) (not (newCnt aut_0_q_5 ?n))))
	)
	(:action sync_F_aut_0_q_5_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_5) (newCnt aut_0_q_5 alphacount_1) (not (newCnt aut_0_q_5 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)))
		:effect (and (poss aut_0_t_41) (poss aut_0_t_42) (oldCnt aut_0_q_5 alphacount_1) (not (F aut_0_q_5)) (forall (?n - alphacounter) (not (newCnt aut_0_q_5 ?n))))
	)
	(:action sync_F_aut_0_q_5_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_5) (newCnt aut_0_q_5 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)))
		:effect (and (poss aut_0_t_41) (poss aut_0_t_42) (oldCnt aut_0_q_5 alphacount_2) (not (F aut_0_q_5)) (forall (?n - alphacounter) (not (newCnt aut_0_q_5 ?n))))
	)
	(:action sync_F_aut_0_q_6_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_6) (newCnt aut_0_q_6 alphacount_0) (not (newCnt aut_0_q_6 alphacount_1)) (not (newCnt aut_0_q_6 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)))
		:effect (and (poss aut_0_t_43) (poss aut_0_t_44) (oldCnt aut_0_q_6 alphacount_0) (not (F aut_0_q_6)) (forall (?n - alphacounter) (not (newCnt aut_0_q_6 ?n))))
	)
	(:action sync_F_aut_0_q_6_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_6) (newCnt aut_0_q_6 alphacount_1) (not (newCnt aut_0_q_6 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)))
		:effect (and (poss aut_0_t_43) (poss aut_0_t_44) (oldCnt aut_0_q_6 alphacount_1) (not (F aut_0_q_6)) (forall (?n - alphacounter) (not (newCnt aut_0_q_6 ?n))))
	)
	(:action sync_F_aut_0_q_6_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_6) (newCnt aut_0_q_6 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)))
		:effect (and (poss aut_0_t_43) (poss aut_0_t_44) (oldCnt aut_0_q_6 alphacount_2) (not (F aut_0_q_6)) (forall (?n - alphacounter) (not (newCnt aut_0_q_6 ?n))))
	)
	(:action sync_F_aut_0_q_7_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_7) (newCnt aut_0_q_7 alphacount_0) (not (newCnt aut_0_q_7 alphacount_1)) (not (newCnt aut_0_q_7 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)))
		:effect (and (poss aut_0_t_45) (poss aut_0_t_46) (oldCnt aut_0_q_7 alphacount_0) (not (F aut_0_q_7)) (forall (?n - alphacounter) (not (newCnt aut_0_q_7 ?n))))
	)
	(:action sync_F_aut_0_q_7_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_7) (newCnt aut_0_q_7 alphacount_1) (not (newCnt aut_0_q_7 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)))
		:effect (and (poss aut_0_t_45) (poss aut_0_t_46) (oldCnt aut_0_q_7 alphacount_1) (not (F aut_0_q_7)) (forall (?n - alphacounter) (not (newCnt aut_0_q_7 ?n))))
	)
	(:action sync_F_aut_0_q_7_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_7) (newCnt aut_0_q_7 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)))
		:effect (and (poss aut_0_t_45) (poss aut_0_t_46) (oldCnt aut_0_q_7 alphacount_2) (not (F aut_0_q_7)) (forall (?n - alphacounter) (not (newCnt aut_0_q_7 ?n))))
	)
	(:action sync_F_aut_0_q_8_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_8) (newCnt aut_0_q_8 alphacount_0) (not (newCnt aut_0_q_8 alphacount_1)) (not (newCnt aut_0_q_8 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)))
		:effect (and (poss aut_0_t_47) (poss aut_0_t_48) (oldCnt aut_0_q_8 alphacount_0) (not (F aut_0_q_8)) (forall (?n - alphacounter) (not (newCnt aut_0_q_8 ?n))))
	)
	(:action sync_F_aut_0_q_8_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_8) (newCnt aut_0_q_8 alphacount_1) (not (newCnt aut_0_q_8 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)))
		:effect (and (poss aut_0_t_47) (poss aut_0_t_48) (oldCnt aut_0_q_8 alphacount_1) (not (F aut_0_q_8)) (forall (?n - alphacounter) (not (newCnt aut_0_q_8 ?n))))
	)
	(:action sync_F_aut_0_q_8_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_8) (newCnt aut_0_q_8 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)))
		:effect (and (poss aut_0_t_47) (poss aut_0_t_48) (oldCnt aut_0_q_8 alphacount_2) (not (F aut_0_q_8)) (forall (?n - alphacounter) (not (newCnt aut_0_q_8 ?n))))
	)
	(:action sync_F_aut_0_q_9_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_9) (newCnt aut_0_q_9 alphacount_0) (not (newCnt aut_0_q_9 alphacount_1)) (not (newCnt aut_0_q_9 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)))
		:effect (and (poss aut_0_t_49) (poss aut_0_t_50) (oldCnt aut_0_q_9 alphacount_0) (not (F aut_0_q_9)) (forall (?n - alphacounter) (not (newCnt aut_0_q_9 ?n))))
	)
	(:action sync_F_aut_0_q_9_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_9) (newCnt aut_0_q_9 alphacount_1) (not (newCnt aut_0_q_9 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)))
		:effect (and (poss aut_0_t_49) (poss aut_0_t_50) (oldCnt aut_0_q_9 alphacount_1) (not (F aut_0_q_9)) (forall (?n - alphacounter) (not (newCnt aut_0_q_9 ?n))))
	)
	(:action sync_F_aut_0_q_9_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_9) (newCnt aut_0_q_9 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)))
		:effect (and (poss aut_0_t_49) (poss aut_0_t_50) (oldCnt aut_0_q_9 alphacount_2) (not (F aut_0_q_9)) (forall (?n - alphacounter) (not (newCnt aut_0_q_9 ?n))))
	)
	(:action sync_F_aut_0_q_10_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_10) (newCnt aut_0_q_10 alphacount_0) (not (newCnt aut_0_q_10 alphacount_1)) (not (newCnt aut_0_q_10 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)))
		:effect (and (poss aut_0_t_51) (poss aut_0_t_52) (oldCnt aut_0_q_10 alphacount_0) (not (F aut_0_q_10)) (forall (?n - alphacounter) (not (newCnt aut_0_q_10 ?n))))
	)
	(:action sync_F_aut_0_q_10_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_10) (newCnt aut_0_q_10 alphacount_1) (not (newCnt aut_0_q_10 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)))
		:effect (and (poss aut_0_t_51) (poss aut_0_t_52) (oldCnt aut_0_q_10 alphacount_1) (not (F aut_0_q_10)) (forall (?n - alphacounter) (not (newCnt aut_0_q_10 ?n))))
	)
	(:action sync_F_aut_0_q_10_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_10) (newCnt aut_0_q_10 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)))
		:effect (and (poss aut_0_t_51) (poss aut_0_t_52) (oldCnt aut_0_q_10 alphacount_2) (not (F aut_0_q_10)) (forall (?n - alphacounter) (not (newCnt aut_0_q_10 ?n))))
	)
	(:action sync_F_aut_0_q_11_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_11) (newCnt aut_0_q_11 alphacount_0) (not (newCnt aut_0_q_11 alphacount_1)) (not (newCnt aut_0_q_11 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)))
		:effect (and (poss aut_0_t_53) (poss aut_0_t_54) (oldCnt aut_0_q_11 alphacount_0) (not (F aut_0_q_11)) (forall (?n - alphacounter) (not (newCnt aut_0_q_11 ?n))))
	)
	(:action sync_F_aut_0_q_11_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_11) (newCnt aut_0_q_11 alphacount_1) (not (newCnt aut_0_q_11 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)))
		:effect (and (poss aut_0_t_53) (poss aut_0_t_54) (oldCnt aut_0_q_11 alphacount_1) (not (F aut_0_q_11)) (forall (?n - alphacounter) (not (newCnt aut_0_q_11 ?n))))
	)
	(:action sync_F_aut_0_q_11_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_11) (newCnt aut_0_q_11 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)))
		:effect (and (poss aut_0_t_53) (poss aut_0_t_54) (oldCnt aut_0_q_11 alphacount_2) (not (F aut_0_q_11)) (forall (?n - alphacounter) (not (newCnt aut_0_q_11 ?n))))
	)
	(:action sync_F_aut_0_q_12_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_12) (newCnt aut_0_q_12 alphacount_0) (not (newCnt aut_0_q_12 alphacount_1)) (not (newCnt aut_0_q_12 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)))
		:effect (and (poss aut_0_t_55) (poss aut_0_t_56) (oldCnt aut_0_q_12 alphacount_0) (not (F aut_0_q_12)) (forall (?n - alphacounter) (not (newCnt aut_0_q_12 ?n))))
	)
	(:action sync_F_aut_0_q_12_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_12) (newCnt aut_0_q_12 alphacount_1) (not (newCnt aut_0_q_12 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)))
		:effect (and (poss aut_0_t_55) (poss aut_0_t_56) (oldCnt aut_0_q_12 alphacount_1) (not (F aut_0_q_12)) (forall (?n - alphacounter) (not (newCnt aut_0_q_12 ?n))))
	)
	(:action sync_F_aut_0_q_12_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_12) (newCnt aut_0_q_12 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)))
		:effect (and (poss aut_0_t_55) (poss aut_0_t_56) (oldCnt aut_0_q_12 alphacount_2) (not (F aut_0_q_12)) (forall (?n - alphacounter) (not (newCnt aut_0_q_12 ?n))))
	)
	(:action sync_F_aut_0_q_13_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_13) (newCnt aut_0_q_13 alphacount_0) (not (newCnt aut_0_q_13 alphacount_1)) (not (newCnt aut_0_q_13 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)) (not (F aut_0_q_12)))
		:effect (and (poss aut_0_t_57) (oldCnt aut_0_q_13 alphacount_0) (not (F aut_0_q_13)) (forall (?n - alphacounter) (not (newCnt aut_0_q_13 ?n))))
	)
	(:action sync_F_aut_0_q_13_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_13) (newCnt aut_0_q_13 alphacount_1) (not (newCnt aut_0_q_13 alphacount_2)) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)) (not (F aut_0_q_12)))
		:effect (and (poss aut_0_t_57) (oldCnt aut_0_q_13 alphacount_1) (not (F aut_0_q_13)) (forall (?n - alphacounter) (not (newCnt aut_0_q_13 ?n))))
	)
	(:action sync_F_aut_0_q_13_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_13) (newCnt aut_0_q_13 alphacount_2) (not (F aut_0_q_0)) (not (F aut_0_q_1)) (not (F aut_0_q_2)) (not (F aut_0_q_3)) (not (F aut_0_q_4)) (not (F aut_0_q_5)) (not (F aut_0_q_6)) (not (F aut_0_q_7)) (not (F aut_0_q_8)) (not (F aut_0_q_9)) (not (F aut_0_q_10)) (not (F aut_0_q_11)) (not (F aut_0_q_12)))
		:effect (and (poss aut_0_t_57) (oldCnt aut_0_q_13 alphacount_2) (not (F aut_0_q_13)) (forall (?n - alphacounter) (not (newCnt aut_0_q_13 ?n))))
	)
	(:action continue
		:precondition (and (turn sync) (forall (?q - autstate) (not (F ?q))))
		:effect (oneof
			(and (dummy_goal))
			(and (turn i0) (not (turn sync)))
			)

	))
