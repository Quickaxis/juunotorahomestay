---
name: antigravity-prompt
description: Write paste-ready Antigravity IDE prompts for building client websites under Octavium Core. Use this skill whenever Unmesh asks to build, generate, or write a prompt for a website — especially homestays, real estate, hospitality, clinics, restaurants, or any regional Northeast India business. Triggers on: "write the prompt", "antigravity prompt", "build this site", "create the prompt", "generate the site". Always produce a single, structured, paste-ready prompt block — never write the HTML/CSS directly unless explicitly asked.
---

# Antigravity Prompt Writing Skill

This skill produces structured, paste-ready prompts for the Antigravity IDE. Unmesh pastes the output directly into Antigravity and does not edit code manually — so prompts must be complete, precise, and self-contained.

---

## Core Principles

1. **Never write HTML/CSS directly** — write the *prompt* that Antigravity will use to generate the site.
2. **Always use CSS gradient placeholders** for images unless real photo URLs are provided.
3. **Always add `css filter: brightness(1.05) contrast(1.05)` on all `img` tags** — so real photos look good without manual editing.
4. **Never let Antigravity pick fonts or colors** — always specify them explicitly.
5. **Scope every instruction tightly** — include "do not change anything else" when making edits to prevent unintended side effects.
6. **Mobile responsive is mandatory** — always include hamburger nav, stacked cards, scaled hero text.
7. **WhatsApp booking is the default CTA** — use `wa.me/91XXXXXXXXXX` format.

---

## Standard Font Stack (Octavium Homestay/Hospitality Projects)

Always import from Google Fonts and declare explicitly:

```
Fonts (import from Google Fonts):
- Display/Logo: Cormorant Garamond — SemiBold Italic for brand name part 1, Regular for part 2
- Subheadings: Libre Baskerville — Regular and Italic
- Body/Nav/UI: Jost — Light 300, Regular 400, Medium 500
- Tracked uppercase labels: Jost 500, letter-spacing: 0.16em
```

**Never use:** Inter, Roboto, Arial, system fonts, Space Grotesk, Poppins (unless client specifically requests).

---

## Standard Color Variable Format

Always declare as CSS variables at the top of the prompt's styling section:

```css
--cream: [bg color]
--surface: [card/section bg]
--primary: [main brand color — headings]
--accent: [CTA, buttons, highlights]
--gold: [dividers, ornaments, labels]
--text: [body text dark]
--text-muted: [secondary text]
```

**Color rules:**
- Background is always a warm neutral (cream, ivory, off-white) — never pure white `#FFFFFF`
- CTAs/buttons always use the accent/terracotta color with white text
- Gold/muted metallic for ornamental dividers, labels, eyebrows
- Never use purple/violet on hospitality sites — that is Octavium Core brand only

---

## Prompt Structure Template

Every Antigravity prompt must follow this section order:

```
1. FONTS — Google Fonts import + usage declaration
2. COLORS — CSS variables with hex values
3. NAVBAR — sticky behavior, logo treatment, links, CTA button
4. HERO — full viewport, background treatment, heading, subtext, CTAs, optional ticker
5. ABOUT — two-column, image placeholder left, text right (or vice versa)
6. ROOMS / SERVICES / FEATURES — card grid with placeholders, prices, tags, CTA
7. AMENITIES — contrasting background section, icon grid (Material Icons CDN)
8. LOCATION — Google Maps embed (coordinates) + address details
9. REVIEWS — horizontal auto-scroll strip, CSS animation only (no JS libraries)
10. CTA BANNER — full width gradient, WhatsApp + Call buttons
11. FOOTER — 3 columns: logo+tagline / quick links / contact
12. BOOKING MODAL — triggered by all CTA buttons, WhatsApp + Call options
```

Sections can be reordered or removed based on project needs, but this is the default sequence.

---

## Image Placeholder Standard

When no real photos are available, use this pattern:

```
Image placeholder: a CSS gradient rectangle using [relevant brand colors], 
with centered label text "[Section Name / Room Name]" in Jost 300 white, 
font-size 0.9rem, letter-spacing 0.1em
```

