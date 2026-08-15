# Category-theory concept inventory and saga map

This is the program-level backlog. It tracks **245 lesson-sized concepts** so
that completing one saga never implies that Category Theory itself is done.
The inventory is dependency-ordered, not a claim that every textbook uses the
same boundaries. A concept ships only with an executable law/equivalence,
visual evidence, an explicit representation boundary, and a failing witness
when one is pedagogically useful.

Status keys: **done** is implemented or explicitly constrained with evidence;
**next** belongs to the
active saga; **queued** has a dependency-ordered saga but no implementation
commit yet; **research** needs a concrete ML/data workload or upstream support.

| IDs | Saga | Count | Status | Concepts |
|---|---|---:|---|---|
| CT001-CT019 | Executable foundations | 19 | done | objects; morphisms; identity; composition; associativity; commutative diagrams; products; coproducts; functors; functor identity; functor composition; natural transformations; homomorphism categories; lawful reductions; applicative-style combination; monadic bind; Kleisli composition; finite folds/unfolds; lenses and diagonal-product adjunction |
| CT020-CT044 | Duality, universal constructions, and Yoneda | 25 | done: implemented through CT043; CT035-CT036 and general CT044 constrained | opposite category; dual statement; initial object; terminal object; zero object; universal arrow; universal element; cones; cocones; equalizer; coequalizer; pullback; pushout; finite limit; finite colimit; completeness; cocompleteness; representable functor; corepresentable functor; covariant hom-functor; contravariant hom-functor; Yoneda embedding; Yoneda lemma; category of elements; density intuition |
| CT045-CT064 | Limits beyond the finite fixture | 20 | done: all implemented as finite fixtures or explicitly constrained at infinite boundaries | wide product; wide coproduct; indexed limit; indexed colimit; diagram category; constant diagram functor; diagonal functor; limit cone; colimit cocone; uniqueness up to unique isomorphism; preservation of limits; preservation of colimits; creation of limits; reflection of limits; filtered category; filtered colimit; directed colimit; inverse limit; direct limit; final and initial functors |
| CT065-CT084 | Exponentials and cartesian closure | 20 | done: all implemented as finite fixtures or explicitly constrained at category-wide boundaries | exponential object; evaluation morphism; currying; uncurrying; beta law; eta law; cartesian closed category; internal hom; global element; subobject; subobject classifier; characteristic morphism; partial map; slice category; coslice category; locally cartesian closed category; dependent product; dependent sum; polynomial functor; container interpretation |
| CT085-CT109 | Monoidal categories and algebraic objects | 25 | next: capability survey and coherence representations queued | monoidal category; tensor product; monoidal unit; associator; left unitor; right unitor; pentagon identity; triangle identity; strict monoidal category; braided monoidal category; braiding; hexagon identities; symmetric monoidal category; monoid object; comonoid object; group object; module object; monoidal functor; lax monoidal functor; oplax monoidal functor; strong monoidal functor; monoidal natural transformation; closed monoidal category; dual object; compact closed category |
| CT110-CT129 | String diagrams, traces, and processes | 20 | queued | string diagram; planar isotopy; interchange law; cups; caps; snake identities; trace; traced monoidal category; feedback; dagger category; dagger compact category; Frobenius algebra; special Frobenius algebra; spider theorem; process theory; state; effect; channel; classical structure; categorical quantum-mechanics boundary |
| CT130-CT149 | Profunctors, ends, and coends | 20 | queued | bifunctor; dinatural transformation; wedge; cowedge; end; coend; extranatural transformation; profunctor; distributor; bimodule; companion; conjoint; profunctor composition; identity profunctor; hom-profunctor; co-Yoneda lemma; end formula for natural transformations; coend quotient intuition; optic as coend; Tambara module boundary |
| CT150-CT169 | Kan extensions and categorical calculus | 20 | queued | left Kan extension; right Kan extension; pointwise Kan extension; Kan lift; Kan extension unit; Kan extension counit; universal factorization; extension along identity; composition of Kan extensions; preservation by adjoints; codensity monad; density comonad; nerve; realization; codensity intuition; exact square; Beck-Chevalley condition; mate correspondence; calculus of mates; Kan-extension data migration |
| CT170-CT189 | Monads, comonads, and algebra categories | 20 | queued | monad as endofunctor; monad unit; monad multiplication; monad laws; Kleisli category; Eilenberg-Moore algebra; Eilenberg-Moore category; monad morphism; distributive law; idempotent monad; finitary monad; algebraic theory; Lawvere theory; free algebra; forgetful functor; free-forgetful adjunction; comonad; comonad counit; comonad comultiplication; coalgebra for a comonad |
| CT190-CT209 | Fibrations and indexed categories | 20 | queued | fibration; opfibration; cartesian morphism; cocartesian morphism; cleavage; split fibration; Grothendieck construction; indexed category; pseudofunctor; fiber category; reindexing; dependent lens boundary; bifibration; discrete fibration; discrete opfibration; comma category; comma object; base change; descent data; Beck-Chevalley for fibrations |
| CT210-CT229 | Categorical logic and type theory | 20 | research | internal language; simply typed lambda calculus semantics; intuitionistic logic; regular category; coherent category; Heyting category; Boolean category; hyperdoctrine; tripos; categorical semantics of quantifiers; comprehension category; category with families; contextual category; dependent type semantics; identity type semantics; propositions as objects; proofs as morphisms; Curry-Howard-Lambek correspondence; sketches; finite-limit theory |
| CT230-CT245 | Higher categories and homotopical frontier | 16 | research | 2-category; bicategory; 2-functor; pseudofunctor coherence; lax transformation; modification; adjunction in a 2-category; monad in a 2-category; double category; equipment; simplicial category; nerve of a category; infinity-category motivation; homotopy category; model-category boundary; higher categorical coherence |

## Saga delivery rule

Each saga begins with capability probes and a concept-to-demo matrix. Concepts
may be split into multiple lessons, combined when one executable construction
honestly carries several laws, or deferred with measured evidence. The numeric
IDs remain stable even if lesson numbers change.

Every step retains the established gate: pre-commit checks, detailed work
commit, Agentrail completion metadata commit, and push. Every `.mlpl` function
definition remains docstring-first with a readable, relatable name.

## Immediate next saga

`exponentials-and-cartesian-closure` delivered CT065-CT084 as finite executable
fixtures with explicit every-pair/every-slice boundaries. The next saga is
CT085-CT109, monoidal categories and algebraic objects: begin by measuring
finite tensor/coherence representations before implementing string-like
diagrams or stronger monoidal structures. See `docs/next-saga-plan.md`.
