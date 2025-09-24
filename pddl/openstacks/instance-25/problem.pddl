(define (problem socs2025_openstacks_11-problem)
 (:domain socs2025_openstacks_11-domain)
 (:objects
 )
 (:init (= (stacks_in_use) 0) (= (max_stacks) 13) (waiting o1) (includes o1 p8) (waiting o2) (includes o2 p10) (includes o2 p15) (waiting o3) (includes o3 p8) (waiting o4) (includes o4 p2) (waiting o5) (includes o5 p6) (includes o5 p8) (waiting o6) (includes o6 p6) (waiting o7) (includes o7 p3) (includes o7 p4) (includes o7 p6) (waiting o8) (includes o8 p11) (waiting o9) (includes o9 p5) (includes o9 p9) (includes o9 p12) (waiting o10) (includes o10 p11) (waiting o11) (includes o11 p12) (waiting o12) (includes o12 p8) (waiting o13) (includes o13 p1) (includes o13 p7) (waiting o14) (includes o14 p9) (waiting o15) (includes o15 p13) (includes o15 p14) (includes o15 p15) (not_made p1) (not_made p2) (not_made p3) (not_made p4) (not_made p5) (not_made p6) (not_made p7) (not_made p8) (not_made p9) (not_made p10) (not_made p11) (not_made p12) (not_made p13) (not_made p14) (not_made p15))
 (:goal (and (shipped o1) (shipped o2) (shipped o3) (shipped o4) (shipped o5) (shipped o6) (shipped o7) (shipped o8) (shipped o9) (shipped o10) (shipped o11) (shipped o12) (shipped o13) (shipped o14) (shipped o15)))
 (:metric minimize (total-time))
)
