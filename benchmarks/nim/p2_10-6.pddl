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
		s1_7 - stone
		s1_8 - stone
		s1_9 - stone
		s2_0 - stone
		s2_1 - stone
		s2_2 - stone
		s2_3 - stone
		s2_4 - stone
		s2_5 - stone
		pile1 - pile
		pile2 - pile
	)

	(:init
		(in s1_0 pile1)
		(in s1_1 pile1)
		(in s1_2 pile1)
		(in s1_3 pile1)
		(in s1_4 pile1)
		(in s1_5 pile1)
		(in s1_6 pile1)
		(in s1_7 pile1)
		(in s1_8 pile1)
		(in s1_9 pile1)
		(in s2_0 pile2)
		(in s2_1 pile2)
		(in s2_2 pile2)
		(in s2_3 pile2)
		(in s2_4 pile2)
		(in s2_5 pile2)
		(turn p0)
	)

	(:goal (and
		(not (in s1_0 pile1))
		(not (in s1_1 pile1))
		(not (in s1_2 pile1))
		(not (in s1_3 pile1))
		(not (in s1_4 pile1))
		(not (in s1_5 pile1))
		(not (in s1_6 pile1))
		(not (in s1_7 pile1))
		(not (in s1_8 pile1))
		(not (in s1_9 pile1))
		(not (in s2_0 pile2))
		(not (in s2_1 pile2))
		(not (in s2_2 pile2))
		(not (in s2_3 pile2))
		(not (in s2_4 pile2))
		(not (in s2_5 pile2))
		(opponents_turn)
	))
)