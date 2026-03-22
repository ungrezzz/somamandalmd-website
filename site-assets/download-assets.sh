#!/bin/bash
# Run this script on YOUR computer (not inside Cowork) to download all site assets
# Usage: bash download-assets.sh

BASE="$(dirname "$0")"

echo "Downloading somamandalmd.com assets..."

# --- LOGOS ---
echo "→ Logos..."
wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1567605931131-MTTF652M857RHU8U8MYC/Dr.Soma+Mandal+logo.png?format=1500w" \
  -O "$BASE/logos/logo-primary.png" && echo "  ✅ logo-primary.png"

wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/dc0d3b6b-4caa-4b4f-9b1b-c8676de0d69f/Grey+Blue+White+Clean+Cutout+Tech+%26+business+Podcast+Cover+-+1+%282%29.PNG" \
  -O "$BASE/logos/podcast-logo-soma-says.png" && echo "  ✅ podcast-logo-soma-says.png"

# --- HEADSHOTS ---
echo "→ Headshots..."
wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1568398214399-4GTFP3J1IKLDJGJDBYUJ/dr-soma-mandal-menopause-expert.jpg" \
  -O "$BASE/images/headshots/headshot-main.jpg" && echo "  ✅ headshot-main.jpg"

# --- HERO IMAGES ---
echo "→ Hero images..."
wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1567606035834-IW2AG4VTUWND3JOUV49Q/dr-soma-mandal-menopause-expert" \
  -O "$BASE/images/hero/hero-homepage.jpg" && echo "  ✅ hero-homepage.jpg"

# --- BOOK COVERS ---
echo "→ Book covers..."
wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1568398111761-WOUOF9IXLD104XQDFB1S/dr-soma-mandal-menopause-i-do-not-fear-you" \
  -O "$BASE/images/book-covers/dear-menopause-cover.jpg" && echo "  ✅ dear-menopause-cover.jpg"

wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/91f9522e-1b1f-4ed3-a3f6-f72d22a8cffb/AI+image+1+for+Midlife+Masala_+Menopause%2C+Mindset+%26+Magic+After+40_+A+guide+to+navigating+perimenopause+and+menopause+for+South+Asian+women+with+scie.png" \
  -O "$BASE/images/book-covers/midlife-masala-cover.png" && echo "  ✅ midlife-masala-cover.png"

# --- MISC ---
echo "→ Misc..."
wget -q "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1609981867765-85ZDEO8G4Y5CRIFQZ74G/Screen+Shot+2021-01-06+at+6.23.50+PM.png" \
  -O "$BASE/images/misc/media-screenshot.png" && echo "  ✅ media-screenshot.png"

# --- PDFs ---
echo "→ PDF documents..."
wget -q "https://www.somamandalmd.com/s/DrSomaMandal-MediaKit.pdf" \
  -O "$BASE/documents/DrSomaMandal-MediaKit.pdf" && echo "  ✅ DrSomaMandal-MediaKit.pdf"

wget -q "https://www.somamandalmd.com/s/Dr_Soma_Mandal_Menopause_Referral_Sheet_v2-1.pdf" \
  -O "$BASE/documents/Menopause-Referral-Sheet.pdf" && echo "  ✅ Menopause-Referral-Sheet.pdf"

wget -q "https://www.somamandalmd.com/s/Dr-Soma-Mandal-Menopause-Expert-Resume-Sept19.pdf" \
  -O "$BASE/documents/Dr-Soma-Mandal-Resume.pdf" && echo "  ✅ Dr-Soma-Mandal-Resume.pdf"

echo ""
echo "Done. Check site-assets/ for downloaded files."
