<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-37-01-701_b3115f.txt | origin: attachment -->

⭐ TURN 9 — SYSTEM ARCHITECTURE (v1)
This defines the backend, frontend, services, data models, APIs, and automation logic required to run Sameday STRO.

1️⃣ High‑Level Architecture Overview
Your system consists of five core subsystems:

1. Pricing Engine
Calculates total job cost using:

square footage tier

bathroom modifiers

bed modifiers

mileage

add‑ons

same‑day surcharge

deep‑clean fee

2. Cleaner Pay Engine
Calculates cleaner compensation using:

base pay

mileage pay

modifiers

add‑ons

3. Routing Engine
Assigns cleaners using:

travel distance

cleaning duration

SLA window

cleaner availability

reliability score

job complexity

4. SLA Engine
Ensures jobs can be completed before check‑in.

5. QA Engine
Validates photo uploads and ensures quality.

These five engines work together through a shared backend.

2️⃣ Backend Architecture
The backend is composed of four major services:

⭐ Service A — Pricing Service
Responsibilities:
Determine square footage tier

Apply bathroom modifiers

Apply bed modifiers

Calculate mileage fee

Add optional add‑ons

Produce final host price

Produce final cleaner pay

Inputs:
sq ft

bathrooms

beds

one‑way miles

add‑ons

same‑day flag

deep‑clean flag

Outputs:
total host price

total cleaner pay

itemized breakdown

⭐ Service B — Routing Service
Responsibilities:
find nearest cleaner

calculate travel time

calculate cleaning duration

check SLA feasibility

check cleaner capacity

check cleaner reliability

assign cleaner

generate routing instructions

Inputs:
cleaner locations

job location

job complexity

SLA window

cleaner schedules

Outputs:
assigned cleaner

travel route

ETA

SLA confirmation

⭐ Service C — SLA Service
Responsibilities:
enforce 6‑hour SLA window

reject infeasible jobs

escalate same‑day requests

monitor SLA risk

track SLA violations

Inputs:
travel time

cleaning duration

check‑out time

check‑in time

Outputs:
SLA pass/fail

SLA risk score

SLA alerts

⭐ Service D — QA Service
Responsibilities:
receive photo uploads

validate required photos

detect missing items

detect damage reports

score cleaner reliability

trigger re‑clean if needed

Inputs:
photos

job type

property profile

Outputs:
QA score

cleaner reliability score

re‑clean request

3️⃣ Frontend Architecture
Your platform has three user interfaces:

⭐ 1. Host Dashboard
Features:
create turnover

view pricing breakdown

add modifiers

add add‑ons

track cleaner ETA

view QA photos

manage billing

manage property profile

⭐ 2. Cleaner App
Features:
accept/decline jobs

view pay breakdown

view route

upload photos

report damage

track earnings

manage schedule

⭐ 3. Dispatch Console
Features:
monitor SLA windows

override routing

approve same‑day jobs

view cleaner reliability

view job queue

handle escalations

4️⃣ Data Model Architecture
Your system needs six core data models:

⭐ Model 1 — Property
Fields:

sq ft

bathrooms

beds

address

check‑in time

check‑out time

host preferences

add‑on defaults

⭐ Model 2 — Job
Fields:

property_id

cleaner_id

tier

modifiers

add‑ons

mileage

SLA window

price breakdown

cleaner pay breakdown

QA status

⭐ Model 3 — Cleaner
Fields:

location

reliability score

schedule

max capacity

pay history

photo history

⭐ Model 4 — Host
Fields:

properties

billing

payment method

turnover history

LTV

⭐ Model 5 — Routing
Fields:

cleaner location

job location

travel time

cleaning duration

SLA feasibility

⭐ Model 6 — QA
Fields:

photos

required photo checklist

QA score

re‑clean flag

5️⃣ Automation Logic
Your system must automate:

✔ Pricing
✔ Cleaner pay
✔ Routing
✔ SLA checks
✔ QA scoring
✔ Cleaner reliability scoring
✔ Host billing
✔ Cleaner payouts
This is what makes Sameday STRO scalable.

6️⃣ System Flow (End‑to‑End)
Here’s how a turnover flows through the system:

Step 1 — Host creates job
Host enters:

sq ft

bathrooms

beds

add‑ons

same‑day flag

Pricing engine calculates total price.

Step 2 — Routing engine finds nearest cleaner
Routing engine calculates:

travel time

cleaning duration

SLA feasibility

If SLA fails → job rejected.

Step 3 — Cleaner assigned
Cleaner receives:

pay breakdown

route

job details

Step 4 — Cleaner completes job
Cleaner uploads:

12–20 photos

damage reports

consumables status

Step 5 — QA engine validates
QA engine checks:

photo completeness

cleanliness

linens

trash

damage

Cleaner reliability score updated.

Step 6 — Billing & payout
Host charged.
Cleaner paid.
Margins logged.
LTV updated.

⭐ Turn 9 — Final Verdict
You now have a complete system architecture for Sameday STRO:

pricing engine

cleaner pay engine

routing engine

SLA engine

QA engine

frontend apps

backend services

data models

automation logic

end‑to‑end flow

This is the technical blueprint for your entire platform.
