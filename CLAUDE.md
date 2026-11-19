# OhMyFood

OpenClassrooms project: multi-page static restaurant-menu site (plain HTML, CSS and one JS file; no bundler, framework, backend or service worker). Customers pick a Paris restaurant and compose a menu in advance.

## Commands

- Viewing needs no build: open `index.html`.
- `pnpm install` installs dev tooling only (html-validate, stylelint, prettier, lightningcss-cli).
- `pnpm run lint`: html-validate on `*.html`, then stylelint on `*.css` (skips `*.min.css`).
- `pnpm run format` / `format:check`: Prettier on html, css, json, md.
- `pnpm run build:css`: regenerates `css/*.min.css` (style, loader, animation, restaurants). The pages link the minified files and CI checks they are in sync, so run it and commit the output after every CSS edit.

## Layout

- Pages: `index.html` (home) and `delice.html`, `francaise.html`, `note.html`, `palette.html` (menus).
- `css/style.css` holds `:root` variables (`--color-*`, `--font-*`, `--fs-*`, `--space-*`, `--size-*`), reset, header, cards, footer and the main breakpoints; `restaurants.css` the menu pages; `animation.css` shared keyframes; `loader.css` the overlay.
- `js/main.js` only drives `#scrollToTopBtn`. Images are in `restaurants/` (`.jpg` + `.webp`), icons in `favicons/`.

## Rules

- Breakpoints: 767/768px, 1024px, 1440px.
- Images use `<picture>` with WebP plus JPG fallback; index cards `loading="lazy"`, banners `fetchpriority="high"`.
- Every animation needs a `prefers-reduced-motion` fallback (the shared rule is in `animation.css`).
- Keep accessibility attributes: landmark `aria-label`s, `aria-labelledby` on cards, `aria-hidden="true"` on decorative Font Awesome icons; the heart icon is decorative, not a button.
- Adding a restaurant: card in `index.html`, a new page based on `delice.html`, photos in `restaurants/`, an entry in `sitemap.xml` and a `manifest.json` shortcut.
- Theme colors change in `:root` of `style.css` (primary `#9356dc` matches the manifest `theme_color`), then `build:css`.

## Known issues

- CI installs with `npm ci` and `cache: 'npm'` but only `pnpm-lock.yaml` exists.
- Hosted on GitHub Pages; no deploy workflow in the repo.
