> **Status:** superseded by `05_governance/14_unified-reliability-framework.md` and `00_master-spec-v1_authoritative.md` for the authoritative rolling formula and eligibility logic.
>
> This document is preserved as historical drafting context only. The authoritative rolling formula is `0.85 × previous + 0.15 × last_job`, not the `0.7 / 0.3` formula shown below.

<!-- source: conversation: user-provided Turn 12 text | origin: chat -->

Turn 12 — Cleaner reliability scoring system
1. Core idea
Cleaner reliability is a single score (0–100) that updates after every job and directly affects:

who gets assigned high‑complexity jobs

who gets same‑day work

who gets Tier 5–6 cabins

who gets auto‑routing priority

2. Inputs to the score
Each job updates the cleaner’s score based on:

On‑time arrival

SLA success (finished before check‑in)

QA quality (photo + cleanliness)

Host feedback

Damage reporting behavior

Cancellation / no‑show behavior

3. Scoring components (per job)
Each job generates a job score (0–100):

On‑time arrival (0–20)

On time: +20

0–15 min late: +10

15+ min late: 0

SLA success (0–20)

Finished within window: +20

Finished but late: +5

Not finished: 0

QA quality (0–30)

All required photos + clean: +30

Minor issues: +15

Major issues / re‑clean: 0

Host feedback (0–20)

5★: +20

4★: +10

3★: +5

1–2★: 0

Behavior (0–10)

Damage reported properly: +10

Missed damage / dishonesty: 0

Total per job: 0–100.

4. Rolling reliability score
Cleaner reliability score in this historical draft was originally described as a weighted rolling average. This file is now superseded by the authoritative dampened scoring model.

**Authoritative formula:**

Reliability
=
0.85
×
Previous Score
+
0.15
×
Last Job Score

New cleaners start at 80.

See `00_master-spec-v1_authoritative.md` and `05_governance/14_unified-reliability-framework.md` for the authoritative logic.

5. Reliability bands (operational impact)
90–100: Elite

Eligible for Tier 5–6

Eligible for same‑day

Eligible for deep cleans

Priority routing

75–89: Standard

Eligible for Tier 1–4

Limited Tier 5

No same‑day unless low complexity

60–74: Watchlist

Only Tier 1–3

No high‑complexity jobs

No same‑day

QA review on every job

<60: Restricted

No new jobs until reviewed

Possible removal

6. Why this works for Sameday STRO
High‑risk jobs (big cabins, many beds/baths, long mileage) go to high‑reliability cleaners.

Your SLA risk is mathematically controlled.

Your margins are protected because re‑cleans and failures drop.

Cleaners see a clear path: good work → better jobs → more pay.
