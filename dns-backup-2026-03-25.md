# DNS Backup — somamandalmd.com
# Captured: 2026-03-25 from Squarespace DNS Settings
# URL: https://account.squarespace.com/domains/managed/somamandalmd.com/dns/dns-settings
# Domain Provider: Squarespace | Status: Active | Renews: April 7, 2027

---

## Squarespace Email Campaigns

| HOST | TYPE | PRIORITY | TTL | DATA |
|------|------|----------|-----|------|
| squarespace._domainkey | CNAME | 0 | 4 hrs | squarespace-domainkey.squarespace-mail.com |
| _dmarc | TXT | 0 | 4 hrs | v=DMARC1; p=none |

## Squarespace Defaults

| HOST | TYPE | PRIORITY | TTL | DATA |
|------|------|----------|-----|------|
| @ | A | 0 | 4 hrs | 198.49.23.145 |
| @ | A | 0 | 4 hrs | 198.185.159.144 |
| @ | A | 0 | 4 hrs | 198.49.23.144 |
| @ | A | 0 | 4 hrs | 198.185.159.145 |
| www | CNAME | 0 | 4 hrs | ext-sq.squarespace.com |

## Squarespace Domain Connect

| HOST | TYPE | PRIORITY | TTL | DATA |
|------|------|----------|-----|------|
| _domainconnect | CNAME | 0 | 4 hrs | _domainconnect.domains.squarespace.com |

## Google Workspace (EMAIL — DO NOT MODIFY)

| HOST | TYPE | PRIORITY | TTL | DATA |
|------|------|----------|-----|------|
| @ | MX | 1 | 4 hrs | aspmx.l.google.com |
| @ | MX | 5 | 4 hrs | alt1.aspmx.l.google.com |
| @ | MX | 5 | 4 hrs | alt2.aspmx.l.google.com |
| @ | MX | 10 | 4 hrs | alt3.aspmx.l.google.com |
| @ | MX | 10 | 4 hrs | alt4.aspmx.l.google.com |

## Google Workspace Verification

| HOST | TYPE | PRIORITY | TTL | DATA |
|------|------|----------|-----|------|
| @ | TXT | 0 | 4 hrs | google-site-verification=YCJrXUFVbvwC1TQQTouK9xnlqtlSTHZKoA3gPLYYXEU |

## Custom Records

None.

---

## What to change for Vercel migration

**DELETE (Squarespace Defaults):**
- All 4 A records (198.49.23.145, 198.185.159.144, 198.49.23.144, 198.185.159.145)
- www CNAME → ext-sq.squarespace.com

**ADD (Custom Records):**
- @ → A → 216.198.79.1 (Vercel's new recommended IP; 76.76.21.21 also works but is legacy)
- www → CNAME → eea218ee8bbc365c.vercel-dns-017.com. (project-specific Vercel CNAME)

**KEEP (do not touch):**
- All Google Workspace MX records (email)
- Google Workspace Verification TXT record
- Squarespace Email Campaigns records (DKIM/DMARC)
- Squarespace Domain Connect CNAME (_domainconnect)

## Rollback instructions

To revert to Squarespace, delete the Vercel custom records and re-add the "Squarespace Defaults" preset via the ADD PRESET button, or manually re-create the 4 A records and www CNAME listed above.
