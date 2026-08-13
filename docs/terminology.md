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
| adjunction | A pair of functors linked by a natural hom-set correspondence, equivalently a unit/counit obeying triangle identities | Concrete diagonal duplication left adjoint to product, checked on finite records | Any two operations that appear to undo each other |
| opposite category | The category with every arrow reversed and composition order reversed | Transposed finite adjacency relation | Merely drawing the same arrows right-to-left without reversing composition |
| dual statement | A categorical statement obtained by consistently reversing arrows | Explicit original/arrow-reversed path fixtures | An unrelated analogous theorem |
| initial object | An object with exactly one arrow to every object | Empty finite set in the concrete FinSet fixture | The first item in display order |
| terminal object | An object receiving exactly one arrow from every object | Singleton finite set in the concrete FinSet fixture | The last item in display order |
| zero object | An object that is both initial and terminal | Object `0` in a hand-authored pointed finite category | Numeric zero or the empty set in ordinary FinSet |
| equalizer | Universal subobject on which two parallel arrows agree | Source indices `[0,2]` plus inclusion and factorization checks | Merely any filtered subset |
| coequalizer | Universal quotient imposing equality of two parallel arrows | Explicit class labels `[0,0,0]` plus factorization checks | Arbitrarily collapsing values |
| pullback | Universal object synchronizing two maps into a shared target | Keyed row join with two projections | An arbitrary Cartesian product |
| pushout | Universal object merging two maps from a shared source | Tagged schema merge with explicit shared classes | Concatenation without identification |

The product/coproduct lessons demonstrate value-level universal properties;
they do not claim that sw-MLPL has parametric types, algebraic data types, or
type-level uniqueness proofs.
