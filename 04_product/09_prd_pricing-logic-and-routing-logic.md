> **Current authority note:** cleaner modifier/add-on payout rules in this PRD are partially superseded by `03_operations/20_cleaner-payout-shares_final.md` and `00_master-spec-v1_authoritative.md`.
>
> Where this document states 100% cleaner shares for modifiers or add-ons, use the fixed payout-share table instead.

<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-35-43-929_f3784e.txt | origin: attachment -->

⭐ TURN 8 — PRD: Pricing Logic & Routing Logic
📌 Document Purpose
Define the pricing engine, routing engine, SLA logic, and cleaner‑assignment logic for Sameday STRO.
This PRD ensures consistent, predictable, margin‑safe operations across all STR turnovers.

1️⃣ Pricing Engine Requirements
1.1 Base Pricing (Square Footage Tiers)
The system must classify each property into one of six tiers based on square footage:

Tier	Sq Ft Range	Base Price
1	0–799	$100
2	800–1199	$115
3	1200–1499	$130
4	1500–1799	$140
5	1800–2199	$155
6	2200+	$170


Requirement:  
Pricing engine must automatically assign the correct tier based on sq ft.

1.2 Bathroom Modifier Logic
Bathrooms increase scrubbing time and SLA risk.

Bathrooms	Add‑On
1	+$0
2	+$10
3	+$20
4	+$30
5+	+$40


Requirement:  
Pricing engine must add the correct bathroom modifier.

1.3 Bed Modifier Logic
Beds determine linen load and laundry volume.

Beds	Add‑On
1–2	+$0
3	+$10
4	+$20
5	+$30
6	+$40
7+	+$50


Requirement:  
Pricing engine must add the correct bed modifier.

1.4 Mileage Fee Logic
Mileage fee is charged to the host:

$0.60 per mile (one‑way distance)
Requirement:  
System must calculate mileage from the nearest available cleaner.

Requirement:  
System must multiply one‑way miles × $0.60 and add to total price.

1.5 Add‑Ons
Deep Clean
+$60

Same‑Day
+$40

Consumables
+$25

Linen Service
+$20

+$15 off‑site laundry (if required)

Pet Fee
+$15

Trash Haul‑Off
+$20 (+ mileage if off‑route)

Requirement:  
Pricing engine must support all add‑ons and allow multiple add‑ons per job.

1.6 Final Price Calculation
Total Price
=
Base Tier Price
+
Bathroom Modifier
+
Bed Modifier
+
(
0.60
×
Miles
)
+
Add‑Ons
Requirement:  
Pricing engine must compute final price using this formula.

2️⃣ Cleaner Pay Engine Requirements
Cleaners are paid:

Base Pay (by tier)
$50 / $60 / $70 / $80 / $90 / $100

Mileage Pay
$0.35/mile (one‑way)

Modifier Pay
Cleaners receive fixed shares from the authoritative payout table:

- bathroom modifiers: 60% (`+$10/$20/$30/$40` host → `$6/$12/$18/$24` cleaner)
- bed modifiers: 60% (`+$10/$20/$30/$40` host → `$6/$12/$18/$24` cleaner)

Add‑On Pay
Cleaners receive:

- deep clean: `$40` on `+$60`
- same-day: `$25` on `+$40`
- consumables: `$15` on `+$25`
- linen handling: `$12` on `+$20`
- off-site laundry: `$10` on `+$15`
- pet fee: `$10` on `+$15`
- trash fee: `$12` on `+$20`

Mileage pay remains `$0.35` per one-way mile. See `03_operations/20_cleaner-payout-shares_final.md`. 

Requirement:  
Cleaner pay engine must compute cleaner pay using:

Cleaner Pay
=
Base Pay
+
(
0.35
×
Miles
)
+
Modifiers
+
Add‑Ons
3️⃣ Routing Engine Requirements
Routing engine must assign cleaners based on:

travel distance

cleaning duration

SLA window

cleaner availability

job complexity (bathrooms + beds)

tier

same‑day urgency

3.1 Cleaning Duration Model
Base duration by tier:
Tier	Duration
1	45–75 min
2	75–95 min
3	95–120 min
4	120–150 min
5	150–180 min
6	180–220+ min


Bathroom time add‑ons:
+10 min per bathroom

+15 min for 4+ bathrooms

Bed time add‑ons:
+10 min per bed

+15 min for 6+ beds

Requirement:  
Routing engine must calculate total cleaning duration using these rules.

3.2 SLA Window Logic
Standard SLA window:

Check‑out: 10 AM

Check‑in: 4 PM

SLA window: 6 hours

Requirement:  
Routing engine must ensure:

Travel Time
+
Cleaning Time
≤
6
 hours
If not possible → job must be rejected or reassigned.

3.3 Cleaner Capacity Limits
Routing engine must enforce:

Tier 1: max 4/day

Tier 2: max 3/day

Tier 3: max 2/day

Tier 4: max 2/day

Tier 5: max 1/day

Tier 6: max 1/day

3.4 Assignment Priority Rules
Rule 1 — Nearest Cleaner First
Minimize mileage → maximize SLA reliability.

Rule 2 — High Complexity → High Reliability Cleaner
Jobs with:

4+ bathrooms

6+ beds

Tier 5–6

must be assigned to cleaners with high reliability scores.

Rule 3 — Same‑Day Jobs
Must be assigned only if:

cleaner has open schedule

SLA window is feasible

travel time is low

job complexity is manageable

Rule 4 — Deep Cleans
Cannot be assigned after 2 PM.
Require 2× time block.

4️⃣ QA Requirements
Cleaners must submit:

12–20 photos

bathroom photos

bed photos

kitchen photos

trash photos

consumables photos

entry/exit photos

QA team must:

verify cleanliness

verify linens

verify consumables

verify trash removal

verify damage reports

Failures must:

reduce cleaner reliability score

trigger retraining

trigger re‑clean if needed

⭐ Turn 8 — Final Verdict
You now have a full PRD defining:

pricing logic

modifier logic

mileage logic

cleaner pay logic

routing logic

SLA logic

dispatch rules

QA requirements

This is the production blueprint for Sameday STRO.
