# sw-MLPL capability ledger for category-theory demos

Status: **living design input, not a language specification**.

Category theory is being used here to discover generally useful pressure on
sw-MLPL. This document records that pressure without assuming the language
should acquire category-theory keywords or reproduce a Haskell-style type
system.

## Evidence levels

Every entry must have one of these labels:

- **candidate** — the lesson plan suggests this may be needed, but no minimal
  program has tested the current interpreter yet;
- **awkward** — verified as expressible, but repetitive or unclear enough to
  justify a library or language discussion;
- **blocked** — verified by a minimal program that the intended lesson cannot
  be expressed honestly;
- **supported** — verified and usable in ordinary `.mlpl`; document the idiom
  and request no language change; or
- **declined** — useful only for encoding category-theory terminology, without
  a convincing general-purpose benefit.

`probes/` will contain the executable evidence once the foundation step creates
the harness. Record the interpreter version and exact command beside every
verified result. Documentation or recollection alone does not change a
candidate's status.

## Capability matrix

| Capability | Lessons | Initial status | What would count as support |
|---|---:|---|---|
| First-class function values | 02-04, 07-09 | awkward | Function references can be passed and stored in records, but a list literal of function references is rejected as neither all-string nor all-number. Generic variable-length paths therefore need a different representation. |
| Function composition | 02-04 | supported | `call(f, [x])` permits reusable apply and fixed-arity composition helpers. Returning a newly composed closure is not yet established or required. |
| Equality over nested arrays and records | all | supported | `equal` compares nested numeric arrays and records containing strings/arrays in the measured fixtures. |
| Higher-order array mapping | 07-09 | supported | `each` accepts user function references, maps vectors/matrices cellwise, and preserves measured shapes. |
| Tagged alternatives and case analysis | 06 | awkward | `{tag, value}` records plus `if equal(v.tag, ...)` work, but exhaustiveness is manual and unchecked. |
| Text and SVG construction | all visuals | awkward | String `+` fails; `decode_bytes(concat(tokenize_bytes(a), tokenize_bytes(b)))` works as a bridge. |
| Custom SVG result presentation | authored web visuals | awkward | The web renderer recognizes a returned `<svg...>` string, but the editor runner first echoes the entire source expression. Large inline literals therefore appear as raw SVG before the image; escaped hex colors can also confuse inline-comment presentation. Assignment binds but does not render the payload. A dedicated raw-SVG display primitive, or compact/collapsible source echo for visual results, is needed. All web lessons now use a named docstring-first constructor, variable assignment, one bare-variable display, `rgb(...)` colors, and a checked common arrowhead marker. |
| Property/law checking helpers | all | candidate | A reusable library can evaluate finite domains and return the first counterexample, without special syntax. |
| Generic context mapping (functor abstraction) | 07-09 | candidate | One abstraction can associate a mapping operation with more than one context and verify identity/composition laws. |
| Parametric/type-constructor abstraction | 07-09+ | candidate | If static types are in scope for sw-MLPL, a general API can express a context `F` and maps `A -> B` to `F A -> F B`. |
| Generic constraints/protocols | 07-09+ | candidate | Multiple lawful mapping contexts can share an interface without hard-coded type or tag dispatch. |
| Contextual record returns | 12-15 | supported | Functions invoked with `call` can return tagged records with nested payloads without distortion. |
| Contextual map and short-circuit bind | 12-15 | supported | Record-tag dispatch maps only successful payloads and preserves an earlier failure unchanged. |
| Exhaustive contextual variants | 12-15 | awkward | Success/failure tags work dynamically, but the language does not prove that every case is handled. |

## What “full functor support” could mean

The phrase is ambiguous, so findings must say which level they require.

1. **One concrete functor.** Arrays already have a mapping operation and the
   demos can verify its identity and composition laws. This may require no new
   language capability at all.
2. **Several concrete functors.** Arrays, optional/error values, and other
   contexts can each expose ordinary mapping helpers. This is likely a library
   and data-model question.
3. **One generic functor interface.** User code can quantify over the context
   and call its mapping operation uniformly. This may require type constructors,
   parametric polymorphism, and protocols/type classes—or a dynamic record of
   operations if that is idiomatic for sw-MLPL.
