(define (problem tidyup_inst_mdp__08)
    (:domain tidyup_v2)
    (:objects
      kitchen_table - table
      desk1 - table
      desk2 - table
      desk3 - table
      kitchen - room
      corridor - room
      office1 - room
      office2 - room
      office3 - room
      init_location - location
      k_door_l1 - location
      k_door_l2 - location
      o_door1_l1 - location
      o_door1_l2 - location
      o_door2_l1 - location
      o_door2_l2 - location
      o_door3_l1 - location
      o_door3_l2 - location
      o_door4_l1 - location
      o_door4_l2 - location
      o_door5_l1 - location
      o_door5_l2 - location
      k_table_l - location
      desk1_l - location
      desk2_l - location
      desk3_l - location
      kitchen_door - door
      o_door1 - door
      o_door2 - door
      o_door3 - door
    )
    (:init
      (on cup1 desk1)
      (on cup2 desk2)
      (attached-to-base sponge)
      (at-base init_location)
      (hand-free left_arm)
      (hand-free right_arm)
      (arm-at-side left_arm)
      (arm-at-side right_arm)
      (belongs-to-door k_door_l1 kitchen_door)
      (belongs-to-door k_door_l2 kitchen_door)
      (belongs-to-door o_door1_l1 o_door1)
      (belongs-to-door o_door1_l2 o_door1)
      (belongs-to-door o_door2_l1 o_door2)
      (belongs-to-door o_door2_l2 o_door2)
      (belongs-to-door o_door3_l1 o_door3)
      (belongs-to-door o_door3_l2 o_door3)
      (belongs-to-table k_table_l kitchen_table)
      (belongs-to-table desk1_l desk1)
      (belongs-to-table desk2_l desk2)
      (belongs-to-table desk3_l desk3)
      (tidy-pos cup1 kitchen_table)
      (tidy-pos cup2 kitchen_table)
      (location-in-room init_location kitchen)
      (location-in-room k_table_l kitchen)
      (location-in-room desk1_l office1)
      (location-in-room desk2_l office2)
      (location-in-room desk3_l office3)
      (location-in-room k_door_l1 kitchen)
      (location-in-room k_door_l2 corridor)
      (location-in-room o_door1_l1 office1)
      (location-in-room o_door1_l2 corridor)
      (location-in-room o_door2_l1 office2)
      (location-in-room o_door2_l2 corridor)
      (location-in-room o_door3_l1 office3)
      (location-in-room o_door3_l2 office2)
    )
    (:goal (and
      (wiped kitchen_table)
      (table-state-known kitchen_table)
      (wiped desk1)
      (table-state-known desk1)
      (wiped desk2)
      (table-state-known desk2)
      (wiped desk3)
      (table-state-known desk3)
      (attached-to-base sponge)
      (on cup1 kitchen_table)
      (on cup2 kitchen_table)
      (arm-at-side right_arm)
      (arm-at-side left_arm)
      (hand-free right_arm)
      (hand-free left_arm)
    ))
)
