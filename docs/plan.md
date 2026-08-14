# Implementation plan: category theory you can watch execute

Status: **thirty-two capability-gated lessons implemented; the 245-concept
program remains active**.

The broader program continues through the 245 tracked concepts in
`docs/concept-inventory.md`. The next implementation plan is
`docs/next-saga-plan.md`; completion of a bounded saga is never completion of
the program-level inventory.

Before further concepts, the research2 curriculum-quality sequence establishes
`docs/learning-spine.md`, `docs/executable-leaf-contract.md`, the browser-facing
`web/START_HERE.md`, and `docs/lesson-scorecard.md`; then it audits naming,
docstrings, visuals, associativity, mathematical precision, and Yoneda. Every
future concept inherits these standards.

The leaf naming/docstring audit is complete and enforced by
`scripts/check-leaf-language`; visual accessibility migration is next.

Current continuation status: CT020-CT043 are implemented as Lessons 20-28,
except CT035-CT036 remain explicitly constrained. CT044 has an executable
bounded reconstruction but the general density theorem remains constrained.
The active CT045-CT064 saga has measured its finite representation surface in
`docs/ct045-ct064-capability-matrix.md`. CT054's uniqueness up to unique
isomorphism is implemented as Lesson 29. CT049-CT051 finite diagram,
constant-diagram, and diagonal functors are implemented as Lesson 30. Bounded
wide/indexed products and coproducts are implemented at finite width three as
Lesson 31. CT052-CT053 bounded chain cones are Lesson 32. Preservation,
creation, and reflection are next; infinite-family claims and unprobed lifting or
comma-category constructions remain explicitly deferred.

Derived from `docs/research.txt` and the ownership contract in
`../demo-abstract-algebra/docs/scope-boundary.md`. This repository owns the
categorical reading of maps between structures. It does not repeat the sibling
repository's algebra-law ladder.

## The thesis

A commutative diagram is an executable claim: follow either path from the same
input and arrive at the same output. sw-MLPL can make that claim concrete by
showing values travel along arrows while arrays underneath verify every path.

The teaching loop for every lesson is:

1. name the objects, arrows, and law in ordinary language;
2. execute both sides of the law on a finite, visible set of values;
3. animate those values through the corresponding diagram;
4. show a counterexample beside the lawful example; and
5. end with the exact equality the picture established.

Category theory is a forcing function, not a request for category-theory
syntax. No `category`, `functor`, or `monad` keywords are proposed here.

## Scope boundary

This repository asks **what survives when values are mapped between
structures**. `../demo-abstract-algebra` asks **what laws a single operation
obeys**.

- Abstract algebra owns Cayley tables, magmas through groups, enumeration,
  associativity as an algebraic law, and the executable homomorphism checker.
- Category theory owns objects and morphisms, identity and composition of
  morphisms, commutative diagrams, products and coproducts, functors, and
  natural transformations.
- Homomorphisms are the bridge: copy the sibling's checker when it is ready,
  then demonstrate that identity homomorphisms and composed homomorphisms form
  a category. Do not add a cross-repository runtime dependency.
- Reduction may appear here only for the categorical/practical payoff
  (reassociation and parallel execution), not as a second monoid lesson.
- Applicatives, monads, Kleisli arrows, folds/unfolds, optics, profunctors, and
  adjunctions were gated behind the first curriculum's visual grammar and
  measured language limits. The implemented concrete subset is below;
  profunctors and generic interfaces remain deferred.
- Never edit sibling repositories from this repository. Record sw-MLPL gaps in
  `docs/upstream-asks.md` with a minimal executable probe. Maintain the broader
  capability/design ledger in `docs/sw-mlpl-capabilities.md`, including ideas
  such as generic or "full" functor support that are not yet verified asks.

## Demo contract

There are two related but deliberately separate forms.

### CLI lessons

`demos/NN-topic/*.mlpl` are deterministic, self-checking programs. Assertions
are authoritative and do not depend on rendering. They show a terminal-visible
array first, write optional SVG artifacts only under `out/`, and finish with
`ok(...)` or `err(...)`.

### Web lessons

`demos/web/*.mlpl` are short, standalone playground programs with no `include`
or filesystem effects. Generated copies may later live under `web/`.

Each web file follows the proven sibling anatomy:

