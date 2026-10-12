<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_18-34-24-259_ec3310.txt | origin: attachment -->

Sameday STRO — MVP PRD (Product Requirements Document)
Entities • Workflows • State Machines • Edge Cases • Permissions • Billing Logic
1. Product Overview
Sameday STRO is a rural STR operations platform that provides:

Same‑day turnover guarantees (members only)

Priority routing based on membership tier

No‑Rush cleans (48–72 hr window)

Deep cleans (scheduled)

Consumable refill kits

Calendar‑synced automation

Zone‑based SLA windows

Cleaner assignment + routing

The MVP must support:

5 cleaners

60–120 properties

3 SLA tiers

3 cleaning types

3 consumable kit tiers

50‑mile service radius

Rural travel constraints

Seasonal turnover spikes

2. Core Entities (Data Model)
Below are the entities the system must support.
Schemas are conceptual — not tied to any specific database.

2.1 Property
Represents a host’s STR unit.

Fields:

property_id

host_id

address

latitude

longitude

zone (core, secondary, tertiary)

declared_sqft

verified_sqft

bed_count

membership_tier (none, basic, premium, ultra)

calendar_sync_status (active, inactive)

preferred_cleaning_type (same_day, no_rush)

notes (access instructions, quirks)

2.2 Booking
Represents a guest stay.

Fields:

booking_id

property_id

check_in

check_out

source (Airbnb, VRBO, direct)

synced_at

is_late_checkout

is_early_checkin

is_valid_for_sla (boolean)

2.3 Turnover
Represents a cleaning job.

Fields:

turnover_id

property_id

booking_id

cleaning_type (same_day, no_rush, deep_clean)

sla_window_start

sla_window_end

priority_level (1–4)

assigned_cleaner_id

status (see state machine)

scheduled_start

scheduled_end

actual_start

actual_end

surcharge_applied

failure_reason

2.4 Cleaner
Represents a cleaner or cleaning team.

Fields:

cleaner_id

name

home_zone

max_daily_turnovers

current_load

availability

vehicle_type

travel_speed_factor

permissions (cleaner role)

2.5 Route
Represents a cleaner’s daily schedule.

Fields:

route_id

cleaner_id

date

turnover_ids[]

total_travel_time

total_cleaning_time

route_efficiency_score

2.6 Consumable Kit
Represents a kit assigned to a property.

Fields:

kit_id

property_id

range (basic, standard, hospitality)

quality_tier (standard, premium, ultra)

bed_count

items[]

refill_frequency

last_refill_date

next_refill_date

2.7 Billing Event
Represents any charge.

Fields:

billing_id

host_id

property_id

turnover_id

amount

type (membership, cleaning, consumables, surcharge)

status (pending, paid, failed)

3. State Machines
These define how objects move through the system.

3.1 Turnover State Machine
Code
CREATED
  ↓
VALIDATING_SLA
  ↓
SLA_ELIGIBLE or SLA_INELIGIBLE
  ↓
ROUTED
  ↓
ASSIGNED
  ↓
IN_PROGRESS
  ↓
COMPLETED
  ↓
QA_REVIEW
  ↓
CLOSED
Failure States
FAILED_ACCESS

FAILED_LATE_CHECKOUT

FAILED_DAMAGE

FAILED_OVER_CAPACITY

3.2 Calendar Sync State Machine
Code
NOT_SYNCED
  ↓
SYNC_PENDING
  ↓
SYNC_ACTIVE
  ↓
SYNC_ERROR
  ↓
SYNC_RETRY
3.3 SLA Eligibility State Machine
Code
UNKNOWN
  ↓
CHECKING_CUTOFF
  ↓
CHECKING_SYNC
  ↓
CHECKING_ZONE
  ↓
CHECKING_MEMBERSHIP
  ↓
ELIGIBLE or INELIGIBLE
4. Workflows
These are the core flows the system must support.

4.1 Booking Ingestion Workflow
Calendar sync pulls booking

System validates:

cutoff time

membership tier

zone

cleaning type

SLA eligibility determined

Turnover created

Routing engine queues turnover

4.2 Routing Workflow
Sort turnovers by:

membership tier

zone

cleaning type

SLA window

Assign cleaners based on:

home zone

current load

travel time

max daily capacity

Generate route

Notify cleaner

Notify host

4.3 Cleaner Dispatch Workflow
Cleaner receives route

Cleaner confirms availability

Cleaner travels to property

Cleaner logs arrival

Cleaner performs cleaning

Cleaner logs completion

Photos uploaded

QA review triggered

4.4 Consumable Refill Workflow
Cleaner checks inventory

Cleaner restocks from kit

Cleaner logs usage

System updates forecast

Next refill scheduled

4.5 Billing Workflow
Turnover completed

Billing event created

Membership discount applied

Surcharges applied

Host charged

Receipt generated

5. Edge Cases
These are the real-world failures the system must handle.

5.1 Late Checkout
Cleaner waits 15 minutes

SLA waived

Surcharge applied

Routing adjusted

5.2 Lockout
Cleaner waits 10 minutes

Host contacted

SLA waived

Surcharge applied

5.3 Extreme Mess
Cleaner escalates

Deep clean required

SLA waived

Additional fee applied

5.4 Incorrect Square Footage
Price adjusted

SLA suspended until corrected

5.5 Overcapacity Day
Ultra → guaranteed

Premium → guaranteed

Basic → best effort

Non‑member → rescheduled

No‑Rush → batched next day

5.6 Weather / Road Closure
SLA suspended

Host notified

No surcharge

5.7 Cleaner Cancellation
Float cleaner dispatched

If none available → SLA waived

6. Permissions Model
6.1 Host
View properties

View bookings

View turnovers

View billing

Update access instructions

Update square footage

Update bed count

Manage membership

Manage consumable kits

6.2 Cleaner
View assigned route

View turnover details

Log arrival

Log completion

Upload photos

Report issues

6.3 Admin
Manage cleaners

Manage routing

Override SLA

Adjust billing

Manage consumables

View all properties

View all turnovers

View all bookings

6.4 Support
View host issues

View cleaner issues

Trigger refunds

Trigger surcharges

Modify turnover notes

7. Billing Logic
7.1 Membership Billing
Monthly recurring

Auto-renew

Prorated on upgrade/downgrade

7.2 Cleaning Billing
Based on:

square footage

cleaning type

membership tier

zone

SLA eligibility

7.3 Surcharges
Applied for:

late checkout

lockout

extreme mess

incorrect booking data

incorrect square footage

7.4 Consumable Billing
Monthly subscription

Per‑refill charge

Kit upgrades

7.5 Refund Logic
Refunds triggered for:

SLA failure (if eligible)

QA failure

Cleaner cancellation

8. Integrations
8.1 Calendar Sync
Airbnb iCal

VRBO iCal

Hospitable API

Direct booking calendar

8.2 Notifications
SMS

Email

Push (future)

8.3 Payments
Stripe

9. MVP Feature Prioritization
Must‑Have (MVP)
Property onboarding

Booking ingestion

SLA eligibility

Routing engine

Cleaner assignment

Turnover workflow

Consumable kit builder

Billing

Calendar sync

Host dashboard

Cleaner app

Should‑Have (Post‑MVP)
Inventory forecasting

Deep clean scheduling

QA automation

Route optimization

Weather integration

Could‑Have (Later)
Multi‑market support

Maintenance module

Linen service

AI routing optimization
