# CT085-CT109 capability matrix

Measured on 2026-08-14 against the configured sw-MLPL interpreter. Positive
evidence is in `probes/monoidal_structures.mlpl`. All rows describe finite,
explicit fixtures; none infers generic monoidal structure or coherence.

| ID | Concept | Executable representation | Status / boundary |
|---|---|---|---|
| CT085 | monoidal category | tensor/unit data plus pentagon and triangle route checks | implemented for one finite concrete tensor in Lesson 43 |
| CT086 | tensor product | nested `{left,right}` records and pointwise arrow tables | implemented in Lesson 43 |
| CT087 | monoidal unit | explicit singleton-coded record endpoint | implemented in Lesson 43 |
| CT088 | associator | readable three-value nested-record reassociation | implemented along both pentagon routes |
| CT089 | left unitor | remove explicit unit from `{unit,value}` | implemented in the triangle route |
| CT090 | right unitor | remove explicit unit from `{value,unit}` | implemented with CT086-CT089 in Lesson 43 |
| CT091 | strict monoidal category | literal nested equality versus reassociation isomorphism | implemented as a non-strict boundary in Lesson 44 |
| CT092 | braided monoidal category | swap table plus hexagon route checks | implemented for a bounded fixture in Lesson 45 |
| CT093 | braiding | swap `{left,right}` values | implemented in Lesson 45 |
| CT094 | hexagon identities | two explicit three-value permutation routes | implemented with distinct intermediates in Lesson 45 |
| CT095 | symmetric monoidal category | braiding followed twice equals identity | implemented for the pair fixture |
| CT096 | symmetry | involutive swap witness | implemented in Lesson 45 |
| CT097 | monoid object | finite multiplication/unit tables checked inside the chosen tensor category | runnable, but algebra-law ownership remains with sibling repo |
| CT098 | comonoid object | diagonal/counit tables and coassociativity routes | runnable for finite sets |
| CT099 | group object | monoid-object maps plus inverse diagram | constrained to categorical packaging; do not duplicate group classification |
| CT100 | module object | finite scalar-action table and compatibility diagrams | runnable only after copying a stable attributed algebra fixture |
| CT101 | monoidal functor | object/arrow action plus directed tensor/unit comparisons | runnable for one concrete pair of monoidal fixtures |
| CT102 | lax monoidal functor | comparison `F(A)⊗F(B) → F(A⊗B)` | representable; laws need a dedicated bounded fixture |
| CT103 | oplax monoidal functor | comparison `F(A⊗B) → F(A)⊗F(B)` | representable; must remain visibly opposite to lax |
| CT104 | strong monoidal functor | invertible comparison tables in both directions | runnable with explicit inverse checks |
| CT105 | monoidal natural transformation | finite naturality plus tensor/unit compatibility squares | runnable but verbose without reusable path composition |
| CT106 | closed monoidal category | tensor/internal-hom adjunction for every object pair | constrained by the same every-pair coverage boundary as cartesian closure |
| CT107 | dual object | evaluation/coevaluation tables with snake paths | runnable for one finite fixture |
| CT108 | compact closed category | every-object dual coverage | constrained pending more than one dual fixture |
| CT109 | compact closure boundary | explicit missing-coverage witness | runnable as a structural boundary |

## Probe findings

- Nested records preserve parenthesization, and a readable function converts
  `(A⊗B)⊗C` to `A⊗(B⊗C)`. This supports an honest strictness distinction.
- Explicit route arrays compare pentagon, triangle, and hexagon endpoints, but
  a lesson must build genuinely different intermediate paths rather than copy
  equal final arrays. Current records can retain those path trees.
- Swap is directly expressible and applying it twice restores the pair.
- Finite multiplication, diagonal comultiplication, comparison-map directions,
  and evaluation/coevaluation tables fit ordinary arrays and records.
- Variable-length paths and generic tensor traversal remain awkward. Fixed
  coherence diagrams are readable; general higher-arity abstraction would
  repeat the existing callable-composition and homogeneous-function-container
  gaps rather than establish a new blocker.
- CT097, CT099, and CT100 must respect `docs/scope-boundary.md`: this repository
  owns internal categorical diagrams, while `demo-abstract-algebra` owns the
  operation-law ladder and classification.

No new sw-MLPL feature blocks Steps 2-5. Step 6 depends on a stable copied
module/group fixture. Steps 7-8 are representable but require fresh law-sized
fixtures and explicit coverage failures before stronger claims.
