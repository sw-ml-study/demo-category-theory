# Visual Category Theory in sw-MLPL

Executable lessons where category-theory laws become diagrams you can inspect:
values move along arrows, both sides of an equation run over the same finite
inputs, and failed laws show a concrete counterexample.

The project is deliberately an sw-MLPL forcing function, not a proposal for a
category-theory DSL. It starts with functions, identity, and composition;
builds toward commutative diagrams, products, coproducts, array functors, and
natural transformations; and closes by connecting homomorphisms and lawful
reductions to practical array programming.

## Planned visual progression

The first curriculum will make these relationships visible:

```text
value ──f──▶ value                 one morphism

A ──f──▶ B                         two paths, one result
│         │
g         h
▼         ▼
C ──k──▶ D

scalar arrow                       lifted array arrow
A ──f──▶ B                         [A] ──map(f)──▶ [B]
```

The authoritative curriculum and delivery sequence are in
[`docs/plan.md`](docs/plan.md). Potential language capabilities—including the
different meanings of “full functor support”—are tracked in
[`docs/sw-mlpl-capabilities.md`](docs/sw-mlpl-capabilities.md).

## Demo visuals

### 1. An arrow is an executable function

![A pink value token moving from a Numbers object to another Numbers object along an arrow labelled double](assets/previews/01-arrows.svg)

What to notice: the colored token retains its identity while its value changes
from `3` to `6`. The diagram is backed by the displayed mapping of every input,
not a single cherry-picked value. Sources: [CLI lesson](demos/01-arrows/arrows.mlpl),
[web lesson](demos/web/arrows.mlpl).

### 2. Identity changes no destination

![An identity loop on object A beside an arrow from A to B](assets/previews/02-identity-composition.svg)

What to notice: the loop can be traversed before or after the meaningful arrow
without changing the endpoint. The three displayed arrays verify `id ; f = f =
f ; id`. Sources: [CLI lesson](demos/02-composition/identity.mlpl),
[web lesson](demos/web/identity_composition.mlpl).

### 3. Composition is associative

![Four objects A through D connected by three arrows, with a token traversing the entire route](assets/previews/03-composition-associativity.svg)

What to notice: both bracketings visit `A → B → C → D` in the same order and
finish together. Parentheses group the composition; they do not reroute it.
Sources: [CLI lesson](demos/03-associativity/bracketing.mlpl),
[web lesson](demos/web/composition_associativity.mlpl).

Generated working artifacts belong in gitignored `out/`; README-ready outputs
belong in `assets/previews/` and are rebuilt reproducibly.

## Repository boundary

This repository asks what survives when values are mapped between structures.
The adjacent `demo-abstract-algebra` repository asks what laws a single
operation obeys. Homomorphisms connect the two: algebra owns the preservation
checker, while this repository owns identity, composition, and the categorical
reading.

See [`AGENTS.md`](AGENTS.md) for the mandatory Agentrail workflow and demo
quality rules.
