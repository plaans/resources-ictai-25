(define (problem socs2025_openstacks_5-problem)
 (:domain socs2025_openstacks_5-domain)
 (:objects
 )
 (:init (= (stacks_in_use) 0) (= (max_stacks) 8) (waiting o1) (includes o1 p5) (waiting o2) (includes o2 p4) (includes o2 p8) (waiting o3) (includes o3 p4) (includes o3 p6) (waiting o4) (includes o4 p4) (waiting o5) (includes o5 p7) (waiting o6) (includes o6 p1) (includes o6 p2) (includes o6 p9) (waiting o7) (includes o7 p5) (waiting o8) (includes o8 p3) (includes o8 p4) (waiting o9) (includes o9 p5) (not_made p1) (not_made p2) (not_made p3) (not_made p4) (not_made p5) (not_made p6) (not_made p7) (not_made p8) (not_made p9))
 (:goal (and (shipped o1) (shipped o2) (shipped o3) (shipped o4) (shipped o5) (shipped o6) (shipped o7) (shipped o8) (shipped o9)))
 (:metric minimize (total-time))
)
