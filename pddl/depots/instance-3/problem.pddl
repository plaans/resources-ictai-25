(define (problem socs2025_depots_19-problem)
 (:domain socs2025_depots_19-domain)
 (:objects
   depot0 depot1 depot2 depot3 - depot
   distributor0 distributor1 distributor2 distributor3 - distributor
   truck0 truck1 truck2 truck3 - truck
   hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist
   pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
   crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - crate
 )
 (:init (at_ pallet0 depot0) (clear crate6) (at_ pallet1 depot1) (clear crate1) (at_ pallet2 depot2) (clear pallet2) (at_ pallet3 depot3) (clear crate7) (at_ pallet4 distributor0) (clear crate2) (at_ pallet5 distributor1) (clear crate5) (at_ pallet6 distributor2) (clear pallet6) (at_ pallet7 distributor3) (clear pallet7) (at_ pallet8 distributor2) (clear crate4) (at_ pallet9 depot3) (clear crate0) (at_ truck0 depot0) (= (current_load truck0) 0) (= (load_limit truck0) 298) (at_ truck1 distributor0) (= (current_load truck1) 0) (= (load_limit truck1) 361) (at_ truck2 depot2) (= (current_load truck2) 0) (= (load_limit truck2) 334) (at_ truck3 distributor3) (= (current_load truck3) 0) (= (load_limit truck3) 267) (at_ hoist0 depot0) (available hoist0) (at_ hoist1 depot1) (available hoist1) (at_ hoist2 depot2) (available hoist2) (at_ hoist3 depot3) (available hoist3) (at_ hoist4 distributor0) (available hoist4) (at_ hoist5 distributor1) (available hoist5) (at_ hoist6 distributor2) (available hoist6) (at_ hoist7 distributor3) (available hoist7) (at_ crate0 depot3) (on crate0 pallet9) (= (weight crate0) 81) (at_ crate1 depot1) (on crate1 pallet1) (= (weight crate1) 32) (at_ crate2 distributor0) (on crate2 pallet4) (= (weight crate2) 50) (at_ crate3 distributor1) (on crate3 pallet5) (= (weight crate3) 80) (at_ crate4 distributor2) (on crate4 pallet8) (= (weight crate4) 20) (at_ crate5 distributor1) (on crate5 crate3) (= (weight crate5) 63) (at_ crate6 depot0) (on crate6 pallet0) (= (weight crate6) 93) (at_ crate7 depot3) (on crate7 pallet3) (= (weight crate7) 67) (= (fuel_cost) 0))
 (:goal (and (on crate0 pallet6) (on crate1 pallet8) (on crate3 crate1) (on crate4 pallet5) (on crate5 crate7) (on crate6 pallet4) (on crate7 crate4)))
 (:metric minimize (fuel_cost))
)
