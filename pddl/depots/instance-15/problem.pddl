(define (problem socs2025_depots_7-problem)
 (:domain socs2025_depots_7-domain)
 (:objects
   depot0 - depot
   distributor0 distributor1 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate5) (at_ pallet1 distributor0) (clear pallet1) (at_ pallet2 distributor1) (clear crate3) (at_ pallet3 distributor0) (clear pallet3) (at_ pallet4 distributor0) (clear crate4) (at_ pallet5 distributor1) (clear crate1) (at_ truck0 distributor1) (= (current_load truck0) 0) (= (load_limit truck0) 327) (at_ truck1 depot0) (= (current_load truck1) 0) (= (load_limit truck1) 273) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 distributor0) (available hoist1) (at_ hoist2 distributor1) (available hoist2) (at_ crate0 distributor0) (on crate0 pallet4) (= (weight crate0) 90) (at_ crate1 distributor1) (on crate1 pallet5) (= (weight crate1) 25) (at_ crate2 distributor1) (on crate2 pallet2) (= (weight crate2) 96) (at_ crate3 distributor1) (on crate3 crate2) (= (weight crate3) 29) (at_ crate4 distributor0) (on crate4 crate0) (= (weight crate4) 4) (at_ crate5 depot0) (on crate5 pallet0) (= (weight crate5) 93) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet3) (on crate1 crate4) (on crate3 pallet1) (on crate4 pallet5) (on crate5 crate1)))
 (:metric minimize (fuel_cost))
)
