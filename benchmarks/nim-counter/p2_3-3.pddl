(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s1_2 - stone
		s2_0 - stone
		s2_1 - stone
		s2_2 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 s1_2)
		(successor s1_2 terminal)
		(successor pile2 s2_0)
		(successor s2_0 s2_1)
		(successor s2_1 s2_2)
		(successor s2_2 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(successor pile2 terminal)
		(opponents_turn)
	))
)