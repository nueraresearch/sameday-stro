# Sameday STRO — Recommended Stack Decision v1

**Status:** implementation decision draft

## 1. Recommendation
Use a pragmatic web stack optimized for fast iteration, auditability, and workflow-heavy business logic.

### Recommended stack
- **Frontend:** Next.js + TypeScript
- **Backend API:** FastAPI + Python
- **Database:** PostgreSQL
- **ORM / DB layer:** SQLAlchemy + Alembic
- **Background jobs:** Celery or RQ with Redis
- **Auth:** first-party email/password + session/JWT, with optional hosted auth later
- **Payments:** Stripe
- **File storage:** S3-compatible object storage
- **Infra:** Docker + managed cloud app hosting
- **Observability:** structured logs + Sentry + basic metrics

## 2. Why this stack fits
### Next.js + TypeScript
Good for:
- host portal
- cleaner portal
- admin/dispatch console
- shared component system
- fast dashboard and form work

### FastAPI + Python
Good for:
- pricing logic
- payout logic
- routing/risk policy logic
- data-heavy workflows
- KPI/report generation

This product is rules-heavy more than frontend-animation-heavy, so Python is a good fit.

### PostgreSQL
Best choice for:
- transactional workflows
- auditability
- joins across jobs, payouts, billing, restrictions, onboarding, QA
- analytics views for the pilot dashboard

## 3. What not to use first
Avoid for MVP start:
- microservices
- event-sourcing-only architecture
- multiple databases
- GraphQL-first API
- native mobile apps before web flows work
- serverless sprawl for core business logic

## 4. Frontend app recommendation
Use a monorepo with 3 web apps or 1 role-aware app.

### Safer MVP choice
- one shared Next.js codebase
- route groups or apps for:
  - host
  - cleaner
  - admin

This minimizes duplicated auth, components, and design system work.

## 5. Backend recommendation
Use a modular monolith with domain modules, not separate deployables at first.

This allows:
- shared transactions
- simpler enforcement of policy
- faster schema evolution
- easier onboarding for engineers

## 6. Infrastructure recommendation
### MVP environments
- local
- staging
- production

### MVP services
- web app hosting
- API hosting
- worker hosting
- managed Postgres
- managed Redis
- managed object storage

## 7. Decision summary
If no strong prior constraint exists, the best current implementation stack is:

**Next.js + TypeScript + FastAPI + PostgreSQL + Redis + Stripe + S3-compatible storage**
