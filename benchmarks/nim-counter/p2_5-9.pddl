(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s1_2 - stone
		s1_3 - stone
		s1_4 - stone
		s2_0 - stone
		s2_1 - stone
		s2_2 - stone
		s2_3 - stone
		s2_4 - stone
		s2_5 - stone
		s2_6 - stone
		s2_7 - stone
		s2_8 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 s1_2)
		(successor s1_2 s1_3)
		(successor s1_3 s1_4)
		(successor s1_4 terminal)
		(successor pile2 s2_0)
		(successor s2_0 s2_1)
		(successor s2_1 s2_2)
		(successor s2_2 s2_3)
		(successor s2_3 s2_4)
		(successor s2_4 s2_5)
		(successor s2_5 s2_6)
		(successor s2_6 s2_7)
		(successor s2_7 s2_8)
		(successor s2_8 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(successor pile2 terminal)
		(opponents_turn)
	))
)