# Sameday STRO — Pilot KPI Dashboard Specification

**Status:** draft spec  
**Purpose:** define the analytics dashboard used during pilot operations to validate whether the paper model holds in real service.

## 1. Dashboard objective
The pilot dashboard exists to answer one question:

> Is Sameday STRO actually operating at the intended sweet spot for profitability, affordability, and cleaner pay under live field conditions?

It must detect early when the model breaks because of:
- underestimated cleaning duration,
- underestimated travel burden,
- late checkout / failed access friction,
- re-cleans and QA failures,
- weak surcharge collection,
- poor cleaner acceptance in outer zones,
- remote-zone jobs eroding margin.

## 2. Users
### Primary users
- founder / operator
- dispatch lead
- finance lead
- QA lead

### Secondary users
- cleaner operations manager
- host success / support

## 3. Dashboard cadence
### Daily operating review
Used to catch service instability fast.

### Weekly pilot review
Used to compare actual results against modeled expectations.

### Monthly pilot review
Used for pricing changes, zone policy changes, cleaner pay changes, and host-governance changes.

## 4. Core dashboard questions
The dashboard must answer:
1. Are jobs finishing inside planned durations?
2. Are same-day jobs staying profitable after friction and failure?
3. Are outer-zone jobs generating cleaner dissatisfaction or weak acceptance?
4. Are cleaners earning the modeled effective hourly rates in practice?
5. Are hosts paying at levels that remain market-acceptable?
6. Are surcharges actually being charged and collected?
7. Are re-cleans, failed access, and late checkouts materially eroding margin?
8. Which tier / zone / job type combinations are breaking the model first?

## 5. Required dashboard pages
### Page 1 — Executive Overview
Purpose: fast operator view of pilot health.

Required cards:
- total jobs completed
- same-day jobs completed
- no-rush jobs completed
- deep cleans completed
- SLA compliance rate
- average actual margin per job
- median actual margin per job
- cleaner effective hourly median
- host surcharge collection rate
- QA re-clean rate
- outer-zone acceptance rate
- restricted-host job count

### Page 2 — Profitability
Purpose: determine whether the business is actually making the expected contribution margin.

Required charts/tables:
- actual margin by tier
- actual margin by zone
- actual margin by job type
- actual margin by same-day vs no-rush vs deep clean
- actual margin by cleaner
- actual margin by host tier
- modeled margin vs realized margin variance
- top 10 loss-making jobs

### Page 3 — Cleaner Economics
Purpose: confirm cleaner pay is competitive and sustainable.

Required charts/tables:
- effective hourly earnings by cleaner
- effective hourly earnings by tier
- effective hourly earnings by zone
- effective hourly earnings by same-day vs no-rush vs deep clean
- acceptance rate by cleaner
- acceptance rate by zone
- average miles per job by cleaner
- average bonus per job by cleaner tenure tier

### Page 4 — SLA and Operations
Purpose: validate routing and same-day promises.

Required charts/tables:
- SLA compliance rate by tier
- SLA compliance rate by zone
- SLA compliance rate by cleaner
- average time from checkout to cleaner arrival
- average cleaning duration by tier
- planned duration vs actual duration variance
- overcapacity-day count
- weather / road closure incident count

### Page 5 — Friction and Failure Modes
Purpose: show where margins are being silently destroyed.

Required charts/tables:
- late checkout count and rate
- failed access / lockout count and rate
- QA re-clean count and rate
- extreme mess count and rate
- inaccurate listing count and rate
- cleaner cancellation count and rate
- host restriction trigger count
- cleaner restriction trigger count
- margin loss from each friction type

### Page 6 — Host Economics and Market Fit
Purpose: test affordability and pricing acceptance.

Required charts/tables:
- average host total price by tier
- average host total price by zone
- average host total price by job type
- add-on attach rate
- same-day conversion rate
- deep-clean conversion rate
- repeat booking rate
- host dispute rate on price
- host refund / credit rate

### Page 7 — Governance and Quality
Purpose: verify that the control system is improving outcomes instead of just creating complexity.

Required charts/tables:
- cleaner score distribution
- host tier distribution
- restricted host count
- restricted cleaner count
- manual-review job count
- approval rate for manual-review jobs
- hard-fail events by type
- appeals count and disposition

## 6. Metric dictionary
Below is the minimum metric set the dashboard must calculate.

### 6.1 Revenue metrics
#### Gross Job Revenue
**Definition:** total host charge before refunds.

**Formula:**
`base host price + mileage charge + modifiers + add-ons + surcharges`

#### Net Collected Revenue
**Definition:** revenue actually collected after credits, refunds, and failed collections.

**Formula:**
`gross job revenue - refunds - credits - uncollected amounts`

#### Surcharge Collection Rate
**Definition:** share of assessed surcharges actually collected.

**Formula:**
`collected surcharge dollars / assessed surcharge dollars`

### 6.2 Cost metrics
#### Cleaner Direct Pay
**Definition:** base cleaner pay + mileage pay + modifier shares + add-on shares + bonuses.

#### Operational Overhead per Job
**Definition:** dispatch, QA, support, and admin burden allocated to a job.

**Minimum tracked fields:**
- baseline overhead
- extra dispatch handling time
- QA review time
- support/dispute time

#### Failure Cost
**Definition:** extra cost caused by non-clean-path execution.

**Examples:**
- late checkout wait cost
- lockout wait cost
- re-clean labor cost
- weather overrun cost
- failed access partial-service loss

### 6.3 Profitability metrics
#### Contribution Margin $ per Job
**Formula:**
`net collected revenue - cleaner direct pay - operational overhead - consumable COGS - failure cost`

