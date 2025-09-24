(define (problem socs2025_depots_4-problem)
 (:domain socs2025_depots_4-domain)
 (:objects
   depot0 - depot
   distributor0 distributor1 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 - hoist
   pallet0 pallet1 pallet2 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate7) (at_ pallet1 distributor0) (clear crate2) (at_ pallet2 distributor1) (clear crate6) (at_ truck0 distributor1) (= (current_load truck0) 0) (= (load_limit truck0) 420) (at_ truck1 distributor1) (= (current_load truck1) 0) (= (load_limit truck1) 233) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 distributor0) (available hoist1) (at_ hoist2 distributor1) (available hoist2) (at_ crate0 depot0) (on crate0 pallet0) (= (weight crate0) 6) (at_ crate1 depot0) (on crate1 crate0) (= (weight crate1) 22) (at_ crate2 distributor0) (on crate2 pallet1) (= (weight crate2) 23) (at_ crate3 distributor1) (on crate3 pallet2) (= (weight crate3) 87) (at_ crate4 depot0) (on crate4 crate1) (= (weight crate4) 89) (at_ crate5 distributor1) (on crate5 crate3) (= (weight crate5) 50) (at_ crate6 distributor1) (on crate6 crate5) (= (weight crate6) 18) (at_ crate7 depot0) (on crate7 crate4) (= (weight crate7) 93) (= (fuel_cost) 0))
 (:goal (and (on crate0 crate4) (on crate2 crate6) (on crate4 crate7) (on crate5 pallet2) (on crate6 pallet1) (on crate7 pallet0)))
 (:metric minimize (fuel_cost))
)
