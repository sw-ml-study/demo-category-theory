# Executable lesson leaf contract

Every authored lesson is a leaf beneath the learning spine. It is not a
standalone textbook chapter. It must do exactly these eight jobs:

1. name the concept;
2. state prerequisites and the concrete categorical setting;
3. name the law or universal property being exercised;
4. execute both sides or all required routes;
5. display a concrete witness;
6. execute a deliberately broken counterexample when useful;
7. display an accessible, directed diagram; and
8. state precisely what the finite fixture demonstrates and does not prove.

Authored web leaves use these block-comment headings before executable code:

```text
# * PREREQUISITES
# * CATEGORICAL SETTING
# * LAW / UNIVERSAL PROPERTY
# * BOUNDARY
```

Existing leaves are being migrated in the queued curriculum-quality steps.
All newly authored leaves must use the headings immediately.

The naming/docstring migration is recorded in `docs/leaf-language-audit.md`.
`scripts/check-leaf-language` rejects the former boilerplate and known cryptic
semantic route names.

## Code language

- Names say what the computation does and remain readable without nearby
  comments.
- A function's first statement is a docstring explaining its categorical role,
  not merely repeating its name.
- Variables name equation routes or categorical roles (`map_then_transpose`,
  `candidate_mediator`, `equalizer_inclusion`), not screen positions such as
  `upper` or `left` when a semantic name exists.
- Computation says what prose claims. Distinct bracketings, paths, or
  candidates must be represented distinctly in code.

## Visual language

Objects are labeled containers; element values are tokens inside them. Meaning
must not depend on red/green alone. Semantic arrows carry labels; SVGs include
`<title>` and `<desc>`; dense advanced ideas use progressive stages or separate
panels. Commutative diagrams should animate routes when motion clarifies the
law. The named-constructor, variable-binding, single-display convention remains
mandatory for web SVGs.

The complete maintained convention, including non-color failure cues and the
object/container versus element/token distinction, is in
[`visual-grammar.md`](visual-grammar.md).

## Evidence language

Use “verifies this finite instance” rather than “proves” unless a general proof
is actually encoded. Intuition specific to `Set`, arrays, records, or finite
tables must be followed by the categorical universal property. Boundaries are
part of the result, not disclaimers to omit.
