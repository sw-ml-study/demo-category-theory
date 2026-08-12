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
| Higher-order array mapping | 07-09 | candidate | A mapping operation accepts an ordinary user function and preserves the documented array context. |
| Tagged alternatives and case analysis | 06 | awkward | `{tag, value}` records plus `if equal(v.tag, ...)` work, but exhaustiveness is manual and unchecked. |
| Text and SVG construction | all visuals | awkward | String `+` fails; `decode_bytes(concat(tokenize_bytes(a), tokenize_bytes(b)))` works as a bridge. |
| Property/law checking helpers | all | candidate | A reusable library can evaluate finite domains and return the first counterexample, without special syntax. |
| Generic context mapping (functor abstraction) | 07-09 | candidate | One abstraction can associate a mapping operation with more than one context and verify identity/composition laws. |
| Parametric/type-constructor abstraction | 07-09+ | candidate | If static types are in scope for sw-MLPL, a general API can express a context `F` and maps `A -> B` to `F A -> F B`. |
| Generic constraints/protocols | 07-09+ | candidate | Multiple lawful mapping contexts can share an interface without hard-coded type or tag dispatch. |

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
