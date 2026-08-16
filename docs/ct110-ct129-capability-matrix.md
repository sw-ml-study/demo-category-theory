# CT110-CT129 capability matrix

This matrix separates executable diagram semantics from illustrative SVG
geometry. `probes/string_diagram_processes.mlpl` shows that finite typed ports,
edge tables, rewrite endpoints, feedback routes, dagger paths, and algebra
tables fit current sw-MLPL. Coordinates may narrate an embedding, but equality
of coordinates is never used as evidence for diagram equality.

| ID | concept | finite representation | survey result |
|---|---|---|---|
| CT110 | string diagram | typed boxes, ports, and directed edge table | implemented as a finite semantic graph in Lesson 50 |
| CT111 | planar isotopy | unchanged connectivity with changed coordinate metadata | implemented as one bounded movement witness; general isotopy constrained |
| CT112 | interchange law | independently assembled sequential-tensor endpoint tables | implemented for a fixed four-box fixture in Lesson 50 |
| CT113 | cups | directed unit-to-dual-pair connection | implemented as typed boundary connectivity in Lesson 51 |
| CT114 | caps | directed dual-pair-to-unit connection | implemented with ordered typed inputs in Lesson 51 |
| CT115 | snake identities | two typed cup-cap composite routes | implemented as distinct semantic paths normalizing to `A` and `A*` |
| CT116 | trace | finite feedback port closure and output table | implemented for one deterministic fixture in Lesson 52 |
| CT117 | traced monoidal category | trace laws across every enumerated applicable map | constrained by explicit law coverage `[1,1,0]` |
| CT118 | feedback | explicit edge from selected output port to selected input port | implemented as typed `U` output-to-input closure in Lesson 52 |
| CT119 | dagger category | path reversal with arrow labels mapped to adjoints | implemented with identity, reversed composition, and involution in Lesson 53 |
| CT120 | dagger compact category | dagger, compact duals, and category-wide coverage | constrained by explicit compatible cup/cap plus incomplete coverage `[1,0]` |
| CT121 | Frobenius algebra | finite multiplication/comultiplication compatibility tables | implemented for an attributed classical-bit fixture in Lesson 54 |
| CT122 | special Frobenius algebra | multiplication after comultiplication equals identity | implemented for the same fixture in Lesson 54 |
| CT123 | spider theorem | connected same-boundary networks have equal endpoint tables | one bounded rewrite implemented; general theorem constrained |
| CT124 | process theory | objects as systems and arrows as composable processes | runnable for one typed finite workflow |
| CT125 | state | unit-to-system process record | runnable |
| CT126 | effect | system-to-unit process record | runnable |
| CT127 | channel | typed system-to-system process table | runnable |
| CT128 | classical structure | attributed copy/delete Frobenius fixture | runnable if sibling ownership is retained |
| CT129 | categorical quantum-mechanics boundary | additional physical/linear semantics and dagger-compact coverage | constrained; graph vocabulary alone does not establish quantum semantics |

## Measured findings

- Arrays and records encode fixed port graphs and keep semantic edges separate
  from drawing coordinates. Moving coordinates while retaining edges supplies a
  bounded isotopy candidate, not a general planar-topology decision procedure.
- Equality checks execute interchange, snake, trace/feedback, dagger
  involution, Frobenius, specialness, and bounded spider rewrites when both
  sides are explicitly constructed.
- Current sw-MLPL has no generic graph-rewrite matcher, topology/isotopy
  checker, or variable-arity homogeneous callable container. Lessons can remain
  honest with fixed graphs and explicit endpoint tables; a general string-
  diagram engine would require broader design work.
- CT121-CT123 and CT128 must reuse attributable algebra fixtures and leave the
  abstract-algebra classification ladder in the sibling repository.
- CT129 stays a boundary: finite relations and attractive diagrams are not
  evidence of Hilbert-space, probabilistic, or physical semantics.

## Development order

Implement current-support concepts first: CT110-CT112 semantic graphs and
interchange; CT113-CT115 cup/cap connectivity; CT116-CT118 bounded
trace/feedback; CT119-CT120 dagger with explicit coverage; CT121-CT123 finite
Frobenius/spider rewrites; CT124-CT129 process fixtures and the quantum boundary.
