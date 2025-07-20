(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s2_0 - stone
		s2_1 - stone
		s2_2 - stone
		s3_0 - stone
		s3_1 - stone
		s3_2 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 s1_1)
		(successor s1_1 terminal)
		(successor pile2 s2_0)
		(successor s2_0 s2_1)
		(successor s2_1 s2_2)
		(successor s2_2 terminal)
		(successor pile3 s3_0)
		(successor s3_0 s3_1)
		(successor s3_1 s3_2)
		(successor s3_2 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(successor pile2 terminal)
		(successor pile3 terminal)
		(opponents_turn)
	))
)