# CT065-CT084 capability matrix

Measured on 2026-08-14 against the configured sw-MLPL interpreter. Positive
evidence is in `probes/exponentials_cartesian.mlpl`. Every representation is
finite and explicitly enumerated unless a later lesson establishes more.

| ID | Concept | Executable representation | Status / boundary |
|---|---|---|---|
| CT065 | exponential object | rows enumerating every function between two finite sets | runnable for the two-point fixture |
| CT066 | evaluation morphism | select a function row, then select its input column | runnable with nested `take` |
| CT067 | currying | reshape a four-entry product-domain table into two function rows | runnable at fixed 2-by-2 arity |
| CT068 | uncurrying | flatten two function rows back into product order | runnable at fixed 2-by-2 arity |
| CT069 | beta law | evaluate the curried row and compare with the original product table | candidate for Lesson 37 |
| CT070 | eta law | curry after uncurrying and compare all rows | candidate for Lesson 37 |
| CT071 | cartesian closed category | products plus exponentials for every object pair | constrained: one finite fixture cannot prove a category-wide property |
| CT072 | internal hom | finite function-table object with explicit action candidates | runnable only for enumerated finite sets |
| CT073 | global element | one-entry table from the singleton object | runnable finite fixture |
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
