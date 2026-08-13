# Boundary and outcome of the advanced-concepts saga

The advanced saga is complete. It followed concrete optional/error pipelines
through independent/dependent contexts, finite folds/unfolds, one lawful lens,
and the accepted diagonal/product adjunction. It did not simply continue a
textbook table of contents; every lesson passed the entry criteria below.

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

Items one through five shipped on measured current capabilities. The sixth was
treated as a decision: diagonal duplication left adjoint to product passed,
while context, fold/unfold, and lens candidates were explicitly declined.

## Explicit non-goals

- No category-theory keywords merely to mirror notation.
- No forced static type system solely to encode textbook abstractions.
- No generic `Functor`/`Monad` interface before at least two useful concrete
  contexts demonstrate shared operations and laws.
- No lesson that cannot produce an executable law check and a useful visual.

The capability ledger in `docs/sw-mlpl-capabilities.md` records the evidence
and the next boundary. Completed concrete lessons are not evidence for generic
interfaces.
