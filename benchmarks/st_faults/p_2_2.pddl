(define (problem fault_o2_f2)
    (:domain faults)
    (:init
        (not_completed o1)
        (not_completed o2)
        (not_fault f1)
        (not_fault f2)
    )
    (:goal
        (made)
    )
)
