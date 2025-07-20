(define (problem nim)
	(:domain nim)

	(:objects
		s0 - stone
		s1 - stone
		pile1 - pile
	)

	(:init
		(in s0 pile1)
		(in s1 pile1)
		(turn p0)
	)

	(:goal (and
		(not (in s0 pile1))
		(not (in s1 pile1))
		(opponents_turn)
	))
)