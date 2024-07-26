(define
    (domain repeat-state)
    (:requirements :strips :typing :non-deterministic)
    (:predicates (p1) (p2) (p3) (p4) (g))

    (:action a1
        :precondition (and (not (p1)) (not (p2)))
        :effect (oneof (p1) (p2)))

    (:action a2
        :precondition (and (p1) (not (p2)))
        :effect (p2))

    (:action a3
        :precondition (and (p2) (not (p1)))
        :effect (p1))

    (:action a4
        :precondition (and (p1) (p2))
        :effect (oneof (p3) (p4)))

    (:action a5
        :precondition (and (p3) (not (p4)))
        :effect (p4))

    (:action a6
        :precondition (and (p4) (not (p3)))
        :effect (p3))

    (:action done
        :precondition (and (p3) (p4))
        :effect (oneof (g) (and (not (p1)) (not (p2)) (not (p3)) (not (p4)))))
)
