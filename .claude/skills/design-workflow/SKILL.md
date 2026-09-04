---
name: design-workflow
description: Use when creating, starting, or scaffolding a new website, web app, dashboard, landing page, frontend, UI, component library, or design system, or when a project needs a design system set up or design guidance applied. Stamps the Design Workflow stack (DESIGN.md tokens, PRODUCT.md strategy, and the Impeccable anti-tell detector) into the project and enforces a tell-free design protocol. Not for backend-only, data, or non-UI work.
---

# Design Workflow

Engage a consistent, on-brand, tell-free design system on any UI project by stamping in a shared
stack and then building strictly against it.

## When to use

Trigger this whenever the user is about to create or work on a visual/frontend surface: a new
site, app, dashboard, landing page, component, or design system, or any request to "set up
design," "scaffold a design system," or make UI match a house style. Do not use it for
backend-only, data-pipeline, or non-visual tasks.

## What this skill does

It brings four things into the target project and then holds the build to them:

- `DESIGN.md` — the master design system (Google design.md format: YAML tokens + prose), tuned to
  carry none of the common AI tells.
- `PRODUCT.md` — the strategic layer (register, users, personality, anti-references) wired so
  every anti-reference maps to a DESIGN.md Don't.
- `.claude/skills/impeccable/` — the Impeccable skill: 23 commands plus a deterministic detector
  for AI tells.
- `CLAUDE.md` — the protocol every agent in the project must follow.

## Steps

1. **Identify the project directory.** If it is ambiguous or the project is brand new, confirm
   the target folder with the user before writing anything.

2. **Stamp the stack in.** Run the scaffolder (it copies the four items above, skips existing
   docs unless `--force`, and validates the design system):

   ```bash
   bash "/Users/dan.gregoras/developer/Design Workflow/scaffold-design.sh" <project-dir>
   ```

   The canonical source defaults to `/Users/dan.gregoras/developer/Design Workflow`. Override it
   with `DESIGN_WORKFLOW_SRC=/path bash .../scaffold-design.sh <project-dir>` if the stack lives
   elsewhere. If the canonical source is unavailable, use the copy in this skill at
   `scripts/scaffold-design.sh` with `DESIGN_WORKFLOW_SRC` pointed at a valid stack.

3. **Read `PRODUCT.md`, then `DESIGN.md`.** Set or confirm the register (`product` or `brand`)
   with the user, since it forks every downstream decision. Fill in placeholders for a real
   project rather than leaving the template.

4. **Build only from the system.** Pull every color, font, size, radius, and spacing value from a
   `DESIGN.md` token. If a value is missing, add it to `DESIGN.md` rather than hard-coding it.

5. **Obey the Anti-Tells** (from `DESIGN.md` and `PRODUCT.md`): no overused fonts (Inter, Roboto,
   Geist, Mona Sans, Plus Jakarta Sans, Space Grotesk, Fraunces, Instrument, system stack), no
   purple/violet accent, no purple-to-cyan or text gradients, no cream ground, no pure #FFFFFF or
   #000000, no gray text on color, no icon-tile-above-every-heading, no cards nested in cards, no
   buzzword or em-dash copy.

6. **Validate before calling UI work done:**

   ```bash
   npx @google/design.md lint DESIGN.md
   node .claude/skills/impeccable/scripts/detect.mjs <rendered-output-path>
   ```

   When the Impeccable commands are available, prefer `/impeccable audit <target>`,
   `/impeccable critique <target>`, and `/impeccable polish <target>`. Resolve findings; do not
   ship a surface that still trips the detector.

## Notes

- Per-project copy by design: the stack travels with the repo, no machine-wide changes.
- Keep `PRODUCT.md` and `DESIGN.md` in sync — a new anti-reference in one is a new Don't in the
  other.
- Do not delete `.claude/skills/impeccable/`; the detector and commands depend on it.
