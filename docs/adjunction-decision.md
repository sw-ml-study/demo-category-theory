# Lesson 19 adjunction decision

Decision: **ship the diagonal/product adjunction**.

The existing concrete product lesson supplies the right adjoint. The matching
left adjoint is the diagonal functor: one value/object is duplicated into two
views. For finite record values, the unit duplicates and the counit selects the
left projection from the first copy and the right projection from the second.
Both triangle composites execute to identity in
`tests/test_diagonal_product_adjunction.mlpl`. A counit that selects left twice
returns `(3,3)` instead of `(3,5)` and is the counterexample.

This candidate passes the entry criteria because fan-out plus recombination is
a recognizable data-flow pattern, the representation already exists, the two
triangles are clearer as paths, and no new sw-MLPL capability is needed.

Other candidates were declined:

- Fold/unfold are concrete finite arithmetic helpers, not functors equipped
  with a demonstrated hom-set correspondence, unit, and counit.
- The success/failure context provides map/apply/bind laws, but the curriculum
  has not implemented free/forgetful categories from which its monad could be
  derived as an adjunction.
- The model lens has its own three laws; getter/setter duality alone is not an
  adjunction between demonstrated categories.

The lesson therefore claims only the familiar `diagonal ⊣ product` example in
finite sets/records. It does not claim generic adjunction syntax or infer that
every pair of visually opposed operations is adjoint.
