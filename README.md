# somamandalmd.com — Website Redesign

This repository contains the complete redesign of [somamandalmd.com](https://somamandalmd.com), the website for **Dr. Soma Mandal, MD** — Board-certified Internist and Midlife Women's Health expert.

---

## 📁 Repository Structure

```
/
├── website/              ← The live website (served by Vercel)
│   ├── index.html        ← Homepage
│   ├── blog.html         ← Full blog page (10 articles)
│   ├── blog-images/      ← AI-generated blog header images (10 JPEGs)
│   └── assets/
│       ├── logos/        ← Brand logos, favicons
│       ├── images/       ← Headshots, book covers
│       └── documents/    ← Media kit, referral sheet PDFs
│
├── site-assets/          ← Source assets and reference materials
│   ├── ARTIFACT_REGISTRY.md     ← Full catalog of all site assets with CDN URLs
│   ├── youtube-catalog.md       ← All 55 YouTube videos catalogued
│   ├── Blog/                    ← Original blog articles as Word docs
│   ├── documents/               ← PDFs: media kit, resume, brand book
│   ├── images/                  ← Master copies of all images
│   └── logos/                   ← Master copies of all logos
│
├── SESSION_MEMORY.md     ← Full project history (Claude session log)
├── CLAUDE.md             ← Claude instructions for this project
├── vercel.json           ← Vercel deployment config
│
└── prompts/
    ├── prompt-soma-website-2026-03-14.md   ← Refined build prompt (v3)
    ├── prompt - soma website - v2.txt
    └── prompt - soma website.txt
```

---

## 🚀 Deployment

This site is deployed via **Vercel**. The `website/` folder is the output directory.

- `vercel.json` configures Vercel to serve from `website/`
- `/blog` rewrites cleanly to `blog.html`

---

## 🛠 Recreating the Website

To recreate or significantly modify the site, use the build prompt at:

```
prompt-soma-website-2026-03-14.md
```

This prompt contains:
- Brand specifications (colors, typography, voice)
- Asset reference table (all image/logo/document paths)
- Section-by-section content outline
- Quality checklist

Reference materials:
- `site-assets/ARTIFACT_REGISTRY.md` — all original CDN URLs from the Squarespace site
- `site-assets/youtube-catalog.md` — 55 YouTube videos with view counts
- `site-assets/documents/soma brand book.pdf` — full brand guidelines (21 pages)
- `site-assets/Blog/*.docx` — original blog articles

---

## 👩‍⚕️ About Dr. Soma Mandal

- **Specialty:** Midlife women's health, menopause, integrative medicine
- **Title:** Medical Director of Women's Health, Hackensack Meridian Health
- **Books:** *Dear Menopause, I Do Not Fear You!* · *Midlife Masala*
- **Podcast:** Soma Says (YouTube @SomaSays, Apple Podcasts, Podbean, iHeart)

---

*Last updated: 2026-03-22*
