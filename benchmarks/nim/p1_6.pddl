(define (problem nim)
	(:domain nim)

	(:objects
		s0 - stone
		s1 - stone
		s2 - stone
		s3 - stone
		s4 - stone
		s5 - stone
		pile1 - pile
	)

	(:init
		(in s0 pile1)
		(in s1 pile1)
		(in s2 pile1)
		(in s3 pile1)
		(in s4 pile1)
		(in s5 pile1)
		(turn p0)
	)

	(:goal (and
		(not (in s0 pile1))
		(not (in s1 pile1))
		(not (in s2 pile1))
		(not (in s3 pile1))
		(not (in s4 pile1))
		(not (in s5 pile1))
		(opponents_turn)
	))
)