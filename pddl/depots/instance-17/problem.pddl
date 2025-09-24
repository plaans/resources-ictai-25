(define (problem socs2025_depots_11-problem)
 (:domain socs2025_depots_11-domain)
 (:objects
   depot0 depot1 depot2 - depot
   distributor0 distributor1 distributor2 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate1) (at_ pallet1 depot1) (clear crate3) (at_ pallet2 depot2) (clear crate9) (at_ pallet3 distributor0) (clear pallet3) (at_ pallet4 distributor1) (clear pallet4) (at_ pallet5 distributor2) (clear crate8) (at_ truck0 depot2) (= (current_load truck0) 0) (= (load_limit truck0) 336) (at_ truck1 distributor0) (= (current_load truck1) 0) (= (load_limit truck1) 366) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 depot2) (available hoist2) (at_ hoist3 distributor0) (available hoist3) (at_ hoist4 distributor1) (available hoist4) (at_ hoist5 distributor2) (available hoist5) (at_ crate0 depot1) (on crate0 pallet1) (= (weight crate0) 42) (at_ crate1 depot0) (on crate1 pallet0) (= (weight crate1) 6) (at_ crate2 depot2) (on crate2 pallet2) (= (weight crate2) 74) (at_ crate3 depot1) (on crate3 crate0) (= (weight crate3) 64) (at_ crate4 depot2) (on crate4 crate2) (= (weight crate4) 61) (at_ crate5 depot2) (on crate5 crate4) (= (weight crate5) 79) (at_ crate6 distributor2) (on crate6 pallet5) (= (weight crate6) 29) (at_ crate7 distributor2) (on crate7 crate6) (= (weight crate7) 77) (at_ crate8 distributor2) (on crate8 crate7) (= (weight crate8) 19) (at_ crate9 depot2) (on crate9 crate5) (= (weight crate9) 98) (= (fuel_cost) 0))
 (:goal (and (on crate0 crate7) (on crate1 pallet4) (on crate2 pallet5) (on crate3 crate9) (on crate4 pallet0) (on crate5 pallet2) (on crate6 crate5) (on crate7 crate1) (on crate8 pallet3) (on crate9 crate2)))
 (:metric minimize (fuel_cost))
)
