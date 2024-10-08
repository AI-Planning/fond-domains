(define (problem fr_8_1)
    (:domain first-response)
    (:objects
        l1 l2 l3 l4 l5 l6 l7 l8 - location
        f1 - fire_unit
        v1 - victim
        m1 m2 m3 m4 m5 m6 m7 m8 - medical_unit
    )
    (:init
        (hospital l4)
        (hospital l1)
        (hospital l5)
        (hospital l2)
        (hospital l7)
        (hospital l3)
        (water-at l6)
        (water-at l3)
        (water-at l7)
        (water-at l4)
        (water-at l1)
        (water-at l5)
        (water-at l2)
        (fire l3)
        (victim-at v1 l8)
        (victim-status v1 hurt)
        (adjacent l1 l1)
        (adjacent l2 l2)
        (adjacent l3 l3)
        (adjacent l4 l4)
        (adjacent l5 l5)
        (adjacent l6 l6)
        (adjacent l7 l7)
        (adjacent l8 l8)
        (adjacent l1 l2)
        (adjacent l2 l1)
        (adjacent l3 l1)
        (adjacent l1 l3)
        (adjacent l3 l2)
        (adjacent l2 l3)
        (adjacent l3 l4)
        (adjacent l4 l3)
        (adjacent l3 l5)
        (adjacent l5 l3)
        (adjacent l3 l6)
        (adjacent l6 l3)
        (adjacent l4 l1)
        (adjacent l1 l4)
        (adjacent l4 l2)
        (adjacent l2 l4)
        (adjacent l5 l1)
        (adjacent l1 l5)
        (adjacent l5 l2)
        (adjacent l2 l5)
        (adjacent l6 l1)
        (adjacent l1 l6)
        (adjacent l7 l1)
        (adjacent l1 l7)
        (adjacent l7 l2)
        (adjacent l2 l7)
        (adjacent l7 l3)
        (adjacent l3 l7)
        (adjacent l7 l4)
        (adjacent l4 l7)
        (adjacent l7 l5)
        (adjacent l5 l7)
        (adjacent l7 l6)
        (adjacent l6 l7)
        (adjacent l8 l1)
        (adjacent l1 l8)
        (adjacent l8 l2)
        (adjacent l2 l8)
        (adjacent l8 l3)
        (adjacent l3 l8)
        (adjacent l8 l4)
        (adjacent l4 l8)
        (adjacent l8 l5)
        (adjacent l5 l8)
        (adjacent l8 l6)
        (adjacent l6 l8)
        (fire-unit-at f1 l5)
        (medical-unit-at m1 l2)
        (medical-unit-at m2 l6)
        (medical-unit-at m3 l3)
        (medical-unit-at m4 l7)
        (medical-unit-at m5 l4)
        (medical-unit-at m6 l1)
        (medical-unit-at m7 l5)
        (medical-unit-at m8 l2)
    )
    (:goal
        (and
            (nfire l3)
            (victim-status v1 healthy)
        )
    )
)
