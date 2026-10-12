<!-- source: C:/Users/monte/AppData/Roaming/Hermes/composer-pastes/pasted_content_2026-10-12_18-31-56-358_acfd3d.txt | origin: attachment -->

Sameday STRO — Operations Playbook (Launch Region: Monte Vista ±50 Miles)
SLA Rules • Routing Logic • Cleaner Supply Model • Failure Handling • Service Area Architecture
1. Service Area Definition
Primary Zone (Guaranteed Same‑Day Feasible)
Monte Vista

Alamosa

Del Norte

Characteristics:  
High STR density, short travel times (15–20 minutes), reliable cleaner supply.

Secondary Zone (Premium SLA Feasible)
South Fork

Characteristics:  
High STR value, seasonal spikes, 25–30 minute travel, moderate cleaner supply.

Tertiary Zone (Basic SLA Only)
Creede

Saguache

Antonito

Villa Grove

Mosca

Hooper

La Jara

Sanford

Manassa

Characteristics:  
Long travel (35–55 minutes), low density, high seasonal variance, limited cleaner supply.

2. SLA Architecture (Service Level Agreement)
2.1 SLA Windows (Geographically Constrained)
Ultra Tier (11 AM – 2 PM)
Available only in:

Monte Vista

Alamosa

Del Norte

Premium Tier (11 AM – 4 PM)
Available in:

Monte Vista

Alamosa

Del Norte

South Fork

Basic Tier (11 AM – 6 PM)
Available across full 50‑mile radius.

No‑Rush Tier (48–72 hr window)
For:

Creede

Saguache

Antonito

Villa Grove

Any property >30 minutes from cleaner origin

2.2 SLA Cutoff Times
To qualify for guaranteed same‑day service:

Booking must be synced or submitted by 9 PM the night before checkout.

Calendar sync must be active.

Host must not approve late checkout without notifying STRO.

Late bookings (after cutoff) are serviced on a best‑effort basis.

2.3 Host Compliance Requirements
Guarantee applies only if:

Guests vacate by checkout time

Property is accessible

No lockouts

No extreme mess or damage

Square footage is accurate

Bed count is accurate

Calendar sync is active

Booking data is correct

If any requirement fails:

Turnover still occurs

Guarantee is waived

Surcharge may apply

3. Routing Logic (Priority‑Based)
3.1 Priority Order
Routing is determined by membership tier:

Ultra

Premium

Basic

Non‑Member (best effort)

No‑Rush (batched)

This ensures SLA windows are met without blowing up routing.

3.2 Routing Rules
Rule 1 — Ultra members always get morning slots
Ultra jobs are routed first, within 11–2 PM.

Rule 2 — Premium members get mid‑day slots
Premium jobs are routed next, within 11–4 PM.

Rule 3 — Basic members get afternoon slots
Basic jobs are routed last, within 11–6 PM.

Rule 4 — Non‑members get leftover capacity
No guarantee, no priority.

Rule 5 — No‑Rush cleans are batched
Scheduled in geographic clusters during low‑load periods.

3.3 Geographic Routing Constraints
Constraint A — Creede cannot be routed before core towns
Because Creede is 45–55 minutes away.

Constraint B — Saguache and Antonito are No‑Rush unless Basic tier
Same‑day is possible but not guaranteed.

Constraint C — South Fork is Premium‑eligible
25–30 minutes travel is feasible for mid‑day routing.

Constraint D — Ultra tier is restricted to core towns
To maintain SLA credibility.

3.4 Routing Example (Realistic Scenario)
Turnovers at 10 AM checkout:
Monte Vista (Ultra)

Alamosa (Premium)

Del Norte (Basic)

South Fork (Premium)

Creede (Basic)

Saguache (No‑Rush)

Routing Output:
11:00 AM → Monte Vista (Ultra)

12:00 PM → Alamosa (Premium)

1:00 PM → South Fork (Premium)

2:30 PM → Del Norte (Basic)

4:00 PM → Creede (Basic)

Next day → Saguache (No‑Rush)

This is how you avoid SLA failures.

4. Cleaner Supply Model
4.1 Staffing Requirements
To guarantee same‑day service:

Minimum staffing:
3 cleaners (Monte Vista / Alamosa / Del Norte)

1 cleaner (South Fork)

1 float cleaner (Creede + Saguache + Antonito)

Total: 5 cleaners

4.2 Cleaner Types
Type A — Core Cleaners
Full‑time or near full‑time.
Assigned to core towns.

Type B — Zone Cleaners
Assigned to South Fork or Creede.

Type C — Float Cleaners
Cover long‑distance towns and No‑Rush cleans.

4.3 Cleaner Compensation
Base hourly: $22–$30

Travel compensation: $0.35–$0.50/mile

SLA bonus: $5–$15 per same‑day turnover

No‑Rush discount: lower pay rate (batching efficiency)

4.4 Training & QA
Training includes:
STR turnover standards

Consumable restock protocol

Photo documentation

Access troubleshooting

Damage reporting

Routing app usage

QA includes:
Random audits

Photo review

Host feedback

SLA compliance tracking

5. Failure Handling
5.1 Failure Types
Late checkout

Lockout / access failure

Extreme mess / damage

Incorrect booking data

Incorrect square footage

Cleaner cancellation

Overcapacity day

Weather / road closures

5.2 Failure Responses
Late Checkout
Cleaner waits 15 minutes

Guarantee waived

$15–$35 surcharge

Routing adjusted

Lockout
Cleaner waits 10 minutes

Host contacted

Guarantee waived

$15 surcharge

Extreme Mess
Cleaner escalates

Deep clean required

Guarantee waived

Additional fee applied

Incorrect Booking Data
Guarantee waived

Routed as best effort

Incorrect Square Footage
Price adjusted

Guarantee waived until corrected

Cleaner Cancellation
Float cleaner dispatched

If no float available → guarantee waived

Overcapacity Day
Ultra → guaranteed

Premium → guaranteed

Basic → best effort

Non‑member → rescheduled

No‑Rush → batched next day

Weather / Road Closures
SLA suspended

Host notified

No surcharge

6. Calendar Sync Requirements
6.1 Required for SLA Guarantee
Hosts must sync:

Airbnb iCal

VRBO iCal

Hospitable API

Direct booking calendar

6.2 Sync Failure
If sync breaks:

Guarantee suspended

Host notified

Manual booking required

7. Consumable Operations
7.1 Refill Protocol
During each turnover:

Cleaner checks inventory

Restocks from kit

Logs usage

App updates forecast

7.2 Inventory Forecasting
System predicts:

Next depletion date

Next refill date

Kit size adjustments

7.3 Consumable Delivery
Delivered during turnover

Or delivered separately (fee applies)

8. Operational Metrics (KPIs)
Primary KPIs
SLA compliance rate

Routing efficiency

Cleaner utilization

Travel time per turnover

Consumable margin

Membership retention

Host satisfaction

QA pass rate

Secondary KPIs
No‑Rush batching efficiency

Overcapacity frequency

Late checkout frequency

Lockout frequency

9. Operational Philosophy
Sameday STRO is built on three principles:

1. SLA credibility over universal promises
We guarantee only what is operationally feasible.

2. Priority routing over equal routing
Membership tiers determine cleaning order.

3. Zone‑based service over metro‑style service
Rural geography requires geographic constraints.
