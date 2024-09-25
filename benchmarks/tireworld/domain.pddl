;;; Authors: Michael Littman and David Weissman  ;;;
;;; Modified: Blai Bonet for IPC 2006 ;;;
;;; Modified: Dan Bryce for IPC 2008 ;;;
;;; https://ipc08.icaps-conference.org/probabilistic/wiki/index.php/Tireworld-nd_p01.html
(define (domain tire)
  (:requirements :typing :strips :non-deterministic)
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

  ;; Two (and) effects give us 1/3 probability of getting a flat -- the original probability was 2/5
  (:action move-car
    :parameters (?from - location ?to - location)
    :precondition (and (vehicle-at ?from) (road ?from ?to) (not-flattire))
    :effect (and (vehicle-at ?to) (not (vehicle-at ?from)) (oneof
        (and)
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
    :effect (oneof
      (and)
      (and (not (hasspare)) (not-flattire))) ;; The original domain has a 50% chance of a spare change failing
  )

)