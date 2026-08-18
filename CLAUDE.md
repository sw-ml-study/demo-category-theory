# Repository agent instructions

Follow all workflow, safety, documentation, demo-quality, Agentrail, commit,
and push requirements in `AGENTS.md`.

## Mandatory MLPL source hygiene

- Every user-defined function in every `.mlpl` file must have an MLPL
  docstring as the first expression in its body.
- Before every commit and push, format every `.mlpl` file with
  `../sw-mlpl/scripts/mlpl-fmt.sh` and verify `--check` passes.
- Run the complete `just check` gate after formatting. Do not commit or push if
  formatting, docstrings, generated-file parity, or formatter-sensitive tests
  fail.
