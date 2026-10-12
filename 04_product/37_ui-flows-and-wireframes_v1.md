# Sameday STRO — UI Flows and Wireframes v1

**Status:** build blueprint

## 1. Goal
Define the first critical user flows and the minimum screen sequence for each.

## 2. Host flows
### 2.1 Host registration flow
1. Landing / Sign up
2. Email + password
3. Phone verification
4. Account created
5. Payment setup prompt
6. Property setup prompt

### 2.2 Host onboarding flow
1. Property basics
2. Beds / baths / sqft
3. Access instructions
4. Parking / trash / pet / linen rules
5. Calendar connection
6. Membership selection
7. Review + confirm
8. Eligibility result screen

### 2.3 Quote and request flow
1. Select property
2. Select service type
3. Choose add-ons
4. Quote result
5. Eligibility check result
6. Confirm request
7. Success / review-pending state

### 2.4 Payment recovery flow
1. Payment failed alert
2. Billing detail
3. Replace / retry payment method
4. Retry success or review required

## 3. Cleaner flows
### 3.1 Cleaner registration flow
1. Sign up
2. Contact verification
3. Cleaner role selection
4. Onboarding checklist landing

### 3.2 Cleaner onboarding flow
1. Identity step
2. Background consent step
3. Vehicle step
4. Payout setup step
5. Training step
6. Review status
7. Active / pending review / blocked state

### 3.3 Job acceptance flow
1. New job offer card
2. Job summary
3. Payout summary
4. Accept / decline
5. Confirmation state

### 3.4 Job completion flow
1. Start job
2. Checklist / progress
3. Upload required photos
4. Report issues if needed
5. Complete job
6. Completion confirmation

## 4. Dispatch flows
### 4.1 Manual review decision flow
1. Queue list
2. Request detail with risk context
3. Approve / reject / request more info
4. Reason code modal
5. Outcome logged

### 4.2 Restriction flow
1. Entity detail page
2. Restrict action
3. Reason code + notes
4. Confirmation
5. Audit event + restriction visible

## 5. Wireframe outlines
### 5.1 Host dashboard wireframe
Top:
- account health bar
- subscription card
- payment status card

Middle:
- upcoming services
- property cards
- request service CTA

Bottom:
- invoices
- recent QA results
- support/dispute links

### 5.2 Cleaner today wireframe
Top:
- today's earnings estimate
- reliability score badge
- active vehicle

Middle:
- current / next job cards
- route sequence

Bottom:
- pending offers
- issue alert area

### 5.3 Manual review wireframe
Left pane:
- queue list

Right pane:
- request summary
- host status
- cleaner candidate status
- pricing snapshot
- risk / SLA snapshot
- action footer: approve / reject / escalate

## 6. MVP UI priority order
1. Host signup/login
2. Cleaner signup/login
3. Property create/edit
4. Cleaner onboarding checklist
5. Quote screen
6. Request confirmation screen
7. Cleaner offer / job detail screen
8. QA upload screen
9. Dispatch queue screen
