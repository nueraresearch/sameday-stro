<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_18-17-50-186_7ed774.txt | origin: attachment -->

BUSINESS PLAN — Sameday STRO
Short‑Term Rental Operations Platform with Priority‑Based Same‑Day Turnovers
1. Executive Summary
Sameday STRO is a subscription‑based Short‑Term Rental Operations platform that guarantees same‑day turnovers for members, provides professional cleaning services, and delivers modular guest consumable refill kits. The platform uses verified property data, priority routing, automated inventory forecasting, and tiered service architecture to ensure STRs remain consistently guest‑ready.

Sameday STRO becomes the host’s single operations vendor, combining cleaning, consumables, scheduling, and automation into one unified system.

2. Problem
STR hosts struggle with:

Missed or delayed turnovers

Inconsistent cleaning quality

Guest complaints about missing amenities

Consumable restocking issues

Unpredictable operational costs

Multiple vendors

Incorrect property data causing mispriced services

Lack of priority when multiple turnovers occur simultaneously

Hosts want reliability, automation, and priority — not chaos.

3. Solution
Sameday STRO provides a unified operations platform built around:

A. Membership Subscription
A base monthly fee unlocking:

Guaranteed same‑day turnover completion

Priority routing (earlier cleaning windows)

Member pricing

Access to consumable refill kits

Automated inventory tracking

Property data verification

Dedicated support

B. Per‑Stop Cleaning Fees
Cleaning priced by:

Square footage

Cleaning depth

Linens

Complexity

Membership tier (discounts)

C. Consumable Refill Kits
Modular consumable subscriptions priced by:

Bed count

Consumable range

Quality tier

D. No‑Rush Clean (48–72 hr window)
A cheaper, flexible cleaning option for hosts who don’t need same‑day readiness.

E. One‑Off Services
Higher‑priced non‑member cleanings and consumable restocks.

4. Market Opportunity
2M+ STR units in the U.S.

70% outsource cleaning

85% buy consumables monthly

STR operations is a $30B+ annual market

Sameday STRO positions itself as the Ops Layer for STRs.

5. Business Model
Revenue Streams
Membership subscription

Per‑stop cleaning fees

Consumable refill subscriptions

No‑Rush Clean fees

One‑off services

Premium upgrades

Seasonal hospitality kits

Margins
Consumables: 45–70%

Turnover cleaning: 30–50%

Deep cleaning: 50–65%

Membership fees: 80–95%

No‑Rush cleans: 40–60%

6. Operations
Data Inputs
Square footage (user‑provided + public record verification)

Bed count

Consumable range

Quality tier

Cleaning depth

Booking schedule

Membership tier

Automations
Inventory forecasting

Priority routing

Refill kit generation

Host notifications

Property data mismatch alerts

Calendar sync ingestion

7. Membership Model
Base Subscription Fee Unlocks:
Guaranteed same‑day turnover completion

Priority routing (earlier cleaning slots)

Member pricing

Access to refill kits

Inventory tracking

Property data verification

Dedicated support

Membership Priority Routing
Higher tiers get earlier cleaning windows:

Tier	Guaranteed Window	Priority Level
Ultra	11 AM – 2 PM	Highest
Premium	11 AM – 4 PM	Medium
Basic	11 AM – 6 PM	Lowest
Non‑Member	Best effort	None


Host Requirements for Guarantee
To maintain guaranteed same‑day turnover windows, hosts agree to:

Provide booking data before cutoff

Maintain calendar sync

Ensure guests vacate by checkout time

Ensure property access

Maintain accurate square footage and bed count

Ensure property is in normal turnover condition

If requirements aren’t met:

Turnover still occurs

Guarantee is waived

Optional surcharge may apply

8. Cleaning Architecture
Cleaning Types
No‑Rush Clean (48–72 hr window)

Cheapest

Flexible

Members get priority within window

Never bumped into same‑day territory

Standard Turnover Clean (Same‑Day Window)

Priority routing by membership tier

Guaranteed completion for members

Best effort for non‑members

Deep Clean / Double‑Scrub (Scheduled)

Full detail cleaning

Priority scheduling for members

Cleaning Size (Square Footage)
<800

800–1200

1200–1600

1600–2200

2200+

Square footage is:

User‑provided

Verified against public records

Correctable by user

Stored as both “declared” and “verified”

9. Consumable Refill Kit Architecture
Step 1 — Bed Count
Determines quantity.

Step 2 — Consumable Range
Basic Essentials

Standard Top‑Up

Hospitality Suite

Step 3 — Quality Tier
Standard

Premium

Ultra Premium

Creates 9 refill kit SKUs, all modular and scalable.

10. Competitive Advantage
Priority‑based same‑day turnover

No‑Rush Clean option

Modular pricing

Square‑footage verification

Hospitality‑grade consumables

Integrated cleaning + consumables

Predictable subscription revenue

Professional UX

Operational transparency

11. Go‑To‑Market
Target multi‑property hosts

Partner with STR management companies

Offer “first turnover free with membership”

Integrate with Airbnb, VRBO, Hospitable

12. Roadmap
Phase 1: Cleaning + Consumables + Website
Phase 2: Host dashboard + automation
Phase 3: Inventory AI
Phase 4: Full STR Ops Suite (maintenance, inspections, linens)

SOFTWARE SPEC — Sameday STRO
1. System Architecture
Modules
Membership Engine

Cleaning Scheduler

Priority Routing Engine

Consumable Kit Builder

Inventory Forecaster

Property Verification Engine

Calendar Sync Engine

Host Dashboard

Admin Dashboard

2. Core Features
A. Membership Engine
Base subscription billing

Tier assignment

Priority routing logic

Member pricing rules

SLA enforcement

B. Cleaning Scheduler
Same‑day routing

No‑Rush routing

Deep clean scheduling

Cleaner assignment

Time window enforcement

Capacity balancing

C. Priority Routing Engine
Sorts jobs by membership tier

Assigns earliest windows to highest tiers

Ensures no job is bumped outside its window

Handles concurrency (multiple turnovers at once)

D. Consumable Kit Builder
User selects:

Bed count

Range

Quality tier

System generates:

Price

Contents

Refill frequency

Inventory forecast

E. Inventory Forecaster
Predicts consumable usage

Generates refill orders

Alerts hosts when inventory is low

Syncs with cleaning schedule

F. Property Verification Engine
Address autocomplete

Public record lookup

Square footage mismatch detection

User override option

Stores declared + verified values

G. Calendar Sync Engine
Airbnb iCal

VRBO iCal

Hospitable API

Booking ingestion

Runway enforcement

Late booking detection

H. Host Dashboard
Upcoming cleanings

Refill kit status

Inventory predictions

Billing

Property data

Support

I. Admin Dashboard
Cleaner scheduling

Inventory forecasting

Consumable ordering

Property verification

Host management

SLA compliance tracking

3. User Flows
Property Onboarding
Enter address

Public record lookup

Square footage mismatch prompt

Select membership tier

Select cleaning type

Select consumable kit

Sync calendar

Set schedule

Cleaning Request Flow
Booking ingested

Runway validated

Membership tier applied

Priority routing assigned

Cleaner dispatched

Completion logged

Consumable Refill Flow
Inventory forecast

Kit generated

Delivery scheduled

Restock performed during cleaning

4. Pricing Logic
Membership Fee
Based on bed count.

Per‑Stop Cleaning Fee
Based on:

Square footage

Cleaning depth

Membership tier

No‑Rush Clean Fee
Cheaper, fixed rate.

Consumable Kits
Based on:

Bed count

Range

Quality tier
