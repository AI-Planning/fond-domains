;; Authors: Sylvie Thiébaux and Iain Little 2007
;; Story: You are stuck on a roof because the ladder you climbed up on
;; fell down.  There are plenty of people around; if you call out for
;; help someone will certaintly lift the ladder up again.  Or you can
;; try the climb down without it.  You aren't a very good climber
;; though, so there is a 50-50 chance that you will fall and break
;; your neck if you go it alone.  What do you do?
;; https://ipc08.icaps-conference.org/probabilistic/wiki/index.php/Climber.html
(define (domain climber)
   (:requirements :typing :strips :probabilistic-effects)
   (:predicates
      (on-roof)
      (on-ground)
      (ladder-raised)
      (ladder-on-ground)
      (alive)
   )
   (:action climb-without-ladder
      :parameters ()
      :precondition (and (on-roof) (alive))
      :effect (and (not (on-roof))
         (on-ground)
         (probabilistic 0.4
            (not (alive))))
   )
   (:action climb-with-ladder
      :parameters ()
      :precondition (and (on-roof) (alive) (ladder-raised))
      :effect (and (not (on-roof)) (on-ground))
   )
   (:action call-for-help
      :parameters ()
      :precondition (and (on-roof) (alive) (ladder-on-ground))
      :effect (and (not (ladder-on-ground))
         (ladder-raised))
   )
)

(define (problem climber-problem)
   (:domain climber)
   (:init
      (on-roof)
      (alive)
      (ladder-on-ground)
   )
   (:goal
      (and (on-ground) (alive))
   )
)