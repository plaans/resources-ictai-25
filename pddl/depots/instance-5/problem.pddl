(define (problem socs2025_depots_16-problem)
 (:domain socs2025_depots_16-domain)
 (:objects
   depot0 depot1 - depot
   distributor0 distributor1 - distributor
   truck0 truck1 truck2 truck3 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate5) (at_ pallet1 depot1) (clear crate3) (at_ pallet2 distributor0) (clear crate4) (at_ pallet3 distributor1) (clear pallet3) (at_ pallet4 depot1) (clear crate0) (at_ pallet5 distributor1) (clear pallet5) (at_ pallet6 depot1) (clear pallet6) (at_ pallet7 distributor0) (clear pallet7) (at_ truck0 depot1) (= (current_load truck0) 0) (= (load_limit truck0) 309) (at_ truck1 depot1) (= (current_load truck1) 0) (= (load_limit truck1) 267) (at_ truck2 depot0) (= (current_load truck2) 0) (= (load_limit truck2) 360) (at_ truck3 distributor1) (= (current_load truck3) 0) (= (load_limit truck3) 335) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 distributor0) (available hoist2) (at_ hoist3 distributor1) (available hoist3) (at_ hoist4 distributor1) (available hoist4) (at_ hoist5 depot1) (available hoist5) (at_ hoist6 depot1) (available hoist6) (at_ hoist7 distributor1) (available hoist7) (at_ crate0 depot1) (on crate0 pallet4) (= (weight crate0) 32) (at_ crate1 depot1) (on crate1 pallet1) (= (weight crate1) 46) (at_ crate2 depot0) (on crate2 pallet0) (= (weight crate2) 39) (at_ crate3 depot1) (on crate3 crate1) (= (weight crate3) 24) (at_ crate4 distributor0) (on crate4 pallet2) (= (weight crate4) 2) (at_ crate5 depot0) (on crate5 crate2) (= (weight crate5) 25) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet3) (on crate2 pallet1) (on crate3 pallet0) (on crate4 crate3) (on crate5 pallet2)))
 (:metric minimize (fuel_cost))
)
