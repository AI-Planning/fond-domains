(define
  (problem subd1_d10)
  (:domain puffbot_dialog)
  (:objects
    YesValue - RelevantInformation
    class1 - UserStatus
    class3 - UserStatus
    class2 - UserStatus
    NoValue - RelevantInformation
    slot1 - Slot
  )
  (:init
    (search_most_useful)
  )
  (:goal
    (GOAL_ACHIEVED)
  )
)
