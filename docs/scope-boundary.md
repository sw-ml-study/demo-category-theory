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
- the execution payoff of associative reduction regrouping;
- concrete success/failure map, apply, and bind laws;
- finite-array fold fusion and bounded arithmetic unfold;
- one lawful nested model-configuration lens; and
- diagonal duplication left adjoint to concrete product;
- finite duality and universal endpoints;
- bounded equalizers, coequalizers, pullbacks, and pushouts;
- cones, cocones, and finite (co)limit unification;
- walking-arrow representable/corepresentable hom-functors; and
- a finite Yoneda correspondence and category of elements.

## Owned by demo-abstract-algebra

- magmas through groups, Cayley tables, algebraic law classification;
- algebraic associativity, identities, inverses, and isomorphisms; and
- the authoritative operation-preservation checker for homomorphisms.

The small checker copied into `lib/category.mlpl` is attributed to that sibling
and intentionally local: neither standalone repository has a runtime
dependency on the other.

## Deferred beyond the concrete curriculum

Generic `Functor`, `Applicative`, `Monad`, lens/optics, and recursion-scheme
interfaces remain deferred; the lessons demonstrate laws on named concrete
representations, not type-constructor abstraction. Bifunctors and profunctors
also remain research candidates until a practical two-sided transformation
needs them. Completeness, cocompleteness, and the general density theorem are
not inferred from bounded fixtures. No category-specific syntax is proposed.