#### Contribution Margin %
**Formula:**
`contribution margin $ / net collected revenue`

#### Modeled vs Actual Margin Variance
**Formula:**
`actual contribution margin $ - modeled contribution margin $`

### 6.4 Cleaner economics metrics
#### Effective Cleaner Hourly Earnings
**Definition:** actual cleaner pay relative to total labor time consumed.

**Formula:**
`cleaner direct pay / total cleaner labor hours`

**Total cleaner labor hours must include:**
- travel time
- cleaning time
- photo upload / QA submission time
- laundry handling time when applicable
- waiting time caused by host or access friction

#### Cleaner Acceptance Rate
**Formula:**
`accepted jobs / offered jobs`

#### Outer-Zone Acceptance Rate
**Formula:**
`accepted outer-zone jobs / offered outer-zone jobs`

### 6.5 SLA metrics
#### SLA Compliance Rate
**Formula:**
`jobs completed within promised window / SLA-eligible jobs`

#### Same-Day Profitability Rate
**Definition:** share of same-day jobs with positive contribution margin.

#### Duration Variance
**Formula:**
`actual cleaning duration - planned cleaning duration`

### 6.6 Quality metrics
#### QA Failure Rate
**Formula:**
`jobs failing QA / completed jobs reviewed`

#### Re-Clean Rate
**Formula:**
`re-clean jobs / completed jobs`

#### Photo Compliance Rate
**Formula:**
`jobs with all required photos / completed jobs`

### 6.7 Host economics metrics
#### Repeat Booking Rate
**Formula:**
`hosts with repeat completed jobs / active hosts`

#### Price Dispute Rate
**Formula:**
`jobs with pricing disputes / completed jobs`

#### Refund / Credit Rate
**Formula:**
`jobs with refund or credit / completed jobs`

### 6.8 Governance metrics
#### Manual Review Rate
**Formula:**
`manual-review jobs / total jobs`

#### Restriction Trigger Rate
**Formula:**
`jobs causing host or cleaner restriction events / total jobs`

#### Appeal Rate
**Formula:**
`appeals filed / restriction or penalty events`

## 7. Required dimensions and filters
The dashboard must support slicing every major KPI by:
- date
- week
- month
- zone
- town
- cleaner
- cleaner tenure tier
- cleaner eligibility class
- host
- host tier
- job type (same-day / no-rush / deep clean)
- property tier
- bathrooms bucket
- beds bucket
- mileage bucket
- risk band
- manual-review vs auto-route
- friction type

## 8. Data model requirements
Minimum job-level fields required for the dashboard:
- job_id
- property_id
- host_id
- cleaner_id
- booking_id
- job_type
- property tier
- bathrooms
- beds
- one-way miles
- zone
- town
- planned start
- actual start
- planned duration
- actual duration
- planned finish
- actual finish
- sla_eligible flag
- sla_met flag
- gross host charge
- net collected revenue
- cleaner base pay
- cleaner mileage pay
- cleaner modifier shares
- cleaner add-on shares
- cleaner bonus pay
- consumable COGS
- overhead allocation
- failure-cost allocation
- refund amount
- credit amount
- surcharge assessed
- surcharge collected
- qa_pass flag
- reclean flag
- friction event type(s)
- manual_review flag
- risk band
- host tier
- cleaner score
- host score

## 9. Thresholds and alerting rules
### Red-alert thresholds
Trigger immediate operator review when any of the following occur:
- SLA compliance below **95%** overall
- same-day contribution margin below **15%** for any week
- outer-zone acceptance below **70%**
- re-clean rate above **5%**
- failed-access rate above **3%**
- surcharge collection rate below **80%**
- cleaner effective hourly below **$25/hour** median for any major zone or job class

### Watch thresholds
- average duration variance above **+15 minutes** on any tier
- Tier 5–6 same-day jobs below **20%** contribution margin median
- restricted-host jobs above **10%** of completed jobs
- manual-review jobs above **20%** of total jobs

## 10. Pilot decision rules tied to dashboard results
The dashboard should drive decisions, not just reporting.

### If outer-zone acceptance is weak
Consider:
- increasing remote-zone surcharge,
- increasing cleaner mileage or remote-zone bonus,
- tightening same-day availability in tertiary areas.

### If cleaner hourly earnings are weak
Consider:
- raising cleaner pay on affected tiers,
- shortening drive assignments,
- restricting low-margin remote jobs,
- increasing host-side remote-zone pricing.

### If same-day margins are weak
Consider:
- raising same-day surcharge,
- disallowing same-day for high-complexity combos,
- raising friction surcharges,
- limiting same-day by zone.

### If re-clean or QA failure is high
Consider:
- retraining,
- tighter cleaner eligibility,
- stronger QA gate,
- pricing deep cleans or high-complexity jobs higher.

## 11. Dashboard output format
The pilot dashboard should produce:
- daily operator dashboard
- weekly finance/ops review deck
- monthly pilot scorecard

## 12. Minimum pilot scorecard summary
Every weekly pilot review should end with these five summary lines:
1. Are core-zone jobs profitable at target margin?
2. Are cleaners earning competitive effective hourly pay?
3. Are outer-zone jobs degrading acceptance or margin?
4. Are failure modes rare enough that the model still works?
5. What one pricing, routing, or governance rule should change this week, if any?

## 13. Implementation note
This dashboard spec is only useful if the source system captures job-level actuals, not just quoted values. The highest-priority implementation requirement is therefore reliable logging of:
- actual start / finish times,
- actual travel burden,
- actual payout components,
- actual surcharge collection,
- actual QA and re-clean outcomes.
