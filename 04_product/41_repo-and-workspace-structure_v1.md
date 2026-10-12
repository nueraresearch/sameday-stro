# Sameday STRO — Repo and Workspace Structure v1

**Status:** implementation planning doc

## 1. Recommendation
Use a monorepo.

## 2. Why monorepo
This project has tightly coupled concerns:
- shared pricing logic references
- shared API contracts
- shared role/auth patterns
- shared design system
- shared event names
- shared governance rules

A monorepo reduces contract drift.

## 3. Suggested structure
```text
sameday-stro/
  apps/
    web/
      host/
      cleaner/
      admin/
    api/
    worker/
  packages/
    ui/
    types/
    config/
    api-client/
    pricing-rules/
    policy-constants/
  infra/
    docker/
    deploy/
    monitoring/
  docs/
    product/
    operations/
    governance/
  sql/
    migrations/
    seeds/
  scripts/
  tests/
    e2e/
    fixtures/
```

## 4. App responsibilities
### apps/web
Contains the frontend surfaces.

### apps/api
Contains:
- API routes
- service layer
- domain modules
- DB models
- auth
- audit/event creation

### apps/worker
Contains async/background jobs:
- notifications
- calendar sync
- subscription renewals
- KPI aggregation

## 5. Shared packages
### ui
Reusable design system components.

### types
Shared TS types and DTO contracts.

### api-client
Frontend clients for backend endpoints.

### pricing-rules
Non-secret shared constants and helper references, but backend remains authoritative.

### policy-constants
Shared enums and reason codes.

## 6. Workspace conventions
- backend is authoritative for business logic
- frontend never independently decides policy outcomes
- shared packages may define types/constants, not authoritative pricing or eligibility rules
- migrations live in one place
- docs stay versioned in repo

## 7. Branching guidance
Recommended early workflow:
- `main`
- short-lived feature branches
- PR reviews required once team > 1

## 8. First repo setup tasks
- initialize monorepo
- add formatter/linter
- add test runner
- add env templates
- add migration tooling
- add CI skeleton
