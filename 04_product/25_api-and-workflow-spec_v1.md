# Sameday STRO — API and Workflow Specification v1

**Status:** build blueprint  
**Purpose:** define the first-pass API surface and the main automated workflows for the platform.

## 1. API style
Use a JSON API over HTTPS with authenticated role-based access.

Recommended structure:
- `/auth/*`
- `/hosts/*`
- `/cleaners/*`
- `/properties/*`
- `/bookings/*`
- `/requests/*`
- `/jobs/*`
- `/billing/*`
- `/payouts/*`
- `/admin/*`
- `/webhooks/*`

## 2. Authentication and account APIs
### Host / Cleaner auth
- `POST /auth/register`
- `POST /auth/login`
- `POST /auth/logout`
- `POST /auth/verify-email`
- `POST /auth/verify-phone`
- `POST /auth/reset-password`
- `GET /auth/me`

## 3. Host APIs
### Host profile
- `GET /hosts/me`
- `PATCH /hosts/me`
- `GET /hosts/me/eligibility`
- `GET /hosts/me/restrictions`
- `POST /hosts/me/appeals`

### Payment methods and subscriptions
- `GET /hosts/me/payment-methods`
- `POST /hosts/me/payment-methods`
- `DELETE /hosts/me/payment-methods/{id}`
- `POST /hosts/me/subscription`
- `PATCH /hosts/me/subscription`
- `GET /hosts/me/subscription`

### Properties
- `GET /hosts/me/properties`
- `POST /hosts/me/properties`
- `GET /properties/{property_id}`
- `PATCH /properties/{property_id}`
- `POST /properties/{property_id}/verify-request`
- `POST /properties/{property_id}/calendar-connections`
- `GET /properties/{property_id}/calendar-connections`

### Service requests
- `POST /properties/{property_id}/quotes`
- `POST /properties/{property_id}/service-requests`
- `GET /hosts/me/service-requests`
- `GET /service-requests/{id}`
- `POST /service-requests/{id}/cancel`

## 4. Cleaner APIs
### Cleaner profile and onboarding
- `GET /cleaners/me`
- `PATCH /cleaners/me`
- `GET /cleaners/me/onboarding-status`
- `POST /cleaners/me/identity-verification`
- `POST /cleaners/me/background-consent`
- `POST /cleaners/me/payout-setup`
- `POST /cleaners/me/training-completions`
- `GET /cleaners/me/eligibility`
- `GET /cleaners/me/restrictions`
- `POST /cleaners/me/appeals`

### Vehicle APIs
- `GET /cleaners/me/vehicles`
- `POST /cleaners/me/vehicles`
- `PATCH /cleaners/me/vehicles/{id}`
- `POST /jobs/{job_id}/vehicle-override`

### Availability and jobs
- `GET /cleaners/me/jobs`
- `POST /jobs/{job_id}/accept`
- `POST /jobs/{job_id}/decline`
- `POST /jobs/{job_id}/arrive`
- `POST /jobs/{job_id}/start`
- `POST /jobs/{job_id}/complete`
- `POST /jobs/{job_id}/qa-photos`
- `POST /jobs/{job_id}/issue-report`

## 5. Job and routing APIs
- `GET /jobs/{job_id}`
- `GET /jobs/{job_id}/pricing`
- `GET /jobs/{job_id}/assignment`
- `GET /jobs/{job_id}/qa`
- `GET /jobs/{job_id}/billing`

## 6. Admin / dispatch APIs
- `GET /admin/manual-review-queue`
- `POST /admin/manual-review-queue/{id}/approve`
- `POST /admin/manual-review-queue/{id}/reject`
- `GET /admin/restrictions`
- `POST /admin/restrictions`
- `POST /admin/restrictions/{id}/lift`
- `GET /admin/appeals`
- `POST /admin/appeals/{id}/decide`
- `GET /admin/jobs/{job_id}/audit`
- `POST /admin/jobs/{job_id}/override-assignment`
- `POST /admin/jobs/{job_id}/refund`
- `POST /admin/jobs/{job_id}/surcharge`

## 7. Workflow specs
### 7.1 Host self-onboarding workflow
1. `POST /auth/register`
2. host verifies email/phone
3. host adds payment method
4. host creates property
5. host submits property details
6. host connects calendar or selects manual mode
7. system runs property verification rules
8. property becomes `active` or `pending_verification`
9. host becomes `standard_active` if minimum requirements pass

### 7.2 Cleaner self-onboarding workflow
1. `POST /auth/register`
2. cleaner submits identity verification
3. cleaner grants background-check consent
4. cleaner registers primary vehicle
5. cleaner submits payout/tax setup
6. cleaner completes training modules
7. system evaluates onboarding requirements
8. cleaner becomes `probation_active` if all required steps pass
9. cleaner becomes `active` after probation rules are satisfied

### 7.3 Host quote and booking workflow
1. host requests quote via `POST /properties/{property_id}/quotes`
2. pricing engine returns itemized quote
3. host confirms service request
4. system evaluates:
   - host eligibility
   - property status
   - SLA feasibility
   - risk gates
   - cleaner availability
5. if low-risk: auto-approve
6. if risky: place in manual-review queue
7. approved request creates job record

### 7.4 Auto-routing workflow
1. eligible job enters assignment engine
2. system gathers candidate cleaners
3. system filters by:
   - active status
   - eligibility class
   - restrictions
   - travel feasibility
   - current route load
4. system checks hard reject rules
5. system checks manual-review triggers
6. if auto-routable, system offers/assigns job
7. if not, queue for dispatch review

### 7.5 Completion and QA workflow
1. cleaner marks arrival/start/complete
2. cleaner uploads required photos
3. system validates submission completeness
4. QA review passes or fails
5. system updates:
   - job state
   - cleaner payout ledger
   - score inputs
   - incident events if needed
6. system creates billing/payout ready state

### 7.6 Restriction workflow
1. incident or payment event occurs
2. system or dispatch creates restriction candidate
3. policy engine evaluates trigger threshold
4. if threshold met, restriction becomes active
5. affected privileges are removed immediately
6. audit event is recorded
7. appeal path becomes available if policy allows

## 8. Required response patterns
Every major workflow response should return:
- `status`
- `entity_id`
- `next_state`
- `manual_review_required`
- `blocking_reason_code` if blocked
- `user_message` for surface display

## 9. Important automation rules
### Host auto-approval allowed only when:
- payment method exists and is healthy
- property is active
- no active host restriction
- requested service is eligible

### Cleaner activation allowed only when:
- required onboarding steps are complete
- no failed background or identity block exists
- payout setup is complete
- required training is complete

### Auto-routing allowed only when:
- hard reject rules do not trigger
- manual-review triggers do not trigger
- cleaner availability and capacity pass
- SLA window remains feasible

## 10. Webhooks / external integrations
Expected integration points:
- payment processor webhooks
- calendar sync webhooks or polling updates
- notification providers (email/SMS)
- future background-check provider

## 11. MVP API priority
Build first:
1. auth
2. host onboarding
3. cleaner onboarding
4. property CRUD
5. payment method setup
6. quote endpoint
7. service request endpoint
8. job creation
9. cleaner accept/decline/complete
10. billing and payout ledger endpoints
