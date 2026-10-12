# Sameday STRO — Master Specification Draft v0.1

**Status:** working draft

**Purpose:**
This document consolidates the current document set into one cleaner operating and product specification, while intentionally flagging unresolved conflicts for user decision instead of silently choosing contradictory rules.

---

## 1. Executive summary
Sameday STRO is a rural short-term-rental operations platform for cleaning, consumables, scheduling, and service governance. The operating thesis is:
- rural STR hosts face cleaner scarcity, long travel times, and service volatility,
- hosts will pay for reliability and reduced operational chaos,
- same-day readiness can be monetized only when bounded by geography, eligibility rules, and routing discipline,
- no-rush service preserves capacity and reduces SLA failure risk,
- cleaner quality, host behavior, and job complexity must all feed into dispatch and governance decisions.

This draft does **not** treat all earlier claims as settled fact. Unsupported market and financial assertions are preserved here only as assumptions until independently evidenced.

---

## 2. Scope and launch market
### 2.1 Initial market
Initial operating region: Monte Vista, Colorado, with a target service radius of approximately 50 miles.

Core towns consistently treated as launch-critical:
- Monte Vista
- Alamosa
- Del Norte
- South Fork

Additional towns referenced in the doc set:
- Creede
- Saguache
- Antonito
- Villa Grove
- Hooper
- Mosca
- La Jara
- Manassa
- Sanford

### 2.2 Geographic policy
The launch market includes Monte Vista, Alamosa, Del Norte, South Fork, and additional surrounding towns referenced in the source set.

**Creede policy:** no hard classification is frozen at this stage. The system should not force a rigid category until a real operational conflict requires a rule. Until then, dispatch should treat Creede conservatively when SLA feasibility, travel time, or cleaner availability are uncertain.

**Basic same-day beyond 30 minutes:** same-day service beyond the 30-minute threshold is allowed only with manual review and a positive risk/availability pass. The default offer outside the threshold remains no-rush.

**Current operating interpretation:**
- Same-day service is standard only in core zones.
- South Fork may be premium-eligible when capacity and risk thresholds pass.
- Outer-radius properties default to no-rush unless dispatch and risk logic explicitly approve same-day.
- Creede remains a deferred-classification zone handled conservatively until a live conflict forces a firmer rule.

---

## 3. Service model
### 3.1 Service lines
- Same-day turnover cleaning
- No-rush cleaning (48–72 hour window)
- Deep clean / scheduled detail clean
- Consumable restock kits
- Optional add-ons: linen service, pet load, trash haul-off, same-day surcharge

### 3.2 Public operating promise — draft
**Proposed public promise:**
“Same-day service is guaranteed only for eligible member properties that meet published SLA conditions.”

This wording replaces earlier broader claims such as “guaranteed same-day turnover” without qualification.

### 3.3 SLA conditions — draft baseline
A job is SLA-eligible only if all of the following are true:
- booking data was received before the cutoff,
- calendar sync is active or approved manual booking entry exists,
- property access is confirmed,
- host has not created a late-checkout conflict,
- property data is sufficiently accurate for routing and pricing,
- no hard-fail governance condition is active,
- an eligible cleaner exists,
- time required does not exceed time available.

---

## 4. Pricing model — consolidated draft
### 4.1 Base tier pricing
Current base pricing referenced across the set:

| Tier | Sq Ft Range | Base Host Price | Base Cleaner Pay |
|---|---:|---:|---:|
| 1 | 0–799 | $100 | $50 |
| 2 | 800–1199 | $115 | $60 |
| 3 | 1200–1499 | $130 | $70 |
| 4 | 1500–1799 | $140 | $80 |
| 5 | 1800–2199 | $155 | $90 |
| 6 | 2200+ | $170 | $100 |

### 4.2 Modifiers and add-ons currently referenced
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
- 6 +$40
- 7+ +$50

Mileage:
- host charge: $0.60 per one-way mile
- cleaner mileage pay: $0.35 per one-way mile in most documents

Add-ons:
- deep clean +$60
- same-day +$40
- consumables +$25
- linen service +$20
- off-site laundry +$15
- pet +$15
- trash haul-off +$20, with additional mileage if off-route

### 4.3 Pricing policy
Host-facing pricing examples should show mileage separately unless a live location-specific quote is being generated.

### 4.4 Confirmed cleaner payout shares
The following payout shares are confirmed:

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

Mileage pay remains separate at $0.35 per one-way mile.

### 4.5 Master-spec treatment
These pricing and payout rules are now fixed inputs for future economic validation. However, margin claims beyond the baseline model should still be treated as assumptions until the full scenario model is updated using these payout shares.

---

## 5. Unit economics — consolidated baseline
### 5.1 What is currently supported by the document set
Under the baseline model using 18 one-way miles, $0.60 host mileage, $0.35 cleaner mileage, stated consumables, and $8 overhead, the base tier margins are internally coherent.

### 5.2 What is not yet proven
The current doc set does **not** yet fully prove contribution margin under:
- bathroom and bed modifier load,
- same-day compressed jobs,
- deep-clean time expansion,
- pet / linen / trash combinations,
- restricted-host jobs,
- bonus stacking,
- re-clean or QA failure scenarios,
- long tertiary-zone drives,
- seasonal overcapacity.

### 5.3 Master-spec treatment
All margin claims beyond the base-tier model should be treated as assumptions until replaced by a scenario-based economics model.

---

## 6. Operations model — consolidated draft
### 6.1 Zone logic
- Core zones: strongest support for same-day guarantees.
- Secondary/high-value zones: potentially premium-eligible when travel and risk remain acceptable.
- Outer/tertiary zones: default toward no-rush or manual review.

