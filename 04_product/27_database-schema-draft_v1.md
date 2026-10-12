# Sameday STRO — Database Schema Draft v1

**Status:** build blueprint

## 1. Goal
Define the first production-oriented relational schema for the MVP.

## 2. Recommended storage model
Use a relational primary database (Postgres recommended) with:
- UUID primary keys
- created_at / updated_at on every mutable table
- soft-delete only where business history matters
- explicit status enums or constrained text fields
- append-only audit/event tables

## 3. Core tables
### users
- id (uuid, pk)
- email (unique)
- phone (nullable, unique)
- password_hash / auth_provider_id
- is_email_verified
- is_phone_verified
- status
- created_at
- updated_at

### user_roles
- id
- user_id -> users.id
- role (`host`, `cleaner`, `dispatch`, `admin`)
- created_at

### host_profiles
- id
- user_id -> users.id
- display_name
- reputation_score
- host_tier
- same_day_eligible
- deep_clean_eligible
- payment_status
- active_restriction_flag
- turnover_count
- created_at
- updated_at

### cleaner_profiles
- id
- user_id -> users.id
- display_name
- reliability_score
- tenure_tier
- eligibility_class
- onboarding_status
- payout_status
- active_restriction_flag
- completed_job_count
- created_at
- updated_at

### properties
- id
- host_id -> host_profiles.id
- address_line_1
- address_line_2
- city
- state
- postal_code
- latitude
- longitude
- zone
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
- status
- created_at
- updated_at

### property_verifications
- id
- property_id -> properties.id
- verification_status
- sqft_mismatch_flag
- access_verified_flag
- notes
- reviewed_by_user_id -> users.id (nullable)
- reviewed_at
- created_at

### calendar_connections
- id
- property_id -> properties.id
- source
- external_reference
- sync_status
- last_sync_at
- last_error
- created_at
- updated_at

### bookings
- id
- property_id -> properties.id
- source
- external_reference
- check_in_at
- check_out_at
- imported_at
- valid_for_sla_flag
- late_checkout_flag
- early_checkin_flag
- status
- created_at
- updated_at

### membership_subscriptions
- id
- host_id -> host_profiles.id
- plan
- status
- payment_method_id -> payment_methods.id
- started_at
- renewal_at
- cancelled_at
- created_at
- updated_at

### payment_methods
- id
- host_id -> host_profiles.id
- processor
- processor_reference
- brand
- last4
- exp_month
- exp_year
- status
- created_at
- updated_at

### service_requests
- id
- property_id -> properties.id
- requested_by_host_id -> host_profiles.id
- request_type
- requested_at
- requested_window_start
- requested_window_end
- same_day_flag
- deep_clean_flag
- consumables_flag
- linen_handling_flag
- offsite_laundry_flag
- pet_flag
- trash_flag
- bathroom_modifier_bucket
- bed_modifier_bucket
- pricing_snapshot_json
- status
- manual_review_required
- blocking_reason_code
- created_at
- updated_at

### turnover_jobs
- id
- service_request_id -> service_requests.id
- booking_id -> bookings.id (nullable)
- property_id -> properties.id
- host_id -> host_profiles.id
- job_type
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
- status
- failure_reason_code
- created_at
- updated_at

### job_assignments
- id
- job_id -> turnover_jobs.id
- cleaner_id -> cleaner_profiles.id
- assigned_by_type (`system`, `dispatch`)
- assigned_by_user_id -> users.id (nullable)
- assignment_status
- offer_expires_at
- decline_reason
- assigned_at
- created_at
- updated_at

### routes
- id
- cleaner_id -> cleaner_profiles.id
- route_date
- total_travel_minutes
- total_cleaning_minutes
- capacity_used
- created_at
- updated_at

### route_jobs
- id
- route_id -> routes.id
- job_id -> turnover_jobs.id
- sequence_number
- planned_arrival_at
- planned_departure_at

### vehicle_profiles
- id
- cleaner_id -> cleaner_profiles.id
- license_plate
- state
- color
- vehicle_type
- photo_url
- is_primary
- verification_status
- insurance_status
- created_at
- updated_at

### vehicle_overrides
- id
- job_id -> turnover_jobs.id
- cleaner_id -> cleaner_profiles.id
- override_license_plate
- override_state
- override_color
- override_vehicle_type
- override_photo_url
- created_at

### qa_reviews
- id
- job_id -> turnover_jobs.id
- photo_compliance_flag
- qa_status
- issue_type
- reclean_required
- reviewed_by_user_id -> users.id (nullable)
- reviewed_at
- created_at

### qa_assets
- id
- job_id -> turnover_jobs.id
- uploaded_by_cleaner_id -> cleaner_profiles.id
- asset_type
- file_url
- captured_at
- created_at

### billing_events
- id
- host_id -> host_profiles.id
- property_id -> properties.id (nullable)
- job_id -> turnover_jobs.id (nullable)
- type
- gross_amount_cents
- net_collected_amount_cents
- collection_status
- processor_reference
- created_at
- updated_at

### payout_events
- id
- cleaner_id -> cleaner_profiles.id
- job_id -> turnover_jobs.id
- base_pay_amount_cents
- mileage_pay_amount_cents
- modifier_pay_amount_cents
- addon_pay_amount_cents
- bonus_amount_cents
- total_amount_cents
- payout_status
- created_at
- updated_at

### incident_events
- id
- entity_type
- entity_id
- job_id -> turnover_jobs.id (nullable)
- incident_type
- severity
- notes
- created_by_type (`system`, `cleaner`, `host`, `dispatch`, `admin`)
- created_by_user_id -> users.id (nullable)
- created_at
- resolved_at

### restrictions
- id
- entity_type
- entity_id
- restriction_type
- reason_code
- active_flag
- imposed_by_type (`system`, `dispatch`, `admin`)
- imposed_by_user_id -> users.id (nullable)
- created_at
- lifted_at

### appeals
- id
- entity_type
- entity_id
- related_restriction_id -> restrictions.id (nullable)
- filed_by_user_id -> users.id
- status
- statement_text
- decision_notes
- decided_by_user_id -> users.id (nullable)
- filed_at
- decided_at

### notifications
- id
- user_id -> users.id
- channel
- template_key
- delivery_status
- payload_json
- sent_at
- created_at

### audit_events
- id
- actor_type
- actor_id
- target_type
- target_id
- action
- reason_code
- metadata_json
- created_at

## 4. Indexing priorities
Create indexes early on:
- users.email
- users.phone
- properties.host_id
- service_requests.property_id
- service_requests.status
- turnover_jobs.status
- turnover_jobs.scheduled_start_at
- turnover_jobs.cleaner_id (via assignments lookup)
- job_assignments.cleaner_id + assignment_status
- restrictions.entity_type + entity_id + active_flag
- incident_events.entity_type + entity_id + created_at
- billing_events.host_id + created_at
- payout_events.cleaner_id + created_at

## 5. Enum candidates
Define application enums for:
- host_tier
- tenure_tier
- eligibility_class
- job_type
- service_request status
- turnover_job status
- assignment_status
- qa_status
- restriction_type
- payment_status
- billing collection_status
- payout_status

## 6. Required invariants
- No active host may request same-day when active restriction blocks it.
- No cleaner may receive assignment when active restriction blocks assignment.
- Every completed job must have at least one billing event or explicit zero-dollar reason.
- Every completed cleaner-paid job must have one payout event.
- Every policy override must create an audit_event.
