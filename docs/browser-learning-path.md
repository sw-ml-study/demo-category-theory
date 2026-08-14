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
`diagram_constant_diagonal.mlpl` → `preservation_creation_reflection.mlpl`.

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
