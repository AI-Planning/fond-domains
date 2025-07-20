(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s1_2 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 s1_2)
		(successor s1_2 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(opponents_turn)
	))
)