---
name: OhMyFood Project Memory
description: Multi-page static site with CSS animations and PWA
type: Static Site
project: OhMyFood
category: Static Website
phase: Complete
updated: 2026-03-23
tags:
  - HTML5
  - CSS3
  - Animations
  - Responsive Design
  - PWA
  - Mobile-First
  - CSS Grid
  - Performance
---

# OhMyFood Memory Index

**Last Consolidated:** March 23, 2026

## Quick Reference

| Section | Purpose |
|---------|---------|
| [HTML Structure](html_structure.md) | Multi-page site, semantic markup, navigation |
| [CSS Architecture](css_architecture.md) | Variables, grid layouts, responsive design |
| [Animations](animations.md) | Menu hover effects, loading spinner, like button animation |
| [Responsive Layouts](responsive.md) | Mobile-first, breakpoints, flexible grids |
| [PWA Setup](pwa.md) | Service worker, manifest, installability |
| [Performance](performance.md) | Bundle optimization, image compression, metrics |
| [Typography](typography.md) | Font selection, sizing strategy, hierarchy |

## Project Overview

**OhMyFood** is a restaurant menu discovery platform with advanced CSS animations, multi-page navigation, and PWA support.

- **Tech Stack:** HTML5 + CSS3
- **Design:** Mobile-first responsive approach with desktop optimization
- **Animations:** Menu item hover effects, loading spinner, like button heartbeat
- **Layouts:** CSS Grid and Flexbox for flexible responsive design
- **Typography:** Roboto (body) and Shrikhand (headings) font pairing
- **PWA:** Service worker for offline access
- **Performance:** Optimized images, minified assets, lazy loading

## Phase & Status

- **Phase:** Complete
- **Memory Status:** ✅ Index created (documentation ready for archival)
- **Next Review:** June 23, 2026 (Quarterly)

## Key Learnings by Category

### HTML Structure
- **Multi-page Site:**
  - `index.html` — Home page with restaurant listings
  - `restaurant-[name].html` — Individual restaurant menus
- **Semantic HTML:** Proper heading hierarchy, nav elements, footer structure
- **Accessibility:** Alt text for images, proper form labels, skip links
- **Navigation:** Logo links to home, breadcrumbs on menu pages

### CSS Architecture
- **CSS Variables:** Define color palette, spacing, shadows
- **Color Scheme:**
  - Primary: #9356DC (purple)
  - Secondary: #FF6B6B (red)
  - Accent: #00D4FF (cyan)
  - Neutral: #F2F2F2 (light gray)
- **Spacing Scale:** 4px, 8px, 12px, 16px, 24px, 32px, etc.
- **Typography:** Roboto font-weight 300/400/700

### Responsive Design Strategy
- **Mobile (Default):** Single column, full-width, optimized touch targets
- **Tablet (768px):** Two-column layouts, adjusted spacing
- **Desktop (1024px):** Multi-column grids, expanded whitespace
- **Breakpoints:** Use `@media (min-width: 768px)` and `(min-width: 1024px)`
- **Font Sizes:** Responsive typography with larger on mobile

### CSS Grid Layout
- **Home Page Grid:**
  - 1 column mobile, 2 columns tablet, 3+ columns desktop
  - Auto-fit with minmax for flexible sizing
  - `grid-template-columns: repeat(auto-fit, minmax(300px, 1fr))`
- **Menu Page Grid:**
  - Single column cards, stacked vertically
  - Menu items in card layouts
  - Hover effects on interaction

### Animations & Transitions
- **Menu Item Hover:**
  - Scale slightly (1.02), shadow increase
  - Like button slides in from right
  - Price highlight on hover
  - Duration: 300-500ms
- **Loading Spinner:**
  - Rotating circle animation
  - Gradient colors cycling
  - Appears on page load, fades out
  - Duration: 1-2 seconds
- **Like Button Heartbeat:**
  - Click to activate, heart grows and shrinks
  - Color change from gray to pink
  - Keyframe animation with multiple steps
  - Duration: 500ms per beat

### Font Integration
- **Roboto:** Google Fonts CDN, weights 300/400/700
- **Shrikhand:** Google Fonts CDN, weight 400 (headings)
- **Font Loading:** Swap strategy to show content while fonts load
- **Fallback:** System fonts (sans-serif) if web fonts fail

### Responsive Images
- **Format Strategy:** Provide JPG for fallback, WebP for modern
- **Lazy Loading:** Add `loading="lazy"` to images below fold
- **Responsive Srcset:** Define multiple sizes for different screens
- **Picture Element:** Format variants for best performance
- **Optimization:** Compress before deployment

### PWA Setup
- **Service Worker:** Cache static assets (HTML, CSS, fonts)
- **Manifest.json:** App name, icons (192x192, 512x512), colors
- **Theme Color:** Consistent with brand (purple #9356DC)
- **Background Color:** Light background for app splash screen
- **Icons:** High-resolution PNG for various device sizes

### Performance Optimization
- **CSS:** Minify for production, critical CSS inlined if needed
- **HTML:** Minify markup, remove debug comments
- **Images:** Compressed, multiple formats (JPG + WebP)
- **Bundle Size:** Target < 150KB total
- **Metrics:**
  - LCP: < 2.5s
  - FID: < 100ms
  - CLS: < 0.1

## Related Files

- **HTML Pages:** `index.html`, `restaurant-*.html`
- **CSS:** `styles.css` or organized by component
- **Images:** `/images/` with optimized variants
- **Fonts:** Google Fonts CDN references
- **Service Worker:** `service-worker.js`
- **Manifest:** `manifest.json`
- **Project config:** CLAUDE.md (overview)

## Archive Preparation Checklist

- [x] Project complete, learning project concluded
- [x] CLAUDE.md created with project overview
- [x] MEMORY.md created with patterns documented
- [x] All animations implemented and tested
- [x] Responsive design verified across devices
- [ ] Ready for quarterly archive review (June 23, 2026)

---

**Next Step:** Archive after Q2 review. Consolidate into quarterly summary.
