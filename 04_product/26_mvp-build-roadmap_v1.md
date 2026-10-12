# Sameday STRO — MVP Build Roadmap v1

**Status:** build roadmap  
**Purpose:** define the implementation order for building the first real operating system for Sameday STRO.

## 1. Build philosophy
Do not build every idea at once.

Build in this order:
1. systems required to transact real jobs,
2. systems required to control risk,
3. systems required to optimize the business.

## 2. MVP definition
The MVP is the smallest platform that can:
- let a host create an account,
- let a host add a property,
- let a host add a payment method,
- let a host request service,
- let a cleaner self-onboard,
- let a cleaner become active after meeting minimum requirements,
- let the system price and create jobs,
- let dispatch review exceptions,
- let cleaners complete jobs,
- let the platform record billing, payout, and QA evidence.

## 3. Build phases
### Phase 0 — Foundation
Goal: create the project skeleton.

Deliverables:
- repo and environment setup
- auth foundation
- database schema foundation
- audit/event logging foundation
- role model foundation

### Phase 1 — Host onboarding and property setup
Goal: host can create a valid account and serviceable property.

Deliverables:
- host auth
- host profile
- payment method setup
- property creation/edit
- property verification workflow
- calendar connection placeholder or first integration
- membership subscription setup

Exit criteria:
- a host can fully self-onboard to the point of requesting service

### Phase 2 — Cleaner onboarding and activation
Goal: cleaner can self-onboard and become active when requirements are met.

Deliverables:
- cleaner auth
- identity verification intake
- vehicle profile flow
- payout/tax intake
- training completion tracking
- onboarding state machine
- probation / activation status

Exit criteria:
- a cleaner can self-onboard and reach active status without manual ops unless an exception occurs

### Phase 3 — Pricing and request intake
Goal: the system can quote and create service requests.

Deliverables:
- pricing engine
- payout-share engine
- quote endpoint
- service request creation
- service-request state machine
- host-facing quote UI

Exit criteria:
- host can request and confirm priced services

### Phase 4 — Routing, assignment, and manual review
Goal: convert approved requests into jobs and assignments.

Deliverables:
- job creation engine
- candidate cleaner selection
- manual-review queue
- assignment offer flow
- cleaner accept/decline flow
- dispatch override flow

Exit criteria:
- low-risk jobs auto-route
- risky jobs queue cleanly for dispatch

### Phase 5 — Job execution and QA
Goal: cleaners can complete jobs and the platform can validate completion.

Deliverables:
- arrival/start/complete workflow
- photo upload flow
- QA review flow
- issue reporting
- re-clean trigger path
- job closure logic

Exit criteria:
- completed jobs produce auditable QA evidence and final job state

### Phase 6 — Billing, payouts, and subscriptions
Goal: money flows are recorded correctly.

Deliverables:
- billing events
- failed payment handling
- payout events
- subscription renewals
- refund / credit admin actions
- surcharge admin actions

Exit criteria:
- every job has auditable revenue and payout records

### Phase 7 — Governance and restrictions
Goal: automate the control system.

Deliverables:
- incident events
- restrictions
- appeals
- reason codes
- lock/unlock flows
- host/cleaner eligibility responses

Exit criteria:
- policy enforcement works without ad hoc spreadsheet ops

### Phase 8 — KPI dashboard and pilot analytics
Goal: validate the model in live operations.

Deliverables:
- pilot KPI event model
- dashboard data pipeline
- dashboard views or exports
- weekly pilot scorecard

Exit criteria:
- team can compare planned vs actual performance and adjust policy

## 4. Recommended technical delivery slices
### Slice A — vertical host slice
Build a full thin path:
- register host
- add payment method
- create property
- request quote
- submit service request

### Slice B — vertical cleaner slice
- register cleaner
- submit onboarding data
- activate cleaner
- receive and accept a job

### Slice C — vertical job slice
- approve request
- create job
- assign cleaner
- complete job
- capture QA
- record billing and payout

These slices reduce the risk of building isolated modules that never transact together.

## 5. What not to overbuild first
Do not start with:
- advanced AI routing optimization
- multi-market scaling
- deep reporting suite before core event capture
- complicated loyalty systems
- non-essential automation before manual-review paths work

## 6. Suggested MVP backlog order
1. user/auth roles
2. host profile + payment method
3. property creation + verification state
4. cleaner profile + onboarding state
5. pricing engine
6. quote API + request API
7. job + assignment state machines
8. cleaner execution workflow
9. QA workflow
10. billing/payout ledger
11. manual-review queue
12. restrictions + audit events
13. KPI dashboard pipeline

## 7. First release acceptance criteria
The first real release is acceptable only if:
- a host can self-onboard end to end,
- a cleaner can self-onboard end to end,
- the system can quote a job correctly,
- the system can create a job and assign a cleaner,
- the cleaner can complete the job with QA evidence,
- billing and payout entries are generated,
- exceptions move into manual review,
- all critical actions are logged.

## 8. Immediate next engineering documents to produce
After this roadmap, the next most useful engineering artifacts are:
1. database schema draft
2. permission matrix
3. event taxonomy
4. admin console spec
5. payments/subscription spec
6. onboarding exception spec
