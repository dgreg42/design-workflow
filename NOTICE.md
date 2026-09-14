# Notice

Design Workflow is Dan Gregoras's design stack. It vendors third-party work, credited here.

## Impeccable

`.claude/skills/impeccable/` is [Impeccable](https://impeccable.style) by Paul Bakaus,
version 3.9.1, licensed Apache 2.0. Source: https://github.com/pbakaus/impeccable.

It is included unmodified as the enforcement layer of this stack: 23 commands and a
deterministic detector for AI tells. It is a dependency of Design Workflow, not the other way
around, which is why the plugin manifest at `.claude-plugin/plugin.json` names this repo rather
than Impeccable. Earlier versions of that manifest carried Impeccable's own identity, which
mislabeled the repo.

Do not edit files under `.claude/skills/impeccable/`. Refresh it from upstream instead, and
record the new version here. Anything this stack wants to change about how enforcement runs
belongs in `CLAUDE.md` or `RESEARCH.md`, which sit above it.

## DESIGN.md format

`DESIGN.md` follows the [design.md](https://github.com/google-labs-code/design.md) format from
Google Labs and is validated with its CLI, `npx @google/design.md lint DESIGN.md`.

## Everything else

`RESEARCH.md`, `PRODUCT.md`, `DESIGN.md`, `CLAUDE.md`, `scaffold-design.sh`, and the
`design-workflow` skill are original to this repo.

`RESEARCH.md` adapts the research-first method from the
[Refero skill](https://github.com/referodesign/refero_skill), which is MIT licensed. The method
was adapted; no Refero library content is included, and none may be. Refero's own content is
licensed for design work, not for bulk extraction or for building a competing dataset.
