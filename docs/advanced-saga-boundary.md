# Boundary for the queued advanced-concepts saga

The first curriculum is complete at natural transformations, with two bridge
lessons for homomorphisms and lawful reductions. The queued second saga starts
from concrete optional/error pipelines and must not simply continue a textbook
table of contents. Its detailed lesson and delivery order is in `docs/plan.md`.

## Entry criteria

Begin only when each proposed lesson has:

1. a concrete ML/data-programming payoff;
2. a representation that current sw-MLPL can probe independently;
3. a visual equality or counterexample clearer than prose alone; and
4. a decision about whether missing support is a library concern, a generally
   useful language capability, or category-specific encoding overhead.

## Capability-gated sequence

1. error/optional pipelines and Kleisli composition;
2. independent contextual computations (applicative structure);
3. dependent contextual computations (monadic bind), only after the concrete
   contexts exist;
4. folds and unfolds tied to arrays, streams, or model/data traversal;
5. optics for nested model/configuration data; and
6. adjunctions only where two implemented constructions already exhibit one.

The first five items are queued as capability-gated work. The sixth is a
decision step, not a promise to manufacture an adjunction lesson.

## Explicit non-goals

- No category-theory keywords merely to mirror notation.
- No forced static type system solely to encode textbook abstractions.
- No generic `Functor`/`Monad` interface before at least two useful concrete
  contexts demonstrate shared operations and laws.
- No lesson that cannot produce an executable law check and a useful visual.

The capability ledger in `docs/sw-mlpl-capabilities.md` is the starting input
for that saga; candidates are not promises.
