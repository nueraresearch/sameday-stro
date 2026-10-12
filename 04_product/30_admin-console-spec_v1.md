# Sameday STRO — Admin / Dispatch Console Specification v1

**Status:** build blueprint

## 1. Goal
Provide the internal operating console for dispatch, support, QA, and admins.

## 2. Primary sections
### 2.1 Job Queue
Show:
- pending service requests
- approved unassigned jobs
- active jobs in progress
- jobs awaiting QA
- failed/problem jobs

### 2.2 Manual Review Queue
Show every request/job needing human approval because of:
- outer-zone same-day
- compressed SLA
- restricted/watchlist host
- watchlist cleaner
- payment risk
- safety ambiguity
- vehicle mismatch

Required actions:
- approve
- reject
- request more information
- reassign to another reviewer

### 2.3 Host Management
Show:
- host profile
- properties
- payment status
- restrictions
- incident history
- appeals
- service history

Actions:
- apply surcharge
- issue credit/refund
- restrict host
- lift restriction
- review disputes

### 2.4 Cleaner Management
Show:
- cleaner profile
- onboarding status
- training completions
- vehicle profiles
- score / incidents
- assignment history
- payout history

Actions:
- approve onboarding exception
- restrict cleaner
- lift restriction
- hold payout
- review QA trend

### 2.5 QA Console
Show:
- photo submissions
- jobs pending QA
- QA failures
- reclean queue

Actions:
- pass QA
- fail QA
- request reclean
- record issue type

### 2.6 Billing / Finance Console
Show:
- failed payments
- outstanding charges
- refunds/credits
- payout approvals/holds
- subscription status

### 2.7 Policy / Audit Console
Show:
- restrictions
- appeals
- override actions
- audit event stream

## 3. Required views for MVP
Minimum MVP admin views:
- manual review queue
- jobs list/detail
- host detail page
- cleaner detail page
- QA review queue
- billing failure list
- restriction management
- audit log detail for a job

## 4. Required detail page tabs
### Host detail page
- profile
- properties
- subscriptions
- payment methods (masked)
- restrictions
- incidents
- jobs
- disputes/appeals

### Cleaner detail page
- profile
- onboarding
- vehicles
- availability
- incidents
- restrictions
- jobs
- payouts
- appeals

### Job detail page
- property snapshot
- pricing breakdown
- payout breakdown
- SLA / risk snapshot
- assignment history
- QA assets
- incidents
- billing events
- audit trail

## 5. Guardrails
- Every override must require reason code.
- Every restriction/lift must create audit event.
- High-risk financial actions should require explicit confirmation.
- Sensitive payment details should never be fully exposed.