### 6.2 Dispatch principles
- Protect SLA windows first.
- Favor shortest feasible travel path among eligible cleaners.
- Do not assign jobs beyond cleaner capacity limits.
- Route high-complexity and high-risk jobs only to cleaners who meet the required eligibility class.
- Default to no-rush instead of breaking the SLA system.

### 6.3 Duration model
Current duration bands are operational estimates, not measured field distributions. They can be used as draft routing assumptions but should be replaced by observed production data once available.

---

## 7. Reliability, reputation, and eligibility
### 7.1 Authoritative rolling formula
Cleaner reliability and host reputation both use the dampened rolling formula:
\[
new\_score = 0.85 	imes previous + 0.15 	imes last\_job
\]

### 7.2 Eligibility model
The authoritative direction is the unified framework:
- rolling score,
- incident counters,
- sample-size minimums,
- hard-fail overrides,
- separate eligibility gates for same-day, high complexity, and restricted routing.

### 7.3 Master-spec treatment
Earlier cleaner and host scoring docs that use `0.7 / 0.3` should be treated as historical drafts, not current operating policy.

---

## 8. Risk engine — authoritative direction
The authoritative risk structure is layered:
1. Hard reject checks first.
2. Manual review triggers second.
3. Weighted score only among feasible jobs.

### 8.1 Proposed hard reject triggers
Auto-reject or block from auto-routing when any of the following is true:
- time required > time available,
- host is under payment or safety lock,
- cleaner is under hard-fail lock,
- no eligible cleaner exists,
- deep clean requested after the operational cutoff,
- same-day request would violate route capacity.

### 8.2 Proposed manual review triggers
Require manual review when any of the following is true:
- outer-zone same-day request,
- compressed SLA window above threshold,
- high-complexity job,
- restricted or watchlist host,
- watchlist cleaner,
- adverse weather or travel uncertainty,
- vehicle mismatch or access ambiguity,
- unusual surcharge or dispute conditions.

### 8.3 Weighted ranking among feasible jobs
Only after hard rejects and manual-review gates pass should a weighted score be used for sequencing and staffing choice.

---

## 9. Bonus system — draft authoritative direction
The tenure-aligned bonus system remains part of the operating model, and modifier/add-on payout shares are separate from bonus logic.

### 9.1 Current draft logic
- new cleaner cap: $25/job
- experienced cleaner cap: $35/job
- veteran cleaner cap: $45/job
- components: performance, complexity, SLA, risk

### 9.2 Rule boundary
Modifier shares and add-on shares are fixed payout components. Bonuses are additional incentive components that remain tenure-capped.

---

## 10. Host tiering — draft authoritative direction
Current best direction:
- Premium host
- Standard host
- Restricted host

Tiering should be based on:
- dampened reputation score,
- incident counters,
- minimum turnover history,
- hard-fail overrides,
- risk interaction for certain privileges.

**Current safe draft rule:**
Same-day and deep-clean access are earned privileges, not default entitlements.

---

## 11. Governance model — authoritative direction
The executive charter should not be treated as the binding operating law. The authoritative governance document should be a rewritten binding policy that includes:
- explicit triggers,
- authority to lock/restrict,
- appeal windows,
- evidence standards,
- payout/refund/surcharge rules,
- safety escalation flow,
- audit logging requirements.

The current charter may remain as an executive summary layer if useful.

---

## 12. Onboarding model — current authoritative status
The onboarding architecture is strong directionally, especially around:
- cleaner probation,
- vehicle declaration,
- delayed privilege unlocks,
- host property and expectation setup.

But the authoritative version still needs:
- worker classification path,
- tax and payout setup,
- agreement capture,
- background-check consent / adverse-action workflow,
- host payment verification,
- stronger property verification,
- review queues and statuses.

The onboarding document should be labeled **v1 draft**, not production-ready, until those controls are added.

---

## 13. Technical implementation status
The current product docs support system design discussion, but not build execution.

To become implementation-grade, the master spec still needs:
- authoritative data model,
- required/optional fields,
- enums,
- state transitions,
- event contracts,
- retry/idempotency rules,
- auth/permissions model,
- audit model,
- integration contract definitions.

---

## 14. Assumptions vs facts
### Facts internal to the current draft system
- The document set consistently aims for a rural, zone-aware STR operations platform.
- Base-tier pricing and mileage assumptions are internally coherent under the baseline scenario.
- Same-day service cannot be treated as universal without breaking the rest of the operating logic.

### Assumptions pending evidence
- TAM/SAM/SOM counts.
- Cleaner scarcity severity by town.
- Willingness to pay by submarket.
- CAC, retention, and LTV assumptions.
- Margin safety under the full add-on and exception mix.
- Competitive vacuum claims.

---

## 15. Decisions resolved
The following decisions are now resolved in this draft:

1. **Creede policy:** deferred until a live operational conflict requires a firmer rule.
2. **Basic same-day beyond 30 minutes:** allowed only with manual review and a positive risk/availability pass.
3. **Authoritative scoring formula:** `0.85 / 0.15`.
4. **Risk engine structure:** layered gating first, weighted ranking second.
5. **Host-facing mileage display:** mileage shown separately unless a live location-specific quote is generated.
6. **Cleaner payout shares:** fixed per-add-on / per-modifier table adopted in Section 4.4.
7. **Evidence treatment:** unsupported market and evidence claims downgraded to assumptions until sourced.
8. **Governance charter role:** executive charter becomes summary; rewritten binding policy becomes authoritative.
9. **Onboarding status label:** v1 draft, not production-ready.

## 16. Remaining live issue
No major issue in the original 1–9 decision set remains unresolved, but the deferred Creede classification will need an explicit rule when an actual operational conflict arises.
