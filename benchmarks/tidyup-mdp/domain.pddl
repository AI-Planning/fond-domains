(define (domain tidyup_v2)
    (:requirements :strips :typing :equality)

    (:types
            room
            location
            table
            door
            movable_object
            arm
    )

    (:constants
            left_arm right_arm - arm
            sponge cup1 cup2 cup3 cup4 - movable_object
    )

    (:predicates
        (table-state-known ?t - table)
        (on ?o - movable_object ?t - table)
        (wiped ?s - table)
        (hand-free ?a - arm)
        (grasped ?o - movable_object ?a - arm)
        (attached-to-base ?o - movable_object)
        (door-open ?d - door)
        (door-state-known ?d - door)
        (arm-at-side ?a - arm)
        (belongs-to-door ?l - location ?d - door)
        (belongs-to-table ?l - location ?t - table)
        (location-in-room ?l - location ?r - room)
        (at-base ?l - location)
        (tidy-pos ?o - movable_object ?t - table)
    )

    ; regular pickup 0.9 / pickup failed 0.1
    (:action pickup-object
     :parameters (?l - location ?o - movable_object ?t - table ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (on ?o ?t)
            (hand-free ?a)
            (table-state-known ?t)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (on ?o ?t))
                (grasped ?o ?a)
                (not (hand-free ?a))
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
        )
    )

    ; blind pickup 0.4 / blind pickup failed 0.5 / blind pickup severe failure 0.1
    (:action pickup-object-blind
     :parameters (?l - location ?o - movable_object ?t - table ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (on ?o ?t)
            (hand-free ?a)
            (not (table-state-known ?t))
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (on ?o ?t))
                (grasped ?o ?a)
                (not (hand-free ?a))
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (on ?o ?t))
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
        )
    )

    ; regular putdown 0.9 / putdown failure 0.1
    (:action putdown-object
     :parameters (?l - location ?o - movable_object ?t - table ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (grasped ?o ?a)
            (table-state-known ?t)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (on ?o ?t)
                (not (grasped ?o ?a))
                (hand-free ?a)
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
        )
    )

    ; blind putdown 0.4 / blind putdown failure 0.5 / blind putdown severe failure 0.1
    (:action putdown-object-blind
     :parameters (?l - location ?o - movable_object ?t - table ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (grasped ?o ?a)
            (not (table-state-known ?t))
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (on ?o ?t)
                (not (grasped ?o ?a))
                (hand-free ?a)
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
            (and
                (not (grasped ?o ?a))
                (hand-free ?a)
                (not (arm-at-side ?a))
                (not (table-state-known ?t))
            )
        )
    )

    (:action wipe
     :parameters (?l - location ?t - table ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (not (on cup1 ?t))
            (not (on cup2 ?t))
            (not (on cup3 ?t))
            (not (on cup4 ?t))
            (grasped sponge ?a)
            (table-state-known ?t)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
            (belongs-to-table ?l ?t)
            (not (wiped ?t))
        )
     :effect
        (and
            (not (arm-at-side ?a))
            (wiped ?t)

        )
    )

    (:action detach-sponge
     :parameters (?a - arm)
     :precondition
        (and
            (hand-free ?a)
            (attached-to-base sponge)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (and
            (grasped sponge ?a)
            (not (attached-to-base sponge))
            (not (arm-at-side ?a))
            (not (hand-free ?a))

        )
    )

    (:action attach-sponge
    :parameters (?a - arm)
    :precondition
        (and
            (grasped sponge ?a)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
    :effect
        (and
            (not (grasped sponge ?a))
            (attached-to-base sponge)
            (not (arm-at-side ?a))
            (hand-free ?a)

        )
    )

    ; regular sense table 1.0
    (:action sense-table-state
    :parameters (?l - location ?t - table)
    :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (not (table-state-known ?t))
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
    :effect
        (and
            (table-state-known ?t)

        )
    )

    ; obstructed sense table 0.8 / obstructed sense table failure 0.2
    (:action sense-table-state-untucked
    :parameters (?l - location ?t - table)
    :precondition
        (and
            (at-base ?l)
            (belongs-to-table ?l ?t)
            (not (table-state-known ?t))
            (or
                (not (arm-at-side right_arm))
                (not (arm-at-side left_arm))
            )
        )
    :effect
        (oneof

            (and
                (table-state-known ?t)
            )
            (and)
        )
    )

    ; regular sense door 1.0
    (:action sense-door-state
    :parameters (?l - location ?d - door)
    :precondition
        (and
            (at-base ?l)
            (belongs-to-door ?l ?d)
            (not (door-state-known ?d))
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
    :effect
        (and
            (door-state-known ?d)

        )
    )

    ; obstructed sense door 0.8 / obstructed sense door failure 0.2
    (:action sense-door-state-untucked
    :parameters (?l - location ?d - door)
    :precondition
        (and
            (at-base ?l)
            (belongs-to-door ?l ?d)
            (not (door-state-known ?d))
            (or
                (not (arm-at-side right_arm))
                (not (arm-at-side left_arm))
            )
        )
    :effect
        (oneof

            (and
                (door-state-known ?d)
            )
            (and)
        )
    )

    (:action open-door
     :parameters (?l - location ?d - door ?a - arm)
     :precondition
        (and
            (at-base ?l)
            (belongs-to-door ?l ?d)
            (door-state-known ?d)
            (not (door-open ?d))
            (hand-free ?a)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (and
            (not (arm-at-side ?a))
            (door-open ?d)
            (not (door-state-known ?d))

        )
    )

    ; regular drive 0.9 / regular drive failure 0.1
    (:action drive
     :parameters (?r - room ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (location-in-room ?s ?r)
            (location-in-room ?g ?r)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.5 / untucked drive failure 0.5
    (:action drive-untucked-right-arm
     :parameters (?r - room ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (location-in-room ?s ?r)
            (location-in-room ?g ?r)
            ;(or
            ;    (not (arm-at-side right_arm))
            ;    (not (arm-at-side left_arm))
            ;)
            (not (arm-at-side right_arm))
            (hand-free right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.5 / untucked drive failure 0.5
    (:action drive-untucked-left-arm
     :parameters (?r - room ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (location-in-room ?s ?r)
            (location-in-room ?g ?r)
            ;(or
            ;    (not (arm-at-side right_arm))
            ;    (not (arm-at-side left_arm))
            ;)
            (not (arm-at-side left_arm))
            (hand-free left_arm)
            (arm-at-side right_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.5 / untucked drive failure 0.5
    (:action drive-untucked
     :parameters (?r - room ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (location-in-room ?s ?r)
            (location-in-room ?g ?r)
            (not (arm-at-side left_arm))
            (not (arm-at-side right_arm))
            (hand-free left_arm)
            (hand-free right_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive severe failure right arm 0.2 / untucked drive severe failure left arm 0.2
    (:action drive-untucked-carrying
     :parameters (?r - room ?s ?g - location ?o - movable_object ?a - arm)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (location-in-room ?s ?r)
            (location-in-room ?g ?r)
            (not (arm-at-side ?a))
            (grasped ?o ?a)
        )
     :effect
        (oneof

            ;(and
            ;    (not (at-base ?s))
            ;    (at-base ?g)
            ;)
            ;(and)
            (and
                (hand-free ?a)
                (not (grasped ?o ?a))
            )
        )
    )

    ; regular drive 0.9 / regular drive failure 0.1
    (:action drive-through-door
     :parameters (?sr ?gr - room ?d - door ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (belongs-to-door ?s ?d)
            (belongs-to-door ?g ?d)
            (location-in-room ?s ?sr)
            (location-in-room ?g ?gr)
            (door-state-known ?d)
            (door-open ?d)
            (arm-at-side right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.4 / untucked drive failure 0.6
    (:action drive-through-door-untucked-right-arm
     :parameters (?sr ?gr - room ?d - door ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (belongs-to-door ?s ?d)
            (belongs-to-door ?g ?d)
            (location-in-room ?s ?sr)
            (location-in-room ?g ?gr)
            (door-state-known ?d)
            (door-open ?d)
            (not (arm-at-side right_arm))
            ;(not (grasped ?o right_arm))
            (hand-free right_arm)
            (arm-at-side left_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.4 / untucked drive failure 0.6
    (:action drive-through-door-untucked-left-arm
     :parameters (?sr ?gr - room ?d - door ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (belongs-to-door ?s ?d)
            (belongs-to-door ?g ?d)
            (location-in-room ?s ?sr)
            (location-in-room ?g ?gr)
            (door-state-known ?d)
            (door-open ?d)
            (not (arm-at-side left_arm))
            ;(not (grasped ?o left_arm))
            (hand-free left_arm)
            (arm-at-side right_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive 0.4 / untucked drive failure 0.6
    (:action drive-through-door-untucked
     :parameters (?sr ?gr - room ?d - door ?s ?g - location)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (belongs-to-door ?s ?d)
            (belongs-to-door ?g ?d)
            (location-in-room ?s ?sr)
            (location-in-room ?g ?gr)
            (door-state-known ?d)
            (door-open ?d)
            (not (arm-at-side left_arm))
            ;(not (grasped ?o left_arm))
            (hand-free left_arm)
            (not (arm-at-side right_arm))
            ;(not (grasped ?o right_arm))
            (hand-free right_arm)
        )
     :effect
        (oneof

            (and
                (not (at-base ?s))
                (at-base ?g)
            )
            (and)
        )
    )

    ; untucked drive severe failure right arm 0.3 / untucked drive severe failure left arm 0.3
    (:action drive-through-door-untucked-carrying
     :parameters (?sr ?gr - room ?d - door ?s ?g - location ?o - movable_object ?a - arm)
     :precondition
        (and
            (not (= ?s ?g))
            (at-base ?s)
            (belongs-to-door ?s ?d)
            (belongs-to-door ?g ?d)
            (location-in-room ?s ?sr)
            (location-in-room ?g ?gr)
            (door-state-known ?d)
            (door-open ?d)
            (not (arm-at-side ?a))
            (grasped ?o ?a)
        )
     :effect
        (and
            (hand-free right_arm)
            (not (grasped ?o ?a))

        )
    )

    (:action arm-to-side
    :parameters (?a - arm)
    :precondition
        (and
            (not (arm-at-side ?a))
        )
    :effect
        (and
            (arm-at-side ?a)

        )
    )
)
