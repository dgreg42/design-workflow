# Design Workflow

A design system plus the tooling that keeps AI-generated UI on-brand and free of
the common AI tells. It assembles five layers into one workflow.

## The stack

- **Research:** `RESEARCH.md`, the protocol that decides where a design decision is
  allowed to come from. Source priority, the reference lock, the decision ledger,
  research depth, and the rule against averaging references into a midpoint. It
  runs before tokens are set.
- **Format:** the [DESIGN.md](https://github.com/google-labs-code/design.md)
  spec (YAML tokens plus prose), validated and exported with the Google CLI.
- **Strategy and visuals:** a paired **PRODUCT.md** (who and why) and **DESIGN.md**
  (how it looks), wired so every anti-reference in PRODUCT.md maps to a Don't in
  DESIGN.md.
- **Enforcement:** the [Impeccable](https://impeccable.style) skill installed at
  `.claude/skills/impeccable/`, with 23 commands and a deterministic detector
  that flags AI tells (overused fonts, purple/gradient looks, cream grounds,
  gray-on-color, nested cards, buzzword copy).
- **Reference:** the awesome-design-md collection of real-brand DESIGN.md files,
  kept in Downloads as inspiration and starting templates.

The order matters. Research decides what goes into the design system; the detector
checks what came out of it. Without the research layer the model supplies its own
taste from memory, and enforcement spends its time cleaning up after that guess.

## Files

- **`RESEARCH.md`**: research protocol. Where decisions come from, how many
  references to pull, the reference lock and decision ledger templates, and the
  gate that has to clear before UI work is called done. No visual tokens here.
- **`PRODUCT.md`**: strategic layer. Register (product or brand), users,
  purpose, personality, anti-references, principles, accessibility. No visual
  tokens live here.
- **`DESIGN.md`**: the design system. Tokens plus rationale, including an
  Anti-Tells section. This is the file agents read to build UI.
- **`.claude/skills/impeccable/`**: the vendored Impeccable skill (project scope).
  Third-party, Apache 2.0, refreshed from upstream rather than edited.
- **`NOTICE.md`**: what is vendored, from whom, under which license.

## How to use it

1. **Fill in `PRODUCT.md`**: set the register and replace the placeholders with
   your users, purpose, personality, and anti-references.
2. **Do the research**: follow `RESEARCH.md`. Search several angles, pull three
   or four references all the way through, pick one primary rather than blending
   them, and write the reference lock before anything else.
3. **Fill in `DESIGN.md`**: replace the placeholder tokens with real colors,
   fonts, spacing, and components, each traceable to a row in the decision
   ledger. Mirror each PRODUCT.md anti-reference as a Don't.
4. **Validate the design system:**
   ```bash
   npx @google/design.md lint DESIGN.md
   ```
   Catches broken token references and WCAG contrast failures.
5. **Export tokens to your stack:**
   ```bash
   npx @google/design.md export --format css-tailwind DESIGN.md > theme.css
   npx @google/design.md export --format dtcg DESIGN.md > tokens.json
   ```
6. **Run the Impeccable commands** (reload the session so `/impeccable`
   registers): `/impeccable init` to refine PRODUCT.md and DESIGN.md by
   interview, `/impeccable audit <target>` and `/impeccable critique <target>`
   to review real pages against the detector rules.
7. **Clear the research gate** at the end of `RESEARCH.md` before calling the
   work done, and compare what was built against the locked reference.

## What is ours and what is vendored

Design Workflow is the root. Impeccable is a dependency inside it, not the other way around.
The plugin manifest names this repo, and `NOTICE.md` credits Impeccable, the design.md format,
and the Refero method that `RESEARCH.md` adapts. Treat `.claude/skills/impeccable/` as read-only:
refresh it from upstream and record the version in `NOTICE.md`. Anything this stack wants to
change about how enforcement behaves belongs in `CLAUDE.md` or `RESEARCH.md`, which sit above it.

## Research sources

`RESEARCH.md` ranks them. A governed client brand record wins outright, then
references the user supplied, then evidence captured for the project, then
[Refero](https://refero.design) via its MCP server, then the craft references.
Refero is optional and the protocol works without a subscription. Its content is
licensed for designing your own and clients' work, not for bulk extraction or for
building a library of our own; captures we make ourselves from public pages are
separate and are ours.

## Status

`PRODUCT.md` and `DESIGN.md` hold neutral, tell-free starter content. `DESIGN.md`
passes the Google linter with 0 errors and 0 contrast failures and carries none
of the AI tells (no Inter, no em dashes, tinted neutrals). `RESEARCH.md` is
complete and is not a template; it applies as written to every project the stack
is stamped into. Replace the PRODUCT.md and DESIGN.md placeholders to make the
system yours.
