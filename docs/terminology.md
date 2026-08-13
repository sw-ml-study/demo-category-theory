# Category-theory terminology used here

Each lesson uses concrete finite values, so these definitions say both the
mathematical meaning and the executable approximation.

| Term | Meaning here | Executable representation | Not to be confused with |
|---|---|---|---|
| object | A node in the demonstrated category | A finite numeric domain, algebra table, or array shape | An object/record value in MLPL |
| morphism / arrow | A composable map between objects | A named unary function or finite map vector | Any arbitrary relation |
| identity | The do-nothing arrow on one object | `u:identity` or `range(n)` for finite maps | The identity element of a monoid |
| composition | Following one arrow and then another | `u:then_apply` or `u:compose_maps` | Multiplication of values |
| commutative diagram | Every directed route with shared endpoints agrees | Both paths executed over a finite domain | Commutative binary operation |
| product | Universal object with two projections | `{first, second}` plus bounded mediator checks | Numeric multiplication or Cartesian array outer product |
| coproduct | Universal object with two injections | `{tag, value}` plus manual case analysis | Concatenating arrays |
| functor | Structure-preserving mapping of objects and arrows | Concrete array context with `each` | A callable object in C++ terminology |
| natural transformation | Compatible component map between functors | Transpose components whose naturality squares execute | An arbitrary conversion between arrays |
| homomorphism | Map preserving an algebraic operation | Finite map vector checked against two Cayley tables | Every category-theory morphism in general |
| context | A value carrying success/failure structure around a payload | `{tag, value, message}` record | Runtime process or global execution environment |
| Kleisli composition | Composition of functions that return a context | `context_bind` between fallible stages | Ordinary composition that ignores failure structure |
| applicative-style combination | Combining contextual computations that do not depend on each other's values | `context_apply` and `context_pair` on the concrete success/failure context | A generic `Applicative` interface |
| monadic bind | Sequencing contextual work whose later step receives the earlier payload | `context_bind` with a row-count-dependent batching stage | A generic `Monad` interface or mutable sequencing |
| fold | Consuming finite structure into a summary | `reduce_add` over a bounded numeric array | Merely reshaping an array or unrestricted structural recursion |
| unfold | Generating finite structure from seed state | `seed + range(count) * step` | An unbounded stream or a generic recursion-scheme primitive |
| lens | A getter and setter focused on one part of a larger value, obeying get-put, put-get, and put-put | Named learning-rate helpers that rebuild one nested model configuration | A camera lens or a generic optics DSL |

The product/coproduct lessons demonstrate value-level universal properties;
they do not claim that sw-MLPL has parametric types, algebraic data types, or
type-level uniqueness proofs.
