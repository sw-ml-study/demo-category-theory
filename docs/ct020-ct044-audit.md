# CT020-CT044 integration audit

Audited 2026-08-13 against CLI lessons, authored/generated web lessons,
tests, probes, README previews, and the capability matrix.

| IDs | Status | Executable evidence | Boundary |
|---|---|---|---|
| CT020-CT021 | implemented | Lesson 20 opposite relation and reversed composition | finite explicit category |
| CT022-CT024 | implemented | Lesson 21 initial, terminal, and pointed zero-object counts | zero is category-relative |
| CT025-CT026 | implemented | Lesson 27 universal arrow/element factorization | one named representable |
| CT027-CT028 | implemented | Lesson 26 commuting cone/cocone plus broken legs | one finite diagram |
| CT029-CT030 | implemented | Lessons 22-23 equalizer/coequalizer universality | bounded quotient labels |
| CT031-CT032 | implemented | Lessons 24-25 pullback/pushout universality | bounded join/merge |
| CT033-CT034 | implemented | Lesson 26 terminal/initial finite cone candidates | enumerated candidates |
| CT035-CT036 | constrained | definitions and explicit negative boundary | fixtures cannot prove all small (co)limits |
| CT037-CT040 | implemented | Lesson 27 representable/corepresentable hom action | named walking-arrow tables |
| CT041 | implemented for fixture | Lessons 27-28 distinct representable rows and Yoneda action | not generic embedding syntax |
| CT042 | implemented for fixture | Lesson 28 both round trips, naturality, and `20` versus `21` witness | one finite functor |
| CT043 | implemented | Lesson 28 `(A,10) -> (B,20)` category of elements | manual numeric encoding |
| CT044 | constrained | Lesson 28 reconstructs `[10,20]` from element rows | general density colimit not claimed |

No concept is silently omitted. Implemented rows have tests and visual
artifacts; constrained rows remain in the inventory and capability ledger.
`just check` is the authoritative artifact and law gate.

`agentrail audit` matched all eight active-saga steps and found no orphan
steps. It also reports historical work/metadata commits as orphan commits
because the audit associates one first-parent commit with each step; those
commits are retained history, not missing implementation work. The integration
working tree reported by the audit is this step and is committed before saga
completion.
