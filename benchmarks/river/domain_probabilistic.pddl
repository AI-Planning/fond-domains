;; Authors: Sylvie Thiébaux and Iain Little 2007
;; https://github.com/mokhtarivahid/safe-planner/tree/master/benchmarks/prob_interesting
(define (domain river)
   (:requirements :typing :strips :probabilistic-effects)
   (:predicates
      (on-near-bank)
      (on-far-bank)
      (on-island)
      (alive)
   )
   (:action traverse-rocks
      :parameters ()
      :precondition (and (on-near-bank))
      :effect (and (not (on-near-bank))
         (probabilistic 0.25
            (on-far-bank) 0.25
            (not (alive)) 0.50
            (on-island)))
   )
   (:action swim-river
      :parameters ()
      :precondition (and (on-near-bank))
      :effect (and (not (on-near-bank))
         (probabilistic 0.50
            (on-far-bank)))
   )
   (:action swim-island
      :parameters ()
      :precondition (and (on-island))
      :effect (and (not (on-island))
         (probabilistic 0.8
            (on-far-bank) 0.2
            (not (alive))))
   )
)