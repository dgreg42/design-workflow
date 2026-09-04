# Design Workflow

A design system plus the tooling that keeps AI-generated UI on-brand and free of
the common AI tells. It assembles four layers into one workflow.

## The stack

- **Format:** the [DESIGN.md](https://github.com/google-labs-code/design.md)
  spec (YAML tokens plus prose), validated and exported with the Google CLI.
- **Strategy + visuals:** a paired **PRODUCT.md** (who and why) and **DESIGN.md**
  (how it looks), wired so every anti-reference in PRODUCT.md maps to a Don't in
  DESIGN.md.
- **Enforcement:** the [Impeccable](https://impeccable.style) skill installed at
  `.claude/skills/impeccable/`, with 23 commands and a deterministic detector
  that flags AI tells (overused fonts, purple/gradient looks, cream grounds,
  gray-on-color, nested cards, buzzword copy).
- **Reference:** the awesome-design-md collection of real-brand DESIGN.md files,
  kept in Downloads as inspiration and starting templates.

## Files

- **`PRODUCT.md`** — strategic layer: register (product or brand), users,
  purpose, personality, anti-references, principles, accessibility. No visual
  tokens live here.
- **`DESIGN.md`** — the design system: tokens plus rationale, including an
  Anti-Tells section. This is the file agents read to build UI.
- **`.claude/skills/impeccable/`** — the installed Impeccable skill (project
  scope).

## How to use it

1. **Fill in `PRODUCT.md`** — set the register and replace the placeholders with
   your users, purpose, personality, and anti-references.
2. **Fill in `DESIGN.md`** — replace the placeholder tokens with your real
   colors, fonts, spacing, and components. Mirror each PRODUCT.md anti-reference
   as a Don't.
3. **Validate the design system:**
   ```bash
   npx @google/design.md lint DESIGN.md
   ```
   Catches broken token references and WCAG contrast failures.
4. **Export tokens to your stack:**
   ```bash
   npx @google/design.md export --format css-tailwind DESIGN.md > theme.css
   npx @google/design.md export --format dtcg DESIGN.md > tokens.json
   ```
5. **Run the Impeccable commands** (reload the session so `/impeccable`
   registers): `/impeccable init` to refine PRODUCT.md and DESIGN.md by
   interview, `/impeccable audit <target>` and `/impeccable critique <target>`
   to review real pages against the detector rules.

## Status

`PRODUCT.md` and `DESIGN.md` hold neutral, tell-free starter content. `DESIGN.md`
passes the Google linter with 0 errors and 0 contrast failures and carries none
of the AI tells (no Inter, no em dashes, tinted neutrals). Replace the
placeholders to make it yours.
