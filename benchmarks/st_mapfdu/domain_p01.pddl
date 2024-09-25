; MAPF/DU domain (FOND version) with 4 worlds for 2 agents
; Author: Thorsten Engesser - `st_mapfdu`
; [AAAI'20](https://doi.org/10.1609/aaai.v34i05.6204).
(define (domain mapfdu_2_agents)
      (:requirements :non-deterministic :negative-preconditions :equality :typing)
      (:types
            agt world pos
      )
      (:constants
            w0 w1 w2 w3 - world
            a0 a1 - agt
      )
      (:predicates
            (at ?a - agt ?p - pos)
            (adj ?p1 ?p2 - pos)
            (stopped ?a - agt)
            (goal ?w - world ?a - agt ?p - pos)
            (ind ?a - agt ?w1 ?w2 - world)
            (des ?w - world)
            (next-choose)
            (next-move ?a - agt ?p1 ?p2 - pos)
            (next-annc ?a - agt ?p - pos)
      )
      (:action choose-move ; UNFAIR ACTION!
            :parameters (?a - agt ?w - world ?p1 ?p2 - pos)
            :precondition (and (des ?w) (next-choose)
                  (at ?a ?p1) (adj ?p1 ?p2)
                  (and (not (at a0 ?p2)) (not (at a1 ?p2)))
                  (not (stopped ?a)))
            :effect (and (next-move ?a ?p1 ?p2) (not (next-choose))
                  (oneof
                        (when
                              (and (ind ?a ?w w0) (not (= ?w w0)))
                              (and (not (des ?w)) (des w0)))
                        (when
                              (and (ind ?a ?w w1) (not (= ?w w1)))
                              (and (not (des ?w)) (des w1)))
                        (when
                              (and (ind ?a ?w w2) (not (= ?w w2)))
                              (and (not (des ?w)) (des w2)))
                        (when
                              (and (ind ?a ?w w3) (not (= ?w w3)))
                              (and (not (des ?w)) (des w3)))))
      )
      (:action choose-announce ; UNFAIR ACTION!
            :parameters (?a - agt ?w - world ?p - pos)
            :precondition (and (des ?w) (next-choose)
                  (at ?a ?p) (goal ?w ?a ?p)
                  (not (stopped ?a)))
            :effect (and (next-annc ?a ?p) (not (next-choose))
                  (oneof
                        (when
                              (and (ind ?a ?w w0) (not (= ?w w0)))
                              (and (not (des ?w)) (des w0)))
                        (when
                              (and (ind ?a ?w w1) (not (= ?w w1)))
                              (and (not (des ?w)) (des w1)))
                        (when
                              (and (ind ?a ?w w2) (not (= ?w w2)))
                              (and (not (des ?w)) (des w2)))
                        (when
                              (and (ind ?a ?w w3) (not (= ?w w3)))
                              (and (not (des ?w)) (des w3)))))
      )
      (:action move
            :parameters (?a - agt ?w - world ?p1 ?p2 - pos)
            :precondition (and (des ?w) (next-move ?a ?p1 ?p2))
            :effect (and (not (at ?a ?p1)) (at ?a ?p2)
                  (not (next-move ?a ?p1 ?p2))
                  (next-choose))
      )
      (:action announce
            :parameters (?a - agt ?w - world ?p - pos)
            :precondition (and (des ?w) (next-annc ?a ?p)
                  (goal ?w ?a ?p))
            :effect (and (stopped ?a)
                  (not (next-annc ?a ?p)) (next-choose)
                  (when
                        (not (goal w0 ?a ?p))
                        (and (not (ind a0 w0 w0)) (not (ind a0 w0 w0))
                              (not (ind a0 w0 w1)) (not (ind a0 w1 w0))
                              (not (ind a0 w0 w2)) (not (ind a0 w2 w0))
                              (not (ind a0 w0 w3)) (not (ind a0 w3 w0))
                              (not (ind a1 w0 w0)) (not (ind a1 w0 w0))
                              (not (ind a1 w0 w1)) (not (ind a1 w1 w0))
                              (not (ind a1 w0 w2)) (not (ind a1 w2 w0))
                              (not (ind a1 w0 w3)) (not (ind a1 w3 w0))))
                  (when
                        (not (goal w1 ?a ?p))
                        (and (not (ind a0 w1 w0)) (not (ind a0 w0 w1))
                              (not (ind a0 w1 w1)) (not (ind a0 w1 w1))
                              (not (ind a0 w1 w2)) (not (ind a0 w2 w1))
                              (not (ind a0 w1 w3)) (not (ind a0 w3 w1))
                              (not (ind a1 w1 w0)) (not (ind a1 w0 w1))
                              (not (ind a1 w1 w1)) (not (ind a1 w1 w1))
                              (not (ind a1 w1 w2)) (not (ind a1 w2 w1))
                              (not (ind a1 w1 w3)) (not (ind a1 w3 w1))))
                  (when
                        (not (goal w2 ?a ?p))
                        (and (not (ind a0 w2 w0)) (not (ind a0 w0 w2))
                              (not (ind a0 w2 w1)) (not (ind a0 w1 w2))
                              (not (ind a0 w2 w2)) (not (ind a0 w2 w2))
                              (not (ind a0 w2 w3)) (not (ind a0 w3 w2))
                              (not (ind a1 w2 w0)) (not (ind a1 w0 w2))
                              (not (ind a1 w2 w1)) (not (ind a1 w1 w2))
                              (not (ind a1 w2 w2)) (not (ind a1 w2 w2))
                              (not (ind a1 w2 w3)) (not (ind a1 w3 w2))))
                  (when
                        (not (goal w3 ?a ?p))
                        (and (not (ind a0 w3 w0)) (not (ind a0 w0 w3))
                              (not (ind a0 w3 w1)) (not (ind a0 w1 w3))
                              (not (ind a0 w3 w2)) (not (ind a0 w2 w3))
                              (not (ind a0 w3 w3)) (not (ind a0 w3 w3))
                              (not (ind a1 w3 w0)) (not (ind a1 w0 w3))
                              (not (ind a1 w3 w1)) (not (ind a1 w1 w3))
                              (not (ind a1 w3 w2)) (not (ind a1 w2 w3))
                              (not (ind a1 w3 w3)) (not (ind a1 w3 w3)))))
      )
)