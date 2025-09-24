(define (problem socs2025_openstacks_13-problem)
 (:domain socs2025_openstacks_13-domain)
 (:objects
 )
 (:init (= (stacks_in_use) 0) (= (max_stacks) 15) (waiting o1) (includes o1 p12) (includes o1 p13) (waiting o2) (includes o2 p3) (includes o2 p10) (waiting o3) (includes o3 p16) (waiting o4) (includes o4 p2) (waiting o5) (includes o5 p5) (includes o5 p7) (includes o5 p11) (waiting o6) (includes o6 p7) (waiting o7) (includes o7 p4) (includes o7 p6) (waiting o8) (includes o8 p7) (includes o8 p14) (waiting o9) (includes o9 p8) (includes o9 p15) (waiting o10) (includes o10 p3) (waiting o11) (includes o11 p5) (includes o11 p17) (waiting o12) (includes o12 p9) (waiting o13) (includes o13 p15) (waiting o14) (includes o14 p15) (waiting o15) (includes o15 p1) (includes o15 p13) (waiting o16) (includes o16 p8) (waiting o17) (includes o17 p15) (not_made p1) (not_made p2) (not_made p3) (not_made p4) (not_made p5) (not_made p6) (not_made p7) (not_made p8) (not_made p9) (not_made p10) (not_made p11) (not_made p12) (not_made p13) (not_made p14) (not_made p15) (not_made p16) (not_made p17))
 (:goal (and (shipped o1) (shipped o2) (shipped o3) (shipped o4) (shipped o5) (shipped o6) (shipped o7) (shipped o8) (shipped o9) (shipped o10) (shipped o11) (shipped o12) (shipped o13) (shipped o14) (shipped o15) (shipped o16) (shipped o17)))
 (:metric minimize (total-time))
)
