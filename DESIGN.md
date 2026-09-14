---
version: alpha
name: Master
description: >-
  A master DESIGN.md: a synthesized, best-practice baseline that builds on the extended
  DESIGN.md format used across the awesome-design-md collection (Linear, Apple, Vercel, and
  50 others) and stays parseable by the Google design.md CLI. It is brand-neutral but fully
  realized: a single accent on a calm surface ladder, an accessible tinted-neutral ink scale,
  a two-face type system chosen to avoid overused-font tells, stacked-shadow elevation, and a
  superset of the sections real design systems document. Fork this file per product and
  overwrite the tokens. The structure, section order, conventions, and anti-tell guardrails
  are the reusable part.
colors:
  # Brand / accent: the single interactive color. Swap the hue, keep the role.
  primary: "#1D4ED8"
  primary-hover: "#1E40AF"
  primary-focus: "#3B82F6"
  on-primary: "#FCFCFD"
  # Text (ink): one tinted near-black plus a muted ladder. Never pure #000 on light.
  ink: "#111827"
  ink-muted: "#4B5563"
  ink-subtle: "#6B7280"
  ink-disabled: "#9CA3AF"
  # Surfaces (light): a four-step ladder carries hierarchy without heavy shadow.
  # Cool-tinted, never warm cream, never pure white.
  canvas: "#FCFCFD"
  surface-1: "#F5F7FA"
  surface-2: "#EDF0F4"
  surface-3: "#E2E6EC"
  # Surfaces (dark counterparts): for a shipped dark mode. Tinted, not pure black.
  canvas-dark: "#0B0F17"
  surface-dark-1: "#111827"
  surface-dark-2: "#1F2937"
  ink-on-dark: "#F5F7FA"
  ink-muted-on-dark: "#9CA3AF"
  # Hairlines and borders
  hairline: "#E2E6EC"
  hairline-strong: "#CDD3DC"
  # Semantic: status and feedback only, never decoration. Each has a soft fill.
  success: "#15803D"
  success-soft: "#DCFCE7"
  warning: "#B45309"
  warning-soft: "#FEF3C7"
  danger: "#B91C1C"
  danger-soft: "#FEE2E2"
  info: "#1D4ED8"
  info-soft: "#DBEAFE"
typography:
  display-xl:
    fontFamily: Bricolage Grotesque
    fontSize: 3rem
    fontWeight: 700
    lineHeight: 1.05
    letterSpacing: -0.02em
  display-lg:
    fontFamily: Bricolage Grotesque
    fontSize: 2.25rem
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: -0.02em
  display-md:
    fontFamily: Bricolage Grotesque
    fontSize: 1.75rem
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: -0.01em
  headline:
    fontFamily: Bricolage Grotesque
    fontSize: 1.375rem
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: -0.01em
  title:
    fontFamily: Hanken Grotesk
    fontSize: 1.125rem
    fontWeight: 600
    lineHeight: 1.35
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 1.125rem
    fontWeight: 400
    lineHeight: 1.6
  body:
    fontFamily: Hanken Grotesk
    fontSize: 1rem
    fontWeight: 400
    lineHeight: 1.6
  body-sm:
    fontFamily: Hanken Grotesk
    fontSize: 0.875rem
    fontWeight: 400
    lineHeight: 1.5
  caption:
    fontFamily: Hanken Grotesk
    fontSize: 0.75rem
    fontWeight: 500
    lineHeight: 1.4
  eyebrow:
    fontFamily: Hanken Grotesk
    fontSize: 0.75rem
    fontWeight: 600
    lineHeight: 1.3
    letterSpacing: 0.06em
  button:
    fontFamily: Hanken Grotesk
    fontSize: 0.875rem
    fontWeight: 600
    lineHeight: 1.2
  code:
    fontFamily: JetBrains Mono
    fontSize: 0.8125rem
    fontWeight: 400
    lineHeight: 1.5
rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 24px
  pill: 9999px
  full: 9999px
spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  xxxl: 64px
  section: 96px
