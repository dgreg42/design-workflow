# Design Workflow Protocol

This project uses the Design Workflow stack. Any agent doing UI, frontend, or visual work here
MUST follow this protocol. It is not optional and applies before writing or editing any interface.

## On entering the project

1. **Read `PRODUCT.md` first.** It sets the register (`product` or `brand`), the users, the
   personality, and the anti-references. Register forks every downstream decision.
2. **Read `DESIGN.md` next.** It is the single source of truth for colors, typography, spacing,
   radii, elevation, and components. Use its token names, never raw hex or ad-hoc values.
3. **Read the `Anti-Tells` section of `DESIGN.md`.** Treat every entry as a hard constraint.

## While building UI

- Pull every color, font, size, radius, and spacing value from a `DESIGN.md` token. If a value
  is missing, add it to `DESIGN.md` rather than hard-coding it.
- Honor the Anti-Tells: no overused fonts (Inter, Roboto, Geist, Mona Sans, Plus Jakarta Sans,
  Space Grotesk, Fraunces, Instrument, system stack), no purple or violet accent, no
  purple-to-cyan or text gradients, no cream ground, no pure #FFFFFF or #000000, no gray text on
  color, no icon-tile-above-every-heading, no cards nested in cards, no buzzword or em-dash copy.
- Every anti-reference in `PRODUCT.md` is also a Don't. Keep the two files in sync: a new
  anti-reference in `PRODUCT.md` must appear as a Don't in `DESIGN.md`.

## Before considering UI work done

- Run the design-system validator:
  ```bash
  npx @google/design.md lint DESIGN.md
  ```
- Run the Impeccable detector on rendered output (HTML/JSX/pages) and resolve findings:
  ```bash
  node .claude/skills/impeccable/scripts/detect.mjs <path-or-dir>
  ```
- Or use the skill commands when available: `/impeccable audit <target>`,
  `/impeccable critique <target>`, `/impeccable polish <target>`.

## Source

This stack is stamped from the canonical Design Workflow at
`/Users/dan.gregoras/developer/Design Workflow`. To refresh it, re-run `scaffold-design.sh`
from there. Do not delete `.claude/skills/impeccable/`; the detector and commands depend on it.
