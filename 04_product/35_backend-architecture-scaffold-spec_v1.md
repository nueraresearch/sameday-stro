# Sameday STRO — Backend Architecture Scaffold Specification v1

**Status:** implementation scaffold spec

## 1. Goal
Define how to structure the actual backend codebase so the team can start building without architecture drift.

## 2. Recommended service shape for MVP
Use a modular monolith first, not microservices.

Reason:
- one small team
- fast iteration
- shared schema
- easier policy enforcement
- easier audit/event consistency

Split by module boundaries inside one deployable backend.

## 3. Recommended module layout
- auth
- users
- hosts
- cleaners
- properties
- calendars
- pricing
- payouts
- subscriptions
- requests
- jobs
- routing
- qa
- governance
- notifications
- analytics
- audit

## 4. Suggested folder structure
```text
backend/
  app/
    api/
      routes/
      deps/
      middleware/
    core/
      config/
      security/
      db/
      logging/
    modules/
      auth/
      users/
      hosts/
      cleaners/
      properties/
      calendars/
      pricing/
      subscriptions/
      requests/
      jobs/
      routing/
      qa/
      governance/
      notifications/
      analytics/
      audit/
    models/
    schemas/
    services/
    events/
    workers/
    tests/
  migrations/
  scripts/
```

## 5. Module responsibilities
### auth
- registration
- login
- sessions/tokens
- password reset
- role resolution

### hosts
- host profile
- host eligibility summary
- host restrictions view

### cleaners
- cleaner profile
- onboarding state
- cleaner eligibility summary
- vehicle management

### properties
- property CRUD
- property verification workflow
- access metadata

### calendars
- calendar connections
- booking ingestion
- sync status

### pricing
- host pricing calculation
- cleaner payout calculation
- quote snapshots

### subscriptions
- payment methods
- plans
- renewals
- failed payment handling

### requests
- service request creation
- request approval/rejection
- request state transitions

### jobs
- job creation
- assignment state
- execution state
- completion state

### routing
- candidate cleaner selection
- SLA feasibility
- route-capacity checks
- manual-review recommendation

### qa
- photo intake
- QA review
- re-clean trigger

### governance
- incidents
- restrictions
- appeals
- reason codes
- policy checks

### notifications
- email/SMS/app notification queue

### analytics
- KPI event shaping
- reporting views

### audit
- append-only audit events

## 6. Background workers needed early
Use workers/jobs for:
- sending notifications
- calendar sync pulls
- payment webhook handling
- subscription renewal actions
- KPI aggregation jobs

## 7. Synchronous vs asynchronous split
### Synchronous
- auth
- quote generation
- service request submission
- cleaner accept/decline
- job status updates

### Asynchronous
- calendar sync
- notification send
- billing reconciliation
- payout export
- dashboard aggregation

## 8. Policy enforcement location
Policy checks should not live only in UI.
They must run in backend service layer before mutating state.

Examples:
- host cannot create restricted same-day request
- cleaner cannot accept blocked assignment
- dispatch override must require reason code

## 9. First implementation modules to scaffold
Create first:
- auth
- hosts
- cleaners
- properties
- pricing
- requests
- jobs
- audit

## 10. Definition of scaffold complete
Scaffold is complete when:
- modules exist
- routing exists
- db session/migrations exist
- auth exists
- test harness exists
- event writer exists
- first CRUD path works end to end
