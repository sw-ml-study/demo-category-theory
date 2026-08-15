# CT065-CT084 integration audit

Audited 2026-08-14 against the executable catalog, test catalog, browser
curriculum, preview assets, capability matrix, and concept inventory.

| IDs | Lesson | Result |
|---|---|---|
| CT065-CT066 | 36 finite exponentials | complete two-point function inventory and evaluation |
| CT067-CT070 | 37 finite currying | fixed 2-by-2 curry/uncurry with beta and eta round trips |
| CT071-CT073 | 38 closure boundary | internal hom/global element implemented; category-wide closure constrained |
| CT074-CT077 | 39 finite subobjects | bounded classifier, characteristic map, and partial-domain encoding |
| CT078-CT079 | 40 slices/coslices | directed base triangles with identity and composition checks |
| CT080-CT082 | 41 dependent constructions | finite Sigma/Pi tables; every-slice local closure constrained |
| CT083-CT084 | 42 polynomial containers | `1+X²` shapes/positions, arity witness, and payload map laws |

All twenty stable IDs have executable bounded evidence or an explicit failed
coverage witness for the stronger structural claim. Every lesson has a CLI
runner, browser leaf, test coverage, catalog entries, quality-manifest row, and
README preview. Generated web files and previews are reproducible.

The remaining limitations are stated rather than hidden: fixed arity,
enumerated functions and choices, runtime records instead of categorical
types, flat encoding for ragged fibers, and no inference from one fixture to
cartesian or locally cartesian closure. These are recorded in
`docs/sw-mlpl-capabilities.md` and `docs/upstream-asks.md` where applicable.

The next queued saga is CT085-CT109 in `docs/next-saga-plan.md`. Its first step
is a capability matrix and probes; tensor/coherence representation is not yet
assumed runnable.
