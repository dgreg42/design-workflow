# Product

Strategic layer for the design system. PRODUCT.md says who the product is for and why it
exists. RESEARCH.md says where design decisions are allowed to come from. DESIGN.md says how it
looks. Keep the three separate: no colors, fonts, or spacing here, no strategy in DESIGN.md, and
no tokens in RESEARCH.md. The wiring rule: every entry under Anti-references below must appear
as a matching "Don't" in DESIGN.md, so the strategic line carries into the enforceable visual
spec. Research runs after this file is filled in and before DESIGN.md tokens are set. This file
is a fillable template. Replace the bracketed placeholders per product.

## Register

product

<!-- One bare value: `product` or `brand`.
     product = design SERVES the product (app UI, dashboards, tools, settings, data tables,
       authenticated task surfaces). Familiarity is a feature; the tool should disappear into
       the task.
     brand = design IS the product (marketing, landing, portfolio, campaign). Distinctiveness
       is the point.
     This single value forks the whole methodology, so set it deliberately. The master DESIGN.md
     ships product-leaning defaults (nav, forms, tables, app shells). Switch to `brand` and
     revisit the type scale (fluid display sizes) and color ambition. -->

## Users

[Who uses this, in one short paragraph. Their role, their fluency with the category's best
tools, what task they arrive to do, and what they already believe when they land. Be specific:
"finance ops analysts who live in spreadsheets and need to reconcile invoices fast" beats
"business users." Name the bar they judge you against.]

## Product Purpose

[What the product does and what success looks like, in two or three sentences. State the literal
job, not a slogan. Define success in observable terms: the user can complete X without help, the
interface passes review by someone fluent in the category. Avoid buzzwords.]

## Brand Personality

[A one-line character statement, then a three-word personality. Example shape: "Direct,
precise, and calm. It behaves like a well-made tool: no hype, no hand-holding, no surprises."
Three words: **[trait, trait, trait]**. These words guide voice and restraint, not specific
visual tokens.]

## Anti-references

The product must be the antithesis of the patterns it critiques. Avoid these. Each one maps to a
"Don't" in DESIGN.md (Anti-Tells and Don'ts sections):

- **Overused typefaces.** Inter, Roboto, Open Sans, Lato, Montserrat, Arial, Helvetica, Geist,
  Mona Sans, Plus Jakarta Sans, Space Grotesk, Fraunces, Instrument, or the raw system stack as
  the primary voice.
- **Purple-gradient AI look.** Purple or violet accents on headings, purple-to-cyan gradients,
  gradient applied to text, neon glow on dark, glassmorphism.
- **Cream and pure extremes.** Warm cream or beige page grounds, and pure #FFFFFF or #000000 as a
  surface. Tint every neutral.
- **Gray-on-color and low contrast.** Gray text on a colored fill; anything below WCAG AA.
- **Template layout tells.** A rounded-square icon tile above every heading, an eyebrow kicker on
  every section, numbered 01 / 02 / 03 markers, cards nested inside cards.
- **AI marketing copy.** Buzzwords (streamline, empower, supercharge, world-class,
  enterprise-grade, next-generation, cutting-edge), em-dash-heavy cadence, and "not just X, it is
  Y" pivots.

[Add product-specific anti-references here: named competitors or patterns this product should not
resemble. Whatever you add, mirror it as a Don't in DESIGN.md.]

## Design Principles

Strategic principles, not visual rules. These shape decisions the tokens do not cover.

1. **Earned familiarity.** For a product surface, the tool should disappear into the task. Use
   standard affordances for standard jobs; save invention for moments that genuinely need it.
2. **Practice what you preach.** The interface must pass its own anti-tell checks. If it would be
   flagged in an audit, it is not shipped.
3. **Show, do not tell.** Demonstrate quality through the interface itself, not through copy about
   quality.
4. **Purposeful restraint.** Every element earns its place. Nothing decorative without function,
   nothing included because a page "usually has that."
5. [Add a principle specific to this product's strategy.]

## Accessibility & Inclusion

Baseline: WCAG 2.1 AA on all surfaces. Commitments:

- Contrast ratios verified with real contrast checks, not by eye.
- Every interactive element is keyboard-navigable with a visible focus state.
- `prefers-reduced-motion` is respected for all motion.
- Semantic HTML first, ARIA as a supplement rather than a workaround.
- Copy readable at roughly an 8th-grade level; specialist terms only where they are the actual
  vocabulary the user needs.