- a leading framed `#` prolog headed `WHAT THIS SHOWS`, followed by a bare `;`
  so it becomes its own transcript group;
- small definitions and executable statements, each with a useful trailing
  `#` comment;
- a framed explanation immediately before every visual, naming what moves,
- a docstring-first, concept-named SVG constructor; assign its constant result
  to a readable variable and evaluate that variable exactly once;
- the common `arrowhead` SVG marker on every semantic `.arrow` or `.a`
  connector, so morphism direction remains visible rather than implied;
  what colors mean, and which equality is being tested; and
- a trailing framed epilog headed `HOW TO READ THE RESULT` and `THE POINT`.

These are line-comment blocks, not string expressions: strings echo twice in
the playground. Keep each web lesson under 26 statement groups unless a local
measurement demonstrates a better limit.

## Visual grammar

The diagrams use one stable vocabulary so learners spend attention on the
mathematics rather than decoding each picture anew.

- Rounded boxes are objects (concrete finite sets or array shapes).
- Labelled arrows are MLPL functions.
- Colored tokens are input values. The same input keeps the same color along
  every path.
- A green destination halo means both paths produced equal values; split red
  destinations exhibit a counterexample.
- Identity arrows loop in place. Composition first animates two arrows, then
  contracts them into one arrow with the intermediate object faded.
- Products converge into a paired value; coproducts branch from tagged values.
- Functor lessons show two synchronized diagrams: the source category above,
  its lifted array computation below, with matching arrows pulsing together.
- Every animation has a meaningful static final frame and a textual/array
  equivalent for reduced-motion and terminal use.

Use dependency-free inline SVG generated by MLPL. SVG complexity must serve the
law: decorative graph motion is out of scope.

## Architecture target

```text
lib/category.mlpl       identity, path application, law checks, witnesses
lib/render.mlpl         shared SVG diagram primitives
demos/NN-topic/         CLI lessons and their local fixtures
demos/web/              authored playground demos
web/                    generated standalone copies
assets/previews/        stable demo-generated visuals embedded by README
probes/                 minimal interpreter capability probes
tests/                  law, renderer, narration, and generated-file checks
scripts/                thin build/check entry points
catalog/                demo metadata and expected visual counts
out/                    generated artifacts, gitignored
```

Prefer finite domains and whole-array evaluation. A law checker returns both a
verdict and the first counterexample, because `false` alone teaches nothing.
Keep decisions pure; runners own display and file effects.

## Lesson sequence

The sequence is capability-gated, not merely conceptual. Implement the first
available row whose prerequisites are verified on the configured interpreter;
do not hold an executable lesson behind a lesson awaiting an upstream fix.

| # | Lesson | Executable claim | Visual payoff |
|---|---|---|---|
| 01 | Arrows are functions | A morphism maps each source value to one target value | Tokens cross a single labelled arrow; source/target arrays sit below |
| 02 | Identity and composition | `id ; f = f = f ; id` | Identity loop disappears; two arrows contract into one |
| 03 | Associativity of composition | `(f ; g) ; h = f ; (g ; h)` for every fixture input | Same four objects, two bracketings, synchronized arrivals |
| 04 | Commutative squares | `h ; f = k ; g` (in diagram order) and a deliberately broken square | Two routes glow green; one changed arrow produces a red witness |
| 05 | Products | pairing is the unique arrow determined by two projections | Two projections peel a pair apart; competing mediators coincide |
| 06 | Coproducts | case analysis is the unique arrow determined by two injections | Tagged values enter from either side and merge without ambiguity |
| 07 | Array map as a functor | `map(id)=id` and `map(g ; f)=map(g) ; map(f)` | Scalar arrows and lifted array arrows animate in lockstep |
| 08 | Shape-preserving transformations | transpose/reshape examples distinguish preservation from mere mapping | Shape-labelled objects reveal what changed and what survived |
| 09 | Natural transformations | one component per shape makes every naturality square commute | A grid of squares lights together; a bad component exposes one cell |
| 10 | Homomorphisms form a category | identity and composition preserve the operation | Two algebra tables become objects; structure-preserving arrows compose |
| 11 | Why laws buy execution freedom | associative reductions may be regrouped; non-associative ones may not | A serial reduction tree rebalances into parallel branches |

### Capability-first delivery order

The Step 1 baseline on sw-MLPL 0.20.0 supports fixed-arity function
composition, record-held function references, nested equality, and manual
tagged records. Therefore the working order is:

