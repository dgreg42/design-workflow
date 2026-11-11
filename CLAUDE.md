# Design Workflow Protocol

This project uses the Design Workflow stack. Any agent doing UI, frontend, or visual work here
MUST follow this protocol. It is not optional and applies before writing or editing any interface.

## On entering the project

1. **Read `PRODUCT.md` first.** It sets the register (`product` or `brand`), the users, the
   personality, and the anti-references. Register forks every downstream decision.
2. **Read `RESEARCH.md` next.** It sets where design decisions are allowed to come from. No
   decision without a source, research before tokens, and one primary reference rather than an
   average of several.
3. **Read `DESIGN.md` after that.** It is the single source of truth for colors, typography,
   spacing, radii, elevation, and components. Use its token names, never raw hex or ad-hoc values.
4. **Read the `Anti-Tells` section of `DESIGN.md`.** Treat every entry as a hard constraint.

## Before building UI

Research runs first, ahead of tokens and ahead of markup. Follow `RESEARCH.md`:

- Start in the reference library named in `RESEARCH.md` (case studies by market, logo
  sources, the draft logo rules). It is internal: studied, never shown, and nothing from it
  appears in the work.
- Search several angles and pull three or four references all the way through. Previews are
  not research.
- Choose one primary reference and borrow one or two named details from the others. Do not
  blend references into a midpoint.
- Write the reference lock and the decision ledger before implementation starts.
- Match research depth to what is at stake, using the table in `RESEARCH.md`.

If the project has a governed brand record, it outranks everything found in research.

## While building UI

- Pull every color, font, size, radius, and spacing value from a `DESIGN.md` token. If a value
  is missing, add it to `DESIGN.md` rather than hard-coding it.
- Keep source token roles intact. An accent that was a call to action in the reference stays a
  call to action here. Do not repurpose a role to fill a gap.
- Honor the Anti-Tells: no overused fonts (Inter, Roboto, Geist, Mona Sans, Plus Jakarta Sans,
  Space Grotesk, Fraunces, Instrument, system stack), no purple or violet accent, no
  purple-to-cyan or text gradients, no cream ground, no pure #FFFFFF or #000000, no gray text on
  color, no icon-tile-above-every-heading, no cards nested in cards, no buzzword or em-dash copy.
- Every anti-reference in `PRODUCT.md` is also a Don't. Keep the two files in sync: a new
  anti-reference in `PRODUCT.md` must appear as a Don't in `DESIGN.md`.
- If the build drifts off the reference lock, stop and correct it rather than softening the
  direction to match what was built.

## Before considering UI work done

- Clear the research gate at the end of `RESEARCH.md`. Every row of the decision ledger has a
  source, the primary reference's traits survived, and the references can be named.
- Run the design-system validator:
  ```bash
  npx @google/design.md lint DESIGN.md
  ```
- We use Impeccable for the tell check.
- Run the Impeccable detector on rendered output (HTML/JSX/pages) and resolve findings:
  ```bash
  node .claude/skills/impeccable/scripts/detect.mjs <path-or-dir>
  ```
- Or use the skill commands when available: `/impeccable audit <target>`,
  `/impeccable critique <target>`, `/impeccable polish <target>`.
- Compare the rendered result against the locked reference. Fix the drift you find instead of
  treating the research as proof the build is right.

## Source

This stack is stamped from the canonical Design Workflow at
`D:\00_WORK\00_Projects\00_Developer\Design Workflow`. To refresh it, re-run
`scaffold-design.sh` from there. Do not delete `.claude/skills/impeccable/`; the detector and
commands depend on it.
