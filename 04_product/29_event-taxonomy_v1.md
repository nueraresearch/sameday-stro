# Sameday STRO — Event Taxonomy v1

**Status:** build blueprint

## 1. Purpose
Define the canonical event names the system emits so automation, analytics, audit, and KPI reporting all speak the same language.

## 2. Event design rules
Every event should include:
- event_id
- event_type
- occurred_at
- actor_type
- actor_id
- target_type
- target_id
- correlation_id / request_id where relevant
- metadata payload

## 3. Event families
### 3.1 Auth / account events
- `auth.registered`
- `auth.logged_in`
- `auth.email_verified`
- `auth.phone_verified`
- `auth.password_reset_requested`
- `auth.password_reset_completed`

### 3.2 Host onboarding events
- `host.profile_created`
- `host.payment_method_added`
- `host.subscription_created`
- `host.subscription_updated`
- `host.subscription_cancelled`
- `host.property_created`
- `host.property_updated`
- `host.property_verification_requested`
- `host.property_verified`
- `host.calendar_connected`
- `host.calendar_sync_failed`
- `host.onboarding_completed`

### 3.3 Cleaner onboarding events
- `cleaner.profile_created`
- `cleaner.identity_submitted`
- `cleaner.background_consent_submitted`
- `cleaner.vehicle_added`
- `cleaner.vehicle_verified`
- `cleaner.payout_setup_submitted`
- `cleaner.training_completed`
- `cleaner.onboarding_completed`
- `cleaner.probation_started`
- `cleaner.activated`

### 3.4 Booking / request events
- `booking.imported`
- `booking.updated`
- `service_request.created`
- `service_request.quoted`
- `service_request.submitted`
- `service_request.manual_review_required`
- `service_request.approved`
- `service_request.rejected`
- `service_request.cancelled`

### 3.5 Job lifecycle events
- `job.created`
- `job.awaiting_review`
- `job.approved`
- `job.rejected`
- `job.assigned`
- `job.offer_sent`
- `job.offer_accepted`
- `job.offer_declined`
- `job.started`
- `job.completed`
- `job.failed_access`
- `job.failed_late_checkout`
- `job.failed_safety`
- `job.cancelled`
- `job.closed`

### 3.6 QA events
- `qa.photos_uploaded`
- `qa.review_started`
- `qa.passed`
- `qa.failed`
- `qa.reclean_required`

### 3.7 Billing / payout events
- `billing.event_created`
- `billing.charge_succeeded`
- `billing.charge_failed`
- `billing.refund_created`
- `billing.credit_created`
- `payout.event_created`
- `payout.approved`
- `payout.paid`
- `payout.held`

### 3.8 Governance events
- `incident.recorded`
- `restriction.created`
- `restriction.lifted`
- `appeal.filed`
- `appeal.decided`
- `manual_review.approved`
- `manual_review.rejected`
- `surcharge.applied`
- `override.assignment`

### 3.9 Notification events
- `notification.queued`
- `notification.sent`
- `notification.failed`

## 4. KPI-critical events
The KPI dashboard should rely most heavily on:
- `job.completed`
- `job.failed_*`
- `qa.failed`
- `qa.reclean_required`
- `billing.charge_succeeded`
- `billing.charge_failed`
- `payout.paid`
- `incident.recorded`
- `restriction.created`
- `service_request.manual_review_required`
- `job.offer_declined`

## 5. Event retention guidance
- Audit-critical events: retain indefinitely or for long-term archive.
- Analytics/KPI events: retain raw and aggregated forms.
- Notification delivery events: retain enough for troubleshooting and support.
