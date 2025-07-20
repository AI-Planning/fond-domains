(define (problem nim)
	(:domain nim)

	(:objects
		s0 - stone
		s1 - stone
		s2 - stone
		s3 - stone
		s4 - stone
		s5 - stone
		s6 - stone
		s7 - stone
		s8 - stone
		s9 - stone
		s10 - stone
		s11 - stone
		s12 - stone
		s13 - stone
		s14 - stone
		s15 - stone
		s16 - stone
		s17 - stone
		s18 - stone
		s19 - stone
		s20 - stone
		s21 - stone
		s22 - stone
		pile1 - pile
	)

	(:init
		(in s0 pile1)
		(in s1 pile1)
		(in s2 pile1)
		(in s3 pile1)
		(in s4 pile1)
		(in s5 pile1)
		(in s6 pile1)
		(in s7 pile1)
		(in s8 pile1)
		(in s9 pile1)
		(in s10 pile1)
		(in s11 pile1)
		(in s12 pile1)
		(in s13 pile1)
		(in s14 pile1)
		(in s15 pile1)
		(in s16 pile1)
		(in s17 pile1)
		(in s18 pile1)
		(in s19 pile1)
		(in s20 pile1)
		(in s21 pile1)
		(in s22 pile1)
		(turn p0)
	)

	(:goal (and
		(not (in s0 pile1))
		(not (in s1 pile1))
		(not (in s2 pile1))
		(not (in s3 pile1))
		(not (in s4 pile1))
		(not (in s5 pile1))
		(not (in s6 pile1))
		(not (in s7 pile1))
		(not (in s8 pile1))
		(not (in s9 pile1))
		(not (in s10 pile1))
		(not (in s11 pile1))
		(not (in s12 pile1))
		(not (in s13 pile1))
		(not (in s14 pile1))
		(not (in s15 pile1))
		(not (in s16 pile1))
		(not (in s17 pile1))
		(not (in s18 pile1))
		(not (in s19 pile1))
		(not (in s20 pile1))
		(not (in s21 pile1))
		(not (in s22 pile1))
		(opponents_turn)
	))
)