1. **Available now:** Lessons 01-06 (fixed paths, squares, concrete products
   and coproducts), followed by Lesson 11's concrete reduction comparison.
2. **Measure, then build if supported:** Lessons 07-08 using the actual array
   mapping primitive. These require a concrete lawful map, not generic functor
   machinery.
3. **Conditional:** Lesson 10 once the sibling homomorphism fixture is stable
   enough to copy and attribute.
4. **Deferred when capability-bound:** Lesson 09 as a generic natural-
   transformation treatment, and any “full functor support” lesson requiring
   type constructors or generic constraints. A concrete naturality square may
   ship earlier only if ordinary records/functions express it honestly.

When a prerequisite is missing, mark the catalog row `constrained`, add a
verified probe/upstream ask, and move to the next available lesson. Revisit
constrained rows after the relevant sw-MLPL fix; do not embed a sprawling
compatibility layer merely to preserve lesson numbering.

Lessons 01-04 establish the diagram language before introducing universal
properties. Lessons 05-06 use concrete records/tagged records rather than
assuming type-system features. Lessons 07-09 are the core sw-MLPL payoff.
Lessons 10-11 close the bridge to abstract algebra and practical array
execution.

## Forcing-function rubric

Every lesson records its outcome in one of four bins:

1. **Elegant in ordinary MLPL** — document the idiom; request no change.
2. **Repeated but expressible** — extract a small `.mlpl` library helper.
3. **Generally useful language friction** — add a minimal probe and a precise
   entry to `docs/upstream-asks.md`; do not silently build a permanent bridge.
4. **Only useful for encoding textbook category theory** — keep it explanatory
   or defer it. This alone does not justify a language feature.

Likely probes include first-class composition, passing function values through
records/lists, equality over nested arrays/records, tagged-value ergonomics,
and SVG/text construction. Verify each against the configured interpreter;
documentation is not evidence of runtime behavior.

Update `docs/sw-mlpl-capabilities.md` as evidence accumulates. Only verified
`awkward` or `blocked` findings graduate into `docs/upstream-asks.md`; candidate
ideas remain explicitly provisional.

## Delivery sequence (Agentrail steps)

1. **Foundation and measured capability survey** — repository harness,
   catalogs, pure law-check API, probes, and exact upstream asks. Establish the
   CLI/web narration and generated-file gates.
2. **Lessons 01-03: the category laws** — arrows, identity/composition, and
   associativity with the shared SVG token/arrow grammar.
3. **Lesson 04: commutative squares** — lawful and broken squares, animated
   paths, counterexample witness, reduced-motion/static behavior.
4. **Lessons 05-06: products and coproducts** — executable universal-property
   checks with concrete finite values; record type/tag friction rather than
   inventing syntax.
5. **Lessons 07-08: array functors, capability-gated** — first probe the actual
   mapping primitive; implement identity/composition laws only with supported
   current behavior, plus transformations that clarify which structure is
   preserved. If blocked, record the ask and advance to an available step.
6. **Lesson 09: natural transformations, capability-gated** — naturality squares over a small
   family of array shapes, including a minimal failing component.
7. **Lessons 10-11: bridges and payoff** — adopt/copy the algebra
   homomorphism fixture, prove closure under categorical composition, then
   visualize why lawful reduction permits regrouping and parallelism.
8. **Curriculum integration and handoff** — full gate, web size/narration
   audit, viewing guide, terminology register, rebuilt artifacts/catalog, and
   a written boundary for the later advanced-concepts saga.

Each step must leave the scoped suite green, update user-facing documentation
with its demos, and record newly discovered language friction in the same
step. The per-step delivery gate is mandatory:

1. run the complete pre-commit suite (`just check` after the foundation creates
   it), with no skipped hooks or known failures;
2. inspect and stage named files, including current Agentrail state;
3. create a detailed work commit whose message records behavior, verification,
   design choices, and known limitations;
4. run `agentrail complete` with its detailed summary/actions;
5. commit the resulting Agentrail completion metadata; and
6. push both commits and verify the branch is no longer ahead of its upstream.

Do not begin the next step when any check fails, either commit is missing, or
the push has not succeeded. A credential, network, or branch-protection failure
is reported as a blocking handoff with the branch, commit IDs, and exact error.

