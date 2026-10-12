# Sameday STRO — Authoritative Data Model and State Machines v1

**Status:** build blueprint  
**Purpose:** define the core entities, fields, and lifecycle states required for the actual platform.

## 1. Core entity list
- User
- HostProfile
- CleanerProfile
- Property
- PropertyVerification
- Booking
- ServiceRequest
- TurnoverJob
- JobAssignment
- Route
- VehicleProfile
- CalendarConnection
- MembershipSubscription
- PaymentMethod
- BillingEvent
- PayoutEvent
- ConsumableKit
- QAReview
- IncidentEvent
- Restriction
- Appeal
- Notification
- AuditEvent

## 2. Authoritative entities
### 2.1 User
Represents a login identity.

Key fields:
- user_id
- email
- phone
- password_hash / auth_provider_id
- role_set
- status (`active`, `pending_verification`, `restricted`, `disabled`)
- created_at
- updated_at

### 2.2 HostProfile
Represents a host account.

Key fields:
- host_id
- user_id
- display_name
- reputation_score
- host_tier (`premium`, `standard`, `restricted`)
- same_day_eligible
- deep_clean_eligible
- payment_status (`ok`, `failed`, `review_required`)
- active_restriction_flag
- turnover_count
- late_checkout_count_30d
- inaccurate_listing_count_60d
- failed_payment_count_90d
- safety_flag_count
- created_at
- updated_at

### 2.3 CleanerProfile
Represents a cleaner account.

Key fields:
- cleaner_id
- user_id
- display_name
- reliability_score
- tenure_tier (`new`, `experienced`, `veteran`)
- eligibility_class (`new_cleaner`, `standard`, `high_complexity`, `same_day`, `elite`, `restricted`)
- active_restriction_flag
- completed_job_count
- no_show_count_60d
- qa_fail_count_30d
- sla_miss_count_30d
- late_arrival_count_30d
- onboarding_status
- payout_status
- created_at
- updated_at

### 2.4 Property
Represents a serviceable STR unit.

Key fields:
- property_id
- host_id
- address_line_1
- address_line_2
- city
- state
- postal_code
- latitude
- longitude
- zone (`core`, `outer`, `review_required`)
- declared_sqft
- verified_sqft
- declared_beds
- declared_bathrooms
- check_in_time_default
- check_out_time_default
- access_method
- parking_notes
- trash_notes
- pet_policy
- linen_policy
- status (`draft`, `pending_verification`, `active`, `restricted`, `archived`)
- created_at
- updated_at

### 2.5 PropertyVerification
Tracks property validation.

Key fields:
- property_verification_id
- property_id
- verification_status (`pending`, `passed`, `failed`, `manual_review`)
- sqft_mismatch_flag
- access_verified_flag
- notes
- reviewed_by
- reviewed_at

### 2.6 Booking
Represents a stay or calendar event that may produce a turnover.

Key fields:
- booking_id
- property_id
- source (`airbnb`, `vrbo`, `hospitable`, `direct`, `manual`)
- external_reference
- check_in_at
- check_out_at
- imported_at
- valid_for_sla_flag
- late_checkout_flag
- early_checkin_flag
- status (`active`, `cancelled`, `completed`)

### 2.7 ServiceRequest
Represents a host request for service.

Key fields:
- service_request_id
- property_id
- requested_by_host_id
- request_type (`same_day`, `no_rush`, `deep_clean`, `consumables_only`)
- requested_at
- requested_window_start
- requested_window_end
- add_on_flags
- pricing_snapshot_id
- status (`draft`, `submitted`, `manual_review`, `approved`, `rejected`, `cancelled`)

### 2.8 TurnoverJob
Represents an actual operational job.

Key fields:
- job_id
- service_request_id
- booking_id
- property_id
- host_id
- job_type (`same_day`, `no_rush`, `deep_clean`)
- pricing_tier
- one_way_miles
- planned_duration_minutes
- actual_duration_minutes
- scheduled_start_at
- scheduled_end_at
- actual_start_at
- actual_end_at
- sla_eligible_flag
- sla_met_flag
- risk_band
- manual_review_flag
- status (`created`, `awaiting_review`, `approved`, `assigned`, `in_progress`, `completed`, `qa_review`, `closed`, `failed`, `cancelled`)

### 2.9 JobAssignment
Tracks assignment of a job to a cleaner.

Key fields:
- job_assignment_id
- job_id
- cleaner_id
- assigned_at
- assignment_status (`offered`, `accepted`, `declined`, `reassigned`, `cancelled`, `completed`)
- offer_expires_at
- decline_reason
- assigned_by (`system`, `dispatch`)

### 2.10 VehicleProfile
Tracks cleaner vehicles.

