# Sameday STRO — Authoritative Master Specification v1

**Status:** authoritative working spec  
**Scope:** launch-market operating model, pricing rules, routing rules, reliability logic, host governance, cleaner payout rules, onboarding status, and policy boundaries for Sameday STRO.

## 1. Purpose
This is the primary source of truth for the current Sameday STRO concept bundle. When earlier draft files conflict with this document, this document wins.

This spec intentionally distinguishes between:
- **authoritative rules** — current operating decisions
- **draft architecture** — design direction not yet hardened
- **assumptions** — claims still awaiting evidence or field validation

## 2. Business thesis
Sameday STRO is a rural short-term-rental operations platform built around:
- same-day turnover service for eligible properties
- no-rush capacity buffering for lower-priority or outer-zone jobs
- consumable restocking
- cleaner reliability governance
- host behavior governance
- dispatch controls that prioritize SLA protection over universal acceptance

The core operating belief is that rural STR markets are underserved because cleaner supply is thin, travel is long, and operational variability is high.

## 3. Launch market
### 3.1 Initial geography
Initial operating region: Monte Vista, Colorado, with a target service radius of approximately 50 miles.

Core towns consistently treated as launch-critical:
- Monte Vista
- Alamosa
- Del Norte
- South Fork

Additional towns referenced in the current bundle:
- Creede
- Saguache
- Antonito
- Villa Grove
- Hooper
- Mosca
- La Jara
- Manassa
- Sanford

### 3.2 Geographic operating rule
Creede is intentionally **not hard-classified** yet. Until a live operational conflict forces a firm rule, dispatch should treat Creede conservatively whenever travel time, availability, or SLA feasibility is uncertain.

### 3.3 Same-day beyond 30 minutes
Basic same-day service beyond the 30-minute threshold is **not automatic**. It is allowed only when:
- dispatch manually reviews the job,
- the risk/availability check passes,
- an eligible cleaner exists,
- route capacity remains intact.

Default outside the threshold: **offer no-rush**.

## 4. Public promise
### 4.1 Same-day promise
Authoritative public promise:

> Same-day service is guaranteed only for eligible member properties that meet published SLA conditions.

This replaces broader earlier wording such as “guaranteed same-day turnover” without qualification.

### 4.2 SLA eligibility baseline
A job is eligible for the same-day guarantee only if all of the following are true:
- booking data is received before the cutoff,
- calendar sync is active or approved manual booking entry exists,
- property access is confirmed,
- host behavior has not created a late-checkout or access conflict,
- property data is accurate enough for pricing and routing,
- no host hard-fail lock is active,
- no cleaner hard-fail lock is active for the assigned cleaner,
- an eligible cleaner exists,
- time required does not exceed time available,
- dispatch and risk controls allow the job.

## 5. Service lines
- Same-day turnover cleaning
- No-rush cleaning (48–72 hour window)
- Deep clean / scheduled detail clean
- Consumable restocking
- Optional add-ons:
  - same-day surcharge
  - deep clean
  - consumables
  - linen handling
  - off-site laundry
  - pet add-on
  - trash haul-off

## 6. Pricing rules
### 6.1 Base host pricing and base cleaner pay
| Tier | Sq Ft Range | Base Host Price | Base Cleaner Pay |
|---|---:|---:|---:|
| 1 | 0–799 | $100 | $50 |
| 2 | 800–1199 | $115 | $60 |
| 3 | 1200–1499 | $130 | $70 |
| 4 | 1500–1799 | $140 | $80 |
| 5 | 1800–2199 | $155 | $90 |
| 6 | 2200+ | $170 | $100 |

### 6.2 Modifier pricing
**Bathrooms**
- 1 included
- 2 +$10
- 3 +$20
- 4 +$30
- 5+ +$40

**Beds**
- 1–2 included
- 3 +$10
- 4 +$20
- 5 +$30
- 6+ +$40

### 6.3 Add-on host pricing
- Deep clean: +$60
- Same-day: +$40
- Consumables: +$25
- Linen handling: +$20
- Off-site laundry: +$15
- Pet add-on: +$15
- Trash haul-off: +$20
- Additional dump mileage if off-route

### 6.4 Mileage pricing rule
- Host mileage charge: **$0.60 per one-way mile**
- Cleaner mileage pay: **$0.35 per one-way mile**

### 6.5 Host-facing quote rule
Mileage should be shown **separately** in host-facing examples unless the system is generating a live location-specific quote.

That means example pricing should not imply mileage is already bundled into the add-on total unless explicitly stated.

### 6.6 Final host price formula
\[
Total\ Price = Base\ Tier\ Price + Bathroom\ Modifier + Bed\ Modifier + (0.60 \times OneWayMiles) + AddOns
\]

## 7. Cleaner payout rules
Cleaner payout is always:

**Base Pay + Mileage Pay + Modifier Shares + Add-On Shares + Bonuses (capped by tenure)**

### 7.1 Modifier and add-on payout shares
| Modifier / Add-On | Host Charge | Cleaner Share | Cleaner % |
|---|---:|---:|---:|
| Bathroom modifier | +$10 / +$20 / +$30 / +$40 | $6 / $12 / $18 / $24 | 60% |
| Bed modifier | +$10 / +$20 / +$30 / +$40 | $6 / $12 / $18 / $24 | 60% |
| Deep clean | +$60 | $40 | 66.7% |
| Same-day | +$40 | $25 | 62.5% |
| Consumables | +$25 | $15 | 60% |
| Linen handling | +$20 | $12 | 60% |
| Off-site laundry | +$15 | $10 | 66.7% |
| Pet add-on | +$15 | $10 | 66.7% |
| Trash haul-off | +$20 | $12 | 60% |

