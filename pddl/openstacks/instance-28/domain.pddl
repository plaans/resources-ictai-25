(define (domain socs2025_openstacks_3-domain)
 (:requirements :strips :typing :numeric-fluents :durative-actions)
 (:types order product)
 (:constants
   p7 p3 p4 p6 p2 p1 p5 - product
   o6 o1 o3 o2 o4 o7 o5 - order
 )
 (:predicates (includes ?o - order ?p - product) (waiting ?o - order) (started ?o - order) (shipped ?o - order) (made ?p - product) (not_made ?p - product))
 (:functions (stacks_in_use) (max_stacks))
 (:durative-action start_order
  :parameters ( ?o - order)
  :duration (= ?duration 1)
  :condition (and (at start (waiting ?o))(at start (< (stacks_in_use) (max_stacks))))
  :effect (and (at start (not (waiting ?o))) (at start (increase (stacks_in_use) 1)) (at end (started ?o))))
 (:durative-action make_product_p1
  :parameters ()
  :duration (= ?duration 10)
  :condition (and (at start (not_made p1))(at start (started o6)))
  :effect (and (at start (not (not_made p1))) (at end (made p1))))
 (:durative-action make_product_p2
  :parameters ()
  :duration (= ?duration 80)
  :condition (and (at start (not_made p2))(at start (started o1))(at start (started o2)))
  :effect (and (at start (not (not_made p2))) (at end (made p2))))
 (:durative-action make_product_p3
  :parameters ()
  :duration (= ?duration 60)
  :condition (and (at start (not_made p3))(at start (started o3)))
  :effect (and (at start (not (not_made p3))) (at end (made p3))))
 (:durative-action make_product_p4
  :parameters ()
  :duration (= ?duration 10)
  :condition (and (at start (not_made p4))(at start (started o4)))
  :effect (and (at start (not (not_made p4))) (at end (made p4))))
 (:durative-action make_product_p5
  :parameters ()
  :duration (= ?duration 10)
  :condition (and (at start (not_made p5))(at start (started o5)))
  :effect (and (at start (not (not_made p5))) (at end (made p5))))
 (:durative-action make_product_p6
  :parameters ()
  :duration (= ?duration 80)
  :condition (and (at start (not_made p6))(at start (started o7)))
  :effect (and (at start (not (not_made p6))) (at end (made p6))))
 (:durative-action make_product_p7
  :parameters ()
  :duration (= ?duration 60)
  :condition (and (at start (not_made p7))(at start (started o5)))
  :effect (and (at start (not (not_made p7))) (at end (made p7))))
 (:durative-action ship_order_o1
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o1))(at start (made p2)))
  :effect (and (at start (not (started o1))) (at end (shipped o1)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o2
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o2))(at start (made p2)))
  :effect (and (at start (not (started o2))) (at end (shipped o2)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o3
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o3))(at start (made p3)))
  :effect (and (at start (not (started o3))) (at end (shipped o3)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o4
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o4))(at start (made p4)))
  :effect (and (at start (not (started o4))) (at end (shipped o4)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o5
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o5))(at start (made p5))(at start (made p7)))
  :effect (and (at start (not (started o5))) (at end (shipped o5)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o6
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o6))(at start (made p1)))
  :effect (and (at start (not (started o6))) (at end (shipped o6)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o7
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o7))(at start (made p6)))
  :effect (and (at start (not (started o7))) (at end (shipped o7)) (at end (decrease (stacks_in_use) 1))))
)