4. **Law-aware functors.** Tooling can associate identity and composition laws
   with an implementation and test them over supplied domains. A reusable
   property-testing library is preferable to category-specific compiler syntax.

The first curriculum requires Level 1 and investigates Level 2. Level 3 is a
legitimate upstream design question only if the demos show a useful abstraction
across multiple real ML/data contexts. Level 4 should begin as library/test
infrastructure. None of these levels implies adding `functor` as a keyword.

## Measured baseline

Measured 2026-08-12 with `mlpl-repl 0.20.0`, build commit `d373584c`:

- `probes/function_values.mlpl`: function references pass through parameters
  and record fields and execute via `call`; fixed-arity composition succeeds.
  A separate negative measurement found `[:u:inc, :u:double]` rejected because
  list literals accept only all-string or all-number values.
- `probes/nested_equality.mlpl`: equal nested arrays/records compare equal and
  a changed string tag compares unequal.
- `probes/tagged_values.mlpl`: record tags and manual branch dispatch implement
  a small value-level coproduct.
- `probes/text_svg.mlpl`: the byte tokenize/concatenate/decode bridge constructs
  SVG text. A separate negative measurement found `"a" + "b"` rejected with
  `expected an array value, got a string`.

These results deliberately put composition, finite path laws, commutative
squares, and concrete products/coproducts before generic functor machinery.

Step 2 confirms that these supported fixed-arity capabilities are sufficient
for the first three visual lessons. No new core feature was required; the only
shared bridge is the already-recorded byte-array string concatenation used by
the SVG renderer.

Step 4 confirms that ordinary records are sufficient for concrete products and
tagged value-level coproducts. The demos intentionally do not model type-level
universal quantification or statically exhaustive alternatives. Manual tag
dispatch remains `awkward`; it does not block these concrete lessons.

Step 5 verifies `each` over vectors and matrices in
`probes/array_mapping.mlpl`. It preserves the measured container shape and
satisfies identity and composition for ordinary scalar functions. This is full
support for the concrete array functor lesson, not evidence that MLPL already
has—or needs—a generic functor interface across arbitrary contexts.

Step 6 verifies a concrete natural transformation without new language
features: transpose supplies a component for each explicit matrix shape and
commutes with cellwise `each`. Fixed functions and arrays are enough to teach
and test the naturality equation. Quantifying generically over arbitrary
functors remains a separate candidate, not a blocker for this lesson.

Step 7 verifies that the sibling's array-based homomorphism checker copies
cleanly into this standalone repository and that fixed four-leaf reduction
trees are expressible with function references. No new language capability is
required for identity/composition of homomorphisms or for demonstrating why
associativity permits regrouping and parallel evaluation.

## Advanced-saga measured baseline

Measured 2026-08-12 with the same sw-MLPL 0.20.0 build:

- `probes/context_values.mlpl` verifies tagged success/failure records with
  nested record/array payloads, equality after wrapping, contextual mapping,
  contextual records returned through `call`, and failure short-circuiting.
- `lib/context.mlpl` confines one call-boundary detail: ordinary unary numeric
  transforms return a one-element array through `call`, so contextual map
  normalizes that result with `take(..., 0, 0)`. Context-returning functions do
  not need that normalization; their records survive intact.
- The concrete context is sufficient to proceed with contextual functor and
  Kleisli laws. It is not evidence for a generic higher-kinded interface.

No new sw-MLPL capability blocks Lessons 12-13. Static exhaustiveness remains
awkward and is already captured as a broader tagged-value design question.

Step 2 implements both lessons using that surface. The concrete success/failure
context obeys map identity/composition, and its fallible stages obey Kleisli
left identity, right identity, and associativity over the measured fixtures.
Failure short-circuiting is preserved visibly and in tests. This supports the
concrete pipeline; it still does not justify a generic `Monad` interface.

Step 3 confirms that function references can themselves be payloads of the
concrete context. `context_apply` therefore executes identity and composed
transform fixtures, while `context_pair` combines two independent successful
features. The existing `context_bind` also passes a loaded row count into a
dependent batching decision and preserves an earlier failure. No sw-MLPL fix
is required for these concrete Lessons 14-15. The helpers intentionally choose
one deterministic first failure; accumulating multiple diagnostics and generic
`Applicative`/`Monad` interfaces remain outside the demonstrated capability.

