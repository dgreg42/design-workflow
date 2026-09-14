---
name: design-workflow
description: "Use when creating, starting, or scaffolding a new website, web app, dashboard, landing page, frontend, UI, component library, or design system, or when a project needs a design system set up or design guidance applied. Stamps the Design Workflow stack (RESEARCH.md research protocol, PRODUCT.md strategy, DESIGN.md tokens, and the Impeccable anti-tell detector) into the project, and enforces research before tokens plus a tell-free design protocol. Not for backend-only, data, or non-UI work."
---

# Design Workflow

Engage a consistent, on-brand, tell-free design system on any UI project by stamping in a shared
stack and then building strictly against it. Research comes before tokens, and every decision
carries a source.

## When to use

Trigger this whenever the user is about to create or work on a visual/frontend surface: a new
site, app, dashboard, landing page, component, or design system, or any request to "set up
design," "scaffold a design system," or make UI match a house style. Do not use it for
backend-only, data-pipeline, or non-visual tasks.

## What this skill does

It brings five things into the target project and then holds the build to them:

- `RESEARCH.md`: where design decisions are allowed to come from. Source priority, the
  reference lock, the decision ledger, research depth, and the no-averaging rule.
- `PRODUCT.md`: the strategic layer (register, users, personality, anti-references) wired so
  every anti-reference maps to a DESIGN.md Don't.
- `DESIGN.md`: the master design system (Google design.md format: YAML tokens + prose), tuned to
  carry none of the common AI tells.
- `.claude/skills/impeccable/`: the Impeccable skill, 23 commands plus a deterministic
  detector for AI tells.
- `CLAUDE.md`: the protocol every agent in the project must follow.

These are ordered on purpose. `RESEARCH.md` decides what goes into `DESIGN.md`; Impeccable
checks what came out. Without the research layer the model supplies its own taste from memory
and the detector spends its time cleaning up the result.

## Where the stack lives

The canonical stack is the Design Workflow repo on the workstation,
`D:\00_WORK\00_Projects\00_Developer\Design Workflow`, mirrored at
`https://github.com/dgreg42/design-workflow`. Per `workstation-first`, personal and Aster Grey
projects are stamped there, never on the Mac. The Mac copy at
`/Users/dan.gregoras/developer/Design Workflow` is only for BUCK projects worked on the Mac.

## Steps

1. **Identify the project directory.** If it is ambiguous or the project is brand new, confirm
   the target folder with the user before writing anything. For a personal project that is a
   folder under `D:\00_WORK\00_Projects\00_Developer` on the workstation.

2. **Stamp the stack in.** A cloud session has no shell on the workstation, so run the
   scaffolder in the sandbox and carry the result over:

   ```bash
   git clone https://github.com/dgreg42/design-workflow /tmp/design-workflow
   bash /tmp/design-workflow/scaffold-design.sh <sandbox copy of the project>
   ```

   Then `device_commit_files` the five items into the project folder on the workstation. Note
   that `.claude` is blocked for remote writes, so the Impeccable skill folder cannot be
   committed from a cloud session; stage those files beside the repo and have a `.cmd` copy
   them into place, or run the scaffolder on the machine itself. The scaffolder skips existing
   docs unless `--force` and validates the design system. It resolves its source to the
   directory it lives in, so a fresh clone needs no configuration. This skill's bundled
   `scripts/scaffold-design.sh` is a stale fallback only; if the clone fails, use it with
   `DESIGN_WORKFLOW_SRC` pointed at a staged copy of the stack. When a shell is available on the
   target machine (Claude Code on the workstation, or the Mac for BUCK), run the scaffolder
   there directly against the local stack.

3. **Read `PRODUCT.md`, then `RESEARCH.md`, then `DESIGN.md`.** Set or confirm the register
   (`product` or `brand`) with the user, since it forks every downstream decision. Fill in
   placeholders for a real project rather than leaving the template.

4. **Research before touching tokens.** Follow `RESEARCH.md`: search several angles, pull three
   or four references all the way through, pick one primary rather than averaging them, and
   write the reference lock and decision ledger before implementation. If the project has a
   governed brand record, it outranks anything research turns up.

5. **Build only from the system.** Pull every color, font, size, radius, and spacing value from a
   `DESIGN.md` token. If a value is missing, add it to `DESIGN.md` rather than hard-coding it.
   Keep source token roles intact: an accent that was a call to action in the reference stays a
   call to action here.

6. **Obey the Anti-Tells** (from `DESIGN.md` and `PRODUCT.md`): no overused fonts (Inter, Roboto,
   Geist, Mona Sans, Plus Jakarta Sans, Space Grotesk, Fraunces, Instrument, system stack), no
   purple/violet accent, no purple-to-cyan or text gradients, no cream ground, no pure #FFFFFF or
   #000000, no gray text on color, no icon-tile-above-every-heading, no cards nested in cards, no
   buzzword or em-dash copy.

7. **Validate before calling UI work done:**

   ```bash
   npx @google/design.md lint DESIGN.md
   node .claude/skills/impeccable/scripts/detect.mjs <rendered-output-path>
   ```

   When the Impeccable commands are available, prefer `/impeccable audit <target>`,
   `/impeccable critique <target>`, and `/impeccable polish <target>`. Resolve findings; do not
   ship a surface that still trips the detector. Clear the research gate at the end of
   `RESEARCH.md` in the same pass, and compare the rendered result against the locked reference.

## Notes

- Per-project copy by design: the stack travels with the repo, no machine-wide changes.
- Keep `PRODUCT.md` and `DESIGN.md` in sync. A new anti-reference in one is a new Don't in
  the other.
- Do not delete `.claude/skills/impeccable/`; the detector and commands depend on it.
- Research sources are ranked in `RESEARCH.md`. Refero MCP sits in that list and is optional;
  the protocol works without a subscription, using captures and user-supplied references.
  Refero content is licensed for design work, not for bulk extraction or for building a library
  of our own.
- Never write a `/Users/dan.gregoras/...` path into a personal project's files. If you find one,
  replace it with the `D:\` path and say so.
