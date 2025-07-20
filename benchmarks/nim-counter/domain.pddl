(define (domain nim)
    (:requirements :non-deterministic :adl :typing)

    (:types
            piece player - object
            pile stone - piece
            empty - stone
    )

    (:constants p0 p1 - player 
                terminal - empty
                pile1 - pile)


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
            (turn p1)
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
            (turn p1)
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
            (turn p1)
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
)