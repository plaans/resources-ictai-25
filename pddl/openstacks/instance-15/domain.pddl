(define (domain socs2025_openstacks_12-domain)
 (:requirements :strips :typing :numeric-fluents :durative-actions)
 (:types order product)
 (:constants
   p7 p12 p14 p2 p10 p1 p5 p11 p3 p6 p8 p15 p9 p4 p13 p16 - product
   o2 o3 o15 o10 o11 o12 o16 o13 o14 o1 o6 o4 o7 o5 o9 o8 - order
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
  :duration (= ?duration 30)
  :condition (and (at start (not_made p1))(at start (started o3)))
  :effect (and (at start (not (not_made p1))) (at end (made p1))))
 (:durative-action make_product_p2
  :parameters ()
  :duration (= ?duration 60)
  :condition (and (at start (not_made p2))(at start (started o7))(at start (started o8))(at start (started o9)))
  :effect (and (at start (not (not_made p2))) (at end (made p2))))
 (:durative-action make_product_p3
  :parameters ()
  :duration (= ?duration 100)
  :condition (and (at start (not_made p3))(at start (started o3)))
  :effect (and (at start (not (not_made p3))) (at end (made p3))))
 (:durative-action make_product_p4
  :parameters ()
  :duration (= ?duration 70)
  :condition (and (at start (not_made p4))(at start (started o2))(at start (started o7)))
  :effect (and (at start (not (not_made p4))) (at end (made p4))))
 (:durative-action make_product_p5
  :parameters ()
  :duration (= ?duration 20)
  :condition (and (at start (not_made p5))(at start (started o15)))
  :effect (and (at start (not (not_made p5))) (at end (made p5))))
 (:durative-action make_product_p6
  :parameters ()
  :duration (= ?duration 100)
  :condition (and (at start (not_made p6))(at start (started o2)))
  :effect (and (at start (not (not_made p6))) (at end (made p6))))
 (:durative-action make_product_p7
  :parameters ()
  :duration (= ?duration 30)
  :condition (and (at start (not_made p7))(at start (started o10)))
  :effect (and (at start (not (not_made p7))) (at end (made p7))))
 (:durative-action make_product_p8
  :parameters ()
  :duration (= ?duration 40)
  :condition (and (at start (not_made p8))(at start (started o1)))
  :effect (and (at start (not (not_made p8))) (at end (made p8))))
 (:durative-action make_product_p9
  :parameters ()
  :duration (= ?duration 100)
  :condition (and (at start (not_made p9))(at start (started o10)))
  :effect (and (at start (not (not_made p9))) (at end (made p9))))
 (:durative-action make_product_p10
  :parameters ()
  :duration (= ?duration 30)
  :condition (and (at start (not_made p10))(at start (started o14)))
  :effect (and (at start (not (not_made p10))) (at end (made p10))))
 (:durative-action make_product_p11
  :parameters ()
  :duration (= ?duration 90)
  :condition (and (at start (not_made p11))(at start (started o5)))
  :effect (and (at start (not (not_made p11))) (at end (made p11))))
 (:durative-action make_product_p12
  :parameters ()
  :duration (= ?duration 30)
  :condition (and (at start (not_made p12))(at start (started o11))(at start (started o15)))
  :effect (and (at start (not (not_made p12))) (at end (made p12))))
 (:durative-action make_product_p13
  :parameters ()
  :duration (= ?duration 30)
  :condition (and (at start (not_made p13))(at start (started o10))(at start (started o15)))
  :effect (and (at start (not (not_made p13))) (at end (made p13))))
 (:durative-action make_product_p14
  :parameters ()
  :duration (= ?duration 90)
  :condition (and (at start (not_made p14))(at start (started o12))(at start (started o15))(at start (started o16)))
  :effect (and (at start (not (not_made p14))) (at end (made p14))))
 (:durative-action make_product_p15
  :parameters ()
  :duration (= ?duration 10)
  :condition (and (at start (not_made p15))(at start (started o4))(at start (started o6))(at start (started o13)))
  :effect (and (at start (not (not_made p15))) (at end (made p15))))
 (:durative-action make_product_p16
  :parameters ()
  :duration (= ?duration 30)
  :condition (and (at start (not_made p16))(at start (started o9)))
  :effect (and (at start (not (not_made p16))) (at end (made p16))))
 (:durative-action ship_order_o1
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o1))(at start (made p8)))
  :effect (and (at start (not (started o1))) (at end (shipped o1)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o2
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o2))(at start (made p4))(at start (made p6)))
  :effect (and (at start (not (started o2))) (at end (shipped o2)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o3
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o3))(at start (made p1))(at start (made p3)))
  :effect (and (at start (not (started o3))) (at end (shipped o3)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o4
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o4))(at start (made p15)))
  :effect (and (at start (not (started o4))) (at end (shipped o4)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o5
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o5))(at start (made p11)))
  :effect (and (at start (not (started o5))) (at end (shipped o5)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o6
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o6))(at start (made p15)))
  :effect (and (at start (not (started o6))) (at end (shipped o6)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o7
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o7))(at start (made p2))(at start (made p4)))
  :effect (and (at start (not (started o7))) (at end (shipped o7)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o8
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o8))(at start (made p2)))
  :effect (and (at start (not (started o8))) (at end (shipped o8)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o9
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o9))(at start (made p2))(at start (made p16)))
  :effect (and (at start (not (started o9))) (at end (shipped o9)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o10
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o10))(at start (made p7))(at start (made p9))(at start (made p13)))
  :effect (and (at start (not (started o10))) (at end (shipped o10)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o11
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o11))(at start (made p12)))
  :effect (and (at start (not (started o11))) (at end (shipped o11)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o12
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o12))(at start (made p14)))
  :effect (and (at start (not (started o12))) (at end (shipped o12)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o13
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o13))(at start (made p15)))
  :effect (and (at start (not (started o13))) (at end (shipped o13)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o14
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o14))(at start (made p10)))
  :effect (and (at start (not (started o14))) (at end (shipped o14)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o15
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o15))(at start (made p5))(at start (made p12))(at start (made p13))(at start (made p14)))
  :effect (and (at start (not (started o15))) (at end (shipped o15)) (at end (decrease (stacks_in_use) 1))))
 (:durative-action ship_order_o16
  :parameters ()
  :duration (= ?duration 1)
  :condition (and (at start (started o16))(at start (made p14)))
  :effect (and (at start (not (started o16))) (at end (shipped o16)) (at end (decrease (stacks_in_use) 1))))
)
