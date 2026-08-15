# Learning spine and prerequisite map

The curriculum is a prerequisite DAG, not merely a numbered playlist. A
narrative node introduces the problem, definition, notation, prior concepts,
categorical setting, and caveats. Its executable `.mlpl` leaf then assumes that
context and makes one claim run on concrete values. Optional deeper material
follows the executable witness.

```text
functions -> morphisms -> identity -> composition -> associativity
                                      |
                                      v
                              commutative diagrams
                               /                 \
                    products -> equalizers -> pullbacks
                    coproducts -> coequalizers -> pushouts
                               \                 /
                                limits / colimits

morphisms -> mapping -> array functor -> natural transformation
                                      -> representables -> Yoneda

composition -> context map -> Kleisli composition
            -> fold / unfold
            -> optics

products + functors -> diagonal/product adjunction

products + coproducts + exponentials -> slices
                                   -> dependent sums / products
                                   -> local-cartesian-closure boundary
```

## Guided paths

- **Beginner:** Lessons 1-9, then 20-26. Read the terminology entry before
  each leaf and treat every finite result as a witness, not a general proof.
- **Programming enthusiast:** Lessons 1-15, 16-18, then 20-32. Focus on the
  executable law, counterexample, and language-expression score.
- **Experienced FP programmer:** Lessons 7-19, then 27-32. Use earlier nodes
  only when a prerequisite link identifies a gap.
- **Category theorist:** Follow stable CT IDs in `docs/concept-inventory.md`;
  assess the finite encoding and sw-MLPL pressure rather than expecting a
  formalization system.

Numbering remains a convenient build order. The DAG is authoritative for
learning order. New concepts must identify their prerequisite nodes before an
executable leaf is implemented.

The generated browser directory includes `web/START_HERE.md`, sourced from
`docs/browser-learning-path.md`, so learners choosing files in the web editor
receive this context beside the executable leaves.
