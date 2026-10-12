# Sameday STRO

Rural short-term-rental operations platform for cleaning, consumables, scheduling, routing, governance, and automated service delivery.

## Purpose
This repository is the working home for the Sameday STRO system design and implementation.

The goal is to build the actual operating platform that allows:
- hosts to self-onboard,
- hosts to manage properties, subscriptions, and payment methods,
- hosts to request and schedule eligible services,
- cleaners to self-onboard,
- cleaners to become active automatically when requirements are satisfied,
- dispatch and admin users to handle only exceptions, reviews, disputes, and policy enforcement.

## Current state
This repo currently contains:
- product specs
- operations docs
- governance and policy docs
- onboarding docs
- pricing, payout, and financial models
- pilot KPI dashboard spec
- implementation planning docs
- initial schema and architecture plans

## Current authoritative documents
Start here if you need the current source of truth:
- `00_master-spec-v1_authoritative.md`
- `05_governance/19_binding-governance-policy_v1.md`
- `03_operations/20_cleaner-payout-shares_final.md`
- `99_meta/decision-log.md`
- `99_meta/document-status-matrix.md`

## Product / build docs
Key build docs:
- `04_product/23_platform-build-spec_v1.md`
- `04_product/24_authoritative-data-model-and-state-machines_v1.md`
- `04_product/25_api-and-workflow-spec_v1.md`
- `04_product/26_mvp-build-roadmap_v1.md`
- `04_product/33_mvp-implementation-backlog_v1.md`
- `04_product/34_sql-schema-v1.sql`
- `04_product/35_backend-architecture-scaffold-spec_v1.md`
- `04_product/40_recommended-stack-decision_v1.md`
- `04_product/41_repo-and-workspace-structure_v1.md`
- `04_product/42_first-implementation-sprints_v1.md`
- `04_product/43_initial-migration-and-module-scaffold-plan_v1.md`

## Recommended implementation stack
- Frontend: Next.js + TypeScript
- Backend API: FastAPI + Python
- Database: PostgreSQL
- Migrations: Alembic
- Background jobs: Redis + Celery/RQ
- Payments: Stripe
- File storage: S3-compatible object storage

## Suggested repo direction
Next implementation step:
1. scaffold the monorepo/apps structure
2. create first migrations
3. implement auth
4. implement host + cleaner onboarding backbone
5. implement quote and service-request flow

## Notes
Not every document in this repo is equally authoritative. Use `99_meta/document-status-matrix.md` to determine which files are current, draft, historical, or superseded.