Mileage pay remains separate.

### 7.2 Bonus system boundary
Bonuses are additional incentive components and are **not** the same as modifier/add-on shares.

Bonus caps by tenure remain:
- New (0–12 months): max $25/job
- Experienced (13–36 months): max $35/job
- Veteran (37+ months): max $45/job

## 8. Unit-economics status
### 8.1 What is supported
The baseline 6-tier price ladder plus mileage assumptions are internally coherent under the documented scenario model.

### 8.2 What is still assumption-driven
The current bundle does **not yet** fully prove job-level contribution margin under:
- high modifier load
- deep-clean time expansion
- same-day compression
- re-cleans
- disputes
- weather disruptions
- outer-zone exceptions
- full bonus interactions
- restricted-host jobs

Until a scenario model is rebuilt using the locked payout table, those margin claims remain assumptions.

## 9. Operations and routing
### 9.1 Dispatch priorities
Dispatch should follow this order:
1. protect SLA windows,
2. confirm eligibility,
3. check route feasibility,
4. favor the shortest feasible travel path,
5. avoid over-capacity,
6. prefer no-rush over breaking the same-day system.

### 9.2 Same-day routing stance
Same-day service is an earned and constrained service level, not a universal default.

### 9.3 No-rush role
No-rush exists to:
- protect same-day capacity,
- buffer rural travel complexity,
- avoid forcing risky jobs into compressed windows.

## 10. Reliability and reputation rules
### 10.1 Authoritative rolling formula
Cleaner reliability and host reputation both use:
\[
new\_score = 0.85 \times previous + 0.15 \times last\_job
\]

### 10.2 Why this formula is authoritative
This formula is slower-moving than the earlier 0.7 / 0.3 model and fits the later governance design better because the system already has:
- incident counters,
- sample-size minimums,
- hard-fail overrides,
- manual review,
- tier locks.

### 10.3 Historical draft treatment
Any earlier document using `0.7 / 0.3` should be treated as historical draft logic only.

## 11. Eligibility framework
The authoritative eligibility structure is the unified framework:
- rolling score,
- incident counters,
- sample-size minimums,
- hard-fail overrides,
- separate privilege gates for same-day, high-complexity, and restricted routing.

### 11.1 Cleaner eligibility direction
Cleaner access to same-day, large cabins, and high-complexity jobs should depend on:
- current score,
- completed job count,
- recent incident counters,
- absence of hard-fails.

### 11.2 Host eligibility direction
Host access to same-day, deep-clean, and premium routing should depend on:
- current score,
- turnover count,
- incident counters,
- absence of hard-fails,
- payment status.

## 12. Risk engine
### 12.1 Authoritative risk structure
The authoritative risk structure is:
1. hard rejects first,
2. manual-review triggers second,
3. weighted score only among feasible jobs.

The earlier weighted average formula may remain a secondary ranking input, but it is **not** the sole or primary decision engine.

### 12.2 Hard reject examples
A job should be auto-rejected or blocked from auto-routing when any of the following is true:
- time required exceeds time available,
- no eligible cleaner exists,
- host is under payment or safety lock,
- cleaner is under hard-fail lock,
- same-day request would break route capacity,
- deep clean is requested after operational cutoff,
- access/safety conditions make service unsafe.

### 12.3 Manual review examples
Require manual review when any of the following is true:
- outer-zone same-day request,
- compressed SLA window,
- high-complexity job,
- restricted or watchlist host,
- watchlist cleaner,
- vehicle mismatch,
- travel uncertainty,
- unusual surcharge or dispute condition.

## 13. Host tiering
Authoritative host tiers:
- Premium
- Standard
- Restricted

### 13.1 Tier philosophy
Same-day and deep-clean access are earned privileges, not default entitlements.

### 13.2 Restricted host meaning
Restricted hosts may face:
- manual dispatch review,
- same-day disabled,
- deep-clean disabled,
- reduced cleaner pool,
- cleaner decline without penalty,
- surcharge exposure,
- SLA guarantee removal.

## 14. Governance status
### 14.1 Charter vs policy
The existing marketplace charter is treated as an executive summary layer.

The **binding authoritative governance document** should be a separate operations policy defining:
- enforcement triggers,
- lock authority,
- evidence standards,
- appeals,
- refund and surcharge rules,
- safety escalation,
- audit logging.

## 15. Onboarding status
The onboarding architecture is directionally useful, but it is **v1 draft**, not production-ready.

Missing before production-ready status:
- worker classification path,
- tax and payout setup,
- agreement capture,
- background-check consent and adverse-action flow,
- host payment verification,
- stronger property verification,
- review queues and statuses.

## 16. Evidence status
The following remain assumptions pending sourcing:
- TAM/SAM/SOM counts
- local willingness to pay
- cleaner scarcity severity by town
- CAC and retention assumptions
- LTV outputs
- competitive-vacuum claims
- full-margin safety under the final payout table

## 17. Document authority map
### 17.1 Authoritative now
- This file
- `03_operations/20_cleaner-payout-shares_final.md`
- `99_meta/decision-log.md`

### 17.2 Draft but useful
- operations playbooks
- MVP PRD
- architecture docs
- onboarding draft
- market memo

### 17.3 Historical / partially superseded
- earlier 0.7 / 0.3 scoring docs
- weighted-formula-only risk treatment
- earlier “100% of every modifier/add-on to cleaner” payout language
- broad unqualified same-day guarantee phrasing

## 18. Remaining live issue
No major issue in the 1–9 decision set remains unresolved.

The only intentionally deferred item is Creede classification, which should stay flexible until a real operational conflict requires a hard rule.
