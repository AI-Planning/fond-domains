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
	aut_1_q_0 - autstate
	aut_1_q_1 - autstate
	aut_2_q_0 - autstate
	aut_2_q_1 - autstate
	aut_3_q_0 - autstate
	aut_3_q_1 - autstate
	aut_3_q_2 - autstate
	aut_3_q_3 - autstate
	aut_4_q_0 - autstate
	aut_4_q_1 - autstate
	aut_4_q_2 - autstate
	aut_4_q_3 - autstate
	aut_5_q_0 - autstate
	aut_5_q_1 - autstate
	aut_0_t_0 - transition
	aut_0_t_1 - transition
	aut_0_t_2 - transition
	aut_0_t_3 - transition
	aut_1_t_0 - transition
	aut_1_t_1 - transition
	aut_1_t_2 - transition
	aut_1_t_3 - transition
	aut_2_t_0 - transition
	aut_2_t_1 - transition
	aut_2_t_2 - transition
	aut_2_t_3 - transition
	aut_3_t_0 - transition
	aut_3_t_1 - transition
	aut_3_t_2 - transition
	aut_3_t_3 - transition
	aut_3_t_4 - transition
	aut_3_t_5 - transition
	aut_3_t_6 - transition
	aut_4_t_0 - transition
	aut_4_t_1 - transition
	aut_4_t_2 - transition
	aut_4_t_3 - transition
	aut_4_t_4 - transition
	aut_4_t_5 - transition
	aut_4_t_6 - transition
	aut_5_t_0 - transition
	aut_5_t_1 - transition
	aut_5_t_2 - transition
	i0 - var
	i1 - var
	a0 - var
	a1 - var
	a2 - var
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
			(and (not (turn i0)) (turn i1) (not (poss aut_3_t_3)) (not (poss aut_3_t_5)))
			(and (not (turn i0)) (turn i1) (not (poss aut_3_t_4)) (not (poss aut_3_t_6)))
			)
		
	)
	(:action env_move_i1
		:precondition (and (turn i1))
		:effect (oneof 
			(and (not (turn i1)) (turn a0) (not (poss aut_4_t_3)) (not (poss aut_4_t_5)))
			(and (not (turn i1)) (turn a0) (not (poss aut_4_t_4)) (not (poss aut_4_t_6)))
			)
		
	)
	(:action move_safe_aut_0_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_0) (safe aut_0_t_0) (oldCnt aut_0_q_0 ?m))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)))
	)
	(:action move_safe_aut_0_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_1) (safe aut_0_t_1) (oldCnt aut_0_q_0 ?m) (not (poss aut_0_t_0)))
		:effect (and (F aut_0_q_0) (newCnt aut_0_q_0 ?m) (not (poss aut_0_t_1)) (not (poss aut_0_t_0)))
	)
	(:action move_unsafe_aut_0_t2_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_2) (not (safe aut_0_t_2)) (oldCnt aut_0_q_0 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_2)))
	)
	(:action move_unsafe_aut_0_t3_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_0_t_3) (not (safe aut_0_t_3)) (oldCnt aut_0_q_1 ?m) (nxt ?n ?m) (not (poss aut_0_t_0)) (not (poss aut_0_t_1)) (not (poss aut_0_t_2)))
		:effect (and (F aut_0_q_1) (newCnt aut_0_q_1 ?n) (not (poss aut_0_t_3)))
	)
	(:action move_safe_aut_1_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_0) (safe aut_1_t_0) (oldCnt aut_1_q_0 ?m))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)))
	)
	(:action move_safe_aut_1_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_1) (safe aut_1_t_1) (oldCnt aut_1_q_0 ?m) (not (poss aut_1_t_0)))
		:effect (and (F aut_1_q_0) (newCnt aut_1_q_0 ?m) (not (poss aut_1_t_1)) (not (poss aut_1_t_0)))
	)
	(:action move_unsafe_aut_1_t2_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_2) (not (safe aut_1_t_2)) (oldCnt aut_1_q_0 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)))
		:effect (and (F aut_1_q_1) (newCnt aut_1_q_1 ?n) (not (poss aut_1_t_2)))
	)
	(:action move_unsafe_aut_1_t3_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_1_t_3) (not (safe aut_1_t_3)) (oldCnt aut_1_q_1 ?m) (nxt ?n ?m) (not (poss aut_1_t_0)) (not (poss aut_1_t_1)) (not (poss aut_1_t_2)))
		:effect (and (F aut_1_q_1) (newCnt aut_1_q_1 ?n) (not (poss aut_1_t_3)))
	)
	(:action move_safe_aut_2_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_0) (safe aut_2_t_0) (oldCnt aut_2_q_0 ?m))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)))
	)
	(:action move_safe_aut_2_t1_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_1) (safe aut_2_t_1) (oldCnt aut_2_q_0 ?m) (not (poss aut_2_t_0)))
		:effect (and (F aut_2_q_0) (newCnt aut_2_q_0 ?m) (not (poss aut_2_t_1)) (not (poss aut_2_t_0)))
	)
	(:action move_unsafe_aut_2_t2_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_2) (not (safe aut_2_t_2)) (oldCnt aut_2_q_0 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)))
		:effect (and (F aut_2_q_1) (newCnt aut_2_q_1 ?n) (not (poss aut_2_t_2)))
	)
	(:action move_unsafe_aut_2_t3_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_2_t_3) (not (safe aut_2_t_3)) (oldCnt aut_2_q_1 ?m) (nxt ?n ?m) (not (poss aut_2_t_0)) (not (poss aut_2_t_1)) (not (poss aut_2_t_2)))
		:effect (and (F aut_2_q_1) (newCnt aut_2_q_1 ?n) (not (poss aut_2_t_3)))
	)
	(:action move_safe_aut_3_t0_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_0) (safe aut_3_t_0) (oldCnt aut_3_q_0 ?m))
		:effect (and (F aut_3_q_1) (newCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)))
	)
	(:action move_unsafe_aut_3_t1_1_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_1) (not (safe aut_3_t_1)) (oldCnt aut_3_q_1 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?n) (not (poss aut_3_t_1)))
	)
	(:action move_safe_aut_3_t2_1_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_2) (safe aut_3_t_2) (oldCnt aut_3_q_1 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)))
		:effect (and (F aut_3_q_1) (newCnt aut_3_q_1 ?m) (not (poss aut_3_t_2)))
	)
	(:action move_safe_aut_3_t3_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_3) (safe aut_3_t_3) (oldCnt aut_3_q_2 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?m) (not (poss aut_3_t_3)))
	)
	(:action move_unsafe_aut_3_t4_2_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_4) (not (safe aut_3_t_4)) (oldCnt aut_3_q_2 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?n) (not (poss aut_3_t_4)))
	)
	(:action move_safe_aut_3_t5_3_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_5) (safe aut_3_t_5) (oldCnt aut_3_q_3 ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)))
		:effect (and (F aut_3_q_2) (newCnt aut_3_q_2 ?m) (not (poss aut_3_t_5)))
	)
	(:action move_unsafe_aut_3_t6_3_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_3_t_6) (not (safe aut_3_t_6)) (oldCnt aut_3_q_3 ?m) (nxt ?n ?m) (not (poss aut_3_t_0)) (not (poss aut_3_t_1)) (not (poss aut_3_t_2)) (not (poss aut_3_t_3)) (not (poss aut_3_t_4)) (not (poss aut_3_t_5)))
		:effect (and (F aut_3_q_3) (newCnt aut_3_q_3 ?n) (not (poss aut_3_t_6)))
	)
	(:action move_safe_aut_4_t0_0_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_0) (safe aut_4_t_0) (oldCnt aut_4_q_0 ?m))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?m) (not (poss aut_4_t_0)))
	)
	(:action move_unsafe_aut_4_t1_1_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_1) (not (safe aut_4_t_1)) (oldCnt aut_4_q_1 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)))
		:effect (and (F aut_4_q_3) (newCnt aut_4_q_3 ?n) (not (poss aut_4_t_1)))
	)
	(:action move_safe_aut_4_t2_1_1
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_2) (safe aut_4_t_2) (oldCnt aut_4_q_1 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)))
		:effect (and (F aut_4_q_1) (newCnt aut_4_q_1 ?m) (not (poss aut_4_t_2)))
	)
	(:action move_safe_aut_4_t3_2_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_3) (safe aut_4_t_3) (oldCnt aut_4_q_2 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)))
		:effect (and (F aut_4_q_2) (newCnt aut_4_q_2 ?m) (not (poss aut_4_t_3)))
	)
	(:action move_unsafe_aut_4_t4_2_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_4) (not (safe aut_4_t_4)) (oldCnt aut_4_q_2 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)))
		:effect (and (F aut_4_q_3) (newCnt aut_4_q_3 ?n) (not (poss aut_4_t_4)))
	)
	(:action move_safe_aut_4_t5_3_2
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_5) (safe aut_4_t_5) (oldCnt aut_4_q_3 ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)))
		:effect (and (F aut_4_q_2) (newCnt aut_4_q_2 ?m) (not (poss aut_4_t_5)))
	)
	(:action move_unsafe_aut_4_t6_3_3
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_4_t_6) (not (safe aut_4_t_6)) (oldCnt aut_4_q_3 ?m) (nxt ?n ?m) (not (poss aut_4_t_0)) (not (poss aut_4_t_1)) (not (poss aut_4_t_2)) (not (poss aut_4_t_3)) (not (poss aut_4_t_4)) (not (poss aut_4_t_5)))
		:effect (and (F aut_4_q_3) (newCnt aut_4_q_3 ?n) (not (poss aut_4_t_6)))
	)
	(:action move_safe_aut_5_t0_0_0
		:parameters (?m - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_0) (safe aut_5_t_0) (oldCnt aut_5_q_0 ?m))
		:effect (and (F aut_5_q_0) (newCnt aut_5_q_0 ?m) (not (poss aut_5_t_0)))
	)
	(:action move_unsafe_aut_5_t1_0_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_1) (not (safe aut_5_t_1)) (oldCnt aut_5_q_0 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_1)))
	)
	(:action move_unsafe_aut_5_t2_1_1
		:parameters (?m - alphacounter ?n - alphacounter)
		:precondition (and (turn y) (poss aut_5_t_2) (not (safe aut_5_t_2)) (oldCnt aut_5_q_1 ?m) (nxt ?n ?m) (not (poss aut_5_t_0)) (not (poss aut_5_t_1)))
		:effect (and (F aut_5_q_1) (newCnt aut_5_q_1 ?n) (not (poss aut_5_t_2)))
	)
	(:action enable_var_a0
		:precondition (and (turn a0))
		:effect (and (not (turn a0)) (turn a1) (not (poss aut_0_t_0)) (not (poss aut_2_t_0)) (not (poss aut_3_t_3)) (not (poss aut_3_t_1)) (not (poss aut_3_t_4)) (not (poss aut_3_t_6)) (not (poss aut_3_t_5)))
	)
	(:action disable_var_a0
		:precondition (and (turn a0))
		:effect (and (not (turn a0)) (turn a1) (not (poss aut_0_t_2)) (not (poss aut_2_t_2)))
	)
	(:action enable_var_a1
		:precondition (and (turn a1))
		:effect (and (not (turn a1)) (turn a2) (not (poss aut_0_t_1)) (not (poss aut_1_t_0)) (not (poss aut_4_t_4)) (not (poss aut_4_t_3)) (not (poss aut_4_t_5)) (not (poss aut_4_t_6)) (not (poss aut_4_t_1)))
	)
	(:action disable_var_a1
		:precondition (and (turn a1))
		:effect (and (not (turn a1)) (turn a2) (not (poss aut_0_t_2)) (not (poss aut_1_t_2)))
	)
	(:action enable_var_a2
		:precondition (and (turn a2))
		:effect (and (not (turn a2)) (turn y) (not (poss aut_1_t_1)) (not (poss aut_2_t_1)) (not (poss aut_5_t_2)) (not (poss aut_5_t_1)))
	)
	(:action disable_var_a2
		:precondition (and (turn a2))
		:effect (and (not (turn a2)) (turn y) (not (poss aut_1_t_2)) (not (poss aut_2_t_2)))
	)
	(:action start_sync
		:precondition (and (turn y) (forall (?t - transition) (not (poss ?t))))
		:effect (and (turn sync) (not (turn y)) (forall (?q - autstate  ?m  - alphacounter) (not (oldCnt ?q ?m ) ) ))
	)
	(:action sync_F_aut_0_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_0) (not (newCnt aut_0_q_0 alphacount_1)) (not (newCnt aut_0_q_0 alphacount_2)))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (oldCnt aut_0_q_0 alphacount_0) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_1) (not (newCnt aut_0_q_0 alphacount_2)))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (oldCnt aut_0_q_0 alphacount_1) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_0) (newCnt aut_0_q_0 alphacount_2))
		:effect (and (poss aut_0_t_0) (poss aut_0_t_1) (poss aut_0_t_2) (oldCnt aut_0_q_0 alphacount_2) (not (F aut_0_q_0)) (forall (?n - alphacounter) (not (newCnt aut_0_q_0 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_0) (not (newCnt aut_0_q_1 alphacount_1)) (not (newCnt aut_0_q_1 alphacount_2)) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_3) (oldCnt aut_0_q_1 alphacount_0) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_1) (not (newCnt aut_0_q_1 alphacount_2)) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_3) (oldCnt aut_0_q_1 alphacount_1) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_0_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_0_q_1) (newCnt aut_0_q_1 alphacount_2) (not (F aut_0_q_0)))
		:effect (and (poss aut_0_t_3) (oldCnt aut_0_q_1 alphacount_2) (not (F aut_0_q_1)) (forall (?n - alphacounter) (not (newCnt aut_0_q_1 ?n))))
	)
	(:action sync_F_aut_1_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_0) (newCnt aut_1_q_0 alphacount_0) (not (newCnt aut_1_q_0 alphacount_1)) (not (newCnt aut_1_q_0 alphacount_2)))
		:effect (and (poss aut_1_t_0) (poss aut_1_t_1) (poss aut_1_t_2) (oldCnt aut_1_q_0 alphacount_0) (not (F aut_1_q_0)) (forall (?n - alphacounter) (not (newCnt aut_1_q_0 ?n))))
	)
	(:action sync_F_aut_1_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_1_q_0) (newCnt aut_1_q_0 alphacount_1) (not (newCnt aut_1_q_0 alphacount_2)))
		:effect (and (poss aut_1_t_0) (poss aut_1_t_1) (poss aut_1_t_2) (oldCnt aut_1_q_0 alphacount_1) (not (F aut_1_q_0)) (forall (?n - alphacounter) (not (newCnt aut_1_q_0 ?n))))
	)
	(:action sync_F_aut_1_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_1_q_0) (newCnt aut_1_q_0 alphacount_2))
		:effect (and (poss aut_1_t_0) (poss aut_1_t_1) (poss aut_1_t_2) (oldCnt aut_1_q_0 alphacount_2) (not (F aut_1_q_0)) (forall (?n - alphacounter) (not (newCnt aut_1_q_0 ?n))))
	)
	(:action sync_F_aut_1_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_1_q_1) (newCnt aut_1_q_1 alphacount_0) (not (newCnt aut_1_q_1 alphacount_1)) (not (newCnt aut_1_q_1 alphacount_2)) (not (F aut_1_q_0)))
		:effect (and (poss aut_1_t_3) (oldCnt aut_1_q_1 alphacount_0) (not (F aut_1_q_1)) (forall (?n - alphacounter) (not (newCnt aut_1_q_1 ?n))))
	)
	(:action sync_F_aut_1_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_1_q_1) (newCnt aut_1_q_1 alphacount_1) (not (newCnt aut_1_q_1 alphacount_2)) (not (F aut_1_q_0)))
		:effect (and (poss aut_1_t_3) (oldCnt aut_1_q_1 alphacount_1) (not (F aut_1_q_1)) (forall (?n - alphacounter) (not (newCnt aut_1_q_1 ?n))))
	)
	(:action sync_F_aut_1_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_1_q_1) (newCnt aut_1_q_1 alphacount_2) (not (F aut_1_q_0)))
		:effect (and (poss aut_1_t_3) (oldCnt aut_1_q_1 alphacount_2) (not (F aut_1_q_1)) (forall (?n - alphacounter) (not (newCnt aut_1_q_1 ?n))))
	)
	(:action sync_F_aut_2_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_0) (newCnt aut_2_q_0 alphacount_0) (not (newCnt aut_2_q_0 alphacount_1)) (not (newCnt aut_2_q_0 alphacount_2)))
		:effect (and (poss aut_2_t_0) (poss aut_2_t_1) (poss aut_2_t_2) (oldCnt aut_2_q_0 alphacount_0) (not (F aut_2_q_0)) (forall (?n - alphacounter) (not (newCnt aut_2_q_0 ?n))))
	)
	(:action sync_F_aut_2_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_2_q_0) (newCnt aut_2_q_0 alphacount_1) (not (newCnt aut_2_q_0 alphacount_2)))
		:effect (and (poss aut_2_t_0) (poss aut_2_t_1) (poss aut_2_t_2) (oldCnt aut_2_q_0 alphacount_1) (not (F aut_2_q_0)) (forall (?n - alphacounter) (not (newCnt aut_2_q_0 ?n))))
	)
	(:action sync_F_aut_2_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_2_q_0) (newCnt aut_2_q_0 alphacount_2))
		:effect (and (poss aut_2_t_0) (poss aut_2_t_1) (poss aut_2_t_2) (oldCnt aut_2_q_0 alphacount_2) (not (F aut_2_q_0)) (forall (?n - alphacounter) (not (newCnt aut_2_q_0 ?n))))
	)
	(:action sync_F_aut_2_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_2_q_1) (newCnt aut_2_q_1 alphacount_0) (not (newCnt aut_2_q_1 alphacount_1)) (not (newCnt aut_2_q_1 alphacount_2)) (not (F aut_2_q_0)))
		:effect (and (poss aut_2_t_3) (oldCnt aut_2_q_1 alphacount_0) (not (F aut_2_q_1)) (forall (?n - alphacounter) (not (newCnt aut_2_q_1 ?n))))
	)
	(:action sync_F_aut_2_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_2_q_1) (newCnt aut_2_q_1 alphacount_1) (not (newCnt aut_2_q_1 alphacount_2)) (not (F aut_2_q_0)))
		:effect (and (poss aut_2_t_3) (oldCnt aut_2_q_1 alphacount_1) (not (F aut_2_q_1)) (forall (?n - alphacounter) (not (newCnt aut_2_q_1 ?n))))
	)
	(:action sync_F_aut_2_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_2_q_1) (newCnt aut_2_q_1 alphacount_2) (not (F aut_2_q_0)))
		:effect (and (poss aut_2_t_3) (oldCnt aut_2_q_1 alphacount_2) (not (F aut_2_q_1)) (forall (?n - alphacounter) (not (newCnt aut_2_q_1 ?n))))
	)
	(:action sync_F_aut_3_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_0) (newCnt aut_3_q_0 alphacount_0) (not (newCnt aut_3_q_0 alphacount_1)) (not (newCnt aut_3_q_0 alphacount_2)))
		:effect (and (poss aut_3_t_0) (oldCnt aut_3_q_0 alphacount_0) (not (F aut_3_q_0)) (forall (?n - alphacounter) (not (newCnt aut_3_q_0 ?n))))
	)
	(:action sync_F_aut_3_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_3_q_0) (newCnt aut_3_q_0 alphacount_1) (not (newCnt aut_3_q_0 alphacount_2)))
		:effect (and (poss aut_3_t_0) (oldCnt aut_3_q_0 alphacount_1) (not (F aut_3_q_0)) (forall (?n - alphacounter) (not (newCnt aut_3_q_0 ?n))))
	)
	(:action sync_F_aut_3_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_3_q_0) (newCnt aut_3_q_0 alphacount_2))
		:effect (and (poss aut_3_t_0) (oldCnt aut_3_q_0 alphacount_2) (not (F aut_3_q_0)) (forall (?n - alphacounter) (not (newCnt aut_3_q_0 ?n))))
	)
	(:action sync_F_aut_3_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_1) (newCnt aut_3_q_1 alphacount_0) (not (newCnt aut_3_q_1 alphacount_1)) (not (newCnt aut_3_q_1 alphacount_2)) (not (F aut_3_q_0)))
		:effect (and (poss aut_3_t_1) (poss aut_3_t_2) (oldCnt aut_3_q_1 alphacount_0) (not (F aut_3_q_1)) (forall (?n - alphacounter) (not (newCnt aut_3_q_1 ?n))))
	)
	(:action sync_F_aut_3_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_3_q_1) (newCnt aut_3_q_1 alphacount_1) (not (newCnt aut_3_q_1 alphacount_2)) (not (F aut_3_q_0)))
		:effect (and (poss aut_3_t_1) (poss aut_3_t_2) (oldCnt aut_3_q_1 alphacount_1) (not (F aut_3_q_1)) (forall (?n - alphacounter) (not (newCnt aut_3_q_1 ?n))))
	)
	(:action sync_F_aut_3_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_3_q_1) (newCnt aut_3_q_1 alphacount_2) (not (F aut_3_q_0)))
		:effect (and (poss aut_3_t_1) (poss aut_3_t_2) (oldCnt aut_3_q_1 alphacount_2) (not (F aut_3_q_1)) (forall (?n - alphacounter) (not (newCnt aut_3_q_1 ?n))))
	)
	(:action sync_F_aut_3_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_2) (newCnt aut_3_q_2 alphacount_0) (not (newCnt aut_3_q_2 alphacount_1)) (not (newCnt aut_3_q_2 alphacount_2)) (not (F aut_3_q_0)) (not (F aut_3_q_1)))
		:effect (and (poss aut_3_t_3) (poss aut_3_t_4) (oldCnt aut_3_q_2 alphacount_0) (not (F aut_3_q_2)) (forall (?n - alphacounter) (not (newCnt aut_3_q_2 ?n))))
	)
	(:action sync_F_aut_3_q_2_alphacount_1
		:precondition (and (turn sync) (F aut_3_q_2) (newCnt aut_3_q_2 alphacount_1) (not (newCnt aut_3_q_2 alphacount_2)) (not (F aut_3_q_0)) (not (F aut_3_q_1)))
		:effect (and (poss aut_3_t_3) (poss aut_3_t_4) (oldCnt aut_3_q_2 alphacount_1) (not (F aut_3_q_2)) (forall (?n - alphacounter) (not (newCnt aut_3_q_2 ?n))))
	)
	(:action sync_F_aut_3_q_2_alphacount_2
		:precondition (and (turn sync) (F aut_3_q_2) (newCnt aut_3_q_2 alphacount_2) (not (F aut_3_q_0)) (not (F aut_3_q_1)))
		:effect (and (poss aut_3_t_3) (poss aut_3_t_4) (oldCnt aut_3_q_2 alphacount_2) (not (F aut_3_q_2)) (forall (?n - alphacounter) (not (newCnt aut_3_q_2 ?n))))
	)
	(:action sync_F_aut_3_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_3_q_3) (newCnt aut_3_q_3 alphacount_0) (not (newCnt aut_3_q_3 alphacount_1)) (not (newCnt aut_3_q_3 alphacount_2)) (not (F aut_3_q_0)) (not (F aut_3_q_1)) (not (F aut_3_q_2)))
		:effect (and (poss aut_3_t_5) (poss aut_3_t_6) (oldCnt aut_3_q_3 alphacount_0) (not (F aut_3_q_3)) (forall (?n - alphacounter) (not (newCnt aut_3_q_3 ?n))))
	)
	(:action sync_F_aut_3_q_3_alphacount_1
		:precondition (and (turn sync) (F aut_3_q_3) (newCnt aut_3_q_3 alphacount_1) (not (newCnt aut_3_q_3 alphacount_2)) (not (F aut_3_q_0)) (not (F aut_3_q_1)) (not (F aut_3_q_2)))
		:effect (and (poss aut_3_t_5) (poss aut_3_t_6) (oldCnt aut_3_q_3 alphacount_1) (not (F aut_3_q_3)) (forall (?n - alphacounter) (not (newCnt aut_3_q_3 ?n))))
	)
	(:action sync_F_aut_3_q_3_alphacount_2
		:precondition (and (turn sync) (F aut_3_q_3) (newCnt aut_3_q_3 alphacount_2) (not (F aut_3_q_0)) (not (F aut_3_q_1)) (not (F aut_3_q_2)))
		:effect (and (poss aut_3_t_5) (poss aut_3_t_6) (oldCnt aut_3_q_3 alphacount_2) (not (F aut_3_q_3)) (forall (?n - alphacounter) (not (newCnt aut_3_q_3 ?n))))
	)
	(:action sync_F_aut_4_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_0) (newCnt aut_4_q_0 alphacount_0) (not (newCnt aut_4_q_0 alphacount_1)) (not (newCnt aut_4_q_0 alphacount_2)))
		:effect (and (poss aut_4_t_0) (oldCnt aut_4_q_0 alphacount_0) (not (F aut_4_q_0)) (forall (?n - alphacounter) (not (newCnt aut_4_q_0 ?n))))
	)
	(:action sync_F_aut_4_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_4_q_0) (newCnt aut_4_q_0 alphacount_1) (not (newCnt aut_4_q_0 alphacount_2)))
		:effect (and (poss aut_4_t_0) (oldCnt aut_4_q_0 alphacount_1) (not (F aut_4_q_0)) (forall (?n - alphacounter) (not (newCnt aut_4_q_0 ?n))))
	)
	(:action sync_F_aut_4_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_4_q_0) (newCnt aut_4_q_0 alphacount_2))
		:effect (and (poss aut_4_t_0) (oldCnt aut_4_q_0 alphacount_2) (not (F aut_4_q_0)) (forall (?n - alphacounter) (not (newCnt aut_4_q_0 ?n))))
	)
	(:action sync_F_aut_4_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_1) (newCnt aut_4_q_1 alphacount_0) (not (newCnt aut_4_q_1 alphacount_1)) (not (newCnt aut_4_q_1 alphacount_2)) (not (F aut_4_q_0)))
		:effect (and (poss aut_4_t_1) (poss aut_4_t_2) (oldCnt aut_4_q_1 alphacount_0) (not (F aut_4_q_1)) (forall (?n - alphacounter) (not (newCnt aut_4_q_1 ?n))))
	)
	(:action sync_F_aut_4_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_4_q_1) (newCnt aut_4_q_1 alphacount_1) (not (newCnt aut_4_q_1 alphacount_2)) (not (F aut_4_q_0)))
		:effect (and (poss aut_4_t_1) (poss aut_4_t_2) (oldCnt aut_4_q_1 alphacount_1) (not (F aut_4_q_1)) (forall (?n - alphacounter) (not (newCnt aut_4_q_1 ?n))))
	)
	(:action sync_F_aut_4_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_4_q_1) (newCnt aut_4_q_1 alphacount_2) (not (F aut_4_q_0)))
		:effect (and (poss aut_4_t_1) (poss aut_4_t_2) (oldCnt aut_4_q_1 alphacount_2) (not (F aut_4_q_1)) (forall (?n - alphacounter) (not (newCnt aut_4_q_1 ?n))))
	)
	(:action sync_F_aut_4_q_2_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_2) (newCnt aut_4_q_2 alphacount_0) (not (newCnt aut_4_q_2 alphacount_1)) (not (newCnt aut_4_q_2 alphacount_2)) (not (F aut_4_q_0)) (not (F aut_4_q_1)))
		:effect (and (poss aut_4_t_3) (poss aut_4_t_4) (oldCnt aut_4_q_2 alphacount_0) (not (F aut_4_q_2)) (forall (?n - alphacounter) (not (newCnt aut_4_q_2 ?n))))
	)
	(:action sync_F_aut_4_q_2_alphacount_1
		:precondition (and (turn sync) (F aut_4_q_2) (newCnt aut_4_q_2 alphacount_1) (not (newCnt aut_4_q_2 alphacount_2)) (not (F aut_4_q_0)) (not (F aut_4_q_1)))
		:effect (and (poss aut_4_t_3) (poss aut_4_t_4) (oldCnt aut_4_q_2 alphacount_1) (not (F aut_4_q_2)) (forall (?n - alphacounter) (not (newCnt aut_4_q_2 ?n))))
	)
	(:action sync_F_aut_4_q_2_alphacount_2
		:precondition (and (turn sync) (F aut_4_q_2) (newCnt aut_4_q_2 alphacount_2) (not (F aut_4_q_0)) (not (F aut_4_q_1)))
		:effect (and (poss aut_4_t_3) (poss aut_4_t_4) (oldCnt aut_4_q_2 alphacount_2) (not (F aut_4_q_2)) (forall (?n - alphacounter) (not (newCnt aut_4_q_2 ?n))))
	)
	(:action sync_F_aut_4_q_3_alphacount_0
		:precondition (and (turn sync) (F aut_4_q_3) (newCnt aut_4_q_3 alphacount_0) (not (newCnt aut_4_q_3 alphacount_1)) (not (newCnt aut_4_q_3 alphacount_2)) (not (F aut_4_q_0)) (not (F aut_4_q_1)) (not (F aut_4_q_2)))
		:effect (and (poss aut_4_t_5) (poss aut_4_t_6) (oldCnt aut_4_q_3 alphacount_0) (not (F aut_4_q_3)) (forall (?n - alphacounter) (not (newCnt aut_4_q_3 ?n))))
	)
	(:action sync_F_aut_4_q_3_alphacount_1
		:precondition (and (turn sync) (F aut_4_q_3) (newCnt aut_4_q_3 alphacount_1) (not (newCnt aut_4_q_3 alphacount_2)) (not (F aut_4_q_0)) (not (F aut_4_q_1)) (not (F aut_4_q_2)))
		:effect (and (poss aut_4_t_5) (poss aut_4_t_6) (oldCnt aut_4_q_3 alphacount_1) (not (F aut_4_q_3)) (forall (?n - alphacounter) (not (newCnt aut_4_q_3 ?n))))
	)
	(:action sync_F_aut_4_q_3_alphacount_2
		:precondition (and (turn sync) (F aut_4_q_3) (newCnt aut_4_q_3 alphacount_2) (not (F aut_4_q_0)) (not (F aut_4_q_1)) (not (F aut_4_q_2)))
		:effect (and (poss aut_4_t_5) (poss aut_4_t_6) (oldCnt aut_4_q_3 alphacount_2) (not (F aut_4_q_3)) (forall (?n - alphacounter) (not (newCnt aut_4_q_3 ?n))))
	)
	(:action sync_F_aut_5_q_0_alphacount_0
		:precondition (and (turn sync) (F aut_5_q_0) (newCnt aut_5_q_0 alphacount_0) (not (newCnt aut_5_q_0 alphacount_1)) (not (newCnt aut_5_q_0 alphacount_2)))
		:effect (and (poss aut_5_t_0) (poss aut_5_t_1) (oldCnt aut_5_q_0 alphacount_0) (not (F aut_5_q_0)) (forall (?n - alphacounter) (not (newCnt aut_5_q_0 ?n))))
	)
	(:action sync_F_aut_5_q_0_alphacount_1
		:precondition (and (turn sync) (F aut_5_q_0) (newCnt aut_5_q_0 alphacount_1) (not (newCnt aut_5_q_0 alphacount_2)))
		:effect (and (poss aut_5_t_0) (poss aut_5_t_1) (oldCnt aut_5_q_0 alphacount_1) (not (F aut_5_q_0)) (forall (?n - alphacounter) (not (newCnt aut_5_q_0 ?n))))
	)
	(:action sync_F_aut_5_q_0_alphacount_2
		:precondition (and (turn sync) (F aut_5_q_0) (newCnt aut_5_q_0 alphacount_2))
		:effect (and (poss aut_5_t_0) (poss aut_5_t_1) (oldCnt aut_5_q_0 alphacount_2) (not (F aut_5_q_0)) (forall (?n - alphacounter) (not (newCnt aut_5_q_0 ?n))))
	)
	(:action sync_F_aut_5_q_1_alphacount_0
		:precondition (and (turn sync) (F aut_5_q_1) (newCnt aut_5_q_1 alphacount_0) (not (newCnt aut_5_q_1 alphacount_1)) (not (newCnt aut_5_q_1 alphacount_2)) (not (F aut_5_q_0)))
		:effect (and (poss aut_5_t_2) (oldCnt aut_5_q_1 alphacount_0) (not (F aut_5_q_1)) (forall (?n - alphacounter) (not (newCnt aut_5_q_1 ?n))))
	)
	(:action sync_F_aut_5_q_1_alphacount_1
		:precondition (and (turn sync) (F aut_5_q_1) (newCnt aut_5_q_1 alphacount_1) (not (newCnt aut_5_q_1 alphacount_2)) (not (F aut_5_q_0)))
		:effect (and (poss aut_5_t_2) (oldCnt aut_5_q_1 alphacount_1) (not (F aut_5_q_1)) (forall (?n - alphacounter) (not (newCnt aut_5_q_1 ?n))))
	)
	(:action sync_F_aut_5_q_1_alphacount_2
		:precondition (and (turn sync) (F aut_5_q_1) (newCnt aut_5_q_1 alphacount_2) (not (F aut_5_q_0)))
		:effect (and (poss aut_5_t_2) (oldCnt aut_5_q_1 alphacount_2) (not (F aut_5_q_1)) (forall (?n - alphacounter) (not (newCnt aut_5_q_1 ?n))))
	)
	(:action continue
		:precondition (and (turn sync) (forall (?q - autstate) (not (F ?q))))
		:effect (oneof 
			(and (dummy_goal))
			(and (turn i0) (not (turn sync)))
			)
		
	))