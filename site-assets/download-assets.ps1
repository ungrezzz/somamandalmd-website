# Download all somamandalmd.com assets
# Run: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; .\download-assets.ps1

$BASE = Split-Path -Parent $MyInvocation.MyCommand.Path

function Get-Asset($url, $rel) {
    $dest = Join-Path $BASE $rel
    try {
        Invoke-WebRequest -Uri $url -OutFile $dest -UseBasicParsing
        Write-Host "  OK  $rel" -ForegroundColor Green
    } catch {
        Write-Host "  FAIL $rel : $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "Logos..." -ForegroundColor Yellow
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1567605931131-MTTF652M857RHU8U8MYC/Dr.Soma+Mandal+logo.png?format=1500w" "logos\logo-primary.png"
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/dc0d3b6b-4caa-4b4f-9b1b-c8676de0d69f/Grey+Blue+White+Clean+Cutout+Tech+%26+business+Podcast+Cover+-+1+%282%29.PNG" "logos\podcast-logo-soma-says.png"

Write-Host "Headshots..." -ForegroundColor Yellow
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1568398214399-4GTFP3J1IKLDJGJDBYUJ/dr-soma-mandal-menopause-expert.jpg" "images\headshots\headshot-main.jpg"

Write-Host "Hero images..." -ForegroundColor Yellow
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1567606035834-IW2AG4VTUWND3JOUV49Q/dr-soma-mandal-menopause-expert" "images\hero\hero-homepage.jpg"

Write-Host "Book covers..." -ForegroundColor Yellow
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1568398111761-WOUOF9IXLD104XQDFB1S/dr-soma-mandal-menopause-i-do-not-fear-you" "images\book-covers\dear-menopause-cover.jpg"
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/91f9522e-1b1f-4ed3-a3f6-f72d22a8cffb/AI+image+1+for+Midlife+Masala_+Menopause%2C+Mindset+%26+Magic+After+40_+A+guide+to+navigating+perimenopause+and+menopause+for+South+Asian+women+with+scie.png" "images\book-covers\midlife-masala-cover.png"

Write-Host "Misc..." -ForegroundColor Yellow
Get-Asset "https://images.squarespace-cdn.com/content/v1/5c8688e5755be26e01da6cd2/1609981867765-85ZDEO8G4Y5CRIFQZ74G/Screen+Shot+2021-01-06+at+6.23.50+PM.png" "images\misc\media-screenshot.png"

Write-Host "PDF documents..." -ForegroundColor Yellow
Get-Asset "https://www.somamandalmd.com/s/DrSomaMandal-MediaKit.pdf" "documents\DrSomaMandal-MediaKit.pdf"
Get-Asset "https://www.somamandalmd.com/s/Dr_Soma_Mandal_Menopause_Referral_Sheet_v2-1.pdf" "documents\Menopause-Referral-Sheet.pdf"
Get-Asset "https://www.somamandalmd.com/s/Dr-Soma-Mandal-Menopause-Expert-Resume-Sept19.pdf" "documents\Dr-Soma-Mandal-Resume.pdf"

Write-Host "Done. Check the site-assets folder for your files." -ForegroundColor Cyan
