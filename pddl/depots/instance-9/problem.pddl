(define (problem socs2025_depots_12-problem)
 (:domain socs2025_depots_12-domain)
 (:objects
   depot0 depot1 depot2 - depot
   distributor0 distributor1 distributor2 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
 )
 (:init (at_ pallet0 depot0) (clear pallet0) (at_ pallet1 depot1) (clear crate12) (at_ pallet2 depot2) (clear pallet2) (at_ pallet3 distributor0) (clear crate4) (at_ pallet4 distributor1) (clear crate14) (at_ pallet5 distributor2) (clear crate13) (at_ truck0 distributor1) (= (current_load truck0) 0) (= (load_limit truck0) 390) (at_ truck1 depot1) (= (current_load truck1) 0) (= (load_limit truck1) 246) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 depot2) (available hoist2) (at_ hoist3 distributor0) (available hoist3) (at_ hoist4 distributor1) (available hoist4) (at_ hoist5 distributor2) (available hoist5) (at_ crate0 distributor2) (on crate0 pallet5) (= (weight crate0) 41) (at_ crate1 depot1) (on crate1 pallet1) (= (weight crate1) 43) (at_ crate2 distributor0) (on crate2 pallet3) (= (weight crate2) 25) (at_ crate3 distributor2) (on crate3 crate0) (= (weight crate3) 16) (at_ crate4 distributor0) (on crate4 crate2) (= (weight crate4) 5) (at_ crate5 depot1) (on crate5 crate1) (= (weight crate5) 16) (at_ crate6 distributor2) (on crate6 crate3) (= (weight crate6) 62) (at_ crate7 distributor2) (on crate7 crate6) (= (weight crate7) 87) (at_ crate8 distributor2) (on crate8 crate7) (= (weight crate8) 30) (at_ crate9 distributor2) (on crate9 crate8) (= (weight crate9) 49) (at_ crate10 depot1) (on crate10 crate5) (= (weight crate10) 31) (at_ crate11 distributor1) (on crate11 pallet4) (= (weight crate11) 81) (at_ crate12 depot1) (on crate12 crate10) (= (weight crate12) 4) (at_ crate13 distributor2) (on crate13 crate9) (= (weight crate13) 73) (at_ crate14 distributor1) (on crate14 crate11) (= (weight crate14) 31) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet4) (on crate1 crate12) (on crate2 crate0) (on crate3 crate9) (on crate5 pallet0) (on crate6 crate2) (on crate9 pallet2) (on crate10 crate13) (on crate12 pallet5) (on crate13 pallet1) (on crate14 crate10)))
 (:metric minimize (fuel_cost))
)
