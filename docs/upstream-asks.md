# Verified sw-MLPL friction

Measured against `mlpl-repl 0.20.0`, build commit `d373584c`, on 2026-08-12.
The runnable positive cases live under `probes/`; negative snippets are kept
here because expected interpreter errors do not belong in the green probe run.

## 1. Function references cannot form a list

Status: **awkward**, not blocking the early fixed-arity diagram lessons.

```mlpl
def u:inc(x) { x + 1 }
def u:double(x) { x * 2 }
xs = [:u:inc, :u:double]
```

Observed: `array literal must be all-strings or all-numbers; got mixed kinds:
[user-fn-ref, user-fn-ref]`.

Function references do work as parameters and record fields; see
`probes/function_values.mlpl`. A homogeneous list/value container for function
references would enable data-driven, variable-length paths and is useful for
ordinary configurable pipelines as well as category diagrams.

Acceptance case: construct a two-element homogeneous collection of unary
function references, index both elements, and invoke both with `call`.

## 2. No direct string concatenation

Status: **awkward**, with a confined bridge sufficient for early SVG lessons.

```mlpl
def u:cat(a, b) { a + b }
u:cat("a", "b")
```

Observed: `expected an array value, got a string`.

`probes/text_svg.mlpl` verifies the current
`decode_bytes(concat(tokenize_bytes(a), tokenize_bytes(b)))` bridge. A direct
string concatenation operation is broadly useful for labels, diagnostics,
reports, and SVG/HTML generation.

Acceptance case: combine two strings without converting through byte arrays,
including an empty string and non-ASCII text.

## Not yet an upstream ask: generic functors

Concrete array mapping and its laws have not yet been measured. Generic
context/type-constructor abstraction remains a candidate in
`docs/sw-mlpl-capabilities.md`, not a verified request. The curriculum will
implement what current MLPL supports first and defer a generic functor lesson
until multiple concrete contexts establish a generally useful need.

## 3. Tagged record dispatch is not exhaustive

Status: **awkward**, not blocking the concrete coproduct lesson.

`probes/tagged_values.mlpl` verifies that `{tag, value}` plus an `if` dispatch
works. Nothing checks that every possible tag is handled or rejects an unknown
tag before runtime. Algebraic data types or exhaustive pattern matching would
help error/result handling and heterogeneous data pipelines as well as
coproduct examples, but this lesson is not by itself evidence for a specific
type-system design.

Acceptance direction: define a closed two-case value and have tooling reject a
case analysis that omits either branch. Exact syntax remains an upstream design
decision.
