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

## Not an upstream ask: generic contextual interfaces

Concrete array and success/failure mapping have been measured and their laws
execute. Applicative-style application and monadic bind also execute for the
named success/failure context. This still does not establish a practical need
or representation for generic type-constructor interfaces. Generic Functor,
Applicative, and Monad support therefore remains a documented boundary, not a
verified upstream request.

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

## 4. `call` scalar results require shape normalization

Status: **awkward**, not blocking contextual map or Kleisli lessons.

Calling an ordinary unary numeric transform with `call(transform, [value])`
returns a one-element array, while calling a function that returns a record
returns that record directly. `lib/context.mlpl` therefore uses
`take(result, 0, 0)` for contextual map but must not apply it to contextual
bind.

This is usable once understood, but generic higher-order helpers must know the
return kind in order to unwrap correctly. That affects configurable data/model
pipelines beyond category-theory demos.

Acceptance direction: document and regularize the `call` return-shape contract,
or provide an invocation form whose scalar return preserves scalar rank while
record returns remain records. Exact API remains an upstream design decision.
# Callable-returning function composition

- Evidence: Lesson 03 needs structurally distinct left- and right-associated
  composites, while nested calls erase the parenthesization.
- Current workaround: record-valued composition trees plus a recursive
  evaluator in `lib/category.mlpl`.
- Requested capability: `compose(f, g)` should return a callable function
  value that applies `f` and then `g`.
- General value: readable preprocessing, model, validation, and data-pipeline
  assembly; this is not Category-Theory-specific syntax.

# Ragged or tagged collections

- Evidence: the CT065-CT084 capability probe rejects nested fiber rows of
  different lengths; Lesson 41 therefore stores values, offsets, and sizes in
  parallel arrays.
- Current workaround: explicit flat storage plus base-position tags for the
  dependent sum and a hand-enumerated rectangular choice table for the
  dependent product.
- Requested capability direction: a first-class ragged or tagged collection
  with safe fiber selection and preservation of group provenance. Exact syntax
  remains an upstream design decision.
- General value: variable-length batches, grouped observations, token
  sequences, sparse rows, and segmented array processing—not only dependent
  families in Category Theory.
- Acceptance case: construct fibers `[10,11]` and `[20]`, select each fiber,
  flatten them while retaining tags, and distinguish malformed offsets without
  maintaining parallel arrays manually.