Step 4 probe `probes/finite_folds_unfolds.mlpl` confirms that current
`each`, `reduce_add`, `range`, `shape`, and `take` are sufficient for finite
fold/unfold lessons. A linear scale fuses through additive reduction, and a
bounded arithmetic sequence can recover its seed/step and regenerate exactly.
An irregular sequence supplies the failing witness. Recursive records or a
generic recursion-scheme interface were not needed or claimed. No upstream
ask follows from these bounded array fixtures.

Step 5 probe `probes/nested_record_optics.mlpl` confirms nested field reads,
nested record equality, and immutable reconstruction preserve sibling fields
and metadata. Lesson 18 executes get-put, put-get, and put-put for one concrete
model learning-rate lens. The friction is precise: MLPL has no record-update
syntax, so the setter repeats the enclosing record structure. That repetition
is manageable for one fixture and does not yet justify an optics DSL or generic
lens interface. A second concrete structure would be required before promoting
this from local idiom to an upstream capability request.

Step 6's audit found one existing construction pair that meets the adjunction
threshold: diagonal duplication is left adjoint to the concrete product from
Lesson 5. Nested records execute both unit/counit triangle identities, and a
bad counit that selects the left component twice supplies a witness. No new
runtime capability is required. Fold/unfold, context operations, and the lens
were declined as adjunction candidates because this repository has not
implemented the required categories and hom-set correspondences for them.

## CT020-CT044 finite universal-construction surface

`probes/universal_constructions.mlpl` confirms zero-length and singleton
domains, numeric function tables, nested function-table families, transposed
finite relations, and pointwise commuting cone routes. These support the next
saga's finite lessons without new sw-MLPL features. Explicit records/tables
remain necessary because the language has no generic category, functor,
natural-transformation, quotient, or small-diagram abstraction.

Completeness/cocompleteness cannot be inferred from bounded fixtures. Density
also remains conditional until the finite Yoneda/category-of-elements work
produces an honest reconstruction. See
`docs/ct020-ct044-capability-matrix.md` for the per-ID decision.

Lessons 20-21 confirm that transpose-based opposites, explicit reversed paths,
bounded endpoint function counts, and finite hom-count matrices are sufficient
for CT020-CT024. The zero-object example correctly requires a pointed finite
category rather than pretending empty or singleton is zero in ordinary
FinSet. No new capability ask arose.

Lessons 22-23 execute equalizer and coequalizer universal factorizations with
finite function tables and explicit quotient labels. Fixed-size indexing is
sufficient for the teaching fixtures. A reusable quotient/union-find facility
may matter for larger workloads, but this bounded example alone does not
justify an upstream ask.

Lessons 24-25 use only explicit index tables and records for pullback joins and
pushout schema merges. Universal squares and mediators execute without new
runtime support. Larger dynamic joins or quotient construction may motivate
library work later, but current fixtures do not justify a language request.

Lesson 26 executes cone/cocone route equality and bounded terminal/initial
factorization counts with numeric function tables. A first draft attempted to
store candidate and construction labels in string arrays; the interpreter
rejected that representation, so the executable fixture uses documented
numeric codes and keeps human-readable names in narration. This is sufficient
for the lesson and does not yet justify an upstream string-array request.
Finite candidate enumeration still cannot establish completeness or
cocompleteness, which remains a mathematical evidence boundary rather than a
missing runtime feature.

Lesson 27's dedicated hom-action probe confirms that named `each` mappings can
execute covariant postcomposition and contravariant precomposition in the
walking-arrow category. Records, rather than ragged arrays, hold differently
sized hom-sets at each object. This supports finite representable and
corepresentable lessons plus universal-element factorization without a new
runtime feature. Generic category/functor parameters and natural-isomorphism
types remain absent; Step 7 therefore continues with explicit finite tables.

Lesson 28 confirms that records, numeric element tables, and transpose-based
column extraction are sufficient for a two-object Yoneda round trip and
category-of-elements reconstruction. The first CLI display attempted to pack
different-rank artifacts into one rectangular array and was corrected to
separate displays; this is an honest array-shape constraint, not a blocker.
No generic natural-transformation enumeration or colimit construction exists,
so the general Yoneda and density theorems are not represented as language
abstractions. The bounded correspondence needs no new runtime feature.

