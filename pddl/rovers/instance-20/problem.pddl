(define (problem socs2025_rovers_2-problem)
 (:domain socs2025_rovers_2-domain)
 (:objects
   rover0 - rover
   waypoint0 waypoint1 waypoint2 waypoint3 - waypoint
   rover0store - store
   camera0 camera1 - camera
   colour high_res low_res - mode
   general - lander
   objective0 objective1 - objective
 )
 (:init (visible waypoint0 waypoint1) (visible waypoint1 waypoint0) (visible waypoint1 waypoint2) (visible waypoint2 waypoint1) (visible waypoint1 waypoint3) (visible waypoint3 waypoint1) (visible waypoint2 waypoint0) (visible waypoint0 waypoint2) (visible waypoint2 waypoint3) (visible waypoint3 waypoint2) (visible waypoint3 waypoint0) (visible waypoint0 waypoint3) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (in_sun waypoint1) (in_sun waypoint3) (at_lander general waypoint1) (channel_free general) (at_ rover0 waypoint0) (available rover0) (store_of rover0store rover0) (empty rover0store) (equipped_for_soil_analysis rover0) (equipped_for_rock_analysis rover0) (equipped_for_imaging rover0) (can_traverse rover0 waypoint0 waypoint1) (can_traverse rover0 waypoint1 waypoint0) (can_traverse rover0 waypoint0 waypoint2) (can_traverse rover0 waypoint2 waypoint0) (can_traverse rover0 waypoint0 waypoint3) (can_traverse rover0 waypoint3 waypoint0) (on_board camera0 rover0) (calibration_target camera0 objective0) (supports camera0 colour) (supports camera0 high_res) (supports camera0 low_res) (on_board camera1 rover0) (calibration_target camera1 objective1) (supports camera1 high_res) (visible_from objective0 waypoint0) (visible_from objective1 waypoint0) (visible_from objective1 waypoint1) (visible_from objective1 waypoint2) (= (recharge_duration rover0) 272) (= (recharge_duration_max rover0) 727) (= (recharge_duration_1 rover0) 9) (= (recharge_duration_2 rover0) 18) (= (recharge_duration_3 rover0) 27) (= (recharge_duration_4 rover0) 36) (= (recharge_duration_5 rover0) 45) (= (recharge_duration_6 rover0) 54) (= (recharge_duration_8 rover0) 72))
 (:goal (and (communicated_soil_data waypoint0) (communicated_rock_data waypoint0) (communicated_image_data objective1 low_res)))
 (:metric minimize (total-time))
)
