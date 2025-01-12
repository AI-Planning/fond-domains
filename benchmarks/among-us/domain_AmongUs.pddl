;Among us Domain
;Katherine Williams & Georgia Reed

(define (domain domain_AmongUs)

    (:requirements :action-costs :conditional-effects :negative-preconditions :equality :adl :non-deterministic)

    (:types
        room locatable - object
        person - locatable
    )

    (:functions
        (total-cost)
    )

    (:predicates
        (at ?p - person ?r - room) ;checking locations of people
        (connected ?r1 ?r2 - room);checking of roooms are connected
        (lightsOn ?r - room);determine if lights are on in rooms
        (completedTasks ?r - room);if rooms have all completed tasks
        (headquarters ?r - room);if the room is the HQ
        (killed ?p - person);who was killed
        (spooked ?p - person);who was spooked
        (won ?p - person);who won
        (taskInProgress ?r - room);if a task is in progress
        (working ?p - person ?r - room);who is working on which task
        (looked ?p - person ?r - room);if a person peaked in a room
        
    )

    ;Action to move a person from one room to another
    (:action move
        :parameters (?p - person ?r1 ?r2 - room)
        ;Needs to be in room1, with rooms connected & needs to be able to move
        :precondition (and
                        (at ?p ?r1)
                        (connected ?r1 ?r2)
                        (looked ?p ?r2)
                        (not(working ?p ?r1))
                        (not(killed ?p))
                        (not(spooked ?p))
                        
        )
        :effect (and
            ;updates location
            (not(at ?p ?r1))
            (at ?p ?r2)
            
            (increase (total-cost) 1)
        )
    )

   ;Action to peek if room next door has lights on
    (:action peek
        :parameters (?p - person ?r1 ?r2 - room)
        :precondition (and
            ;rooms need to be connected 
            ;Needs to be in room1
            (at ?p ?r1)
            ;Room1 and 2 need to be connected
            (connected ?r1 ?r2)
            (not(looked ?p ?r2))
        )
        :effect (and
            ;when checking it will non-derterministically choose light on or off
            (looked ?p ?r2)
            (oneof
                (lightsOn ?r2)
                (not (lightsOn ?r2))
            )
            (increase (total-cost) 5)
            
        )
    )

    ;Action to recover if killer attacks with lights on
    (:action recover
        :parameters (?p - person ?r1 ?r2 - room)
        :precondition (and
            (spooked ?p)
            (at ?p ?r1)
            (headquarters ?r2)
        
        )
        ;once recovered no longer spooked - but ends up at HQ
        :effect (and
            (not(spooked ?p)) 
            (not(at ?p ?r1))
            (at ?p ?r2)
        )
    )

    ;Action to start tasks 
    (:action startTask
        :parameters (?p - person ?r - room)
        :precondition (and
            ;task in room needs to be incomplete &
            ; only one person does a task
            (at ?p ?r)
            (not(completedTasks ?r))
            (not(taskInProgress ?r))
            (not(spooked ?p)) 
            (not(killed ?p)) 
        )
        :effect (and
                (taskInProgress ?r)
                (working ?p  ?r )
        )

    )

    ;Action to complete tasks 
    (:action completeTask
        :parameters (?p - person ?r - room)
        :precondition (and
            ;need to be in room, working on a taask
            (at ?p ?r)
            (taskInProgress ?r)
            (working ?p  ?r )
        )

        :effect (and
        ;completes task
        ;if lights are off 
        ;then either complete task or die by the killer
        ;if lights are on 
        ;then either complete task or spooked by the killer
                (not(working ?p  ?r))
                (not(taskInProgress ?r))
                (when (not(lightsOn ?r))  
                    (oneof
                        (killed ?p)
                        (completedTasks ?r)
                    )
                )
                (when (lightsOn ?r)
                    (oneof
                        (spooked ?p)
                        (completedTasks ?r)
                    )
                
                )
        )

    )

    ;Action Killer got a crewmember & needs to start again
    ;all tasks start over
    (:action reboot
        :parameters (?p - person ?r1 ?r2 - room)
        :precondition (and
            ;needs to have died
            (killed ?p)
            (at ?p ?r1)
            (headquarters ?r2)
        )

        :effect (and
            (not(killed ?p))
            (not(at ?p ?r1))
            (at ?p ?r2)
            (forall (?rooms - room)
                (not(completedTasks ?rooms)))      
        )

    )

    ;Action crewmates win, when all tasks have been completed
    (:action win
        :parameters (?p - person)
        :precondition (and
            (forall (?r - room)
             (and (completedTasks ?r)))
        )
        :effect (and
            ;win
            (won ?p)
        )
    )
)