components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  button-primary-hover:
    backgroundColor: "{colors.primary-hover}"
    textColor: "{colors.on-primary}"
  button-primary-disabled:
    backgroundColor: "{colors.surface-3}"
    textColor: "{colors.ink-muted}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  button-ghost:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  card-muted:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 10px 12px
    height: 40px
  input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
  badge:
    backgroundColor: "{colors.surface-2}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.caption}"
    rounded: "{rounded.pill}"
    padding: 2px 10px
  badge-info:
    backgroundColor: "{colors.info-soft}"
    textColor: "{colors.info}"
    typography: "{typography.caption}"
    rounded: "{rounded.pill}"
    padding: 2px 10px
  pricing-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xl}"
    padding: 32px
  pricing-card-featured:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body}"
    rounded: "{rounded.xl}"
    padding: 32px
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    height: 64px
    padding: 12px 24px
  footer:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.body-sm}"
    padding: 64px 24px
---

## Overview

This is a master DESIGN.md: a fully-realized, brand-neutral baseline that adopts the extended
format used across the awesome-design-md collection rather than reinventing it. The
collection's real systems (Linear's dark surface ladder, Apple's single-accent restraint,
Vercel's stacked-shadow elevation and semantic scale) converge on the same skeleton. This
file is that skeleton, filled in with accessible, opinionated defaults so a new project starts
from a coherent design sensibility instead of a blank page.

It is also built to carry none of the recognizable AI tells. Every default here is chosen
against the common giveaways: no overused typeface, no purple-to-cyan gradient accent, no warm
cream ground, no pure black or pure white, and prose written without the em-dash-and-buzzword
cadence that reads as machine-authored. The Anti-Tells section below states the rules the
system holds itself to.

The default mood is quiet utility: calm tinted-neutral surfaces, one saturated accent that
carries all interaction, high-contrast ink, and depth expressed through a surface ladder plus
restrained shadows. It reads as modern product software, legible first and decorative never.
Everything here is meant to be overwritten. Change the accent hue, swap the typefaces, retune
the scale, but keep the roles: one accent, a muted ink ladder, a four-step surface ladder, and
semantic colors reserved for status.

**Key Characteristics:**
- **Single accent** (`{colors.primary}`) drives every interactive element: buttons, links,
  focus rings. No second brand color competes with it.
- **Four-step surface ladder** (`{colors.canvas}`, `{colors.surface-1}`, `-2`, `-3`) carries
  hierarchy so most of the UI can stay flat.
- **Two-face type system**: Bricolage Grotesque for display, Hanken Grotesk for text and UI.
  Both are free, distinctive, and absent from the overused-font lists. JetBrains Mono is
  reserved for code.
- **Stacked, low-opacity shadows** for elevation, never a single heavy drop shadow.
- **Semantic colors** (`success`, `warning`, `danger`, `info`), each with a soft fill, are used
  only for status and feedback.
- **Dark-mode counterparts** are defined as tokens so a dark theme is a re-map, not a rewrite.

## Colors

The palette is anchored by high-contrast tinted neutrals plus a single accent. Every value below
is a placeholder role. Replace the hex, keep the semantics.

