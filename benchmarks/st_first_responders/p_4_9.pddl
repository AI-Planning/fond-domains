(define (problem fr_4_9)
    (:domain first-response)
    (:objects
        l1 l2 l3 l4 - location
        f1 f2 f3 - fire_unit
        v1 v2 v3 v4 v5 v6 v7 v8 v9 - victim
        m1 - medical_unit
    )
    (:init
        (hospital l2)
        (hospital l3)
        (hospital l4)
        (water-at l3)
        (water-at l4)
        (fire l1)
        (victim-at v1 l2)
        (victim-status v1 hurt)
        (victim-at v2 l1)
        (victim-status v2 hurt)
        (fire l4)
        (victim-at v3 l1)
        (victim-status v3 dying)
        (victim-at v4 l4)
        (victim-status v4 dying)
        (fire l3)
        (victim-at v5 l4)
        (victim-status v5 hurt)
        (victim-at v6 l3)
        (victim-status v6 hurt)
        (fire l2)
        (victim-at v7 l3)
        (victim-status v7 dying)
        (victim-at v8 l2)
        (victim-status v8 dying)
        (victim-at v9 l2)
        (victim-status v9 dying)
        (adjacent l1 l1)
        (adjacent l2 l2)
        (adjacent l3 l3)
        (adjacent l4 l4)
        (adjacent l2 l1)
        (adjacent l1 l2)
        (adjacent l4 l1)
        (adjacent l1 l4)
        (adjacent l4 l2)
        (adjacent l2 l4)
        (adjacent l4 l3)
        (adjacent l3 l4)
        (fire-unit-at f1 l2)
        (fire-unit-at f2 l3)
        (fire-unit-at f3 l3)
        (medical-unit-at m1 l4)
    )
    (:goal
        (and
            (nfire l1)
            (nfire l4)
            (nfire l3)
            (nfire l2)
            (victim-status v1 healthy)
            (victim-status v2 healthy)
            (victim-status v3 healthy)
            (victim-status v4 healthy)
            (victim-status v5 healthy)
            (victim-status v6 healthy)
            (victim-status v7 healthy)
            (victim-status v8 healthy)
            (victim-status v9 healthy)
        )
    )
)
