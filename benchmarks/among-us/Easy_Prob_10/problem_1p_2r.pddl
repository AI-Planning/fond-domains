;Problem file for among us domian
(define (problem problem_AmongUs)
    (:domain domain_AmongUs)
       (:objects
        r1 r2 hq - room
        p1 - person
       
    )


    (:init

        ; Set up home
        (at p1 hq)
        ;lights at HQ start on
        (lightsOn hq)
        
        ;determine connected rooms
        (connected hq r1)
        (connected r1 r2)
        (connected r2 r1)

        

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