**Never use:**
- Lorem picsum or any external image URL (unreliable)
- Emoji as placeholder
- Blank white/grey boxes

**When real photos are added later:**
- Add `style="object-fit: cover; filter: brightness(1.05) contrast(1.05);"` to all `<img>` tags
- This ensures photos look polished without manual editing

---

## Navbar Rules

```
- Position: fixed, top 0
- Default state: transparent background
- Scrolled state: solid [--cream] background + backdrop-filter blur(12px) + subtle bottom border in gold at 20% opacity
- Logo: brand name in Cormorant Garamond, "HOMESTAY" / tagline in Jost 300 tracked wide in [--gold]
- Nav links: Jost 500, uppercase, letter-spacing 0.16em
- CTA button: [--accent] background, white text, square corners (border-radius: 2px)
- Mobile: hamburger icon, full-screen dropdown or slide-in menu
```

---

## Hero Section Rules

```
- Height: 100vh minimum
- Background: CSS only — radial gradient warm glow, NO stock images in hero unless client provides URL
- Optional large watermark text (property name or city) at 4% opacity — creates depth
- Eyebrow label: location/category in Jost 500 uppercase tracked, [--gold] color
- Main heading: Cormorant Garamond SemiBold Italic, 4–5rem, [--primary] color
- Subtext: Jost 300, [--text-muted], max-width 520px
- Gold ornamental SVG divider between heading and CTAs
- CTA row: primary (WhatsApp, filled [--accent]) + secondary (Call, outlined [--accent])
- Optional scrolling ticker strip: [--primary] background, white Jost 300 text, CSS animation
```

---

## Room / Service Cards

```
- 3 cards per row on desktop, 1 on mobile
- Each card:
  - Image placeholder: CSS gradient (unique per room)
  - Optional badge top-left: "BEST VALUE" / "MOST POPULAR" in [--accent]
  - Room name: Cormorant Garamond SemiBold, 1.8rem, [--primary]
  - Price: Libre Baskerville, [--accent], prominent size
  - Feature tags: small pill badges in [--surface] with [--gold] border
  - CTA: full-width [--accent] button, "Book Now"
- Shared note below all cards for common amenities
```

---

## Booking Modal Standard

Every site must include a booking modal triggered by ALL CTA buttons:

```
- Overlay: semi-transparent dark background
- Modal card: [--surface] background, centered
- Heading: "Reserve Your Stay" — Cormorant Garamond
- Subtext: "We confirm within the hour."
- Option cards (not buttons):
  1. WhatsApp — opens wa.me/91XXXXXXXXXX — "Chat with us instantly"
  2. Primary Call — tel:+91XXXXXXXXXX
  3. Alternate Call (if second number provided)
- Close button: top-right X
```

---

## Google Maps Embed Format

```html
<iframe 
  src="https://www.google.com/maps?q=[LAT],[LNG]&z=17&output=embed"
  width="100%" height="400" 
  style="border:0; border-radius: 4px;" 
  allowfullscreen loading="lazy">
</iframe>
```

Always use coordinates, never rely on address string search.

---

## Scroll Animations

Use Intersection Observer (vanilla JS, no libraries):

```
- All sections: fade-in + slight translateY(20px) → translateY(0) on enter
- Stagger delay for card grids: 0.1s per card
- NO heavy animation libraries (AOS, GSAP) unless client specifically needs them
```

---

## SEO Block (always include in `<head>`)

```html
<title>[Property Name] | [City] | Best [Type] in [City]</title>
<meta name="description" content="[Property Name] in [City], [State]. [Brief tagline]. Book on WhatsApp: [number].">
<meta name="keywords" content="best [type] in [city], [property name], [city] accommodation">
<link rel="canonical" href="https://www.[domain].com/">

<!-- JSON-LD Schema -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LodgingBusiness",
  "name": "[Property Name]",
  "address": { "@type": "PostalAddress", "addressLocality": "[City]", "addressRegion": "Assam" },
  "telephone": "[number]",
  "url": "https://www.[domain].com"
}
</script>
```