### Brand & Accent
- **Primary** (`{colors.primary}`, #1D4ED8): The one interactive color for primary buttons,
  links, active states, and the focus root. Use it sparingly so it stays meaningful. It is a
  placeholder blue, not purple or violet, so it avoids the purple-accent tell out of the box.
- **Primary Hover** (`{colors.primary-hover}`, #1E40AF): Deepened accent for hover and press.
- **Primary Focus** (`{colors.primary-focus}`, #3B82F6): Lighter accent for the focus ring.
- **On Primary** (`{colors.on-primary}`, #FCFCFD): Text and icons on accent fills. Slightly
  off pure white by intent.

### Text (Ink)
- **Ink** (`{colors.ink}`, #111827): Headlines and body on light surfaces. A cool-tinted
  near-black, never pure #000000, so the page reads designed rather than printed.
- **Ink Muted** (`{colors.ink-muted}`, #4B5563): Secondary text, captions, metadata.
- **Ink Subtle** (`{colors.ink-subtle}`, #6B7280): Tertiary text, placeholders, footnotes.
- **Ink Disabled** (`{colors.ink-disabled}`, #9CA3AF): Disabled labels only.

### Surface
- **Canvas** (`{colors.canvas}`, #FCFCFD): Base background and card fills. A cool near-white,
  tinted off pure #FFFFFF.
- **Surface 1** (`{colors.surface-1}`, #F5F7FA): One step up for app shells, grouped regions, footer.
- **Surface 2** (`{colors.surface-2}`, #EDF0F4): Two steps up for insets, badges, hovered rows.
- **Surface 3** (`{colors.surface-3}`, #E2E6EC): Three steps up for disabled fills and deep insets.
- **Hairline** (`{colors.hairline}`, #E2E6EC): 1px dividers and input outlines.
- **Hairline Strong** (`{colors.hairline-strong}`, #CDD3DC): Emphasized borders, focus outlines on neutral.

### Dark Mode
- **Canvas Dark** (`{colors.canvas-dark}`, #0B0F17): Dark base, a near-black with a cool tint, never #000.
- **Surface Dark 1 / 2** (`{colors.surface-dark-1}` #111827, `{colors.surface-dark-2}` #1F2937): The dark surface ladder.
- **Ink On Dark** (`{colors.ink-on-dark}` #F5F7FA) and **Ink Muted On Dark** (`{colors.ink-muted-on-dark}` #9CA3AF): Text on dark surfaces.

### Semantic
Each semantic color pairs a saturated tone (for text, icons, borders) with a soft fill (for
backgrounds). Reserve them strictly for status, never for brand or decoration.
- **Success** (`{colors.success}` #15803D on `{colors.success-soft}` #DCFCE7)
- **Warning** (`{colors.warning}` #B45309 on `{colors.warning-soft}` #FEF3C7)
- **Danger** (`{colors.danger}` #B91C1C on `{colors.danger-soft}` #FEE2E2)
- **Info** (`{colors.info}` #1D4ED8 on `{colors.info-soft}` #DBEAFE)

### Brand Gradient
None by default. This master ships flat, so depth comes from the surface ladder rather than
atmosphere. If your brand uses a gradient, add `gradient-*` stop tokens, keep it away from text
(gradient text on headings is a known tell), and treat it as one object used at hero scale only.

## Typography

### Font Family
The system uses two faces plus a monospace, a deliberate choice to avoid the single-overused-font
giveaway:
- **Bricolage Grotesque** carries display sizes (display-xl through headline). It has real
  character at large sizes while staying legible.
- **Hanken Grotesk** carries text and UI (title, body, captions, labels, buttons). It is warm,
  highly readable, and neutral enough to disappear into good reading.
- **JetBrains Mono** is reserved for code, terminal output, and tabular numerics.

The display and text faces read as one voice at a glance. The switch to mono is a semantic
signal that content is code, not a decorative flourish.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 3rem (48px) | 700 | 1.05 | -0.02em | Largest hero headline |
| `{typography.display-lg}` | 2.25rem (36px) | 700 | 1.1 | -0.02em | Section openers |
| `{typography.display-md}` | 1.75rem (28px) | 600 | 1.15 | -0.01em | Sub-section headlines |
| `{typography.headline}` | 1.375rem (22px) | 600 | 1.25 | -0.01em | Card titles, pricing tiers |
| `{typography.title}` | 1.125rem (18px) | 600 | 1.35 | 0 | Small headings, list titles |
| `{typography.body-lg}` | 1.125rem (18px) | 400 | 1.6 | 0 | Lead paragraphs |
| `{typography.body}` | 1rem (16px) | 400 | 1.6 | 0 | Default body |
| `{typography.body-sm}` | 0.875rem (14px) | 400 | 1.5 | 0 | Secondary body, nav, table rows |
| `{typography.caption}` | 0.75rem (12px) | 500 | 1.4 | 0 | Captions, metadata, badges |
| `{typography.eyebrow}` | 0.75rem (12px) | 600 | 1.3 | 0.06em | Section eyebrows (uppercase in use) |
| `{typography.button}` | 0.875rem (14px) | 600 | 1.2 | 0 | All button labels |
| `{typography.code}` | 0.8125rem (13px) | 400 | 1.5 | 0 | Code, mono numerics |

### Principles
- **Negative tracking on display, neutral on body.** Headlines tighten to -0.02em. Body stays at
  0 with a generous 1.6 line height for reading.
- **Weight ladder 400, 500, 600, 700.** Body 400, labels and captions 500 to 600, display 600 to
  700. Keep the steps distinct so hierarchy reads without color.
- **Eyebrows use positive tracking** (0.06em, uppercase) so they read as taxonomy against tight
  display headlines. Use them sparingly, since a kicker above every section is itself a tell.
- **Mono only in code contexts.** Body paragraphs never set in mono.

### Note on Font Substitutes
Bricolage Grotesque, Hanken Grotesk, and JetBrains Mono are open-source and free to ship. If you
adopt a brand face, keep these as the fallback and retune `letterSpacing`, since most brand sans
run slightly tighter or wider at display sizes. Good non-overused alternatives: for display,
Clash Display, Boska, or Schibsted Grotesk; for text, Public Sans, Manrope, or Albert Sans; for
mono, IBM Plex Mono. Avoid the faces that read as defaults now: Inter, Roboto, Geist, Mona Sans,
Plus Jakarta Sans, Space Grotesk, Fraunces, and the system stack.

## Layout

### Spacing System
- **Base unit:** 4px. Compose every gap and padding from the scale below, never from arbitrary values.
- **Tokens:** `{spacing.xxs}` 4px, `{spacing.xs}` 8px, `{spacing.sm}` 12px, `{spacing.md}` 16px,
  `{spacing.lg}` 24px, `{spacing.xl}` 32px, `{spacing.xxl}` 48px, `{spacing.xxxl}` 64px,
  `{spacing.section}` 96px.
- **Card padding:** `{spacing.lg}` 24px default, `{spacing.xl}` 32px for pricing and feature cards.
- **Section padding:** `{spacing.xxxl}` to `{spacing.section}` between major bands.

### Grid & Container
- **Max content width:** about 1200px with `{spacing.lg}` 24px gutters, 16px on mobile.
- **Card grids:** 3-up desktop, 2-up tablet, 1-up mobile.
- Prefer whitespace over borders to separate regions.

### Whitespace Philosophy
The surface ladder does the separating. Sections break by lifting onto `{colors.surface-1}`
rather than by adding rules and boxes. Keep interior spacing tight (`{spacing.xs}` to
`{spacing.sm}`) inside components and gaps generous (`{spacing.xxl}` and up) between sections.
Large gaps with tight interiors, not the reverse.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 Flat | No shadow, 1px `{colors.hairline}` border if needed | Default for most UI |
| 1 Raised | `0 1px 2px rgba(16,24,40,0.06)` plus inset hairline | Cards, raised tiles |
| 2 Overlay | `0 4px 8px rgba(16,24,40,0.08), 0 2px 4px rgba(16,24,40,0.06)` | Dropdowns, popovers |
| 3 Modal | `0 12px 32px rgba(16,24,40,0.12), 0 4px 8px rgba(16,24,40,0.08)` plus scrim | Dialogs, modals |

Use stacked, low-opacity shadows (several small offsets) rather than one heavy blur. It reads as
natural light and keeps the system calm. Keep an inset 1px hairline on elevated cards so edges
stay crisp. Most of the UI should sit flat. Reserve elevation for surfaces that truly float.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Full-bleed bands, edge-to-edge media |
| `{rounded.xs}` | 4px | Chips, small tags |
| `{rounded.sm}` | 6px | Inputs, dense buttons |
| `{rounded.md}` | 8px | Buttons, standard controls |
| `{rounded.lg}` | 12px | Cards, panels |
| `{rounded.xl}` | 16px | Large containers, pricing cards |
| `{rounded.xxl}` | 24px | Oversized feature panels (rare) |
| `{rounded.pill}` | 9999px | Badges, toggles, tabs |
| `{rounded.full}` | 9999px | Avatars, circular icon buttons |

Stay consistent within a component family. Do not mix radii on sibling elements, and avoid the
oversized 24px-plus rounding on general cards, which reads as a template default.

### Media Geometry
Imagery sits at `{rounded.lg}` inside cards, avatars use `{rounded.full}`, and full-bleed hero
media uses `{rounded.none}`. Maintain aspect ratios and do not crop product imagery to fit.

## Components

### Buttons
- **`button-primary`**: Accent fill, near-white label, `{rounded.md}`. The single highest-emphasis
  action per view. Hover deepens to `{colors.primary-hover}`. Disabled drops to `{colors.surface-3}`
  with `{colors.ink-muted}` text.
- **`button-secondary`**: Canvas fill with a `{colors.hairline}` border and ink label, for
  lower-emphasis actions beside a primary.
- **`button-ghost`**: Canvas fill, accent label, no border, for tertiary actions and toolbars.

Express states (`-hover`, `-disabled`, `-active`) as separate component entries rather than nesting.

### Cards & Containers
- **`card`**: Canvas fill, `{rounded.lg}`, 24px padding, Level 1 elevation. The default container.
- **`card-muted`**: Same on `{colors.surface-1}` for grouped or nested content. Avoid nesting a
  card inside a card, which is a common tell.
- **`pricing-card`** and **`pricing-card-featured`**: Tier cards. The featured tier flips to
  `{colors.ink}` with near-white text.

### Inputs & Forms
- **`input`**: Canvas fill, `{colors.hairline}` border, `{rounded.md}`, 40px height. Focus adds a
  2px `{colors.primary-focus}` ring (`input-focused`).

### Badges
- **`badge`**: Neutral pill on `{colors.surface-2}`. **`badge-info`** uses the info soft and
  saturated pair. Clone it for success, warning, and danger status.

### Navigation & Footer
- **`top-nav`**: Sticky canvas bar, 64px tall, with the wordmark left, links center, and a
  `button-secondary` plus `button-primary` pair right.
- **`footer`**: Dense link grid on `{colors.surface-1}` with muted ink.

## Motion

Motion earns its place by doing one of three jobs: confirming an action landed, carrying an
element from where it was to where it went, or pulling the eye to what changed. An animation
doing none of those is noise. When unsure, go shorter, subtler, or none.

### Duration

| Band | Value | Use |
|---|---|---|
| Fast | 120ms | Hover, press, focus ring, toggle |
| Default | 200ms | Accordion, tabs, small panels, tooltip |
| Slow | 320ms | Modal, drawer, route change |
| Extended | 360 to 500ms | Large layout reflow only, and rare |

Shorter distance means shorter duration. Higher frequency means shorter duration. Anything past
500ms in product UI reads as sluggish. If a user does it a hundred times a day, make it instant.

### Easing

| Motion | Curve | Why |
|---|---|---|
| Enter | `cubic-bezier(0, 0, 0.2, 1)` | Fast start, soft landing |
| Exit | `cubic-bezier(0.4, 0, 1, 1)` | Soft start, quick exit |
| State change | `cubic-bezier(0.4, 0, 0.2, 1)` | Even both directions |

Durations and easings live as raw CSS here for the same reason shadows do: the format has no
motion token type yet. Promote them to custom properties on export.

### Component Mapping

| Component | Duration | Easing |
|---|---|---|
| Hover, press | Fast | Enter |
| Accordion, tabs | Default | State change |
| Tooltip, popover | Fast | Enter |
| Modal, drawer | Slow | Enter in, Exit out |
| List row add | Default, fade plus 8px slide | Enter |
| List row remove | 180ms, fade plus collapse | Exit |

Press feedback is `scale(0.98)` at 90 to 120ms, never a bounce. Springs are for drag, swipe, and
gesture only, and must decay fast. Input errors shake once on submit, never on keystroke.

### Focus

Use `:focus-visible`, never bare `:focus`, so the ring appears for keyboard navigation and not
on every mouse click. The ring is a 2px `{colors.primary-focus}` outline at 2px offset, fading in
over the Fast band with no layout shift. Never remove an outline without replacing it: where a
custom ring is needed, stack two box shadows so the inner one is the surface color and the outer
one is `{colors.primary-focus}`. Compound controls such as an input with a leading icon take the
ring on the wrapper via `:focus-within`, not on the bare field.

### Reduced Motion

`prefers-reduced-motion` is honored on every surface, not added at the end. Under it, slide and
scale collapse to a plain fade, parallax and autoplay stop, and durations drop to the Fast band
or to zero. The interface must still communicate state change without the movement.

## Icons

Icons are typography, not decoration. Functional, consistent, and legible before anything else.

One set per product. Mixing libraries, or outline in the nav against solid in the buttons, reads
as a collage. Outline suits dense and data-heavy interfaces, solid suits consumer-facing actions.
Lucide is the sane default for web product UI; Heroicons pairs with Tailwind; Phosphor is the
choice when several weights are needed. Whatever is picked, document the canvas, stroke weight,
and cap style, and hold every custom glyph to that same grid.

### Sizing

| Context | Icon | Paired text |
|---|---|---|
| Inline with body, table cells, dense UI | 16px | 14 to 16px |
| Buttons, nav items, form inputs | 20 to 24px | 16 to 18px |
| Feature cards, empty states | 28 to 32px | Headings |

Stroke weight tracks size: 2px is the common default, 1.5px reads better large, 2.5px holds up
small. Match icon weight to text weight. Semibold text beside a hairline icon looks borrowed from
another system.

### Color and Contrast

Default to `currentColor` so icons inherit ink and follow a theme swap without a second set of
rules. Semantic color is for status only, using the `{colors.success}`, `{colors.warning}`, and
`{colors.danger}` pairs, never for emphasis. Any icon carrying meaning on its own meets 3:1
against its background, which covers icon buttons, toggles, and status glyphs.

### Optical Correction

Geometric center is not visual center. Play triangles shift right by half a pixel to one pixel,
chevrons and arrows shift toward the point. Circles read lighter than squares at the same stroke,
and diagonals read thinner than horizontals. Aim for equal visual mass, not equal measurement.

### Accessibility

An action icon carries an `aria-label` on its control or has visible text beside it. A decorative
icon is `aria-hidden="true"`. Icon buttons keep a 44px hit area on touch and 32px on pointer, and
the visual glyph may be smaller than the target. Before shipping, check the set at half scale, in
grayscale, on the dark surfaces, and inside a table row where icons most often overpower the text.

## Anti-Tells

Rules the system holds itself to so its output does not read as AI-generated. These mirror the
deterministic detector rules in the Impeccable skill installed alongside this project.

- **Fonts.** Never Inter, Roboto, Open Sans, Lato, Montserrat, Arial, Helvetica, Geist, Mona
  Sans, Plus Jakarta Sans, Space Grotesk, Fraunces, or Instrument. Use at least two distinct
  faces so no single overused family carries the page.
- **Color.** No purple or violet accent on headings, no purple-to-cyan gradient, and no gradient
  applied to text. Keep one solid accent.
- **Ground.** No warm cream or beige page background and no pure #FFFFFF or #000000. Tint every
  neutral, as the tokens above do.
- **Contrast and text-on-color.** No gray text on a colored fill. Meet WCAG AA (4.5:1 body,
  3:1 large text). Body line length stays near 65 to 75 characters.
- **Layout patterns.** No rounded-square icon tile stacked above every heading, no eyebrow kicker
  on every section, no numbered 01 / 02 / 03 section markers, no cards nested inside cards.
- **Copy.** No marketing buzzwords (streamline, empower, supercharge, world-class,
  enterprise-grade, next-generation, cutting-edge), no em-dash-heavy cadence, and no "not just X,
  it is Y" pivots. Say what the thing literally does.

## Do's and Don'ts

### Do
- Route all primary interaction through the single `{colors.primary}` accent.
- Build every gap, padding, and radius from the spacing and rounded scales.
- Use the surface ladder for hierarchy and keep most surfaces flat.
- Pair display weight 600 to 700 with body weight 400.
- Reserve semantic colors for status, each with its soft-fill partner.
- Define dark mode as a token re-map, not a separate design.

### Don't
- Introduce a second brand accent for decoration. Extend the tokens instead.
- Use #000000 as canvas or ink, or #FFFFFF as a ground. Use the tinted ladders.
- Drop a single heavy shadow. Stack low-opacity offsets.
- Set body copy in the mono face.
- Mix radii within a component family.
- Hard-code a value an agent could pull from a token reference.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 640px | Single column, nav collapses to a menu, display scales down about 30% |
| Tablet | 640 to 1023px | 3-up grids become 2-up, nav stays horizontal |
| Desktop | 1024 to 1279px | Full multi-column layout |
| Wide | 1280px and up | Content locks at about 1200px, bands may stretch, content holds max-width |

### Touch Targets
Interactive controls hold at least 44 by 44px on touch. Inputs and buttons inflate padding on
mobile to meet that floor.

### Collapsing Strategy
- **Nav:** links collapse to a menu below 640px.
- **Card grids:** 3-up, then 2-up on tablet, then 1-up on mobile.
- **Display type:** scales toward `{typography.display-md}` on mobile.

## Iteration Guide

1. Work on one component at a time and reference it by its `components:` token name.
2. Decide which surface level a new section lives on before styling it.
3. Default body to `{typography.body}` at weight 400.
4. Add variants (`-hover`, `-featured`, `-disabled`) as separate component entries.
5. Treat the accent as scarce: primary CTA, links, focus, active, nothing decorative.
6. Run `npx @google/design.md lint DESIGN.md` after edits, then export with
   `npx @google/design.md export --format css-tailwind DESIGN.md > theme.css`.
7. Check rendered pages against the Impeccable detector so no tell slips back in.

## Known Gaps

- Values are accessible neutral placeholders, not a shipped brand. Overwrite them.
- Dark-mode component entries are not enumerated. The dark tokens exist so you can add `-dark`
  variants when you build the theme.
- Shadow values live in the Elevation table as raw CSS, since the format has no shadow token type
  yet. Promote them to your framework's shadow scale on export.
- Motion, focus, and iconography are documented above as prose and raw CSS, since the format has
  no token type for duration, easing, or glyph specs. Promote them to your framework's own scales
  on export, the way the Elevation shadows are promoted.
