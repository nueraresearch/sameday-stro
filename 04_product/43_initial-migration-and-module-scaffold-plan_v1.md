# Sameday STRO — Initial Migration and Module Scaffold Plan v1

**Status:** implementation planning doc

## 1. Goal
Define the first concrete engineering steps to turn the docs into code structure and database migrations.

## 2. First migrations to create
### Migration 001 — users and roles
Create:
- users
- user_roles

### Migration 002 — host and cleaner profiles
Create:
- host_profiles
- cleaner_profiles

### Migration 003 — properties and verification
Create:
- properties
- property_verifications
- calendar_connections

### Migration 004 — payment methods and subscriptions
Create:
- payment_methods
- membership_subscriptions

### Migration 005 — bookings and service requests
Create:
- bookings
- service_requests

### Migration 006 — jobs and assignments
Create:
- turnover_jobs
- job_assignments
- routes
- route_jobs

### Migration 007 — vehicles and QA
Create:
- vehicle_profiles
- vehicle_overrides
- qa_reviews
- qa_assets

### Migration 008 — money flows
Create:
- billing_events
- payout_events

### Migration 009 — governance and audit
Create:
- incident_events
- restrictions
- appeals
- notifications
- audit_events

## 3. First backend modules to scaffold
Create empty/module shells for:
- auth
- users
- hosts
- cleaners
- properties
- pricing
- requests
- jobs
- governance
- audit

Each module should include:
- models
- schemas
- service layer
- route handlers
- tests

## 4. First route groups to stand up
- `/auth/register`
- `/auth/login`
- `/hosts/me`
- `/cleaners/me`
- `/hosts/me/properties`
- `/cleaners/me/vehicles`
- `/properties/{id}/quotes`
- `/properties/{id}/service-requests`

## 5. First seed data
Seed:
- admin user
- dispatch user
- sample host
- sample cleaner
- sample property
- sample pricing constants
- reason codes

## 6. First integration targets
Wire first:
- database
- auth
- Stripe sandbox
- object storage sandbox

Do not wire complex calendar sync before core CRUD and quote flow work.

## 7. First engineering milestone
The first milestone is achieved when:
- migrations run,
- host and cleaner accounts can be created,
- property can be created,
- vehicle can be created,
- quote can be generated,
- service request can be stored,
- audit event can be written.
