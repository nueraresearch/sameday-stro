<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_19-41-11-312_5babe6.txt | origin: attachment -->

⭐ TURN 14 — RISK ENGINE (SLA + Cleaner + Host + Complexity)
The Risk Engine produces a single risk score (0–100) for every job.

This score determines:

routing priority

whether same‑day is allowed

whether deep clean is allowed

whether manual dispatch review is required

whether a job is auto‑rejected

whether a cleaner can decline without penalty

whether SLA warnings are triggered

This is how you prevent disasters before they occur.

1️⃣ Risk Engine Inputs
The Risk Engine uses five categories of inputs:

1. SLA Window Compression
time available vs. time required

travel time

cleaning duration

check‑out delays

2. Cleaner Reliability Score
0–100 score from Turn 12

3. Host Reputation Score
0–100 score from Turn 13

4. Job Complexity
bathrooms

beds

square footage tier

add‑ons (deep clean, pet, trash, linen)

5. Travel Distance
one‑way miles

rural road conditions

weather (optional future input)

These five categories combine into a single risk score.

2️⃣ Risk Score Formula (0–100)
The Risk Engine calculates:

Risk Score
=
0.30
×
SLA Risk
+
0.25
×
Cleaner Risk
+
0.20
×
Host Risk
+
0.15
×
Complexity Risk
+
0.10
×
Travel Risk
Each component is normalized to 0–100.

3️⃣ Component Breakdown
⭐ 1. SLA Risk (0–100)
SLA risk is based on:

time required vs. time available

check‑out delays

same‑day requests

deep‑clean requests

routing feasibility

Formula:

SLA Risk
=
Time Required
Time Available
×
100
If >100 → job is auto‑rejected.

⭐ 2. Cleaner Risk (0–100)
Cleaner risk is:

Cleaner Risk
=
100
−
Cleaner Reliability Score
High reliability → low risk.
Low reliability → high risk.

⭐ 3. Host Risk (0–100)
Host risk is:

Host Risk
=
100
−
Host Reputation Score
Premium hosts → low risk.
Restricted hosts → high risk.

⭐ 4. Complexity Risk (0–100)
Complexity risk is based on:

bathrooms

beds

tier

add‑ons

Formula:

Complexity Risk
=
10
×
Bathrooms
+
8
×
Beds
+
5
×
Tier
+
15
×
Deep Clean Flag
Capped at 100.

⭐ 5. Travel Risk (0–100)
Travel risk is based on:

one‑way miles

rural road conditions

weather (future input)

Formula:

Travel Risk
=
min
⁡
(
Miles
40
×
100
,
100
)
40+ miles = max risk.

4️⃣ Risk Score Bands (Operational Impact)
⭐ 0–29: Low Risk
auto‑routing

any cleaner allowed

same‑day allowed

deep clean allowed

⭐ 30–59: Moderate Risk
routing prioritizes high‑reliability cleaners

same‑day allowed only if cleaner score >85

deep clean allowed only if SLA window is large

⭐ 60–79: High Risk
manual dispatch review required

same‑day disabled

deep clean disabled

only high‑reliability cleaners (90+)

host notified of risk

⭐ 80–100: Critical Risk
job auto‑rejected

host receives explanation

dispatch receives alert

cleaner cannot accept

SLA window impossible or unsafe

This prevents SLA failures and protects margins.

5️⃣ Risk Engine Outputs
The Risk Engine produces:

1. Risk Score (0–100)
Primary output.

2. Risk Band (Low / Moderate / High / Critical)
Operational category.

3. Routing Instructions
which cleaners are eligible

whether manual review is required

whether job is auto‑rejected

4. SLA Warnings
predicted lateness

predicted failure

predicted routing conflict

5. Host Notifications
“Your job is high‑risk due to late check‑out.”

“Same‑day request unavailable due to SLA compression.”

6. Cleaner Notifications
“This job is high‑risk; bonus applied.”

“This job requires elite reliability.”

6️⃣ Why the Risk Engine Matters
✔ Prevents SLA failures
You catch problems before they happen.

✔ Protects cleaners
High‑risk hosts and jobs don’t burn out your workforce.

✔ Protects margins
High‑risk jobs are priced, routed, or rejected intelligently.

✔ Protects routing
Dispatch doesn’t get overwhelmed.

✔ Protects your brand
You avoid nightmare turnovers.

✔ Protects hosts
Premium hosts get priority and reliability.

This is the “brain” of your entire operation.

⭐ Turn 14 — Final Verdict
You now have a complete Risk Engine that:

predicts failures

protects SLA windows

protects cleaners

protects hosts

protects margins

protects routing

protects your brand

This is the most important system after pricing and routing.
