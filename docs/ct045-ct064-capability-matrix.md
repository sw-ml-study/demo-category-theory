# CT045-CT064 capability matrix

Measured on 2026-08-13 against the configured sw-MLPL interpreter. Positive
evidence is in `probes/indexed_limits.mlpl`; all representations are explicitly
finite unless a later lesson proves a stronger statement.

| ID | Concept | Executable representation | Status / boundary |
|---|---|---|---|
| CT045 | wide product | bounded rectangular family plus projection rows | runnable for fixed finite arity; arbitrary family unproven |
| CT046 | wide coproduct | bounded tagged index/value rows plus case table | runnable with numeric tags; exhaustive static dispatch absent |
| CT047 | indexed limit | finite diagram record and enumerated cone candidates | runnable for named bounded diagram |
| CT048 | indexed colimit | finite diagram record and enumerated cocone candidates | runnable for named bounded diagram |
| CT049 | diagram category | records of object/arrow tables and pointwise transformations | runnable for one explicit source shape |
| CT050 | constant diagram functor | repeat one object code and identity arrow over a finite shape | runnable |
| CT051 | diagonal functor | same finite constant-diagram construction, with functor laws | runnable |
| CT052 | limit cone | array/record legs plus unique mediator-count vector | runnable after generalized finite leg helper |
| CT053 | colimit cocone | dual legs plus unique mediator-count vector | runnable |
| CT054 | uniqueness up to unique isomorphism | two universal candidates and mutually inverse forced maps | runnable now; next lesson |
| CT055 | preservation of limits | compare source universal cone with its image under named functor | runnable for finite fixtures |
| CT056 | preservation of colimits | dual before/after universal checks | runnable for finite fixtures |
| CT057 | creation of limits | target cone with unique lifted source cone | candidate; requires explicit lifting tables |
| CT058 | reflection of limits | target universality implies source universality in bounded candidates | candidate; must distinguish from preservation |
| CT059 | filtered category | finite preorder table with bounded common-successor witnesses | runnable only as finite filtered fixture |
| CT060 | filtered colimit | bounded compatible chain and quotient labels | constrained: finite prefix is not an infinite colimit |
| CT061 | directed colimit | bounded increasing chain with stabilization evidence | constrained to finite/stabilized chain |
| CT062 | inverse limit | compatible tuples over a finite reversed chain | runnable for fixed stages; infinite inverse limit unproven |
| CT063 | direct limit | compatible quotient over a finite forward chain | runnable for fixed stages; infinite direct limit unproven |
| CT064 | final and initial functors | finite comma-category connectivity/nonemptiness counts | candidate; probe in integration step |

## Probe findings

- Nested diagram records retain object sizes, endpoints, and arrow tables.
- Rectangular arrays store bounded indexed families; the probe retains shape.
- Numeric function tables compose: the explicit swap composed twice is identity.
- Mediator counts `[1,1,1]` express bounded universality and reject `[1,2,1]`.
- A three-stage chain can prove finite stabilization (`[1,2,2]`) but says
  nothing about all later or transfinite stages.

No new upstream request is justified by this survey alone. Later steps must
probe dynamic arity, lifting, quotienting, or enumeration at the point a real
lesson needs it. General small/infinite (co)limits remain mathematical scope
boundaries, not missing syntax that a finite test can erase.
