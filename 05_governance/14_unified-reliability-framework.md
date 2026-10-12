<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-41-59-461_b67b41.txt | origin: attachment -->

⭐ Unified Reliability Framework (Cleaners + Hosts + Dispatch Eligibility)
This replaces the blunt scoring with a multi‑layer control system.

It has four layers:

Rolling Score (0–100) — slow‑moving, stable

Recent Incident Counters — fast‑moving, sensitive

Sample‑Size Minimums — prevents premature promotion

Hard‑Fail Overrides — immediate locks

This is how real operational systems stay stable.

1️⃣ Rolling Score (0–100) — But With Dampened Volatility
Your critique is correct:
0.7 / 0.3 weighting is too sharp.

New weighting:
New Score
=
0.85
×
Previous
+
0.15
×
Last Job
This produces:

much smaller punishment for one bad job

much slower climb to elite status

much more stable behavior

Example (Cleaner starting at 80):
One 0‑score job → 68 (not 56)

Two 0‑score jobs → 57.8 (not 39.2)

One perfect job → 83 (not 86)

Two perfect jobs → 85.45 (not 90.2)

This is the correct stability profile.

2️⃣ Recent Incident Counters (30‑day rolling window)
Rolling score alone is too slow to react to sudden risk.

So we add incident counters:

Cleaners track:
SLA misses (last 30 days)

QA fails (last 30 days)

no‑shows (last 60 days)

re‑cleans (last 30 days)

late arrivals (last 30 days)

Hosts track:
late checkouts (last 30 days)

inaccurate listings (last 60 days)

failed payments (last 90 days)

excessive mess (last 30 days)

communication failures (last 30 days)

These counters are binary gates for privileges.

3️⃣ Sample‑Size Minimums (Prevents premature promotion)
You nailed this:
No one should reach elite/premium status after 2–3 jobs.

Cleaners:
Elite requires 15+ completed jobs

Same‑day eligible requires 10+ jobs

High‑complexity eligible requires 8+ jobs

Hosts:
Premium requires 5+ turnovers

Same‑day eligible requires 4+ turnovers

Deep‑clean eligible requires 3+ turnovers

This prevents volatility and gaming.

4️⃣ Hard‑Fail Overrides (Immediate locks)
Some events override everything:

Cleaner hard‑fails:
no‑show

falsified photos

theft claim

safety violation

repeated SLA misses (3 in 30 days)

Immediate effect:  
Cleaner reliability score locked at <60, privileges revoked.

Host hard‑fails:
failed payment

repeated late checkout (3 in 30 days)

repeated inaccurate listing

safety issue

harassment of cleaner

Immediate effect:  
Host reputation locked at <60, routing restricted.

These are policy locks, not score‑based.

⭐ Unified Eligibility Logic (This is the real dispatch brain)
Dispatch should NOT rely on a single scalar.
It should use multi‑factor gates.

Below is the correct eligibility matrix.

Cleaner Eligibility Matrix
Elite Cleaner (Tier 5–6 + same‑day + deep clean)
Requires:

score ≥ 90

15+ jobs

0 no‑shows (60 days)

≤1 QA fail (30 days)

≤1 SLA miss (30 days)

High‑Complexity Cleaner (Tier 4–5)
Requires:

score ≥ 85

8+ jobs

≤2 lateness events (30 days)

Same‑Day Cleaner
Requires:

score ≥ 88

10+ jobs

0 SLA misses (30 days)

Standard Cleaner (Tier 1–3)
Requires:

score ≥ 70

3+ jobs

Restricted Cleaner
Triggered by:

score < 60

any hard‑fail

3 SLA misses (30 days)

2 QA fails (30 days)

Host Eligibility Matrix
Premium Host (priority routing)
Requires:

score ≥ 90

5+ turnovers

0 late checkouts (30 days)

0 failed payments (90 days)

Same‑Day Eligible Host
Requires:

score ≥ 85

4+ turnovers

0 late checkouts (30 days)

Deep‑Clean Eligible Host
Requires:

score ≥ 80

3+ turnovers

Standard Host
Requires:

score ≥ 70

1+ turnover

Restricted Host
Triggered by:

score < 60

repeated late checkout

repeated inaccurate listing

failed payment

safety issue

⭐ Dispatch Decision Logic (Final)
Dispatch uses three layers:

Layer 1 — Hard‑fail check
If cleaner or host is restricted → job requires manual review.

Layer 2 — Eligibility matrix
Match job complexity to cleaner eligibility.

Layer 3 — Risk Engine (Turn 14)
Calculate risk score and determine:

auto‑route

manual review

auto‑reject

This is the correct control system.

⭐ Final Verdict
You’re absolutely right — the original scoring was too blunt.
This new system:

stabilizes scores

prevents volatility

prevents premature promotion

adds incident counters

adds hard‑fail overrides

adds eligibility gates

adds sample‑size minimums

integrates with the Risk Engine

gives dispatch a real decision framework

This is now a true operational control system, not just a scoring toy.
