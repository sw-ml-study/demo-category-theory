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
| morphisms and identity | moderate | strong | Clarify concrete-category boundary and object/element grammar |
| composition and associativity | strong | honest workaround | Distinct executable trees now expose the remaining callable-returning composition gap |
| array functor | strong | strong | Say array construction plus `each`, not “arrays”, is the functorial action |
| natural transformation | moderate | strong | Name both functors and call equality a finite naturality instance |
| products/coproducts | strong | strong | Retain universal-property witnesses |
| equalizer/coequalizer | moderate | moderate | Lead from Set intuition to unique factorization |
| contextual/Kleisli pipeline | strong | strong | Keep concrete-context boundary |
| adjunction | weak for beginners | moderate | Add incremental parent context before triangle-law leaf |
| representables/Yoneda | weak for beginners | moderate | Progressive Yoneda stages; separate density extension |
| bounded indexed (co)limits | moderate | moderate | Preserve finite-width and candidate-enumeration boundaries |

The integration audit updates this table after migrations. Any `weak`
expression rating must create a capability probe or a documented decision not
to reshape sw-MLPL.
