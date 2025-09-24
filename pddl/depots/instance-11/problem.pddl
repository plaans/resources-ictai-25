(define (problem socs2025_depots_13-problem)
 (:domain socs2025_depots_13-domain)
 (:objects
   depot0 depot1 depot2 - depot
   distributor0 distributor1 distributor2 - distributor
   truck0 truck1 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate2) (at_ pallet1 depot1) (clear pallet1) (at_ pallet2 depot2) (clear crate5) (at_ pallet3 distributor0) (clear crate4) (at_ pallet4 distributor1) (clear pallet4) (at_ pallet5 distributor2) (clear pallet5) (at_ pallet6 distributor1) (clear pallet6) (at_ pallet7 depot0) (clear pallet7) (at_ pallet8 depot0) (clear crate3) (at_ pallet9 distributor0) (clear pallet9) (at_ truck0 distributor1) (= (current_load truck0) 0) (= (load_limit truck0) 402) (at_ truck1 depot0) (= (current_load truck1) 0) (= (load_limit truck1) 211) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 depot2) (available hoist2) (at_ hoist3 distributor0) (available hoist3) (at_ hoist4 distributor1) (available hoist4) (at_ hoist5 distributor2) (available hoist5) (at_ crate0 depot2) (on crate0 pallet2) (= (weight crate0) 55) (at_ crate1 depot2) (on crate1 crate0) (= (weight crate1) 100) (at_ crate2 depot0) (on crate2 pallet0) (= (weight crate2) 81) (at_ crate3 depot0) (on crate3 pallet8) (= (weight crate3) 26) (at_ crate4 distributor0) (on crate4 pallet3) (= (weight crate4) 50) (at_ crate5 depot2) (on crate5 crate1) (= (weight crate5) 71) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet0) (on crate1 pallet5) (on crate2 pallet4) (on crate3 pallet7) (on crate4 pallet9) (on crate5 pallet1)))
 (:metric minimize (fuel_cost))
)
