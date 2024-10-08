;; Authors: Sylvie Thiébaux and Iain Little 2007
;; https://github.com/mokhtarivahid/safe-planner/tree/master/benchmarks/prob_interesting
(define (domain bus-fare)
   (:requirements :typing :strips :equality :probabilistic-effects)
   (:types
      coin
   )
   (:predicates
      (have-1-coin)
      (have-2-coin)
      (have-3-coin)
      (have-fare)
   )
   (:action bet-coin-1
      :parameters ()
      :precondition (have-1-coin)
      :effect (and (not (have-1-coin))
         (probabilistic 0.01
            (have-3-coin)))
   )
   (:action bet-coin-2
      :parameters ()
      :precondition (have-2-coin)
      :effect (and (not (have-2-coin))
         (probabilistic 0.01
            (have-3-coin) 0.99
            (have-1-coin)))
   )
   (:action wash-car-1
      :parameters ()
      :precondition (have-1-coin)
      :effect (probabilistic 0.5
         (and (not (have-1-coin))
            (have-2-coin)))
   )
   (:action wash-car-2
      :parameters ()
      :precondition (have-2-coin)
      :effect (probabilistic 0.5
         (and (not (have-2-coin))
            (have-1-coin)))
   )
   (:action buy-fare
      :parameters ()
      :precondition (have-3-coin)
      :effect (and (not (have-3-coin)) (have-fare))
   )
)