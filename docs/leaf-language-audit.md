# Executable-leaf naming and docstring audit

Status: all 32 authored CLI/web lesson pairs audited on 2026-08-13.

Names now state the computation or equation route; docstrings state the
categorical role. Screen-position names were replaced by semantic routes when
they carried mathematical meaning, and visual constructors now say which law
their SVG witnesses rather than repeating their identifier.

Examples include `map_then_transpose` versus `transpose_then_map`,
`across_then_down_outputs` versus `down_then_across_outputs`,
`maps_composed_sequentially` versus `composition_mapped_once`, and
`factor_through_equalizer` versus `mediator_using_disagreeing_row`.

`scripts/check-leaf-language` prevents the old generated docstring template
and known cryptic assignment names from returning. It complements
`scripts/check-docstrings`, which enforces docstring-first definitions. Human
review still judges whether a categorical role is accurate.
