-- Sameday STRO SQL Schema v1
-- Target: PostgreSQL

create extension if not exists pgcrypto;

create table users (
    id uuid primary key default gen_random_uuid(),
    email text not null unique,
    phone text unique,
    password_hash text,
    auth_provider_id text,
    is_email_verified boolean not null default false,
    is_phone_verified boolean not null default false,
    status text not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table user_roles (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null references users(id) on delete cascade,
    role text not null,
    created_at timestamptz not null default now()
);

create table host_profiles (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null unique references users(id) on delete cascade,
    display_name text,
    reputation_score numeric(5,2) not null default 85,
    host_tier text not null default 'standard',
    same_day_eligible boolean not null default false,
    deep_clean_eligible boolean not null default false,
    payment_status text not null default 'review_required',
    active_restriction_flag boolean not null default false,
    turnover_count integer not null default 0,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table cleaner_profiles (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null unique references users(id) on delete cascade,
    display_name text,
    reliability_score numeric(5,2) not null default 80,
    tenure_tier text not null default 'new',
    eligibility_class text not null default 'new_cleaner',
    onboarding_status text not null default 'draft',
    payout_status text not null default 'pending_setup',
    active_restriction_flag boolean not null default false,
    completed_job_count integer not null default 0,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table properties (
    id uuid primary key default gen_random_uuid(),
    host_id uuid not null references host_profiles(id) on delete cascade,
    address_line_1 text not null,
    address_line_2 text,
    city text not null,
    state text not null,
    postal_code text not null,
    latitude numeric(10,7),
    longitude numeric(10,7),
    zone text not null,
    declared_sqft integer,
    verified_sqft integer,
    declared_beds integer,
    declared_bathrooms integer,
    check_in_time_default time,
    check_out_time_default time,
    access_method text,
    parking_notes text,
    trash_notes text,
    pet_policy text,
    linen_policy text,
    status text not null default 'draft',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table property_verifications (
    id uuid primary key default gen_random_uuid(),
    property_id uuid not null unique references properties(id) on delete cascade,
    verification_status text not null default 'pending',
    sqft_mismatch_flag boolean not null default false,
    access_verified_flag boolean not null default false,
    notes text,
    reviewed_by_user_id uuid references users(id),
    reviewed_at timestamptz,
    created_at timestamptz not null default now()
);

create table calendar_connections (
    id uuid primary key default gen_random_uuid(),
    property_id uuid not null references properties(id) on delete cascade,
    source text not null,
    external_reference text,
    sync_status text not null default 'pending',
    last_sync_at timestamptz,
    last_error text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table bookings (
    id uuid primary key default gen_random_uuid(),
    property_id uuid not null references properties(id) on delete cascade,
    source text not null,
    external_reference text,
    check_in_at timestamptz not null,
    check_out_at timestamptz not null,
    imported_at timestamptz,
    valid_for_sla_flag boolean not null default false,
    late_checkout_flag boolean not null default false,
    early_checkin_flag boolean not null default false,
    status text not null default 'active',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table payment_methods (
    id uuid primary key default gen_random_uuid(),
    host_id uuid not null references host_profiles(id) on delete cascade,
    processor text not null,
    processor_reference text not null,
    brand text,
    last4 text,
    exp_month integer,
    exp_year integer,
    status text not null default 'active',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table membership_subscriptions (
    id uuid primary key default gen_random_uuid(),
    host_id uuid not null references host_profiles(id) on delete cascade,
    plan text not null,
    status text not null,
    payment_method_id uuid references payment_methods(id),
    started_at timestamptz,
    renewal_at timestamptz,
    cancelled_at timestamptz,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table service_requests (
    id uuid primary key default gen_random_uuid(),
    property_id uuid not null references properties(id) on delete cascade,
    requested_by_host_id uuid not null references host_profiles(id) on delete cascade,
    request_type text not null,
    requested_at timestamptz not null default now(),
    requested_window_start timestamptz,
    requested_window_end timestamptz,
    same_day_flag boolean not null default false,
    deep_clean_flag boolean not null default false,
    consumables_flag boolean not null default false,
    linen_handling_flag boolean not null default false,
    offsite_laundry_flag boolean not null default false,
    pet_flag boolean not null default false,
    trash_flag boolean not null default false,
    bathroom_modifier_bucket text,
    bed_modifier_bucket text,
    pricing_snapshot_json jsonb,
    status text not null default 'draft',
    manual_review_required boolean not null default false,
    blocking_reason_code text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table turnover_jobs (
    id uuid primary key default gen_random_uuid(),
    service_request_id uuid not null references service_requests(id) on delete cascade,
    booking_id uuid references bookings(id),
    property_id uuid not null references properties(id) on delete cascade,
    host_id uuid not null references host_profiles(id) on delete cascade,
    job_type text not null,
    pricing_tier integer not null,
    one_way_miles numeric(8,2),
    planned_duration_minutes integer,
    actual_duration_minutes integer,
    scheduled_start_at timestamptz,
    scheduled_end_at timestamptz,
    actual_start_at timestamptz,
    actual_end_at timestamptz,
    sla_eligible_flag boolean not null default false,
    sla_met_flag boolean,
    risk_band text,
    manual_review_flag boolean not null default false,
    status text not null default 'created',
    failure_reason_code text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table job_assignments (
    id uuid primary key default gen_random_uuid(),
    job_id uuid not null references turnover_jobs(id) on delete cascade,
    cleaner_id uuid not null references cleaner_profiles(id) on delete cascade,
    assigned_by_type text not null,
    assigned_by_user_id uuid references users(id),
    assignment_status text not null default 'offered',
    offer_expires_at timestamptz,
    decline_reason text,
    assigned_at timestamptz,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table routes (
    id uuid primary key default gen_random_uuid(),
    cleaner_id uuid not null references cleaner_profiles(id) on delete cascade,
    route_date date not null,
    total_travel_minutes integer,
    total_cleaning_minutes integer,
    capacity_used integer,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table route_jobs (
    id uuid primary key default gen_random_uuid(),
    route_id uuid not null references routes(id) on delete cascade,
    job_id uuid not null references turnover_jobs(id) on delete cascade,
    sequence_number integer not null,
    planned_arrival_at timestamptz,
    planned_departure_at timestamptz
);

create table vehicle_profiles (
    id uuid primary key default gen_random_uuid(),
    cleaner_id uuid not null references cleaner_profiles(id) on delete cascade,
    license_plate text not null,
    state text not null,
    color text,
    vehicle_type text,
    photo_url text,
    is_primary boolean not null default false,
    verification_status text not null default 'pending',
    insurance_status text not null default 'not_provided',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table vehicle_overrides (
    id uuid primary key default gen_random_uuid(),
    job_id uuid not null references turnover_jobs(id) on delete cascade,
    cleaner_id uuid not null references cleaner_profiles(id) on delete cascade,
    override_license_plate text,
    override_state text,
    override_color text,
    override_vehicle_type text,
    override_photo_url text,
    created_at timestamptz not null default now()
);

create table qa_reviews (
    id uuid primary key default gen_random_uuid(),
    job_id uuid not null unique references turnover_jobs(id) on delete cascade,
    photo_compliance_flag boolean,
    qa_status text not null default 'pending',
    issue_type text,
    reclean_required boolean not null default false,
    reviewed_by_user_id uuid references users(id),
    reviewed_at timestamptz,
    created_at timestamptz not null default now()
);

create table qa_assets (
    id uuid primary key default gen_random_uuid(),
    job_id uuid not null references turnover_jobs(id) on delete cascade,
    uploaded_by_cleaner_id uuid references cleaner_profiles(id),
    asset_type text not null,
    file_url text not null,
    captured_at timestamptz,
    created_at timestamptz not null default now()
);

create table billing_events (
    id uuid primary key default gen_random_uuid(),
    host_id uuid not null references host_profiles(id) on delete cascade,
    property_id uuid references properties(id),
    job_id uuid references turnover_jobs(id),
    type text not null,
    gross_amount_cents integer not null,
    net_collected_amount_cents integer,
    collection_status text not null default 'pending',
    processor_reference text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table payout_events (
    id uuid primary key default gen_random_uuid(),
    cleaner_id uuid not null references cleaner_profiles(id) on delete cascade,
    job_id uuid not null references turnover_jobs(id) on delete cascade,
    base_pay_amount_cents integer not null default 0,
    mileage_pay_amount_cents integer not null default 0,
    modifier_pay_amount_cents integer not null default 0,
    addon_pay_amount_cents integer not null default 0,
    bonus_amount_cents integer not null default 0,
    total_amount_cents integer not null default 0,
    payout_status text not null default 'pending',
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table incident_events (
    id uuid primary key default gen_random_uuid(),
    entity_type text not null,
    entity_id uuid not null,
    job_id uuid references turnover_jobs(id),
    incident_type text not null,
    severity text not null,
    notes text,
    created_by_type text not null,
    created_by_user_id uuid references users(id),
    created_at timestamptz not null default now(),
    resolved_at timestamptz
);

create table restrictions (
    id uuid primary key default gen_random_uuid(),
    entity_type text not null,
    entity_id uuid not null,
    restriction_type text not null,
    reason_code text not null,
    active_flag boolean not null default true,
    imposed_by_type text not null,
    imposed_by_user_id uuid references users(id),
    created_at timestamptz not null default now(),
    lifted_at timestamptz
);

create table appeals (
    id uuid primary key default gen_random_uuid(),
    entity_type text not null,
    entity_id uuid not null,
    related_restriction_id uuid references restrictions(id),
    filed_by_user_id uuid not null references users(id),
    status text not null default 'filed',
    statement_text text,
    decision_notes text,
    decided_by_user_id uuid references users(id),
    filed_at timestamptz not null default now(),
    decided_at timestamptz
);

create table notifications (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null references users(id) on delete cascade,
    channel text not null,
    template_key text not null,
    delivery_status text not null default 'queued',
    payload_json jsonb,
    sent_at timestamptz,
    created_at timestamptz not null default now()
);

create table audit_events (
    id uuid primary key default gen_random_uuid(),
    actor_type text not null,
    actor_id uuid,
    target_type text not null,
    target_id uuid,
    action text not null,
    reason_code text,
    metadata_json jsonb,
    created_at timestamptz not null default now()
);

create index idx_properties_host_id on properties(host_id);
create index idx_service_requests_property_id on service_requests(property_id);
create index idx_service_requests_status on service_requests(status);
create index idx_turnover_jobs_status on turnover_jobs(status);
create index idx_turnover_jobs_scheduled_start on turnover_jobs(scheduled_start_at);
create index idx_job_assignments_cleaner_status on job_assignments(cleaner_id, assignment_status);
create index idx_restrictions_entity_active on restrictions(entity_type, entity_id, active_flag);
create index idx_incident_events_entity_created on incident_events(entity_type, entity_id, created_at);
create index idx_billing_events_host_created on billing_events(host_id, created_at);
create index idx_payout_events_cleaner_created on payout_events(cleaner_id, created_at);
