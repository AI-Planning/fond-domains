(define (domain nim)
    (:requirements :non-deterministic :adl)

    (:types pile stone player - object)

    (:constants p0 p1 p2 p3 - player)


    (:predicates (in ?stone - stone ?pile - pile)
                 (turn ?player - player)
                 (opponents_turn)
                 )

    (:action take1
        :parameters (?s - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (in ?s ?p)
        )

        :effect (and 
            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
                (turn p3)
            )
            (opponents_turn)

            (not (in ?s ?p))
            
        )
    )

    (:action take2
        :parameters (?s ?s2 - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (in ?s ?p)
            (in ?s2 ?p)
            (not (= ?s ?s2))
        )
        :effect (and 
            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
                (turn p3)
            )
            (opponents_turn)
            
            (not (in ?s ?p))
            (not (in ?s2 ?p))
        )
    )

    (:action take3
        :parameters (?s ?s2 ?s3 - stone ?p - pile)
        :precondition (and 
            (turn p0)
            (in ?s ?p)
            (in ?s2 ?p)
            (in ?s3 ?p)
            (not (= ?s ?s2))
            (not (= ?s3 ?s2))
            (not (= ?s ?s3))
        )
        :effect (and 
            (not (turn p0))
            (oneof 
                (turn p1)
                (turn p2)
                (turn p3)
            )
            (opponents_turn)

            (not (in ?s ?p))
            (not (in ?s2 ?p))
            (not (in ?s3 ?p))
        )
    )

    (:action pile1
        :parameters (?s ?s2 ?s3 - stone)
        :precondition (and 
            (turn p1)
            (in ?s pile1)
            (in ?s2 pile1)
            (in ?s3 pile1)
            (not (= ?s ?s2))
            (not (= ?s3 ?s2))
            (not (= ?s ?s3))
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile1)))
                (and (not (in ?s pile1)) (not (in ?s2 pile1)))
                (and (not (in ?s pile1)) (not (in ?s2 pile1)) (not (in ?s3 pile1)))
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
            (in ?s pile1)
            (in ?s2 pile1)
            (not (= ?s ?s2))

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)) (not (= ?ss ?s2)))
                    (not (in ?ss pile1))
                )
            )
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile1)))
                (and (not (in ?s pile1)) (not (in ?s2 pile1)))
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
            (in ?s pile1)

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)))
                    (not (in ?ss pile1))
                )
            )
        )
        :effect (and 
            (not (in ?s pile1))
            (not (turn p1))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile1_empty
        :parameters ()
        :precondition (and 
            (turn p1)

            (forall (?ss - stone)
                (not (in ?ss pile1))
            )
        )
        :effect (and 
            (not (turn p1))
            (oneof (turn p3) (turn p2))
        )
    )

    (:action pile2
        :parameters (?s ?s2 ?s3 - stone)
        :precondition (and 
            (turn p2)
            (in ?s pile2)
            (in ?s2 pile2)
            (in ?s3 pile2)
            (not (= ?s ?s2))
            (not (= ?s3 ?s2))
            (not (= ?s ?s3))
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile2)))
                (and (not (in ?s pile2)) (not (in ?s2 pile2)))
                (and (not (in ?s pile2)) (not (in ?s2 pile2)) (not (in ?s3 pile2)))
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
            (in ?s pile2)
            (in ?s2 pile2)
            (not (= ?s ?s2))

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)) (not (= ?ss ?s2)))
                    (not (in ?ss pile2))
                )
            )
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile2)))
                (and (not (in ?s pile2)) (not (in ?s2 pile2)))
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
            (in ?s pile2)

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)))
                    (not (in ?ss pile2))
                )
            )
        )
        :effect (and 
            (not (in ?s pile2))
            (not (turn p2))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile2_empty
        :parameters ()
        :precondition (and 
            (turn p2)

            (forall (?ss - stone)
                (not (in ?ss pile2))
            )
        )
        :effect (and 
            (not (turn p2))
            (oneof (turn p3) (turn p1))
        )
    )

    (:action pile3
        :parameters (?s ?s2 ?s3 - stone)
        :precondition (and 
            (turn p3)
            (in ?s pile3)
            (in ?s2 pile3)
            (in ?s3 pile3)
            (not (= ?s ?s2))
            (not (= ?s3 ?s2))
            (not (= ?s ?s3))
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile3)))
                (and (not (in ?s pile3)) (not (in ?s2 pile3)))
                (and (not (in ?s pile3)) (not (in ?s2 pile3)) (not (in ?s3 pile3)))
            )
            (not (turn p3))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile3_2_left
        :parameters (?s ?s2 - stone)
        :precondition (and 
            (turn p3)
            (in ?s pile3)
            (in ?s2 pile3)
            (not (= ?s ?s2))

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)) (not (= ?ss ?s2)))
                    (not (in ?ss pile3))
                )
            )
        )
        :effect (and 
            (oneof 
                (and (not (in ?s pile3)))
                (and (not (in ?s pile3)) (not (in ?s2 pile3)))
            )
            (not (turn p3))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile3_1_left
        :parameters (?s - stone)
        :precondition (and 
            (turn p3)
            (in ?s pile3)

            (forall (?ss - stone)
                (imply 
                    (and (not (= ?ss ?s)))
                    (not (in ?ss pile3))
                )
            )
        )
        :effect (and 
            (not (in ?s pile3))
            (not (turn p3))
            (turn p0)
            (not (opponents_turn))
        )
    )

    (:action pile3_empty
        :parameters ()
        :precondition (and 
            (turn p3)

            (forall (?ss - stone)
                (not (in ?ss pile3))
            )
        )
        :effect (and 
            (not (turn p3))
            (oneof (turn p2) (turn p1))
        )
    )
)