## CT045-CT064 indexed-limit surface

Measured 2026-08-13, `probes/indexed_limits.mlpl` confirms that current records
and rectangular arrays can represent one finite diagram and bounded indexed
family. Numeric function tables compose, explicit mediator counts distinguish
existence-and-uniqueness from failure, and a three-stage chain can report
stabilization. These capabilities make CT054 and the later finite wide/indexed
and preservation fixtures runnable without a new language feature.

The evidence does not quantify over arbitrary diagram shapes or infinite
families. Filtered/direct colimits remain constrained to finite or explicitly
stabilized chains; inverse/direct limits remain fixed-stage constructions.
Creation, reflection, and final/initial functors require their own lifting and
comma-category probes. No upstream ask follows from the survey alone. See
`docs/ct045-ct064-capability-matrix.md` for all twenty per-concept decisions.

Lesson 29 confirms the first decision: four-point function tables express the
unique comparison arrows between two finite product encodings, projection
preservation, and both inverse equations. A competing table exposes failure.
No generic isomorphism type or universal-object keyword is needed for CT054's
bounded executable claim.

Lesson 30 confirms that a named finite index category, constant diagram, and
pointwise diagram transformations fit current records and rectangular arrays.
Identity/composition checks need no generic category or functor value. The
result supports CT049-CT051 for one explicit shape, not quantification over
arbitrary index categories.

Lesson 31 and the extended probe show that three-leg product mediators and
three-branch numeric-tagged coproduct case maps execute with current arrays.
This supports finite discrete CT045-CT048 fixtures only. Dynamic or infinite
family abstraction remains unmeasured and is not implied by the bounded result.

Lesson 32 confirms that fixed three-leg records can express two compatibility
equations plus bounded mediator uniqueness for CT052-CT053. It does not add a
generic cone type or quantify over diagram shapes; no runtime change is needed.

## Decision rule for upstream requests

Before requesting a capability from sw-MLPL:

1. reduce the problem to a standalone probe;
2. verify it against the configured interpreter;
3. show which planned visual or law check it blocks or distorts;
4. describe at least one non-category-theory use in ML, array processing, error
   handling, pipelines, or ordinary functional programming; and
5. separate the smallest enabling capability from a maximal abstraction.

Verified gaps are copied into `docs/upstream-asks.md` with the probe path,
observed output, desired behavior, and acceptance case. This ledger retains the
larger design context and records supported or declined ideas as well.

## Likely practical payoff

The strongest candidates are deliberately broader than category theory:

- reusable composition for data/model pipelines;
- higher-order mapping for batch and tensor transforms;
- tagged results for errors and optional data;
- finite-domain property checks for optimizer and transformation laws;
- composable text output for diagnostics and visualizations; and
- lawful reductions whose associativity permits safe regrouping and parallel
  execution.

If a proposal cannot demonstrate such a payoff, the demo should work around it
locally or leave the concept explanatory rather than reshape the language.

## CT080-CT082 dependent-family surface

Lesson 41 confirms that flat values with offset and size vectors support
bounded dependent sums and explicitly enumerated dependent products. This is
usable for grouped observations and variable-size batches, but access remains
manual and the visual must explain the encoding. Native ragged/tagged
collections would improve ergonomics; they are not required for the bounded
fixture. Local cartesian closure is a mathematical every-slice obligation, not
a language capability inferred from one executable family.

## CT083-CT084 polynomial/container surface

Finite records, `shape`, and indexed `take` are sufficient for one container
with shape arities `[0,2]`. Payload arrays support a concrete identity and
composition check while records retain the shape. Generic shape-indexed map or
polynomial syntax is unnecessary for this lesson and remains unrequested. The
next unknown is whether tensor reassociation and coherence paths can be
represented readably for CT085-CT109; that requires new probes before any
upstream proposal.

## CT085-CT109 monoidal representation surface

The monoidal probe verifies nested tensor records, associator/unit removal,
pair swapping, fixed coherence endpoints, finite operation tables, directed
lax/oplax comparison metadata, and one dual table. These are sufficient for
bounded monoidal, braided, symmetric, monoid/comonoid, and dual-object lessons.

