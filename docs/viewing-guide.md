# Viewing guide

The full curriculum contains nineteen self-checking CLI lessons, nineteen
standalone web lessons, and nineteen generated SVG previews. Run `just check`
for the authoritative executable audit, or follow one of these paths.

## Foundations: Lessons 1-6

Start here for arrows, identity, composition, associativity, commutative
squares, products, and coproducts. These lessons establish the shared visual
grammar: rounded objects, labelled arrows, moving tokens, green equality, and
red counterexamples.

## Structure preservation: Lessons 7-11

Continue through array functor laws, shape preservation, transpose naturality,
the category of concrete homomorphisms, and the execution freedom supplied by
associativity. This is the shortest route from ordinary array programming to
the repository's categorical viewpoint.

## Contextual pipelines: Lessons 12-15

Use these together. Lesson 12 maps successful values while retaining failure;
Lesson 13 composes fallible stages; Lesson 14 combines independent contextual
work; Lesson 15 contrasts it with a later stage that needs an earlier result.
The laws belong to one concrete success/failure record, not generic interfaces.

## Consumption, generation, and focus: Lessons 16-18

Lesson 16 shows a useful finite fold fusion and its nonlinear counterexample.
Lesson 17 generates a deterministic bounded schedule and states the arithmetic
round-trip boundary. Lesson 18 focuses a nested model field and executes the
three lens laws while exposing a sibling-corrupting setter.

## Culmination: Lesson 19

Finish with diagonal duplication left adjoint to product. Both triangle
identities execute on finite records, and the bad counit makes the failure
visible. Read `docs/adjunction-decision.md` for why this candidate shipped and
why the context, fold/unfold, and lens candidates did not.

## Universal constructions continuation: Lessons 20 onward

Lesson 20 introduces categorical duality by reversing arrows and composition
order. Lesson 21 uses unique-arrow counts to distinguish initial, terminal,
and category-relative zero objects. Continue in numeric order as the
CT020-CT044 saga adds equalizers, coequalizers, pullbacks, pushouts, finite
limits/colimits, representables, and Yoneda.

## Artifact map

- CLI sources and assertions: `demos/NN-topic/*.mlpl`
- authored browser lessons: `demos/web/*.mlpl`
- generated browser copies: `web/*.mlpl`
- README-ready generated visuals: `assets/previews/*.svg`
- capability evidence: `probes/*.mlpl`
- law suites: `tests/*.mlpl`
- vocabulary and boundaries: `docs/terminology.md` and
  `docs/sw-mlpl-capabilities.md`
