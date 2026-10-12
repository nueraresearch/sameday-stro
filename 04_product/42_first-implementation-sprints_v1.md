# Sameday STRO — First Implementation Sprints v1

**Status:** implementation planning doc

## 1. Sprint model
Assume short MVP sprints focused on vertical slices.

## 2. Sprint 1 — Foundation + identity
### Goals
- monorepo created
- auth works
- database boots
- migration system works
- first users can register

### Scope
- repo scaffold
- frontend shell(s)
- backend shell
- Postgres connection
- Alembic migrations
- users + roles tables
- auth endpoints
- basic login/register UI
- audit event writer skeleton

### Done means
- host can register/login
- cleaner can register/login
- admin account can exist
- DB migrations run cleanly

## 3. Sprint 2 — Host + cleaner onboarding backbone
### Goals
- first real self-onboarding flows exist
- host can create property
- cleaner can complete onboarding checklist structure

### Scope
- host profile
- cleaner profile
- property CRUD
- payment method placeholder / Stripe integration start
- vehicle CRUD
- onboarding checklist states
- property verification state
- onboarding exception queue structure

### Done means
- host can add property
- cleaner can submit onboarding items
- incomplete onboarding blocks activation clearly

## 4. Sprint 3 — Quote + request + job creation
### Goals
- real quotes exist
- service request exists
- approved request becomes job

### Scope
- pricing engine
- payout share calculation
- quote endpoint
- quote UI
- service request state machine
- manual review flagging
- turnover job creation

### Done means
- host can request quote
- host can submit request
- system produces approved job or manual-review item

## 5. Sprint 4 — Assignment + execution
### Goals
- cleaner can receive work
- jobs can be completed with evidence

### Scope
- job offers
- accept/decline flow
- assignment records
- job detail screen
- arrival/start/complete actions
- QA uploads
- QA review queue

### Done means
- a cleaner can complete a job end to end
- QA evidence is saved

## 6. Sprint 5 — Money + policy
### Goals
- transactions become auditable
- restrictions work

### Scope
- billing events
- payout events
- subscription basics
- failed payment handling
- restrictions
- appeals skeleton
- admin manual-review controls

### Done means
- completed jobs create billing + payout records
- restricted host/cleaner behavior is enforced

## 7. Sprint 6 — Pilot readiness
### Goals
- pilot operations can be observed and tuned

### Scope
- KPI event instrumentation
- basic dashboard tables/views
- analytics exports
- smoke/regression test pack
- deployment hardening

### Done means
- weekly pilot review can be generated from live system data
