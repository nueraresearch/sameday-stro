# Sameday STRO — Frontend Information Architecture v1

**Status:** build blueprint

## 1. Goal
Define the structure of the user-facing product surfaces so the team can build screens in a coherent order.

## 2. Product surfaces
- Host App / Portal
- Cleaner App / Portal
- Dispatch / Admin Console
- Shared Auth / Account Surface

## 3. Host portal IA
### 3.1 Primary navigation
- Dashboard
- Properties
- Bookings / Service Requests
- Quotes
- Subscriptions
- Billing
- QA & Job History
- Account
- Support / Disputes

### 3.2 Dashboard
Purpose:
- show current account health
- show upcoming jobs
- show pending issues
- show eligibility status

Key widgets:
- next scheduled service
- same-day eligibility
- deep-clean eligibility
- active subscription
- payment health
- recent invoices
- alerts / manual review notices

### 3.3 Properties
Property list view should show:
- property name/address
- verification state
- zone
- subscription / membership association
- calendar sync state
- next booking

Property detail tabs:
- Overview
- Details
- Access & Instructions
- Calendar
- Pricing Context
- Job History
- QA History

### 3.4 Service requests / scheduling
Views:
- request service wizard
- request detail page
- upcoming jobs list
- cancelled / failed requests list

### 3.5 Billing
Views:
- invoices
- saved payment methods
- subscription status
- refunds / credits
- surcharge history

### 3.6 Support / disputes
Views:
- disputes list
- dispute detail
- appeals / review outcomes

## 4. Cleaner app IA
### 4.1 Primary navigation
- Today
- Jobs
- Availability
- Earnings
- Onboarding
- Vehicles
- Score & Tier
- Account
- Support

### 4.2 Today screen
Purpose:
- show the current workday
- highlight urgent jobs
- show route order

Key widgets:
- next assignment
- route summary
- today's estimated earnings
- unresolved issues
- vehicle-in-use indicator

### 4.3 Jobs
Views:
- offers queue
- accepted jobs
- job detail
- completed jobs

Job detail sections:
- property summary
- access instructions
- payout breakdown
- route / ETA
- service checklist
- QA upload area
- issue report action

### 4.4 Onboarding
Views:
- checklist status
- identity step
- background step
- payout setup
- training progress
- activation state

### 4.5 Earnings
Views:
- payout ledger
- job-level pay breakdown
- bonuses
- held payouts

### 4.6 Score & Tier
Views:
- reliability score
- eligibility class
- recent incidents
- bonus cap / tenure tier
- appeal status

## 5. Dispatch / admin console IA
### 5.1 Primary navigation
- Live Queue
- Manual Review
- Jobs
- Hosts
- Cleaners
- QA
- Billing
- Restrictions & Appeals
- Analytics
- Settings / Policy

### 5.2 Live Queue
Show:
- pending service requests
- approved unassigned jobs
- jobs in progress
- jobs awaiting QA
- jobs in exception states

### 5.3 Manual Review
Show all items requiring human judgment:
- risky same-day requests
- outer-zone requests
- onboarding exceptions
- payment issues
- safety/risk ambiguities

### 5.4 Host and Cleaner management
Entity detail pages need fixed tabs so operators can work consistently.

Host tabs:
- Profile
- Properties
- Requests / Jobs
- Billing
- Restrictions
- Incidents
- Appeals

Cleaner tabs:
- Profile
- Onboarding
- Vehicles
- Availability
- Jobs
- QA / Incidents
- Payouts
- Restrictions
- Appeals

### 5.5 Analytics
Admin should have quick links to:
- pilot KPI dashboard
- margin reports
- acceptance / restriction reports

## 6. Shared patterns
All surfaces should support:
- audit-friendly status labels
- clear blocking reason messages
- empty states that explain next action
- notifications center
- searchable history where relevant

## 7. MVP IA boundary
Do not overbuild navigation early. MVP should ship only the pages required for:
- onboarding
- property setup
- quoting
- request creation
- job execution
- QA
- billing / payouts
- manual review
