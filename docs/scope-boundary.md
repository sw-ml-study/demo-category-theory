# Scope boundary and sibling handoff

This repository asks **what survives when values are mapped between
structures**. `../demo-abstract-algebra` asks **what laws a single operation
obeys**.

## Owned here

- objects, morphisms, identity, and composition;
- associativity of morphism composition;
- executable commutative diagrams;
- concrete products and coproducts;
- arrays as a concrete functor;
- transpose as a concrete natural transformation;
- the categorical reading of identity/composed homomorphisms; and
- the execution payoff of associative reduction regrouping.

## Owned by demo-abstract-algebra

- magmas through groups, Cayley tables, algebraic law classification;
- algebraic associativity, identities, inverses, and isomorphisms; and
- the authoritative operation-preservation checker for homomorphisms.

The small checker copied into `lib/category.mlpl` is attributed to that sibling
and intentionally local: neither standalone repository has a runtime
dependency on the other.

## Deferred

Monads, applicatives, Kleisli composition, folds/unfolds as recursion schemes,
bifunctors, profunctors, optics, and adjunctions belong to a later saga. Generic
functor/type-constructor abstraction is investigated only after several real
ML/data contexts justify it.
