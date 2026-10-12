> **Current authority note:** cleaner modifier/add-on payout rules in this document are partially superseded by `03_operations/20_cleaner-payout-shares_final.md` and `00_master-spec-v1_authoritative.md`.
>
> Where this document says cleaners receive 100% of modifier revenue, use the fixed payout-share table instead.

<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-34-01-043_99ed9e.txt | origin: attachment -->

⭐ TURN 7 — OPS PLAYBOOK (Labor & Routing)
This section defines how cleaners are assigned, how jobs are routed, how SLA windows are protected, and how labor cost is controlled.

1️⃣ Labor Model (Final)
Cleaner Pay (Base + Mileage + Modifiers)
Cleaners are paid:

Base Pay (by tier)
Tier 1: $50

Tier 2: $60

Tier 3: $70

Tier 4: $80

Tier 5: $90

Tier 6: $100

Mileage Pay
$0.35/mile (one‑way)

Calculated from the nearest available cleaner

Paid automatically through the app

Modifier Pay
Cleaners are paid according to the authoritative payout table, not 100% of modifier revenue.

Bathrooms:
- 2 baths: cleaner $6
- 3 baths: cleaner $12
- 4 baths: cleaner $18
- 5+ baths: cleaner $24

Beds:
- 3 beds: cleaner $6
- 4 beds: cleaner $12
- 5 beds: cleaner $18
- 6+ beds: cleaner $24

See `03_operations/20_cleaner-payout-shares_final.md` for the authoritative payout table.

2️⃣ Routing Model (Final)
Routing is built around:

square footage

bathrooms

beds

mileage

SLA windows

cleaner availability

travel time

cleaning duration

Routing must always protect SLA windows.

Cleaning Duration Estimates (By Tier)
Tier	Sq Ft	Duration
1	0–799	45–75 min
2	800–1199	75–95 min
3	1200–1499	95–120 min
4	1500–1799	120–150 min
5	1800–2199	150–180 min
6	2200+	180–220+ min


Bathroom Time Add‑Ons
+10 min per bathroom

+15 min for 4+ bathrooms

Bed Time Add‑Ons
+10 min per bed

+15 min for 6+ beds

These numbers are used by dispatch to calculate SLA feasibility.

3️⃣ SLA Windows (Final)
Your SLA promise:

“Turnovers completed before next check‑in.”
Standard STR check‑in: 4 PM  
Standard STR check‑out: 10 AM

This gives a 6‑hour SLA window.

SLA Risk by Tier
Tier	SLA Risk
1	Very Low
2	Low
3	Medium
4	Medium‑High
5	High
6	Very High


Why SLA risk increases:
more bathrooms

more beds

more square footage

more consumables

more QA photos

more travel distance

more routing complexity

This is why your pricing model scales.

4️⃣ Dispatch Rules (Final)
Dispatch follows strict rules to protect SLA windows.

Rule 1 — Nearest Cleaner First
Always assign the cleaner with the shortest one‑way mileage.

This:

reduces SLA risk

reduces travel cost

increases acceptance rate

increases routing stability

Rule 2 — Cleaner Capacity Limits
Cleaners cannot exceed:

Tier 1: 4/day

Tier 2: 3/day

Tier 3: 2/day

Tier 4: 2/day

Tier 5: 1/day

Tier 6: 1/day

This prevents SLA failures.

Rule 3 — Modifier Load Limits
If a job has:

4+ bathrooms

6+ beds

It must be assigned to:

a cleaner with high reliability score, or

a cleaner with low travel distance, or

a cleaner with no other jobs that day

This protects SLA windows.

Rule 4 — Same‑Day Requests
Same‑day jobs:

add +$40 surcharge

require dispatch approval

must be assigned to cleaners with open schedules

cannot violate SLA windows

cannot exceed cleaner capacity limits

Rule 5 — Deep Cleans
Deep cleans:

add +$60

require 2× time block

cannot be assigned after 2 PM

cannot be assigned to cleaners with more than 1 job that day

5️⃣ QA & Verification (Final)
Cleaners must submit:

12–20 photos

bathroom photos

bed photos

kitchen photos

trash photos

consumables photos

entry/exit photos

QA team reviews:

cleanliness

linen correctness

consumable restock

trash removal

damage reports

QA failures trigger:

cleaner score reduction

retraining

possible re‑clean

6️⃣ Operational Constraints (Final)
Constraint 1 — Rural Travel Variability
Travel times vary widely.
Mileage pricing protects margins.

Constraint 2 — Cleaner Availability
Rural markets have thin labor pools.
Your pay ladder keeps retention high.

Constraint 3 — STR Size Variability
Cabins vary dramatically in layout.
Bathroom + bed modifiers capture complexity.

Constraint 4 — Laundry Bottlenecks
Laundry is the #1 time sink.
Bed modifiers solve this.

Constraint 5 — SLA Compression
Large homes compress SLA windows.
Tiered pricing + modifiers + routing rules solve this.

⭐ Turn 7 — Final Verdict
You now have a complete Ops Playbook (Labor & Routing Section) that defines:

how cleaners are paid

how jobs are routed

how SLA windows are protected

how dispatch makes decisions

how cleaning duration is calculated

how modifiers affect labor

how mileage affects routing

how QA is enforced

This is the operational backbone of Sameday STRO.
