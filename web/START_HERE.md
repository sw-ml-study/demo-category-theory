# Start here: browser learning path

The files beside this guide are executable leaves for the sw-MLPL web editor.
Load one complete `.mlpl` file and run it. Each leaf assumes the prerequisite
context below; it executes a finite witness and usually a counterexample. It is
not, by itself, a proof in arbitrary categories.

## First path: functions to naturality

1. `arrows.mlpl` — begin in a concrete category where ordinary functions model
   morphisms; categorical morphisms are not functions in every category.
2. `identity_composition.mlpl` — identity changes neither side of composition.
3. `composition_associativity.mlpl` — prerequisite: composition; distinct
   left- and right-associated trees execute to the same morphism.
4. `commutative_square.mlpl` — two directed routes execute to one result.
5. `products.mlpl`, then `coproducts.mlpl` — universal projections versus
   universal tagged case analysis.
6. `array_functor.mlpl` — the array construction together with `each` supplies
   the concrete functorial action.
7. `shape_preservation.mlpl` — asks exactly which structure a map preserves.
8. `natural_transformation.mlpl` — prerequisite: functor action; transpose
   verifies a finite instance of a naturality square.

## Universal-construction path

Start after products, coproducts, and commutative squares:

`opposite_duality.mlpl` → `universal_endpoints.mlpl` →
`equalizer.mlpl` / `coequalizer.mlpl` → `pullback.mlpl` / `pushout.mlpl` →
`finite_limits_colimits.mlpl` → `bounded_indexed_products.mlpl` →
`generalized_bounded_cones.mlpl` → `unique_universal_isomorphism.mlpl` →
`diagram_constant_diagonal.mlpl` → `preservation_creation_reflection.mlpl` →
`filtered_directed_systems.mlpl` → `final_initial_functors.mlpl`.

Continue into exponentials with `finite_exponentials.mlpl`: first inventory
every function in the two-point function object, then follow evaluation.
Then load `finite_currying.mlpl` to reshape a product-domain map and compare
the beta and eta round trips from opposite starting representations.
Follow with `cartesian_closed_boundary.mlpl` to separate internal hom and global
elements from the every-object-pair claim of cartesian closure.
Then `finite_subobjects.mlpl` inventories subsets, classifies one through truth,
and uses it as the explicit domain of a partial map.
Continue with `finite_slices_coslices.mlpl`, reading arrowheads carefully to
distinguish objects over a base from objects under it.
Then load `finite_dependent_constructions.mlpl`: first read the flat family,
then compare Sigma's tagged total space with Pi's one-choice-per-fiber rows,
and finally inspect the missing-slice witness against local cartesian closure.
Finish this path with `finite_polynomial_containers.mlpl`, which turns the
shape/position family into `P(X)=1+X^2`, maps its payload slots, and rejects a
pair shape whose payload count does not match its two positions.
Begin the monoidal path with `finite_monoidal_foundation.mlpl`. Follow both
pentagon routes through their different nested records, then compare the two
triangle routes that remove the unit object.
Then load `finite_monoidal_strictness.mlpl` to keep the two parenthesizations
unequal while the associator and its inverse connect them coherently.
Continue with `finite_braided_symmetric.mlpl`: compare whole-block and
componentwise crossings around the hexagon, then watch a double swap undo itself.
Then load `finite_monoid_comonoid.mlpl` to compare internal merge/unit arrows
with their split/counit duals.
Continue with `finite_group_module_boundary.mlpl`: read the
attributed Z2 inverse diagram, then the explicit missing-module checklist.
Then load `finite_monoidal_functors.mlpl`: compare the opposite lax and oplax
arrowheads, require both inverse composites for strong structure, follow the
transformation square, and stop at the missing closedness pair.
Finish this path with `finite_dual_compact_boundary.mlpl`: evaluation removes a
dual pair, coevaluation creates one, and the two differently typed snake routes
return `A` and `A*`. The dashed object prevents a compact-closed claim.

Begin the string-diagram path with `finite_string_graphs.mlpl`. Compare the two
top drawings: their boxes move, but the checked typed edge stays `0 → 1 : B`.
Then compare the two independently grouped interchange constructions below.
Continue with `finite_cup_cap_connectivity.mlpl`: read the cup outward from the
unit boundary and the cap inward to it, then follow the separate `A` and `A*`
snake graphs. This leaf checks connectivity; Lesson 49 checks pairing algebra.
Then load `finite_trace_feedback.mlpl`: identify the external `A → B` boundary,
follow the blue `U` output-to-input loop, and compare explicit feedback with the
trace endpoint before inspecting the incomplete trace-law checklist.
Continue with `finite_dagger_structure.mlpl`: reverse the green `A → B → C`
path into the blue adjoint path, noting that both direction and composition
order reverse. Then inspect cup/cap compatibility and missing object coverage.

These use finite tables and bounded candidate families. They do not establish
completeness, cocompleteness, or arbitrary/infinite indexed constructions.

## Functors to Yoneda

Start after array functors and natural transformations:

`homomorphisms.mlpl` → `representable_hom.mlpl` → `finite_yoneda.mlpl`.

The Yoneda leaf now has three numbered stages: choose an element, generate a
transformation and verify its fully labeled naturality square, then recover the
element at identity. Category-of-elements/density is deliberately outside the
introductory browser visual.

## Programming-abstraction path

- `context_map.mlpl` → `kleisli_pipeline.mlpl` →
  `independent_contexts.mlpl` / `dependent_contexts.mlpl`
- `lawful_reduction.mlpl` → `fold_fusion.mlpl` → `bounded_unfold.mlpl`
- `model_config_lens.mlpl`
- `diagonal_product_adjunction.mlpl` after products and functors: first read
  duplicate `X -> (X,X)`, then product `(A,B) -> A times B`, then unit/counit,
  and only then interpret the two executable triangle identities

These are concrete programming contexts, not generic `Functor`, `Monad`, lens,
or adjunction interfaces.

## How to judge a leaf

Ask two separate questions:

1. Does the setting, law, witness, counterexample, visual, and boundary teach
   the Category Theory concept accurately?
2. Does the sw-MLPL program structure express that concept naturally, or does
   it expose language/library pressure?

The full prerequisite DAG is in `docs/learning-spine.md` in the repository.