At the start of every demo step, consult `docs/sw-mlpl-capabilities.md` and run
the relevant probes. If the intended demo depends on a missing feature, record
the evidence, mark it constrained, and work on the next currently supported
demo instead. Upstream-dependent demos remain queued for later adoption.

When a step adds or materially changes a visual lesson, it also regenerates a
stable representative SVG under `assets/previews/` and updates `README.md` to
embed it with descriptive alt text, a brief “what to notice” explanation, and
links to the CLI and web demo sources. README images must be outputs of the
demos and covered by the generated-file freshness gate; do not substitute an
illustration that the executable lesson did not produce. The foundation step
documents this convention without inventing screenshots before demos exist.

## What would make this plan wrong

- If the web runtime cannot animate inline SVG without overwhelming the
  transcript, ship static before/after frames; motion is helpful, not the
  lesson's source of truth.
- If functions cannot be stored or passed in the needed positions, start with
  named paths and explicit dispatch. Record the general higher-order gap; do
  not block the first diagrams on ideal composition syntax.
- If products/coproducts require pretending MLPL has a static type system it
  does not have, teach their value-level universal properties and say exactly
  what is not being modeled.
- If a diagram does not make the equality or counterexample easier to see than
  two arrays, remove it. Visual output is evidence, not decoration.
- If natural transformations cannot be explained cleanly with the established
  visual grammar, end the first curriculum at functors and move lesson 09 into
  the later saga rather than weakening the earlier lessons.

## Advanced curriculum: contexts, recursion, and structured access

The second curriculum follows `docs/advanced-saga-boundary.md`. Its thesis is
that advanced category-theory vocabulary earns a lesson only when it explains
a useful ML/data-programming pattern already made executable in sw-MLPL.

### Capability-first lesson sequence

| # | Lesson | Concrete programming subject | Executable law / visual | Gate |
|---|---|---|---|---|
| 12 | Optional/error contexts | Tagged success, absence, and failure in data pipelines | Context map preserves identity/composition; colored tracks retain failure | Probe records, nested payloads, and reusable dispatch first |
| 13 | Kleisli composition | Pipelines whose stages may fail | Left/right identity and associativity over finite inputs; failure short-circuits visibly | Requires honest contextual return values and readable composition helpers |
| 14 | Independent contextual computation | Combine validations or independent feature computations | Product-style combination and applicative identity/composition fixtures | Build only if two independent contextual operations have a practical example |
| 15 | Dependent contextual computation | A later step chooses work from an earlier result | `bind` laws over the same concrete context, with a broken witness | Do not generalize to “Monad” until Lesson 12/13 APIs are stable |
| 16 | Folds as structured consumption | Aggregate arrays/trees into summaries | Fold fusion or homomorphism law; serial and lawful regrouped views | Probe the smallest useful recursive/tree representation first |
| 17 | Unfolds as structured generation | Generate arrays/streams from seeds | Unfold/fold round-trip over a bounded fixture | Must remain finite and deterministic in the first version |
| 18 | Optics for nested data | Read/update nested model or configuration records | Get-put, put-get, and put-put laws with a counterexample | Requires a concrete nested ML/data record; no optics DSL |
| 19 | Adjunction candidate | Relationship between two already implemented constructions | Unit/counit triangles made executable and visual | Conditional: omit unless Lessons 12-18 naturally exhibit an adjunction |

Current implementation status (2026-08-12): Lessons 12-13 are executable with
generated CLI/web visuals and law tests on the concrete success/failure
context. Lessons 14-15 are also executable: independent results combine into a
product, while dependent bind passes an earlier payload into later work.
Lessons 16-17 are now executable over finite arrays: a linear fold-fusion law
and a bounded arithmetic unfold round-trip each include a failing witness.
Lesson 18 is executable as one concrete model-configuration lens. The Lesson
19 audit accepted diagonal duplication left adjoint to product: both triangle
identities execute on finite records, while the other candidates were declined
for lacking demonstrated categories and hom-set correspondences.

### Delivery sequence for the second saga

1. **Context capability survey** — probe reusable tagged payloads, contextual
   function return/call behavior, nested equality, and composition ergonomics;
   define an explicit result/optional representation and record upstream asks.
2. **Lessons 12-13: contextual map and Kleisli pipelines** — implement the
   concrete context and its identity/composition laws, then compose fallible
   stages and verify Kleisli laws with visible short-circuit paths.
