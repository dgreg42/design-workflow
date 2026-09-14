# Research

The third strategy file. `PRODUCT.md` says who the work is for. `DESIGN.md` says what it is
made of. This file says where the taste came from, and it runs before either of the other two
is allowed to change.

The rest of the stack is built to catch bad output. The linter checks tokens, the Impeccable
detector flags tells, the Anti-Tells section lists what never to do. All of that is negative.
None of it tells an agent where a good decision comes from in the first place, so the model
falls back on its own averaged memory and the enforcement layer spends its day cleaning up
after a guess. This file replaces the guess.

## The rule

No design decision without a source.

Every major visual, layout, content, or interaction choice traces to one of three things: a
reference you looked at during this task, a constraint in `PRODUCT.md` or the client's brand
record, or a named craft rule. A choice with none of those three behind it is not a decision,
it is a default, and defaults are what make work look generated.

Research happens before tokens are set, before a mockup is drawn, and before a line of markup
is written. Not after, as justification.

## Sources

In priority order. Use the highest one available and say which you used.

1. **The client's brand record.** If the project has a governed record, it wins outright.
   Nothing below overrides a locked decision.
2. **References the user handed you.** A site, a screenshot, a competitor, a printed piece.
   His pick beats your search.
3. **Captured evidence.** Competitor, partner, and genuinely good pages captured for this
   project. Tagged, sourced, dated.
4. **Refero MCP**, when the subscription is live. `refero_search_styles` for visual
   direction, `refero_search_screens` for concrete patterns, `refero_search_flows` for
   multi-step journeys. Styles cover web marketing and product pages only, so use them for
   visual language and go to screens for product logic.
5. **Craft references.** The Anti-Tells in `DESIGN.md` and the Impeccable reference set.

The model's unaided memory is not on this list. It is the thing this file exists to replace.

A licensing note, because a future session will need it. Refero content is licensed for
designing your own and your clients' work. It is not licensed for bulk extraction, for
training or evaluating models, or for building a competing dataset or search index. Read what
it gives you, use it on the task in front of you, and do not harvest it into a library of our
own. Captures we make ourselves from public pages are a separate thing and are ours.

## The loop

1. Search three to five different angles, not one. Include one broad aesthetic query, one
   query for the category or industry, and one naming a product whose work is genuinely good.
2. Pull three or four references all the way through. Previews are not research.
3. Say what each one actually contributes. If you cannot name the contribution, drop it.
4. Pick one primary. Borrow one or two specific details from the others.
5. Write the reference lock before you build anything.

## Do not average

This is the rule that does the most work, so it gets its own heading.

When references disagree, pick one and keep it sharp. Do not blend them. If one reference is
dark and technical, one is acid and loud, and one is a quiet serif, the answer is not a warm
cream ground with a muted orange accent and a polite serif headline. That is the midpoint of
the three, it resembles none of them, and it is the single most reliable way to produce work
that looks machine-made while every individual rule passes.

The primary reference owns mood, density, and structure. Secondary references contribute
narrow details only, and each one gets a bounded job: this one owns the code window, that one
owns the primary button. Nothing moves outside its job. A color that was a call to action in
the source stays a call to action. A color that only ever appeared inside code stays inside
code. A decorative gradient does not become an interface surface.

If the primary reference leads with imagery, do not quietly convert it to a text layout
because the image is hard to make. Hold the slot at the right dimensions with a real art
direction note and say what belongs there.

## Reference lock

Write this before implementation. Paste it into the task, not into a file nobody reads.

```text
Primary reference:  [one dominant source, named]
Preserve:           [3-5 traits that must survive: ground, type, accent, layout, density, media]
Borrow only:        [1-2 specific details, each with the source it came from]
Role rules:         [token and component meanings to keep, e.g. accent is CTA-only]
Media strategy:     [real / generated / stock / code-native / placeholder, with aspect and direction]
Reject:             [the defaults or averages that would collapse this direction]
```

If the build drifts off the lock, stop and correct it. Drift is never neutral. It always runs
the same direction, toward safer color, softer radius, a more familiar section order, and a
more ordinary typeface.

## Decision ledger

Before implementation, every major choice gets a row. Four columns, no prose.

| Decision | Source | Role to preserve | Why |
|----------|--------|------------------|-----|
| | | | |

A choice with an empty Source column does not ship. Either go find the reference, tie it to a
constraint in `PRODUCT.md`, or take the choice out.

## Depth

Match the effort to what is at stake.

| Task | Angles searched | References pulled through | Also |
|---|---|---|---|
| Small visual fix, clear source to match | 0 to 2 | 0 to 1 | Lock the source, build |
| New page or surface | 3 | 3 | Screens for structure |
| New visual direction, landing page, rebrand | 3 to 5 | 3 to 4 | Screens and flows, three locked options for Dan to pick |
| High stakes or genuinely unclear | 5 | 4+ | Compare a strong reference against an unusual one, write the tradeoffs down |

For a new visual direction, produce three distinct reference-locked options and stop. Dan
picks. The chosen one becomes the build target and the thing the final QA pass is measured
against.

## The gate

`CLAUDE.md` will not let UI work be called done until these pass, alongside the linter and the
detector.

- Research happened before tokens were set, not after.
- One primary reference was chosen, not an average of several.
- The primary's signature traits survived into the build.
- Token and component roles from the source are intact.
- Imagery roles are held with real assets or an honest, well-sized placeholder.
- Every row of the decision ledger has a source.
- The references that shaped the work can be named out loud.

If any answer is no, it is not done. Go back one step rather than shipping and explaining.
