# Sameday STRO — Platform Build Spec v1

**Status:** build blueprint  
**Purpose:** define the actual software platform that runs Sameday STRO operations with maximum automation and minimum manual dispatch intervention.

## 1. Product goal
Build the operating system for Sameday STRO so that:
- hosts self-onboard,
- hosts self-manage properties,
- hosts self-manage subscriptions and payment methods,
- hosts self-request and schedule eligible services,
- cleaners self-onboard,
- cleaners become eligible automatically when they complete all steps and meet policy requirements,
- the platform automates pricing, eligibility, routing, billing, payouts, QA capture, and governance as much as possible.

Manual work should be reserved for:
- exceptions,
- risk/manual-review cases,
- safety issues,
- disputes,
- payment failures,
- policy enforcement,
- operational override cases.

## 2. Product surfaces
The system has four main surfaces:

### 2.1 Host App / Portal
Hosts can:
- create accounts
- verify identity/contact info as required
- add and verify properties
- manage access instructions
- connect calendars
- choose membership tier
- add payment methods
- subscribe to plans
- request same-day / no-rush / deep-clean jobs
- request consumables
- see pricing before confirming
- view job history, QA evidence, invoices, and disputes

### 2.2 Cleaner App / Portal
Cleaners can:
- create accounts
- complete onboarding steps
- provide ID / background / vehicle / payout info
- complete training
- declare availability
- accept/decline jobs
- view routes and payout breakdowns
- submit photos and issue reports
- use vehicle override workflow
- track score, tier, incidents, bonuses, and payouts

### 2.3 Dispatch / Admin Console
Dispatch/admin can:
- see job queue
- see manual-review queue
- see host/cleaner restrictions
- approve/deny risky jobs
- override routes when policy permits
- manage disputes, refunds, surcharges, and locks
- review QA issues
- review onboarding exceptions
- view pilot KPI dashboard

### 2.4 Automation / Rules Backend
The backend performs:
- pricing calculation
- payout calculation
- host eligibility checks
- cleaner eligibility checks
- SLA feasibility checks
- routing and assignment
- risk gating
- subscription billing
- payout ledger generation
- score and incident updates
- notifications
- audit/event logging

## 3. Primary actors
- Host
- Cleaner
- Dispatch Agent
- Admin
- System

## 4. Core modules
### 4.1 Identity and access
- auth
- sessions
- MFA/verification if added later
- role-based access control

### 4.2 Host onboarding
- account creation
- payment setup
- property setup
- calendar sync
- policy acknowledgments
- service eligibility state

### 4.3 Cleaner onboarding
- identity verification
- background workflow
- vehicle workflow
- payout setup
- training/certification
- eligibility initialization

### 4.4 Property and listing management
- property profile
- declared vs verified data
- access methods
- parking/trash/pet/linen policy
- service defaults

### 4.5 Pricing engine
- base tier pricing
- modifiers
- mileage
- add-ons
- surcharge calculations
- host quote generation

### 4.6 Cleaner pay engine
- base cleaner pay
- mileage pay
- modifier shares
- add-on shares
- bonus calculation
- payout ledger items

### 4.7 Scheduling and job engine
- service request intake
- booking/calendar ingestion
- turnover creation
- scheduling windows
- recurring logic if added later

### 4.8 Eligibility and governance engine
- host eligibility
- cleaner eligibility
- score updates
- incident counters
- restrictions/locks
- manual-review flags

### 4.9 Routing and assignment engine
- cleaner matching
- SLA feasibility
- travel estimation
- route capacity checks
- assignment recommendations

### 4.10 QA and completion engine
- photo checklist
- completion workflow
- issue reporting
- re-clean flow
- quality scoring hooks

### 4.11 Billing, subscriptions, and payouts
- payment methods
- invoices
- subscription billing
- failed-payment handling
- payout records
- refund and surcharge processing

### 4.12 Notifications and communications
- host confirmations
- cleaner offers
- reminders
- late/access issue alerts
- manual review outcomes

### 4.13 Analytics and KPI layer
- pilot KPI dashboard
- job margin reporting
- cleaner earnings reporting
- acceptance and failure metrics

## 5. Core user journeys
### 5.1 Host self-onboarding
1. Host creates account.
2. Host verifies contact information.
3. Host adds payment method.
4. Host adds first property.
5. Host enters property details and access instructions.
6. Host connects calendar or chooses manual booking mode.
7. Host selects membership tier.
8. Host accepts service terms and policy acknowledgments.
9. System determines whether property is immediately eligible, needs review, or is incomplete.

### 5.2 Host self-scheduling
1. Host selects property.
2. Host chooses service type.
3. System calculates quote.
4. System evaluates eligibility and SLA feasibility.
5. If auto-eligible, host confirms booking.
6. System creates turnover and attempts automated assignment.
7. If review needed, request enters manual-review queue.

### 5.3 Cleaner self-onboarding
1. Cleaner creates account.
2. Cleaner provides identity info.
3. Cleaner completes background workflow.
4. Cleaner registers primary vehicle.
5. Cleaner enters payout/tax info.
6. Cleaner completes training modules.
7. System initializes score, counters, eligibility class, and bonus cap.
8. If all required steps pass, cleaner becomes active.
9. If something fails or is incomplete, cleaner enters onboarding review state.

### 5.4 Cleaner job completion
1. Cleaner accepts assigned job.
2. Cleaner travels to property.
3. Cleaner marks arrival.
4. Cleaner performs service.
5. Cleaner submits required evidence.
6. System runs completion checks and QA workflow.
7. System updates payout ledger, score inputs, and job status.

## 6. Automation boundary
### 6.1 Auto-approve where possible
System should auto-approve:
- standard host onboarding when all required fields pass
- standard cleaner onboarding when all checks pass
- low-risk job requests
- clean-path billing and payout flows
- low-risk renewals/subscriptions

### 6.2 Manual review where required
System should route to manual review when:
- same-day beyond threshold
- restricted host or watchlist host
- watchlist cleaner
- payment anomalies
- property verification mismatch
- onboarding verification failure
- vehicle mismatch
- safety flag
- high-complexity outer-zone jobs

## 7. Non-negotiable platform rules
1. Self-service is preferred, but policy gates always override convenience.
2. No host can self-schedule around restrictions or locks.
3. No cleaner becomes active without completing required minimum steps.
4. No same-day job is auto-confirmed unless it passes eligibility, SLA, and capacity checks.
5. Every automated decision must be auditable.

## 8. MVP intent
The MVP is not “everything in the doc bundle.”
The MVP is the smallest platform that can actually run pilot operations with real customers and cleaners under policy control.
