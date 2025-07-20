(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s1_2 - stone
		s1_3 - stone
		s1_4 - stone
		s1_5 - stone
		s1_6 - stone
		s1_7 - stone
		s1_8 - stone
		s1_9 - stone
		s1_10 - stone
		s1_11 - stone
		s1_12 - stone
		s1_13 - stone
		s1_14 - stone
		s1_15 - stone
		s1_16 - stone
		s1_17 - stone
		s1_18 - stone
		s1_19 - stone
		s1_20 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 s1_2)
		(successor s1_2 s1_3)
		(successor s1_3 s1_4)
		(successor s1_4 s1_5)
		(successor s1_5 s1_6)
		(successor s1_6 s1_7)
		(successor s1_7 s1_8)
		(successor s1_8 s1_9)
		(successor s1_9 s1_10)
		(successor s1_10 s1_11)
		(successor s1_11 s1_12)
		(successor s1_12 s1_13)
		(successor s1_13 s1_14)
		(successor s1_14 s1_15)
		(successor s1_15 s1_16)
		(successor s1_16 s1_17)
		(successor s1_17 s1_18)
		(successor s1_18 s1_19)
		(successor s1_19 s1_20)
		(successor s1_20 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(opponents_turn)
	))
)