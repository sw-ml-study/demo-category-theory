# Visual grammar and accessibility

Every SVG lesson uses the same semantics, not merely the same palette:

- a blue outlined container is a categorical object or structured context;
- a circular token inside a container is an element or runtime value;
- a directed, labeled, solid path is a morphism or lawful route;
- a dashed path plus a `COUNTEREXAMPLE`, `DIFFERS`, or `BROKEN` label is a
  failed law; color reinforces but never carries that meaning alone;
- simultaneous route animation is reserved for laws about path equality; and
- dense ideas use progressive stages rather than one overloaded picture.

Each image has `role="img"`, a concise `<title>`, and a `<desc>` that states
the shared grammar. Motion-sensitive users receive the final state through
`prefers-reduced-motion`. Semantic arrows must have visible arrowheads and
labels such as `f`, `F(f)`, `eta_A`, `pi_1`, or a readable operation name.

The authored source is `demos/web/*.mlpl`; `web/*.mlpl` is generated. Run
`scripts/normalize-svg-accessibility` before rebuilding after adding a custom
SVG, and run `just check` to catch drift.
