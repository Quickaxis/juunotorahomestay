# Implementation Plan - Rooms Section Redesign

We will completely redesign the rooms section of the Junu Tora Homestay website, including the room cards, facilities grids, styling, and the vanilla JS carousel logic.

## User Review Required

> [!IMPORTANT]
> - All carousel operations are implemented in vanilla JS without external libraries.
> - The global booking modal trigger relies on the `[data-room]` selector. The new "Book Now" buttons will retain their respective `data-room` values ("Junak", "Joon", "Nahor") to preserve modal logic.
> - Event handlers for the carousel arrows and dots will stop event propagation to avoid triggering any accidental parent click behaviors.

## Proposed Changes

### [HTML Markup]

#### [MODIFY] [index.html](file:///c:/Users/chitr/Downloads/my%20websites/Juuno%20Tora%20Homestay/index.html)
- Replace the elements inside `.rooms-grid` (lines 213–263) with three new `.room-card` elements.
- Each card will have:
  - An `.image-carousel` container containing:
    - Left and right arrow buttons (`.carousel-arrow`).
    - Two `.carousel-slide` elements (first with an image or gradient placeholder, second with a gradient placeholder).
    - A `.carousel-dots` container containing two dot indicators.
  - A `.room-details` container containing:
    - Room Name (`.room-name`) styled with `Cormorant Garamond` (and "BEST STAY" badge for Junak).
    - Short Description (`.room-description`).
    - Price tag (`.room-price`) with currency and period styling.
    - Facilities section including:
      - A flex row label "OUR FACILITIES" (`.facilities-header`) with gold lines.
      - A 2-column facilities grid (`.facilities-grid`) displaying the specific icons and labels for each room.
    - "BOOK NOW" button (`.room-book-btn`) with `data-room="[Room Name]"`.
- Replace the `.rooms-footer-note` (line 265) to apply updated classes/styles for the shared note.
- Add Javascript logic inside the main `<script>` tag (bottom of the file) to manage slide state, event listeners, active classes for slides/dots, and prevent event propagation on arrow/dot clicks.

### [CSS Styling]

#### [MODIFY] [styles.css](file:///c:/Users/chitr/Downloads/my%20websites/Juuno%20Tora%20Homestay/styles.css)
- Replace lines 631–752 with new CSS:
  - **Room Card Styling**: Glassmorphic styling with `border-radius: 24px`, `backdrop-filter: blur(12px)`, background `rgba(251, 247, 238, 0.75)`, border `1px solid rgba(201, 160, 96, 0.2)`, and shadow `0 4px 24px rgba(30, 26, 18, 0.06)`.
  - **Carousel Styles**:
    - `.room-carousel` container: `position: relative`, `height: 240px`, `border-radius: 20px 20px 0 0`, `overflow: hidden`.
    - Slide transitions: CSS opacity fade (`transition: opacity 0.4s ease; opacity: 0` for default, `opacity: 1` for active class).
    - Navigation arrows: `rgba(245,237,216,0.85)` background circles, hidden by default, visible on hover over `.room-carousel`.
    - Carousel dots: aligned at the bottom center of the carousel, size `8px` circles with color transition.
  - **Details Styling**:
    - Custom typography for `.room-name`, description, and `.room-price`.
    - BEST STAY badge styling for Junak: background `#7B2D14`, white text, border-radius 999px.
  - **Facilities Styling**:
    - Thin gold divider lines and tracked small label style.
    - 2-column CSS Grid template.
    - Material icons: size `1.1rem`, color `#7B2D14`, and Jost labels.
  - **Book Now Button**:
    - Full width, background `#7B2D14`, color white, border-radius `12px`, padding `0.9rem`, and `margin-top: auto` to align at the bottom.
  - **Shared Note**:
    - Centered, `border-top: 1px solid rgba(201,160,96,0.2)`, padded and spaced.

## Verification Plan

### Automated/Manual Verification
- Open the updated website in a browser.
- Verify carousel slide switching by clicking left/right arrows on all three cards.
- Verify dot indicator state updates and that clicking dots switches slides.
- Hover over the carousel area to check that navigation arrows fade in, and disappear when cursor leaves the area.
- Verify that clicking "BOOK NOW" successfully opens the booking modal for the correct room type.
- Check responsiveness by sizing down the screen, validating that the 3-column rooms layout smoothly transitions to 2-columns (with centered 3rd card) and 1-column on mobile.
