set shell := ["sh", "-cu"]

default:
    @just --list

tests *args:
    ./scripts/run-tests {{args}}

probes:
    ./scripts/run-probes

demos:
    ./scripts/run-all

web:
    ./scripts/build-web-demos

assets:
    ./scripts/build-assets

audit:
    ./scripts/validate-catalog catalog/demos.tsv
    ./scripts/validate-catalog catalog/tests.tsv
    ./scripts/check-docstrings
    ./scripts/check-narration
    ./scripts/check-web-size
    ./scripts/check-web-svg-convention
    ./scripts/check-generated
    ./scripts/check-visual-grammar
    ./scripts/check-curriculum-docs

check: probes demos tests audit
