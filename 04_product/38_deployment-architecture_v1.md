# Sameday STRO — Deployment Architecture v1

**Status:** build blueprint

## 1. Goal
Define a practical deployment shape for the MVP that supports real operations without overengineering.

## 2. Recommended deployment style
Use a simple cloud-hosted MVP stack with:
- one backend application service
- one relational database
- one object storage bucket for QA/media assets
- one background worker service
- one frontend host app
- one frontend cleaner app
- one admin/dispatch frontend

## 3. Logical architecture
### Frontends
- Host web app
- Cleaner web app (mobile-friendly)
- Admin/dispatch web app

### Backend
- API app
- Worker app
- Scheduled tasks / cron jobs

### Data services
- Postgres
- Object storage (photos, documents)
- Optional cache / queue later

### Third-party services
- payments processor
- email/SMS provider
- background-check provider later
- map/routing provider later if added

## 4. Environment strategy
Minimum environments:
- local
- staging
- production

### Local
Used for daily engineering work.

### Staging
Used for pre-production QA, workflow checks, and demos.

### Production
Used for pilot customers and cleaners.

## 5. Suggested hosting pattern
### Backend
Deploy API and worker separately, even if both use the same codebase.

### Database
Managed Postgres recommended.

### Storage
Managed blob/object storage for:
- QA photos
- vehicle photos
- identity docs if applicable

### Frontend
Deploy each frontend separately or as one app with role-aware routing if you keep it simple.

## 6. Security basics
- HTTPS everywhere
- secrets in environment/secret manager, never in repo
- DB backups enabled
- least-privilege access for ops/admin users
- signed URLs for sensitive assets
- audit logging on policy actions

## 7. Observability basics
MVP should include:
- request logging
- background job logging
- error tracking
- basic metrics
- DB backup monitoring
- uptime checks

## 8. Recommended first deployment milestone
You are ready for a first pilot deployment when you can:
- sign up a host
- sign up a cleaner
- create a property
- generate a quote
- create a request
- assign a cleaner
- complete a job with QA evidence
- record billing and payout ledger events
