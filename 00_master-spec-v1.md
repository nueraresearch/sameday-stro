# Sameday STRO — Master Specification v1

**Status:** authoritative working spec

## 1. Purpose
This document is the current authoritative consolidation of the Sameday STRO document set. It replaces contradictory draft guidance where explicit decisions have already been made, preserves unresolved items as deferred decisions rather than silent assumptions, and downgrades unsupported market claims to assumptions pending evidence.

## 2. Operating thesis
Sameday STRO is a rural short-term-rental operations platform for cleaning, consumables, routing, and marketplace governance.

Core thesis:
- rural STR hosts face cleaner scarcity, long travel times, and service volatility,
- hosts will pay for reliability and reduced operational chaos,
- same-day readiness is valuable but must be constrained by geography, risk, host eligibility, cleaner eligibility, and route feasibility,
- no-rush service protects capacity and reduces SLA failures,
- cleaner behavior, host behavior, and job complexity must all influence dispatch.

## 3. Launch market and service geography
### 3.1 Initial market
Initial region: Monte Vista, Colorado, with a target radius of approximately 50 miles.

Primary launch-critical towns:
- Monte Vista
- Alamosa
- Del Norte
- South Fork

Additional referenced towns:
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
- Same-day service is standard only in core zones.
- South Fork may be premium-eligible when capacity and risk thresholds pass.
- Properties beyond the 30-minute threshold default to no-rush unless dispatch and risk logic explicitly approve same-day.
- Creede does **not** receive a hard category freeze yet. It is handled conservatively until a real operational conflict requires a firmer rule.

## 4. Service lines
- Same-day turnover cleaning
- No-rush cleaning (48–72 hour window)
- Deep clean / scheduled detail clean
- Consumable restock kits
- Optional add-ons: same-day surcharge, linen handling, off-site laundry, pet add-on, trash haul-off

## 5. Public promise and SLA
### 5.1 Public promise
**Same-day service is guaranteed only for eligible member properties that meet published SLA conditions.**

### 5.2 SLA eligibility baseline
A job is SLA-eligible only if all of the following are true:
- booking data was received before cutoff,
- calendar sync is active or approved manual booking data exists,
- property access is confirmed,
- the host has not created a late-checkout conflict,
- property data is sufficiently accurate for pricing and routing,
- no host or cleaner hard-fail restriction is active,
- an eligible cleaner exists,
- time required does not exceed time available.

### 5.3 Same-day beyond 30 minutes
Basic same-day beyond the 30-minute threshold is allowed only with manual review and a positive risk/availability pass.

## 6. Pricing model
### 6.1 Base tier pricing
| Tier | Sq Ft Range | Base Host Price | Base Cleaner Pay |
|---|---:|---:|---:|
| 1 | 0–799 | $100 | $50 |
| 2 | 800–1199 | $115 | $60 |
| 3 | 1200–1499 | $130 | $70 |
| 4 | 1500–1799 | $140 | $80 |
| 5 | 1800–2199 | $155 | $90 |
| 6 | 2200+ | $170 | $100 |

### 6.2 Host pricing modifiers and add-ons
Bathrooms:
- 1 included
- 2 +$10
- 3 +$20
- 4 +$30
- 5+ +$40

Beds:
- 1–2 included
- 3 +$10
- 4 +$20
- 5 +$30
- 6+ +$40

Other add-ons:
- Deep clean +$60
- Same-day +$40
- Consumables +$25
- Linen handling +$20
- Off-site laundry +$15
- Pet add-on +$15
- Trash haul-off +$20, plus mileage if dump is off-route

Mileage:
- Host charge = $0.60 per one-way mile
- Cleaner mileage pay = $0.35 per one-way mile

### 6.3 Host-facing quote display rule
Mileage should be shown separately unless a live location-specific quote is being generated.

## 7. Cleaner payout model
Cleaner payout is always:

**Base Pay + Mileage Pay + Modifier Shares + Add-On Shares + Bonuses (capped by tenure)**

### 7.1 Fixed modifier and add-on shares
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

### 7.2 Bonus structure
Tenure-capped bonuses remain active:
- New cleaner cap: $25/job
- Experienced cleaner cap: $35/job
- Veteran cleaner cap: $45/job

Bonuses are additional incentive components and are separate from the fixed modifier/add-on payout shares.

## 8. Unit economics status
### 8.1 What is currently supported
The base-tier + mileage model is internally coherent under the baseline assumptions already documented.

