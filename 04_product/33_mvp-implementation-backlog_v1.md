# Sameday STRO — MVP Implementation Backlog v1

**Status:** implementation backlog

## 1. Objective
Turn the build specs into an actual implementation sequence for the first working system.

## 2. Delivery principle
Ship vertical slices that transact real work.

## 3. Epic list
1. Platform foundation
2. Host onboarding
3. Cleaner onboarding
4. Property and calendar setup
5. Pricing and quote engine
6. Service request and job creation
7. Assignment and dispatch review
8. Job execution and QA
9. Billing, subscriptions, and payouts
10. Governance and restrictions
11. KPI instrumentation

## 4. Backlog by epic
### Epic 1 — Platform foundation
#### Stories
- Set up repo, environments, and deployment targets
- Create backend service skeleton
- Create frontend app skeletons: host, cleaner, admin
- Create auth/session infrastructure
- Add audit/event logging framework
- Add config and secrets structure

#### Acceptance criteria
- App boots locally
- Auth works for all roles
- Event logging works for test actions

### Epic 2 — Host onboarding
#### Stories
- Host registration/login
- Host profile create/edit
- Payment method add/remove
- Property create/edit
- Property verification status tracking
- Terms/policy acknowledgment capture

#### Acceptance criteria
- Host can create account and reach a usable dashboard
- Host can add a property and payment method

### Epic 3 — Cleaner onboarding
#### Stories
- Cleaner registration/login
- Cleaner profile create/edit
- Identity verification intake
- Background consent intake
- Vehicle profile create/edit
- Payout/tax intake
- Training completion tracking
- Onboarding state machine implementation

#### Acceptance criteria
- Cleaner can self-onboard to active or pending-review state
- Missing steps block activation clearly

### Epic 4 — Property and calendar setup
#### Stories
- Calendar connection CRUD
- Manual booking entry path
- Booking import record model
- Property verification review screen

#### Acceptance criteria
- Property can exist with synced or manual booking workflow

### Epic 5 — Pricing and quote engine
#### Stories
- Implement base tier pricing
- Implement bathroom/bed modifiers
- Implement mileage pricing
- Implement add-on pricing
- Implement cleaner payout shares
- Build quote endpoint
- Build quote UI

#### Acceptance criteria
- Quote returns host price + cleaner payout breakdown + review flags

### Epic 6 — Service request and job creation
#### Stories
- Create service request endpoint
- Add service-request state machine
- Implement auto-approve vs manual-review rules
- Create turnover job from approved request

#### Acceptance criteria
- Host can request service and produce a job or review item

### Epic 7 — Assignment and dispatch review
#### Stories
- Cleaner availability model
- Candidate cleaner selection
- Manual review queue
- Offer / accept / decline flow
- Dispatch approve/reject workflow
- Assignment audit events

#### Acceptance criteria
- Auto-routable jobs assign cleanly
- Risky jobs go to dispatch queue

### Epic 8 — Job execution and QA
#### Stories
- Cleaner job detail screen
- Arrival / start / complete actions
- Photo upload flow
- Issue reporting flow
- QA review queue
- Re-clean handling

#### Acceptance criteria
- Cleaner can complete job and create QA evidence
- QA can pass/fail a completed job

### Epic 9 — Billing, subscriptions, and payouts
#### Stories
- Subscription create/update/cancel
- Billing event creation
- Charge success/failure handling
- Payout event generation
- Payout hold path
- Refund/credit path for admin

#### Acceptance criteria
- Completed jobs generate revenue + payout records
- Failed payments change host eligibility state

### Epic 10 — Governance and restrictions
#### Stories
- Incident event creation
- Restriction model + UI
- Appeals model + UI
- Manual unlock/lift workflow
- Policy reason codes

#### Acceptance criteria
- Hosts/cleaners can be restricted according to policy
- Appeals can be filed and decided

### Epic 11 — KPI instrumentation
#### Stories
- Emit KPI-critical events
- Build actual-vs-modeled job-cost capture
- Add dashboard data tables/views
- Add first pilot scorecard export

#### Acceptance criteria
- Weekly pilot review can be generated from live data

## 5. Suggested implementation order
### Phase A
- Epic 1
- Epic 2
- Epic 3

### Phase B
- Epic 5
- Epic 6

### Phase C
- Epic 7
- Epic 8

### Phase D
- Epic 9
- Epic 10
- Epic 11

## 6. Immediate engineering start checklist
- Pick stack
- Create repo
- Create database
- Create auth model
- Create schema migration system
- Build event log table and writer
- Build host/cleaner signup
- Build property CRUD
- Build quote engine

## 7. Definition of “build has begun”
Build officially begins when:
- repo exists,
- schema migrations exist,
- auth exists,
- first host can register,
- first cleaner can register,
- first quote can be generated.
