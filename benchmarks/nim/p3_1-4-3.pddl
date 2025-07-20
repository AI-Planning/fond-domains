(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s2_0 - stone
		s2_1 - stone
		s2_2 - stone
		s2_3 - stone
		s3_0 - stone
		s3_1 - stone
		s3_2 - stone
		pile1 - pile
		pile2 - pile
		pile3 - pile
	)

	(:init
		(in s1_0 pile1)
		(in s2_0 pile2)
		(in s2_1 pile2)
		(in s2_2 pile2)
		(in s2_3 pile2)
		(in s3_0 pile3)
		(in s3_1 pile3)
		(in s3_2 pile3)
		(turn p0)
	)

	(:goal (and
		(not (in s1_0 pile1))
		(not (in s2_0 pile2))
		(not (in s2_1 pile2))
		(not (in s2_2 pile2))
		(not (in s2_3 pile2))
		(not (in s3_0 pile3))
		(not (in s3_1 pile3))
		(not (in s3_2 pile3))
		(opponents_turn)
	))
)