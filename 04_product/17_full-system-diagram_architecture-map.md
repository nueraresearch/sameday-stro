
> **Current authority note:** this diagram is a summary architecture map, not the authoritative rules document.
>
> Use `00_master-spec-v1_authoritative.md` for current authoritative operating rules and `05_governance/19_binding-governance-policy_v1.md` for binding governance.

<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-56-03-918_276b86.txt | origin: attachment -->

⭐ TURN 18 — Full System Diagram (Architecture Map)
This is the top‑down architecture of Sameday STRO.

I’m presenting it in a layered system diagram, the same format used in production engineering docs.

🧩 Layer 1 — Frontend Interfaces
1. Host Dashboard
Create turnover

View pricing

Manage properties

Track cleaner ETA

View QA photos

Manage billing

View host tier

2. Cleaner App
Accept/decline jobs

View pay breakdown

View route

Upload photos

Report damage

Track bonuses

View tenure tier

3. Dispatch Console
Monitor SLA windows

Override routing

Approve same‑day

View cleaner reliability

View host tier

Handle escalations

Trigger re‑cleans

🧩 Layer 2 — Core Engines
These are the “brains” of the system.

1. Pricing Engine
Inputs:

sq ft → tier

bathrooms

beds

mileage

add‑ons
Outputs:

host price

cleaner pay

2. Cleaner Pay Engine
Inputs:

base pay

mileage pay

modifiers

add‑ons

bonus caps (tenure)
Outputs:

cleaner payout

3. Routing Engine
Inputs:

cleaner location

job location

cleaner eligibility

host tier

risk score
Outputs:

assigned cleaner

route

ETA

4. SLA Engine
Inputs:

travel time

cleaning duration

check‑out time

check‑in time
Outputs:

SLA pass/fail

SLA risk

5. Risk Engine
Inputs:

SLA risk

cleaner risk

host risk

complexity risk

travel risk
Outputs:

risk score

risk band

routing instructions

6. Reliability Engine (Cleaners)
Inputs:

job score

incident counters
Outputs:

reliability score

eligibility tier

7. Host Reputation Engine
Inputs:

job score

incident counters
Outputs:

host tier

routing privileges

8. Bonus Engine (Tenure‑Aligned)
Inputs:

reliability

complexity

SLA

risk

tenure tier
Outputs:

bonus payout (capped at $25 / $35 / $45)

9. QA Engine
Inputs:

photos

checklists
Outputs:

QA score

re‑clean flag

reliability update

🧩 Layer 3 — Data Models
1. Property
sq ft

bathrooms

beds

address

check‑in/out

host_id

2. Job
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

3. Cleaner
reliability score

tenure tier

incident counters

schedule

location

pay history

4. Host
reputation score

tier

incident counters

payment status

properties

5. Routing
travel time

cleaning duration

SLA feasibility

risk score

6. QA
photos

checklist

QA score

re‑clean flag

🧩 Layer 4 — Event Flow (End‑to‑End System Diagram)
This is the actual flow of a turnover through the system.

Step 1 — Host Creates Job
Host Dashboard → Pricing Engine

tier assigned

modifiers applied

mileage calculated

add‑ons applied

host price generated

cleaner pay baseline generated

Event: job.created

Step 2 — Routing Engine Activated
Routing Engine → SLA Engine → Risk Engine

nearest eligible cleaner found

SLA feasibility checked

risk score calculated

host tier checked

cleaner eligibility checked

Event: job.routed

Step 3 — Cleaner Assigned
Cleaner App → receives:

job details

pay breakdown

bonus potential

route

SLA window

Event: job.assigned

Step 4 — Cleaner Completes Job
Cleaner App → QA Engine

photos uploaded

damage reported

consumables checked

Event: job.completed

Step 5 — QA Engine Validates
QA Engine → Reliability Engine

photo completeness

cleanliness

linens

trash

damage

QA score

reliability update

Event: job.qa_validated

Step 6 — Bonus Engine Calculates
Bonus Engine → Cleaner Pay Engine

performance bonus

complexity bonus

SLA bonus

risk bonus

tenure cap applied

Event: job.bonus_calculated

Step 7 — Billing & Payout
Billing Service → Host
Payout Service → Cleaner

Event: job.settled

🧩 Layer 5 — Governance Layer
Host Tiering
Premium

Standard

Restricted

Cleaner Eligibility
New (cap $25)

Experienced (cap $35)

Veteran (cap $45)

Dispatch Rules
auto‑route

manual review

auto‑reject

Risk Bands
low

moderate

high

critical

This layer ensures marketplace stability.

⭐ Turn 18 — Final Verdict
You now have the full system diagram for Sameday STRO:

every engine

every data model

every event

every routing rule

every governance layer

every bonus cap

every SLA constraint

every risk calculation

This is the complete architecture map — the blueprint for engineering, dispatch, and YC‑level clarity.

If you want, I can now run:

Turn 19 — Marketplace Governance Charter (Final Constitution)
or

Turn 20 — Full API Specification (Endpoints + Payloads)
Just tell me which turn you want next.

finally 19
Brodi — Turn 19 is the Marketplace Governance Charter, the final constitution of Sameday STRO.
This is the document that defines how the marketplace behaves, how participants are protected, how risk is contained, and how the system stays stable as it scales.

This is the layer YC, investors, and operators look for — the governance logic that makes your marketplace durable.

Below is Turn 19 (v1) — the complete Marketplace Governance Charter.
