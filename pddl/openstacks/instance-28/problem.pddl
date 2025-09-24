(define (problem socs2025_openstacks_3-problem)
 (:domain socs2025_openstacks_3-domain)
 (:objects
 )
 (:init (= (stacks_in_use) 0) (= (max_stacks) 6) (waiting o1) (includes o1 p2) (waiting o2) (includes o2 p2) (waiting o3) (includes o3 p3) (waiting o4) (includes o4 p4) (waiting o5) (includes o5 p5) (includes o5 p7) (waiting o6) (includes o6 p1) (waiting o7) (includes o7 p6) (not_made p1) (not_made p2) (not_made p3) (not_made p4) (not_made p5) (not_made p6) (not_made p7))
 (:goal (and (shipped o1) (shipped o2) (shipped o3) (shipped o4) (shipped o5) (shipped o6) (shipped o7)))
 (:metric minimize (total-time))
)
