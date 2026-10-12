> **Status:** superseded by `05_governance/14_unified-reliability-framework.md`, `05_governance/16_host-tiering_v2.md`, and `00_master-spec-v1.md` for the authoritative rolling formula and host-eligibility logic.
>
> This document is preserved as historical drafting context only. The authoritative rolling formula is `0.85 × previous + 0.15 × last_job`, not the `0.7 / 0.3` formula shown below.

<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-39-01-378_d2532a.txt | origin: attachment -->

⭐ TURN 13 — Host Reputation Scoring System
Host reputation is a single score (0–100) that updates after every turnover and directly affects:

priority in routing

eligibility for same‑day requests

eligibility for deep cleans

eligibility for high‑complexity jobs

pricing flexibility

whether dispatch manually reviews their jobs

whether cleaners can decline without penalty

This protects your labor force and your SLA reliability.

1️⃣ Inputs to Host Reputation Score
Each job updates the host’s score based on:

Accuracy of property details

Check‑out behavior

Damage reporting honesty

Cleanliness at check‑out

Communication responsiveness

Payment reliability

Cancellation behavior

Cleaner feedback

Hosts can be amazing or absolute chaos — this system separates them.

2️⃣ Scoring Components (Per Job)
Each turnover generates a host job score (0–100):

1. Property Accuracy (0–20)
All details accurate: +20

Minor inaccuracies: +10

Major inaccuracies (beds/baths wrong): 0

2. Check‑Out Behavior (0–20)
On time: +20

0–30 min late: +10

30+ min late: 0

3. Cleanliness at Check‑Out (0–20)
Normal STR condition: +20

Messy but manageable: +10

Disaster: 0

4. Communication (0–20)
Responds quickly: +20

Slow responses: +10

Unresponsive: 0

5. Payment Reliability (0–10)
Auto‑pay success: +10

Manual pay: +5

Failed payment: 0

6. Cleaner Feedback (0–10)
“Great host”: +10

“Neutral”: +5

“Bad host”: 0

Total per job: 0–100.

3️⃣ Rolling Host Reputation Score
Host reputation in this historical draft was originally described as a weighted rolling average. This file is now superseded by the authoritative dampened scoring model.

**Authoritative formula:**

Host Reputation
=
0.85
×
Previous Score
+
0.15
×
Last Job Score

New hosts start at 85.

See `00_master-spec-v1_authoritative.md` and `05_governance/14_unified-reliability-framework.md` for the authoritative logic.

4️⃣ Host Reputation Bands (Operational Impact)
⭐ 90–100: Premium Host
Eligible for same‑day

Eligible for deep cleans

Priority routing

Lower SLA risk

Cleaners prefer these hosts

Eligible for subscription discounts

⭐ 75–89: Standard Host
Eligible for all normal services

Same‑day allowed if complexity is low

No special routing priority

⭐ 60–74: Watchlist Host
No same‑day

No deep cleans

No high‑complexity jobs

Dispatch must manually approve jobs

Cleaners can decline without penalty

⭐ <60: Restricted Host
No new jobs until reviewed

Must correct property details

Must resolve payment issues

Must acknowledge SLA expectations

Cleaners cannot be auto‑assigned

This protects your cleaners and your SLA windows.

5️⃣ Why Host Reputation Scoring Matters
✔ Protects cleaners
Bad hosts burn out good cleaners.
This system prevents that.

✔ Protects SLA windows
Late check‑outs and inaccurate listings destroy SLA reliability.
Now they’re penalized.

✔ Protects margins
Disaster turnovers cost money.
Now they’re priced and routed differently.

✔ Protects routing
High‑risk hosts get manual review.
Low‑risk hosts get instant routing.

✔ Protects your brand
You avoid nightmare hosts before they become a problem.

6️⃣ Host Reputation → Pricing & Routing Integration
Host reputation directly affects:

Pricing
Premium hosts may get subscription discounts

Restricted hosts may get complexity surcharges

Routing
Premium hosts get priority cleaners

Watchlist hosts get limited routing

Restricted hosts require manual dispatch

Cleaner Pay
Cleaners get bonuses for restricted hosts

Cleaners get priority for premium hosts

SLA
High‑risk hosts trigger SLA warnings

Low‑risk hosts increase SLA reliability

⭐ Turn 13 — Final Verdict
You now have a complete Host Reputation Scoring System that:

protects cleaners

protects SLA windows

protects margins

protects routing

protects your brand

creates a fair, transparent ecosystem

This is the perfect counterpart to Turn 12.
