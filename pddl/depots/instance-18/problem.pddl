(define (problem socs2025_depots_18-problem)
 (:domain socs2025_depots_18-domain)
 (:objects
   depot0 depot1 - depot
   distributor0 distributor1 - distributor
   truck0 truck1 truck2 truck3 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate13) (at_ pallet1 depot1) (clear crate11) (at_ pallet2 distributor0) (clear crate14) (at_ pallet3 distributor1) (clear crate10) (at_ pallet4 depot0) (clear pallet4) (at_ pallet5 distributor0) (clear crate8) (at_ pallet6 distributor1) (clear crate3) (at_ pallet7 depot1) (clear crate5) (at_ truck0 depot1) (= (current_load truck0) 0) (= (load_limit truck0) 460) (at_ truck1 distributor0) (= (current_load truck1) 0) (= (load_limit truck1) 229) (at_ truck2 depot0) (= (current_load truck2) 0) (= (load_limit truck2) 314) (at_ truck3 depot1) (= (current_load truck3) 0) (= (load_limit truck3) 282) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 distributor0) (available hoist2) (at_ hoist3 distributor1) (available hoist3) (at_ hoist4 distributor0) (available hoist4) (at_ hoist5 depot0) (available hoist5) (at_ hoist6 distributor0) (available hoist6) (at_ hoist7 distributor1) (available hoist7) (at_ crate0 depot0) (on crate0 pallet0) (= (weight crate0) 7) (at_ crate1 depot1) (on crate1 pallet1) (= (weight crate1) 94) (at_ crate2 distributor0) (on crate2 pallet2) (= (weight crate2) 46) (at_ crate3 distributor1) (on crate3 pallet6) (= (weight crate3) 3) (at_ crate4 depot0) (on crate4 crate0) (= (weight crate4) 15) (at_ crate5 depot1) (on crate5 pallet7) (= (weight crate5) 90) (at_ crate6 distributor0) (on crate6 pallet5) (= (weight crate6) 58) (at_ crate7 depot0) (on crate7 crate4) (= (weight crate7) 69) (at_ crate8 distributor0) (on crate8 crate6) (= (weight crate8) 77) (at_ crate9 distributor1) (on crate9 pallet3) (= (weight crate9) 42) (at_ crate10 distributor1) (on crate10 crate9) (= (weight crate10) 38) (at_ crate11 depot1) (on crate11 crate1) (= (weight crate11) 11) (at_ crate12 distributor0) (on crate12 crate2) (= (weight crate12) 82) (at_ crate13 depot0) (on crate13 crate7) (= (weight crate13) 46) (at_ crate14 distributor0) (on crate14 crate12) (= (weight crate14) 88) (= (fuel_cost) 0))
 (:goal (and (on crate0 crate10) (on crate1 pallet6) (on crate2 crate12) (on crate4 pallet4) (on crate5 pallet2) (on crate6 pallet7) (on crate8 crate4) (on crate9 crate1) (on crate10 pallet1) (on crate11 pallet5) (on crate12 crate5) (on crate13 pallet3) (on crate14 pallet0)))
 (:metric minimize (fuel_cost))
)
