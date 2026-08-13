# Viewing the lessons

Each concept has two executable forms.

## Command-line lessons

Run all self-checking lessons and create SVG artifacts under `out/`:

```sh
just demos
```

The terminal arrays are the accessible, non-animated account of each law. The
SVG adds a diagram but is not the correctness oracle.

## Browser lessons

The generated standalone files under `web/` can be loaded in the sw-MLPL web
playground. Each transcript begins with `WHAT THIS SHOWS`, explains its visual
immediately before rendering it, and closes with `HOW TO READ THE RESULT` and
`THE POINT`.

```sh
just web
```

Custom diagrams follow one presentation sequence: a named constructor builds
the SVG, an assignment preserves it as a variable, and one bare-variable
expression displays it. Semantic connectors have arrowheads; a plain line is
reserved for non-directional layout or comparison.

Every animation has a meaningful final state and a
`prefers-reduced-motion: reduce` rule that displays that state without motion.

## README previews

`just assets` reruns the CLI lessons and copies their SVG outputs into
`assets/previews/`. `just check` regenerates both web files and previews in a
temporary directory and fails if committed outputs are stale.