3. **Lessons 14-15: independent and dependent effects** — implement only after
   the context APIs prove useful; teach applicative/monadic structure as laws
   of the concrete pipeline rather than as generic interfaces.
4. **Lessons 16-17: folds and unfolds** — choose finite array/tree workloads,
   visualize consumption/generation, and connect laws to fusion or safe
   execution transformations.
5. **Lesson 18: optics** — implement lawful access/update for a real nested
   data fixture and show the three lens laws plus a broken accessor.
6. **Lesson 19 decision and integration** — audit whether implemented
   constructions genuinely exhibit an adjunction. Ship the lesson only with
   concrete evidence; otherwise document the declined candidate and complete
   integration without it.

Every advanced step inherits the existing demo, docstring/name, generated
visual, pre-commit, detailed-commit, Agentrail metadata, and push requirements.
If a lesson is feature-blocked, record a minimal probe and advance to the next
supported lesson rather than hiding the gap behind a large compatibility layer.

### Deliberately deferred beyond the second saga

Bifunctors and profunctors remain research candidates until a real two-sided
data transformation needs them. Generic `Functor`, `Applicative`, or `Monad`
interfaces remain deferred until at least two useful concrete contexts expose
the same operations and laws. Category-specific syntax remains out of scope.

### Completion handoff

The advanced saga delivered Lessons 12-19 and closed with a full generated and
law-suite audit. The next work should begin from a concrete ML/data workload,
not an unused category-theory term. A second practical context could justify
revisiting generic contextual interfaces; another nested configuration could
justify record-update ergonomics; recursive or streaming data could justify
recursion-scheme research; and a real two-input transformation could motivate
bifunctors or profunctors. None is currently a committed lesson.
### Research2 visual-grammar migration (2026-08-13)

Step 008 makes the diagram language explicit and checked: objects are
containers, elements are tokens, arrows are directed and labeled, failures
use dashed paths and words in addition to color, and every SVG has a title and
description. The next step repairs the associativity computation so the two
genuinely different composition trees are executable rather than merely prose.
### Honest associativity repair (2026-08-13)

Lesson 03 now constructs two different syntax trees—left-nested and
right-nested—and evaluates both over the fixture. Its SVG shows both trees
beside the common `A -f-> B -g-> C -h-> D` path. The workaround establishes a
measured upstream ask for callable-returning function composition.

Next: repair the remaining research2 mathematical-precision issues in the
arrows, product/coproduct, functor, naturality, and universal-construction
leaves. No blocker prevents that audit.
### Research2 mathematical-precision repair (2026-08-13)

The affected leaves now name their categorical setting and claim boundary.
Lesson 01 restricts function language to its concrete category; Lesson 07
names array construction plus `each` as the functorial action; Lesson 09 calls
its results finite naturality instances; Lesson 22 makes unique factorization
primary; and Lesson 19 introduces its adjunction in three prerequisite stages.

Next: run the curriculum-wide eight-part quality integration audit. No blocker
is known; the audit may identify individual leaves requiring follow-up.
### Curriculum quality integration audit (2026-08-13)

All 32 executable browser leaves now have one authoritative row in
`docs/lesson-quality.tsv`, covering the eight-part contract plus separate CT
teaching and sw-MLPL expression ratings. The audit records 31 strong/moderate
teaching leaves and one intentionally weak leaf, finite Yoneda, whose concrete
progressive redesign is already Step 012. No weak expression rating remains.

Future concepts must start from `docs/web-leaf-template.mlpl`, add a manifest
row, and pass `scripts/check-lesson-quality`. Next is the already queued Yoneda
repair. There is no blocker.
### Progressive finite Yoneda repair (2026-08-13)

Lesson 28 now isolates the Yoneda correspondence in three numbered stages:
choose `x=10` in `F(A)`; generate `eta` and check the fully labeled
`Hom(A,-) -> F` naturality square; recover `x` as `eta_A(id_A)`. A dashed `21`
is the broken square. Category-of-elements reconstruction remains a separately
labeled optional CLI/test extension and no longer competes for visual attention.

The quality manifest now rates all 32 current leaves strong or moderate for CT
teaching. Next: CT055-CT058 preservation, creation, and reflection. No blocker
is known; bounded finite functor fixtures remain the intended representation.