---

## Common Mistakes to Avoid

| Mistake | Fix |
|---|---|
| Antigravity changes unrelated sections | Add "do not change anything else" to every edit prompt |
| Photos look dull | Add `filter: brightness(1.05) contrast(1.05)` to all `img` |
| Mobile overflow | Add `overflow-x: hidden` to body, use `max-width: 100%` on images |
| Generic fonts | Always explicitly name Cormorant Garamond + Jost + Libre Baskerville |
| WhatsApp link broken | Always use `wa.me/91XXXXXXXXXX` (no spaces, no dashes, with country code) |
| Map not loading | Use coordinates in iframe src, not address string |
| Cards uneven on mobile | Always add `grid-template-columns: 1fr` at mobile breakpoint |

---

## Project Reference Palette (saved clients)

| Client | Primary | Accent | Background | Gold |
|---|---|---|---|---|
| Junu Tora Homestay | `#2A4A2A` | `#7B2D14` | `#F5EDD8` | `#C9A060` |
| The White House Homestay | `#1A2E1A` | `#8B6914` | `#F8F4EC` | `#C9A84C` |
| Nirmaan Avakh | `#1A2B4A` | `#C8972B` | `#F8F5EE` | `#C8972B` |
| Northeast Healthcare | `#0A3D5C` | `#1A8C8C` | `#F0F8FF` | `#4A9E9E` |
| Octavium Core (brand) | `#8864F5` | `#8864F5` | `#0A0A14` | `#8864F5` |

---

# Impeccable Design Language Skill

Designs and iterates production-grade frontend interfaces. Real working code, committed design choices, exceptional craft.

## Setup

Before any design work or file edits:

1. Load context (PRODUCT.md / DESIGN.md) via the loader script.
2. Identify the register and load the matching register reference (brand.md or product.md).
3. **If the user invoked a sub-command (e.g. `craft`, `shape`, `audit`), load its reference file too.** This is non-negotiable: `craft` without `craft.md` loaded means you'll skip the shape-and-confirm step the user expects.

Skipping these produces generic output that ignores the project.

### 1. Context gathering

Two files, case-insensitive. The loader looks at the project root by default and falls back to `.agents/context/` and `docs/` if the root is clean. Override with `IMPECCABLE_CONTEXT_DIR=path/to/dir` (absolute or relative to cwd).

- **PRODUCT.md**: required. Users, brand, tone, anti-references, strategic principles.
- **DESIGN.md**: optional, strongly recommended. Colors, typography, elevation, components.

Load both in one call:

```bash
node scripts/load-context.mjs
```

Consume the full JSON output. Never pipe through `head`, `tail`, `grep`, or `jq`. The output's `contextDir` field tells you where the files were resolved from.

If the output is already in this session's conversation history, don't re-run. Exceptions requiring a fresh load: you just ran `/impeccable teach` or `/impeccable document` (they rewrite the files), or the user manually edited one.

`/impeccable live` already warms context via `live.mjs`. If you've run `live.mjs`, don't also run `load-context.mjs` this session.

If PRODUCT.md is missing, empty, or placeholder (`[TODO]` markers, <200 chars): run `/impeccable teach`, then resume the user's original task with the fresh context. If the original task was `/impeccable craft`, resume into `/impeccable shape` before any implementation work.

If DESIGN.md is missing: nudge once per session (*"Run `/impeccable document` for more on-brand output"*), then proceed.

### 2. Register

Every design task is **brand** (marketing, landing, campaign, long-form content, portfolio: design IS the product) or **product** (app UI, admin, dashboard, tool: design SERVES the product).

Identify before designing. Priority: (1) cue in the task itself ("landing page" vs "dashboard"); (2) the surface in focus (the page, file, or route being worked on); (3) `register` field in PRODUCT.md. First match wins.

If PRODUCT.md lacks the `register` field (legacy), infer it once from its "Users" and "Product Purpose" sections, then cache the inferred value for the session. Suggest the user run `/impeccable teach` to add the field explicitly.

