(define (problem socs2025_depots_8-problem)
 (:domain socs2025_depots_8-domain)
 (:objects
   depot0 - depot
   distributor0 distributor1 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate2) (at_ pallet1 distributor0) (clear crate6) (at_ pallet2 distributor1) (clear crate9) (at_ pallet3 distributor1) (clear crate7) (at_ pallet4 distributor0) (clear crate0) (at_ pallet5 distributor0) (clear crate8) (at_ truck0 distributor0) (= (current_load truck0) 0) (= (load_limit truck0) 477) (at_ truck1 distributor0) (= (current_load truck1) 0) (= (load_limit truck1) 342) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 distributor0) (available hoist1) (at_ hoist2 distributor1) (available hoist2) (at_ crate0 distributor0) (on crate0 pallet4) (= (weight crate0) 100) (at_ crate1 distributor0) (on crate1 pallet1) (= (weight crate1) 23) (at_ crate2 depot0) (on crate2 pallet0) (= (weight crate2) 28) (at_ crate3 distributor0) (on crate3 pallet5) (= (weight crate3) 41) (at_ crate4 distributor1) (on crate4 pallet3) (= (weight crate4) 2) (at_ crate5 distributor0) (on crate5 crate1) (= (weight crate5) 89) (at_ crate6 distributor0) (on crate6 crate5) (= (weight crate6) 9) (at_ crate7 distributor1) (on crate7 crate4) (= (weight crate7) 18) (at_ crate8 distributor0) (on crate8 crate3) (= (weight crate8) 79) (at_ crate9 distributor1) (on crate9 pallet2) (= (weight crate9) 43) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet3) (on crate1 crate0) (on crate3 crate8) (on crate6 pallet2) (on crate7 pallet1) (on crate8 pallet4) (on crate9 pallet0)))
 (:metric minimize (fuel_cost))
)
