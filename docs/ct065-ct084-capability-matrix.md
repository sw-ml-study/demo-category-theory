# CT065-CT084 capability matrix

Measured on 2026-08-14 against the configured sw-MLPL interpreter. Positive
evidence is in `probes/exponentials_cartesian.mlpl`. Every representation is
finite and explicitly enumerated unless a later lesson establishes more.

| ID | Concept | Executable representation | Status / boundary |
|---|---|---|---|
| CT065 | exponential object | rows enumerating every function between two finite sets | implemented as Lesson 36 for the two-point fixture |
| CT066 | evaluation morphism | select a function row, then select its input column | implemented over all eight input pairs in Lesson 36 |
| CT067 | currying | reshape a four-entry product-domain table into two function rows | implemented at fixed 2-by-2 arity in Lesson 37 |
| CT068 | uncurrying | flatten two function rows back into product order | implemented at fixed 2-by-2 arity in Lesson 37 |
| CT069 | beta law | uncurry after curry restores the product-domain map | implemented as the flat-table round trip |
| CT070 | eta law | curry after uncurry restores the function rows | implemented as the row-table round trip |
| CT071 | cartesian closed category | products plus exponentials for every object pair | explicitly constrained by a missing-pair coverage witness in Lesson 38 |
| CT072 | internal hom | finite function-table object with evaluation/curry certificate | implemented for one enumerated finite pair |
| CT073 | global element | singleton-indexed selection of one internal-hom row | implemented as a finite function element |
| CT074 | subobject | Boolean membership row / bounded monomorphism candidate | runnable for a two-point set |
| CT075 | subobject classifier | two truth values with enumerated membership rows | candidate finite-Set fixture |
| CT076 | characteristic morphism | the membership row into the two-point truth object | runnable finite fixture |
| CT077 | partial map | domain subobject plus total table on that domain | candidate; no static partial-function type |
| CT078 | slice category | nested records for objects over a fixed base plus triangle equality | runnable finite fixture |
| CT079 | coslice category | nested records for objects under a fixed base plus triangle equality | runnable finite fixture |
| CT080 | locally cartesian closed category | exponentials in every slice | constrained pending multiple-slice evidence |
| CT081 | dependent product | enumerated choices selecting one value from every finite fiber | runnable for bounded fibers |
| CT082 | dependent sum | concatenate tagged or position-known finite fibers | runnable for bounded fibers |
| CT083 | polynomial functor | finite shape codes and positions-per-shape arrays | candidate bounded container |
| CT084 | container interpretation | shape choice paired with payloads at its finite positions | candidate bounded container |

## Probe findings

- All four functions from a two-point set to itself fit as rows of a 4-by-2
  array; evaluation is nested row/column selection.
- A table on `X × A` curries by reshaping product-order entries into rows and
  uncurries by flattening them. Fixed arity is readable; generic reshape and
  callable-returning curry remain absent. `take` accepts one axis/index pair per
  call, so selecting a matrix cell requires two visibly nested calls.
- The four subobjects of a two-point set are Boolean membership rows, and each
  row is already its characteristic map into the two-valued truth object.
- Nested records retain slice/coslice structure maps, finite dependent fibers,
  and polynomial shape/position metadata. Commuting triangles reduce to finite
  path equality.
- Arrays are rectangular: a direct ragged fiber literal such as sizes two and
  one is rejected. Finite dependent families therefore need flat values plus
  offsets/sizes (or tagged rows), an explicit representation cost for CT081-84.
- sw-MLPL has no static type asserting exponentials, monomorphisms, partial
  maps, or dependent families. Lessons must execute bounded laws and state the
  representation boundary.

No new upstream feature blocks the first finite lessons. Generic reshape,
function-table enumeration, a readable Boolean `all`, and callable-returning
curry would improve expression. None would by itself prove category-wide
cartesian closure or local cartesian closure.

Lesson 36 turns the probe into a complete bounded object: the four rows
`[0,0]`, `[0,1]`, `[1,0]`, and `[1,1]` are all maps from the two-point `A` to
the two-point `B`. Evaluation checks all eight `(function,input)` pairs. Picking
identity where negation was requested gives the visible wrong output. No new
sw-MLPL capability is needed.

Lesson 37 keeps the two inverse laws distinct by their starting representation.
Beta starts with `h : X×A → B`, curries, and uncurries back to the flat table.
Eta starts with `k : X → B^A`, uncurries, and curries back to the row table. A
changed row fails extensional equality. Fixed nested `take` calls remain the
implementation boundary; generic callable-returning curry is still deferred.

Lesson 38 separates local structure from universal coverage. One pair passes
product, exponential, evaluation, and curry checks; a singleton map selects the
negation row as a global element. Coverage `[1,0]` then blocks the stronger
cartesian-closed claim. This is an intentional constraint, not a failed lesson.
