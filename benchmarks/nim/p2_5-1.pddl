(define (problem nim)
	(:domain nim)

	(:objects
		s1_0 - stone
		s1_1 - stone
		s1_2 - stone
		s1_3 - stone
		s1_4 - stone
		s2_0 - stone
		pile1 - pile
		pile2 - pile
	)

	(:init
		(in s1_0 pile1)
		(in s1_1 pile1)
		(in s1_2 pile1)
		(in s1_3 pile1)
		(in s1_4 pile1)
		(in s2_0 pile2)
		(turn p0)
	)

	(:goal (and
		(not (in s1_0 pile1))
		(not (in s1_1 pile1))
		(not (in s1_2 pile1))
		(not (in s1_3 pile1))
		(not (in s1_4 pile1))
		(not (in s2_0 pile2))
		(opponents_turn)
	))
)