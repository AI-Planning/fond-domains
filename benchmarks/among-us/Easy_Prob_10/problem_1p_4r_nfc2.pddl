;Problem file for among us domian
(define (problem problem_AmongUs)
    (:domain domain_AmongUs)
       (:objects
        r1 r2 r3 r4 hq - room
        p1 - person
       
    )


    (:init

        ; Set up home
        (at p1 hq)
        ;lights at HQ start on
        (lightsOn hq)
        
        ;determine connected rooms
        (connected r1 r2)
        (connected r2 r1)

        (connected r1 r3)
        (connected r3 r1)

        (connected r4 r2)
        (connected r2 r4)

        (connected hq r1)
        (connected hq r2)

        ;declare HQ & start with this task 
        (headquarters hq)
       
        (= (total-cost) 0)

    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (won p1)
        )
       
    )

    (:metric minimize
        (total-cost)
    ) 
)
