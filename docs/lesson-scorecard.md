# Category-theory and sw-MLPL lesson scorecard

Each lesson is judged on two independent axes. A runnable program can still be
a weak explanation; a good mathematical idea can still expose awkward language
expression.

| Rating | CT teaching | sw-MLPL expression |
|---|---|---|
| strong | Setting, law, witness, counterexample, and boundary are clear | Program structure directly represents the categorical structure |
| moderate | Correct but needs prerequisite narrative or denser interpretation | Expressible, but fixture-heavy or repetitive |
| weak | Ambiguous objects/morphisms, overstated evidence, or opaque visual | Prose claims distinctions the program cannot represent naturally |

| Concept family | Current CT teaching | Current expression | Pressure / queued action |
|---|---|---|---|
| morphisms and identity | strong | strong | Concrete-category boundary and object/element grammar are explicit |
| composition and associativity | strong | honest workaround | Distinct executable trees now expose the remaining callable-returning composition gap |
| array functor | strong | strong | Say array construction plus `each`, not “arrays”, is the functorial action |
| natural transformation | strong | strong | Concrete contexts and finite-instance boundary are explicit |
| products/coproducts | strong | strong | Retain universal-property witnesses |
| equalizer/coequalizer | strong | moderate | Set intuition is subordinate to unique factorization |
| contextual/Kleisli pipeline | strong | strong | Keep concrete-context boundary |
| adjunction | moderate | moderate | Incremental context precedes the triangle-law leaf |
| representables/Yoneda | weak for beginners | moderate | Progressive Yoneda stages; separate density extension |
| bounded indexed (co)limits | moderate | moderate | Preserve finite-width and candidate-enumeration boundaries |

The integration audit updates this table after migrations. Any `weak`
expression rating must create a capability probe or a documented decision not
to reshape sw-MLPL.

The authoritative per-leaf results are in `lesson-quality.tsv`; this family
table is only a summary.
