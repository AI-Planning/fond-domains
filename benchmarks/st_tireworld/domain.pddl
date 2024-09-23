;;; Modification of 2008 IPC-6 FOND domain to admit strong solutions
;;; Modified version done in https://ieeexplore.ieee.org/document/6735234
(define (domain tire)
  (:requirements :non-deterministic :typing)
  (:types
    location
  )
  (:predicates
    (vehicle-at ?loc - location)
    (spare-in ?loc - location)
    (road ?from - location ?to - location)
    (not-flattire)
    (hasspare)
  )
  (:action move-car
    :parameters (?from - location ?to - location)
    :precondition (and (vehicle-at ?from) (road ?from ?to) (not-flattire))
    :effect (and (vehicle-at ?to) (not (vehicle-at ?from)) (road ?from ?to) (oneof
        (and)
        (not (not-flattire))))
  )
  (:action loadtire
    :parameters (?loc - location)
    :precondition (and (vehicle-at ?loc) (spare-in ?loc))
    :effect (and (hasspare) (not (spare-in ?loc)))
  )
  (:action changetire
    :parameters ()
    :precondition (hasspare)
    :effect (and (not (hasspare)) (not-flattire))
  )
)