### 8.2 What is still assumption-driven
Margin claims remain provisional for:
- modifier-heavy jobs,
- same-day compressed jobs,
- deep-clean time expansion,
- pet / linen / trash combinations,
- restricted-host jobs,
- bonus stacking,
- re-cleans and QA failures,
- long tertiary-zone drives,
- seasonal overcapacity.

Unsupported economics claims should remain labeled as assumptions until a full scenario-based contribution model is built.

## 9. Dispatch and routing rules
### 9.1 Dispatch priorities
- Protect SLA windows first.
- Favor shortest feasible travel path among eligible cleaners.
- Do not exceed cleaner capacity limits.
- Route high-complexity and high-risk jobs only to eligible cleaners.
- Default to no-rush instead of breaking the SLA system.

### 9.2 Capacity limits
- Tier 1: max 4/day
- Tier 2: max 3/day
- Tier 3: max 2/day
- Tier 4: max 2/day
- Tier 5: max 1/day
- Tier 6: max 1/day

### 9.3 Deep clean and same-day constraints
- Same-day jobs require dispatch approval, open cleaner schedule, and feasible SLA window.
- Deep cleans require a 2× time block and cannot be assigned after 2 PM.

## 10. Reliability and reputation
### 10.1 Authoritative rolling formula
Cleaner reliability and host reputation both use:

`new_score = 0.85 × previous + 0.15 × last_job`

### 10.2 Authoritative control model
The authoritative model is the unified framework:
- rolling score,
- recent incident counters,
- sample-size minimums,
- hard-fail overrides,
- eligibility gates for same-day, high-complexity, and restricted routing.

Earlier `0.7 / 0.3` scoring docs are historical drafts only.

## 11. Host tiers
Host service governance uses:
- Premium
- Standard
- Restricted

Same-day and deep-clean access are earned privileges, not default entitlements.

## 12. Risk engine
### 12.1 Authoritative structure
Risk handling is layered:
1. hard reject checks,
2. manual review triggers,
3. weighted ranking only among feasible jobs.

### 12.2 Hard reject examples
Auto-reject or block from auto-routing when:
- time required exceeds time available,
- host is under payment or safety lock,
- cleaner is under hard-fail lock,
- no eligible cleaner exists,
- deep clean requested after cutoff,
- same-day request would violate route capacity.

### 12.3 Manual review examples
Manual review is triggered when:
- outer-zone same-day is requested,
- SLA compression exceeds threshold,
- job complexity exceeds threshold,
- host or cleaner is on watchlist,
- travel uncertainty is elevated,
- vehicle mismatch or access ambiguity exists,
- surcharge/dispute conditions are unusual.

## 13. Governance status
The executive charter is not the binding operating law.
The authoritative governance layer should be a rewritten binding policy that includes:
- explicit triggers,
- lock/restriction authority,
- appeal windows,
- evidence standards,
- payout/refund/surcharge rules,
- safety escalation,
- audit logging.

## 14. Onboarding status
The onboarding architecture is directionally strong but remains **v1 draft**, not production-ready.
It still needs:
- worker classification,
- tax and payout setup,
- agreement capture,
- background-check consent and adverse-action workflow,
- host payment verification,
- stronger property verification,
- review queues and statuses.

## 15. Technical status
The current product docs are adequate for system design discussion but not yet implementation-grade.
Still needed:
- authoritative data model,
- required/optional fields,
- enums,
- event contracts,
- retry/idempotency rules,
- auth/permissions model,
- audit model,
- integration contracts.

## 16. Assumptions vs facts
### 16.1 Facts internal to the current system
- The system is consistently designed as a rural, zone-aware STR operations platform.
- Base-tier pricing and mileage assumptions are internally coherent under the baseline scenario.
- Same-day service cannot be treated as universal without breaking the operating logic.

### 16.2 Assumptions pending evidence
- TAM/SAM/SOM counts.
- Cleaner scarcity severity by town.
- Willingness to pay by submarket.
- CAC, retention, and LTV assumptions.
- Full add-on margin safety.
- Competitive vacuum claims.

## 17. Frozen decisions
1. Creede hard classification is deferred until a live conflict requires a firm rule.
2. Basic same-day beyond 30 minutes requires manual review and positive risk/availability pass.
3. Authoritative scoring formula is `0.85 / 0.15`.
4. Risk engine uses layered gating first, weighted ranking second.
5. Mileage is shown separately unless a live quote is generated.
6. Cleaner modifier/add-on payout shares are fixed as listed in Section 7.1.
7. Unsupported evidence claims are downgraded to assumptions until sourced.
8. Governance summary is not authoritative; binding policy is authoritative.
9. Onboarding remains v1 draft until legal/payment/review controls are added.