Load the matching reference: [reference/brand.md](reference/brand.md) or [reference/product.md](reference/product.md). The shared design laws below apply to both.

## Shared design laws

Apply to every design, both registers. Match implementation complexity to the aesthetic vision: maximalism needs elaborate code, minimalism needs precision. Interpret creatively. Vary across projects; never converge on the same choices. Gemini is capable of extraordinary work. Don't hold back.

### Color

- Use OKLCH. Reduce chroma as lightness approaches 0 or 100; high chroma at extremes looks garish.
- Never use `#000` or `#fff`. Tint every neutral toward the brand hue (chroma 0.005–0.01 is enough).
- Pick a **color strategy** before picking colors. Four steps on the commitment axis:
  - **Restrained**: tinted neutrals + one accent ≤10%. Product default; brand minimalism.
  - **Committed**: one saturated color carries 30–60% of the surface. Brand default for identity-driven pages.
  - **Full palette**: 3–4 named roles, each used deliberately. Brand campaigns; product data viz.
  - **Drenched**: the surface IS the color. Brand heroes, campaign pages.
- The "one accent ≤10%" rule is Restrained only. Committed / Full palette / Drenched exceed it on purpose. Don't collapse every design to Restrained by reflex.

### Theme

Dark vs. light is never a default. Not dark "because tools look cool dark." Not light "to be safe."

Before choosing, write one sentence of physical scene: who uses this, where, under what ambient light, in what mood. If the sentence doesn't force the answer, it's not concrete enough. Add detail until it does.

"Observability dashboard" does not force an answer. "SRE glancing at incident severity on a 27-inch monitor at 2am in a dim room" does. Run the sentence, not the category.

### Typography

- Cap body line length at 65–75ch.
- Hierarchy through scale + weight contrast (≥1.25 ratio between steps). Avoid flat scales.

### Layout

- Vary spacing for rhythm. Same padding everywhere is monotony.
- Cards are the lazy answer. Use them only when they're truly the best affordance. Nested cards are always wrong.
- Don't wrap everything in a container. Most things don't need one.

### Motion

- Don't animate CSS layout properties.
- Ease out with exponential curves (ease-out-quart / quint / expo). No bounce, no elastic.

### Absolute bans

Match-and-refuse. If you're about to write any of these, rewrite the element with different structure.

- **Side-stripe borders.** `border-left` or `border-right` greater than 1px as a colored accent on cards, list items, callouts, or alerts. Never intentional. Rewrite with full borders, background tints, leading numbers/icons, or nothing.
- **Gradient text.** `background-clip: text` combined with a gradient background. Decorative, never meaningful. Use a single solid color. Emphasis via weight or size.
- **Glassmorphism as default.** Blurs and glass cards used decoratively. Rare and purposeful, or nothing.
- **The hero-metric template.** Big number, small label, supporting stats, gradient accent. SaaS cliché.
- **Identical card grids.** Same-sized cards with icon + heading + text, repeated endlessly.
- **Modal as first thought.** Modals are usually laziness. Exhaust inline / progressive alternatives first.

### Copy

- Every word earns its place. No restated headings, no intros that repeat the title.
- **No em dashes.** Use commas, colons, semicolons, periods, or parentheses. Also not `--`.

### The AI slop test

If someone could look at this interface and say "AI made that" without doubt, it's failed. Cross-register failures are the absolute bans above. Register-specific failures live in each reference.

**Category-reflex check.** Run at two altitudes; the second one catches what the first one misses.

- **First-order:** if someone could guess the theme + palette from the category alone ("observability → dark blue", "healthcare → white + teal", "finance → navy + gold", "crypto → neon on black"), it's the first training-data reflex. Rework the scene sentence and color strategy until the answer isn't obvious from the domain.
- **Second-order:** if someone could guess the aesthetic family from category-plus-anti-references ("AI workflow tool that's not SaaS-cream → editorial-typographic", "fintech that's not navy-and-gold → terminal-native dark mode"), it's the trap one tier deeper. The first reflex was avoided; the second wasn't. Rework until both answers are not obvious. The brand register's [reflex-reject aesthetic lanes](reference/brand.md) list catches the currently-saturated families.

