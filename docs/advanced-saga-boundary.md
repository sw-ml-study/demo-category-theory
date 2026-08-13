# Proposed boundary for a later advanced-concepts saga

The first curriculum is complete at natural transformations, with two bridge
lessons for homomorphisms and lawful reductions. A later saga must not simply
continue a textbook table of contents.

## Entry criteria

Begin only when each proposed lesson has:

1. a concrete ML/data-programming payoff;
2. a representation that current sw-MLPL can probe independently;
3. a visual equality or counterexample clearer than prose alone; and
4. a decision about whether missing support is a library concern, a generally
   useful language capability, or category-specific encoding overhead.

## Candidate sequence

1. error/optional pipelines and Kleisli composition;
2. independent contextual computations (applicative structure);
3. dependent contextual computations (monadic bind), only after the concrete
   contexts exist;
4. folds and unfolds tied to arrays, streams, or model/data traversal;
5. optics for nested model/configuration data; and
6. adjunctions only where two implemented constructions already exhibit one.

## Explicit non-goals

- No category-theory keywords merely to mirror notation.
- No forced static type system solely to encode textbook abstractions.
- No generic `Functor`/`Monad` interface before at least two useful concrete
  contexts demonstrate shared operations and laws.
- No lesson that cannot produce an executable law check and a useful visual.

The capability ledger in `docs/sw-mlpl-capabilities.md` is the starting input
for that saga; candidates are not promises.