The probe does not supply generic tensor traversal, arbitrary coherence, static
invertibility, or every-object dual coverage. Fixed diagrams can use explicit
records, so there is no new blocker or upstream ask. Variable-length coherence
would reuse the already documented first-class composition/function-container
requests. Closed and compact structure remain mathematical coverage
obligations, not missing syntax.

Lesson 43 confirms that explicit nested-record paths remain readable at four
tensor factors. Two and three reassociation paths can retain distinct
intermediates and compare endpoints without generic traversal. This is an
elegant fixed-law idiom, not evidence that arbitrary coherence graphs are
convenient.
Lesson 44 shows nested-record equality is a strong teaching asset for CT091:
strict equality fails visibly while explicit inverse maps succeed. No generic
isomorphism type is needed for the bounded two-sided check.
Lesson 45 confirms fixed permutation paths remain readable as nested records.
The implementation needs no generic permutation or braid abstraction for a
three-value hexagon; arbitrary braid words remain outside this bounded claim.
Lesson 46 confirms fixed internal algebra diagrams need only finite arrays and
equality. The remaining constraint is repository ownership, not language
support.
Lesson 47 confirms CT099 needs only fixed equality tables. CT100 is blocked by
the absence of an owned scalar-action fixture, not an interpreter capability;
no upstream sw-MLPL request follows.
Lesson 48 confirms CT101-CT106 can use fixed directed arrays, equality, and a
coverage vector. Generic functor declarations would reduce repetition but are
not required for this bounded lesson; a future full functor facility should
represent lax and oplax comparison direction, invertible strong comparisons,
and tensor/unit coherence without collapsing those obligations.
Lesson 49 confirms fixed evaluation/coevaluation tables and typed route arrays
are enough for one dual object and a compact-coverage boundary. The next saga
must probe a different capability: executable graph connectivity or topology
for string diagrams. SVG rendering exists, but visual curve placement alone
cannot validate planar isotopy, interchange, trace, or spider rewrites.

## CT110-CT129 semantic graph surface

The capability probe confirms fixed typed ports, directed edge arrays,
embedding metadata, rewrite endpoints, feedback routes, and dagger paths are
all representable now. This is sufficient for law-sized executable lessons.

What is absent is a generic typed port-graph and rewrite facility: validation
of arbitrary port incidence, reusable subgraph matching, boundary-preserving
replacement, and topology-aware normalization would otherwise require repeated
parallel arrays and hand-enumerated matches. That gap affects workflow DAGs,
dataflow optimization, circuit rewriting, compiler IRs, and model graphs as
well as Category Theory. The curriculum does not block on it; it constrains
general isotopy and spider claims and uses explicit finite graphs first.
Lesson 50 confirms that one typed edge and a four-box interchange remain clear
with ordinary arrays and records. Mixed numeric/string edge arrays are rejected,
so named edge records improve both validity and readability. The lesson also
demonstrates the manual-rewrite cost:
both grouping records and both endpoints must be enumerated. This strengthens
the existing typed-port-graph request but introduces no new capability request.
Lesson 51 confirms fixed branching and merging boundaries can be validated with
named parameters and typed path records. A generic port graph would reduce the
manual ordering checks, but no additional feature beyond the existing request
is needed for bounded cup, cap, and snake connectivity.
Lesson 52 confirms a fixed feedback edge and trace endpoint need only typed
arrays and equality. Enumerating a full trace-law family remains manual, which
is covered by the existing typed-graph/rewrite request rather than a new ask.
Lesson 53 confirms finite dagger reversal is readable as explicit label arrays
and equality checks. Generic adjoint-label mapping would reduce enumeration but
is not required; no new capability request follows.
Lesson 54 confirms fixed Frobenius and spider tables fit arrays and equality.
General spider normalization would need the already requested typed graph
matcher; the bounded lesson adds no new capability request.
# First-class composition gap measured in Lesson 03 (2026-08-13)

Function references can be stored in records and invoked, so an explicit
composition tree is executable today. However, sw-MLPL has no general
`compose(f, g)` primitive that returns a callable function value. Lesson 03
therefore constructs `compose(compose(f,g),h)` and
`compose(f,compose(g,h))` as distinct records and interprets them.

An upstream callable-returning composition helper would remove this small
interpreter and improve ordinary pipeline construction as well as Category
Theory demos. This is a general language/library ergonomics request, not a
request for Category Theory syntax.