## Commands

| Command | Category | Description | Reference |
|---|---|---|---|
| `craft [feature]` | Build | Shape, then build a feature end-to-end | [reference/craft.md](reference/craft.md) |
| `shape [feature]` | Build | Plan UX/UI before writing code | [reference/shape.md](reference/shape.md) |
| `teach` | Build | Set up PRODUCT.md and DESIGN.md context | [reference/teach.md](reference/teach.md) |
| `document` | Build | Generate DESIGN.md from existing project code | [reference/document.md](reference/document.md) |
| `extract [target]` | Build | Pull reusable tokens and components into design system | [reference/extract.md](reference/extract.md) |
| `critique [target]` | Evaluate | UX design review with heuristic scoring | [reference/critique.md](reference/critique.md) |
| `audit [target]` | Evaluate | Technical quality checks (a11y, perf, responsive) | [reference/audit.md](reference/audit.md) |
| `polish [target]` | Refine | Final quality pass before shipping | [reference/polish.md](reference/polish.md) |
| `bolder [target]` | Refine | Amplify safe or bland designs | [reference/bolder.md](reference/bolder.md) |
| `quieter [target]` | Refine | Tone down aggressive or overstimulating designs | [reference/quieter.md](reference/quieter.md) |
| `distill [target]` | Refine | Strip to essence, remove complexity | [reference/distill.md](reference/distill.md) |
| `harden [target]` | Refine | Production-ready: errors, i18n, edge cases | [reference/harden.md](reference/harden.md) |
| `onboard [target]` | Refine | Design first-run flows, empty states, activation | [reference/onboard.md](reference/onboard.md) |
| `animate [target]` | Enhance | Add purposeful animations and motion | [reference/animate.md](reference/animate.md) |
| `colorize [target]` | Enhance | Add strategic color to monochromatic UIs | [reference/colorize.md](reference/colorize.md) |
| `typeset [target]` | Enhance | Improve typography hierarchy and fonts | [reference/typeset.md](reference/typeset.md) |
| `layout [target]` | Enhance | Fix spacing, rhythm, and visual hierarchy | [reference/layout.md](reference/layout.md) |
| `delight [target]` | Enhance | Add personality and memorable touches | [reference/delight.md](reference/delight.md) |
| `overdrive [target]` | Enhance | Push past conventional limits | [reference/overdrive.md](reference/overdrive.md) |
| `clarify [target]` | Fix | Improve UX copy, labels, and error messages | [reference/clarify.md](reference/clarify.md) |
| `adapt [target]` | Fix | Adapt for different devices and screen sizes | [reference/adapt.md](reference/adapt.md) |
| `optimize [target]` | Fix | Diagnose and fix UI performance | [reference/optimize.md](reference/optimize.md) |
| `live` | Iterate | Visual variant mode: pick elements in the browser, generate alternatives | [reference/live.md](reference/live.md) |

Plus two management commands: `pin <command>` and `unpin <command>`, detailed below.

### Routing rules

1. **No argument**: render the table above as the user-facing command menu, grouped by category. Ask what they'd like to do.
2. **First word matches a command**: load its reference file and follow its instructions. Everything after the command name is the target.
3. **First word doesn't match**: general design invocation. Apply the setup steps, shared design laws, and the loaded register reference, using the full argument as context.

Setup (context gathering, register) is already loaded by then; sub-commands don't re-invoke `/impeccable`.

If the first word is `craft`, setup still runs first, but [reference/craft.md](reference/craft.md) owns the rest of the flow. If setup invokes `teach` as a blocker, finish teach, refresh context, then resume the original command and target.

## Pin / Unpin

**Pin** creates a standalone shortcut so `/<command>` invokes `/impeccable <command>` directly. **Unpin** removes it. The script writes to every harness directory present in the project.

```bash
node scripts/pin.mjs <pin|unpin> <command>
```

Valid `<command>` is any command from the table above. Report the script's result concisely. Confirm the new shortcut on success, relay stderr verbatim on error.
