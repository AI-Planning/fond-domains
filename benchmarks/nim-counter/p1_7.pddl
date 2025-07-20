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
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 s1_2)
		(successor s1_2 s1_3)
		(successor s1_3 s1_4)
		(successor s1_4 s1_5)
		(successor s1_5 s1_6)
		(successor s1_6 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(opponents_turn)
	))
)