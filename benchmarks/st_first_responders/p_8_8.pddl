(define (problem fr_8_8)
    (:domain first-response)
    (:objects
        l1 l2 l3 l4 l5 l6 l7 l8 - location
        f1 f2 f3 f4 f5 - fire_unit
        v1 v2 v3 v4 v5 v6 v7 v8 - victim
        m1 m2 m3 m4 - medical_unit
    )
    (:init
        (hospital l8)
        (hospital l5)
        (water-at l8)
        (fire l4)
        (victim-at v1 l1)
        (victim-status v1 dying)
        (victim-at v2 l8)
        (victim-status v2 dying)
        (fire l3)
        (victim-at v3 l8)
        (victim-status v3 dying)
        (victim-at v4 l7)
        (victim-status v4 hurt)
        (fire l2)
        (victim-at v5 l7)
        (victim-status v5 hurt)
        (victim-at v6 l7)
        (victim-status v6 dying)
        (fire l1)
        (victim-at v7 l6)
        (victim-status v7 dying)
        (victim-at v8 l6)
        (victim-status v8 hurt)
        (adjacent l1 l1)
        (adjacent l2 l2)
        (adjacent l3 l3)
        (adjacent l4 l4)
        (adjacent l5 l5)
        (adjacent l6 l6)
        (adjacent l7 l7)
        (adjacent l8 l8)
        (adjacent l2 l1)
        (adjacent l1 l2)
        (adjacent l2 l3)
        (adjacent l3 l2)
        (adjacent l2 l4)
        (adjacent l4 l2)
        (adjacent l3 l1)
        (adjacent l1 l3)
        (adjacent l4 l1)
        (adjacent l1 l4)
        (adjacent l5 l1)
        (adjacent l1 l5)
        (adjacent l5 l2)
        (adjacent l2 l5)
        (adjacent l5 l3)
        (adjacent l3 l5)
        (adjacent l5 l4)
        (adjacent l4 l5)
        (adjacent l5 l6)
        (adjacent l6 l5)
        (adjacent l5 l7)
        (adjacent l7 l5)
        (adjacent l6 l1)
        (adjacent l1 l6)
        (adjacent l6 l2)
        (adjacent l2 l6)
        (adjacent l6 l3)
        (adjacent l3 l6)
        (adjacent l6 l4)
        (adjacent l4 l6)
        (adjacent l7 l1)
        (adjacent l1 l7)
        (adjacent l7 l2)
        (adjacent l2 l7)
        (adjacent l7 l3)
        (adjacent l3 l7)
        (adjacent l7 l4)
        (adjacent l4 l7)
        (adjacent l8 l1)
        (adjacent l1 l8)
        (adjacent l8 l2)
        (adjacent l2 l8)
        (fire-unit-at f1 l1)
        (fire-unit-at f2 l6)
        (fire-unit-at f3 l2)
        (fire-unit-at f4 l7)
        (fire-unit-at f5 l4)
        (medical-unit-at m1 l8)
        (medical-unit-at m2 l5)
        (medical-unit-at m3 l2)
        (medical-unit-at m4 l6)
    )
    (:goal
        (and
            (nfire l4)
            (nfire l3)
            (nfire l2)
            (nfire l1)
            (victim-status v1 healthy)
            (victim-status v2 healthy)
            (victim-status v3 healthy)
            (victim-status v4 healthy)
            (victim-status v5 healthy)
            (victim-status v6 healthy)
            (victim-status v7 healthy)
            (victim-status v8 healthy)
        )
    )
)
