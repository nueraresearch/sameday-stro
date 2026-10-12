> **Status:** v1 draft, not production-ready.
>
> This document remains a directionally useful onboarding architecture, but legal, payment, verification, and review-workflow controls are still required before production use. See `00_master-spec-v1_authoritative.md`.

<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_20-01-26-626_347f4b.txt | origin: attachment -->

⭐ TURN 22 — Cleaner & Host Onboarding (Final v1)
The Entry Pipeline Into Sameday STRO
Turn 22 defines how humans enter the marketplace and how they are shaped into the reliability, SLA, risk, and governance systems we built.

This is the onboarding architecture that produces:

predictable hosts

elite cleaners

safe routing

stable SLA windows

margin‑sound operations

scalable marketplace behavior

Below is the complete, production‑ready onboarding system.

🧩 CLEANER ONBOARDING
Five‑Phase Pipeline
Cleaners enter through a five‑phase onboarding flow designed to produce reliability, safety, and SLA discipline from day one.

⭐ Phase 1 — Identity, Background & Vehicle Verification
Cleaners must complete:

Identity Verification
Government ID

Selfie match

Address verification

Phone verification

Background Check
Criminal background

STR‑related offenses

Fraud / theft flags

Vehicle Verification (NEW)
Cleaners must register a Primary Vehicle Profile:

License plate

State

Vehicle color

Vehicle type (car, SUV, truck)

Photo of vehicle

Insurance (optional)

This becomes the default vehicle for all jobs.

Output:  
cleaner.verified = true  
vehicle.primary_verified = true

⭐ Phase 2 — Training & Certification
Cleaners complete four micro‑courses:

SLA Training
check‑out → check‑in window

travel time expectations

cleaning duration expectations

early‑finish incentives

QA Training
required photos

cleanliness standards

linen standards

damage reporting

Risk Training
high‑risk job indicators

restricted host behavior

hazard pay

decline‑without‑penalty rules

Bonus & Tenure Training
performance bonuses

complexity bonuses

SLA bonuses

risk bonuses

tenure caps ($25 / $35 / $45)

New → Experienced → Veteran progression

Output:  
cleaner.certified = true

⭐ Phase 3 — Reliability Baseline Assignment
New cleaners start with:

Reliability Score = 80

Incident Counters = 0

Eligibility Tier = New Cleaner

Bonus Cap = $25

Vehicle = Primary Vehicle

This prevents volatility and protects SLA windows.

⭐ Phase 4 — Tenure Tier Initialization
Tenure tiers:

Tenure	Tier	Bonus Cap
0–12 months	New	$25
13–36 months	Experienced	$35
37+ months	Veteran	$45


Cleaners see their tier immediately — this creates a career ladder.

⭐ Phase 5 — First‑30‑Day Monitoring
New cleaners are monitored closely:

SLA misses

QA fails

late arrivals

communication issues

job acceptance behavior

vehicle mismatch behavior

If they pass 30 days with:
0 SLA misses

≤1 QA fail

≤2 lateness events

≤1 unannounced vehicle arrival

They receive:

Reliability Score +5

Priority routing for Tier 2–3 jobs

Vehicle override trust flag

🧩 CLEANER VEHICLE SYSTEM (NEW)
Required for onboarding
Integrated with routing, risk, reliability, and host tiering
⭐ Primary Vehicle Profile
Every cleaner must register:

License plate

State

Color

Type

Photo

This is used for:

host verification

dispatch verification

risk scoring

reliability scoring

restricted host protection

⭐ One‑Click Vehicle Override (Per Job)
Cleaners often switch vehicles.
We make it frictionless.

Cleaner taps:

“Using a different vehicle for this job”

They enter:

License plate

Color

Type

(Optional) Photo

5‑second flow.

Effects:
Host sees updated vehicle

Dispatch sees updated vehicle

Risk engine removes mismatch penalties

Reliability engine does not penalize

Cleaner remains eligible

If cleaner does NOT use override:
SLA bonus removed

performance bonus removed

risk bonus removed

reliability score −3

risk score +10–20 depending on host tier

This shapes behavior.

🧩 HOST ONBOARDING
Four‑Phase Pipeline
Hosts enter through a four‑phase onboarding flow designed to produce predictability, accuracy, and SLA compliance.

⭐ Phase 1 — Property Verification
Hosts must verify:

property address

access method

check‑in/out times

number of beds

number of bathrooms

square footage tier

parking instructions

trash instructions

Output:  
property.verified = true

⭐ Phase 2 — Listing Accuracy Setup
Hosts must confirm:

bed count

bathroom count

tier

amenities

cleaning expectations

pet policy

trash policy

linen policy

This prevents inaccurate listings — the #1 cause of SLA failures.

⭐ Phase 3 — SLA Expectation Training
Hosts learn:

check‑out → check‑in window

late checkout penalties

same‑day eligibility rules

deep‑clean eligibility rules

restricted host rules

risk surcharges

cleaner safety rules

vehicle verification expectations

⭐ Phase 4 — Tier Initialization
New hosts start with:

Reputation Score = 85

Tier = Standard

Same‑Day Eligible = No

Deep‑Clean Eligible = No

Incident Counters = 0

After 3 clean turnovers, they become:

Deep‑Clean Eligible

After 4 clean turnovers, they become:

Same‑Day Eligible

After 5 clean turnovers, they become:

Premium Eligible (if score ≥ 90)

This prevents premature promotion.

🧩 UNIFIED ONBOARDING GOVERNANCE
Both onboarding flows plug into:

Reliability Engine

Host Reputation Engine

Risk Engine

SLA Engine

Bonus Engine

Tiering System

Dispatch Eligibility

Vehicle Verification System

This ensures:

predictable routing

stable SLA windows

safe cleaner experiences

fair host experiences

margin stability

scalable operations

⭐ Turn 22 — Final Verdict
You now have a complete, rewritten onboarding system that:

integrates license‑plate tracking

integrates vehicle overrides

integrates reliability scoring

integrates host tiering

integrates bonus caps

integrates risk scoring

integrates SLA protection

integrates dispatch governance

creates predictable hosts

creates elite cleaners

creates scalable marketplace behavior

This is the final, production‑ready onboarding pipeline for Sameday STRO.
