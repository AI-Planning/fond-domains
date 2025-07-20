(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s2_0 - stone
		s2_1 - stone
		s3_0 - stone
		s3_1 - stone
		s3_2 - stone
		s3_3 - stone
		s3_4 - stone
	)

	(:init
		(successor pile1 s1_0)
		(successor s1_0 terminal)
		(successor pile2 s2_0)
		(successor s2_0 s2_1)
		(successor s2_1 terminal)
		(successor pile3 s3_0)
		(successor s3_0 s3_1)
		(successor s3_1 s3_2)
		(successor s3_2 s3_3)
		(successor s3_3 s3_4)
		(successor s3_4 terminal)
		(turn p0)
	)

	(:goal (and
		(successor pile1 terminal)
		(successor pile2 terminal)
		(successor pile3 terminal)
		(opponents_turn)
	))
)