Key fields:
- vehicle_id
- cleaner_id
- license_plate
- state
- color
- vehicle_type
- photo_url
- is_primary
- verification_status (`pending`, `verified`, `failed`)
- insurance_status (`not_provided`, `provided`, `expired`)

### 2.11 CalendarConnection
Key fields:
- calendar_connection_id
- property_id
- source (`airbnb`, `vrbo`, `hospitable`, `direct`)
- sync_status (`pending`, `active`, `error`, `disabled`)
- last_sync_at
- last_error

### 2.12 MembershipSubscription
Key fields:
- subscription_id
- host_id
- plan (`basic`, `premium`, `ultra`)
- status (`trial`, `active`, `past_due`, `cancelled`, `paused`)
- started_at
- renewal_at
- cancelled_at
- payment_method_id

### 2.13 PaymentMethod
Key fields:
- payment_method_id
- host_id
- processor (`stripe`)
- processor_reference
- brand
- last4
- exp_month
- exp_year
- status (`active`, `failed`, `expired`, `removed`)

### 2.14 BillingEvent
Key fields:
- billing_event_id
- host_id
- property_id
- job_id
- type (`membership`, `cleaning`, `consumables`, `surcharge`, `refund`, `credit`)
- gross_amount
- net_collected_amount
- collection_status (`pending`, `paid`, `failed`, `refunded`, `credited`)
- created_at

### 2.15 PayoutEvent
Key fields:
- payout_event_id
- cleaner_id
- job_id
- base_pay_amount
- mileage_pay_amount
- modifier_pay_amount
- addon_pay_amount
- bonus_amount
- total_amount
- payout_status (`pending`, `approved`, `paid`, `held`)

### 2.16 QAReview
Key fields:
- qa_review_id
- job_id
- photo_compliance_flag
- qa_status (`pending`, `passed`, `failed`, `reclean_required`)
- issue_type
- reviewed_by
- reviewed_at

### 2.17 IncidentEvent
Key fields:
- incident_event_id
- entity_type (`host`, `cleaner`, `job`, `property`)
- entity_id
- incident_type (`late_checkout`, `lockout`, `qa_fail`, `reclean`, `failed_payment`, `no_show`, `safety_issue`, `vehicle_mismatch`)
- severity (`low`, `medium`, `high`, `critical`)
- created_at
- resolved_at

### 2.18 Restriction
Key fields:
- restriction_id
- entity_type (`host`, `cleaner`, `property`)
- entity_id
- restriction_type (`same_day_disabled`, `deep_clean_disabled`, `manual_review_only`, `locked`)
- reason_code
- active_flag
- imposed_by (`system`, `dispatch`, `admin`)
- created_at
- lifted_at

### 2.19 Appeal
Key fields:
- appeal_id
- entity_type
- entity_id
- related_restriction_id
- filed_by_user_id
- status (`filed`, `under_review`, `upheld`, `reversed`, `partially_granted`)
- filed_at
- decided_at

### 2.20 AuditEvent
Key fields:
- audit_event_id
- actor_type
- actor_id
- target_type
- target_id
- action
- reason_code
- metadata_json
- created_at

## 3. State machines
### 3.1 Host onboarding state machine
`draft -> account_created -> payment_pending -> property_pending -> training_pending -> standard_active -> premium_eligible/restricted`

### 3.2 Cleaner onboarding state machine
`draft -> identity_pending -> background_pending -> vehicle_pending -> payout_pending -> training_pending -> probation_active -> active/restricted`

### 3.3 Property state machine
`draft -> pending_verification -> active -> restricted -> archived`

### 3.4 Service request state machine
`draft -> submitted -> auto_approved/manual_review -> approved/rejected -> cancelled`

### 3.5 Job state machine
`created -> awaiting_review/approved -> assigned -> in_progress -> completed -> qa_review -> closed`

Failure exits:
- `failed_access`
- `failed_late_checkout`
- `failed_safety`
- `failed_overcapacity`
- `cancelled`

### 3.6 Assignment state machine
`offered -> accepted/declined -> reassigned/completed/cancelled`

### 3.7 Billing state machine
`pending -> paid/failed -> refunded/credited`

### 3.8 Restriction state machine
`inactive -> active -> lifted`

### 3.9 Appeal state machine
`filed -> under_review -> upheld/reversed/partially_granted`

## 4. Authoritative field notes
- `manual_review_flag` must exist on jobs and requests.
- `risk_band` should be a persisted output, not just an ephemeral calculation.
- `collection_status` and `payment_status` must be explicit because payment failures change host eligibility.
- `onboarding_status` must be explicit because cleaner self-onboarding is a first-class product path.
- `audit_event` is required for policy enforcement, not optional.
