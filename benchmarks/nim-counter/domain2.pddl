(define (domain nim)
    (:requirements :non-deterministic :adl :typing)

    (:types
            piece player - object
            pile stone - piece
            empty - stone
    )

    (:constants p0 p1 p2 - player 
                terminal - empty
                pile1 pile2 - pile)


    (:predicates (successor ?first ?second - piece)
                 (turn ?player - player)
                 (opponents_turn)
                 )

    (:action take1
        :parameters (?s ?s2 - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (successor ?p ?s)
            (successor ?s ?s2)
        )

        :effect (and 
            (not (successor ?p ?s))
            (not (successor ?s ?s2))
            (successor ?p ?s2)

            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
            )
            (opponents_turn)    
        )
    )

    (:action take2
        :parameters (?s ?s2 ?s3 - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (successor ?p ?s)
            (successor ?s ?s2)
            (successor ?s2 ?s3)
        )
        :effect (and 
            (not (successor ?p ?s))
            (not (successor ?s ?s2))
            (not (successor ?s2 ?s3))
            (successor ?p ?s3)

            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
            )
            (opponents_turn)
        )
    )

    (:action take3
        :parameters (?s ?s2 ?s3 ?s4 - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (successor ?p ?s)
            (successor ?s ?s2)
            (successor ?s2 ?s3)
            (successor ?s3 ?s4)
        )
        :effect (and 
            (not (successor ?p ?s))
            (not (successor ?s ?s2))
            (not (successor ?s2 ?s3))
            (not (successor ?s3 ?s4))
            (successor ?p ?s4)

            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
            )
            (opponents_turn)
        )
    )

    (:action pile1
        :parameters (?s ?s2 ?s3 ?s4 - stone)
        :precondition (and 
            (turn p1)
            (successor pile1 ?s)
            (successor ?s ?s2)
            (successor ?s2 ?s3)
            (successor ?s3 ?s4)
        )
        :effect (and 
            (oneof 
                (and
                    (not (successor pile1 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 ?s3))
                    (not (successor ?s3 ?s4))
                    (successor pile1 ?s4)
                )
                (and
                    (not (successor pile1 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 ?s3))
                    (successor pile1 ?s3)
                )
                (and 
                    (not (successor pile1 ?s))
                    (not (successor ?s ?s2))
                    (successor pile1 ?s2)
                )
            )
            (not (turn p1))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile1_2_left
        :parameters (?s ?s2 - stone)
        :precondition (and 
            (turn p1)
            (successor pile1 ?s)
            (successor ?s ?s2)
            (successor ?s2 terminal) 
        )
        :effect (and 
            (oneof 
                (and
                    (not (successor pile1 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 terminal))
                    (successor pile1 terminal)
                )
                (and 
                    (not (successor pile1 ?s))
                    (not (successor ?s ?s2))
                    (successor pile1 ?s2)
                )
            )
            (not (turn p1))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile1_1_left
        :parameters (?s - stone)
        :precondition (and 
            (turn p1)
            (successor pile1 ?s)
            (successor ?s terminal) 
        )
        :effect (and 
            (not (successor pile1 ?s)) 
            (not (successor ?s terminal)) 
            (successor pile1 terminal)

            (not (turn p1))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile1_empty
        :parameters ()
        :precondition (and 
            (turn p1)
            (successor pile1 terminal)
        )
        :effect (and 
            (not (turn p1))
            (turn p2)
        )
    )
 (:action pile2
        :parameters (?s ?s2 ?s3 ?s4 - stone)
        :precondition (and 
            (turn p2)
            (successor pile2 ?s)
            (successor ?s ?s2)
            (successor ?s2 ?s3)
            (successor ?s3 ?s4)
        )
        :effect (and 
            (oneof 
                (and
                    (not (successor pile2 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 ?s3))
                    (not (successor ?s3 ?s4))
                    (successor pile2 ?s4)
                )
                (and
                    (not (successor pile2 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 ?s3))
                    (successor pile2 ?s3)
                )
                (and 
                    (not (successor pile2 ?s))
                    (not (successor ?s ?s2))
                    (successor pile2 ?s2)
                )
            )
            (not (turn p2))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile2_2_left
        :parameters (?s ?s2 - stone)
        :precondition (and 
            (turn p2)
            (successor pile2 ?s)
            (successor ?s ?s2)
            (successor ?s2 terminal) 
        )
        :effect (and 
            (oneof 
                (and
                    (not (successor pile2 ?s))
                    (not (successor ?s ?s2))
                    (not (successor ?s2 terminal))
                    (successor pile2 terminal)
                )
                (and 
                    (not (successor pile2 ?s))
                    (not (successor ?s ?s2))
                    (successor pile2 ?s2)
                )
            )
            (not (turn p2))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile2_1_left
        :parameters (?s - stone)
        :precondition (and 
            (turn p2)
            (successor pile2 ?s)
            (successor ?s terminal) 
        )
        :effect (and 
            (not (successor pile2 ?s)) 
            (not (successor ?s terminal)) 
            (successor pile2 terminal)

            (not (turn p2))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile2_empty
        :parameters ()
        :precondition (and 
            (turn p2)
            (successor pile2 terminal)
        )
        :effect (and 
            (not (turn p2))
            (turn p1)
        )
    )
)