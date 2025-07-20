(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(opponents_turn)
	))
)