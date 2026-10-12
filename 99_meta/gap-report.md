# Sameday STRO — Cross-File Gap Report

This report reviews every substantive document in the bundle and identifies: purpose, strengths, gaps, contradictions, and next action.

## Global assessment

### Overall strengths
- Clear wedge: rural STR operations with same-day readiness as the core promise.
- Real operator logic appears in routing, zoning, same-day constraints, and no-rush buffering.
- Later documents introduce better control layers: reliability, host reputation, risk, tiering, and onboarding.
- The document set now covers strategy, operations, product, governance, and onboarding instead of only pitch language.

### Global gaps
- Evidence is still weak relative to the confidence of the claims.
- Economic modeling is strongest at the base-tier level, but still incomplete for modifiers, add-ons, re-cleans, exceptions, and capacity shocks.
- Governance is still more descriptive than enforceable.
- Product specs are still system maps, not implementation-grade technical specs.
- Onboarding is not yet deployable because payroll/legal/payment verification details are missing.
- Several documents retain optimistic “final / production-ready / investor-grade / YC-grade” language that should be toned down until proof catches up.

---

## 00_INDEX.md
**Purpose:** document map for the bundle.

**What works:**
- Clear entry point.
- Organizes the set into foundation, finance, operations, product, governance, onboarding, and meta.

**Gaps:**
- No status tags (draft, superseded, current).
- No indication of which docs are authoritative vs historical.

**Recommendation:**
Add columns or badges for `status`, `authority`, and `supersedes`.

---

## 01_foundation/01_business-plan-and-software-spec.md
**Purpose:** original combined concept document.

**What works:**
- Strong initial wedge articulation.
- Good high-level framing of membership + cleaning + consumables + automation.
- Captures the origin logic behind the whole system.

**Gaps:**
- Too many unsupported market and margin claims.
- Broad same-day guarantee language predates later constraints.
- Software section is a feature inventory rather than build spec.

**Recommendation:**
Keep as historical foundation only. Do not treat as authoritative for current operations or technical design.

---

## 02_strategy_finance/02_investor-memo_launch-market_monte-vista.md
**Purpose:** launch-market memo for Monte Vista ±50 miles.

**What works:**
- Better than the foundation doc because it localizes the thesis.
- Geography and travel-time framing make the wedge more believable.
- Introduces staffing concept and phased rollout.

**Gaps:**
- TAM/SAM/SOM still look modeled rather than evidenced.
- “No competition” and willingness-to-pay claims are too strong.
- Unit economics remain summarized rather than fully derived.
- Creede appears both high-value/secondary and operationally constrained.

**Recommendation:**
Keep as an internal market memo. Downgrade unsupported claims to assumptions until sourced.

---

## 02_strategy_finance/05_evidence-appendix-and_sla-ltv-cac-notes.md
**Purpose:** evidence appendix plus finance terminology notes.

**What works:**
- Identifies the right categories of evidence to seek: travel, labor flows, variability, workforce dynamics, Colorado routing context.
- Useful as a scaffold for a future real appendix.

**Gaps:**
- Not a true evidence appendix yet: no URLs, source titles, dates, or verbatim evidence.
- Treats modeled outputs as if externally validated.
- LTV/CAC section still uses assumed retention and CAC figures.

**Recommendation:**
Reclassify as `assumptions-and-evidence-plan.md` until the sourcing is done.

---

## 02_strategy_finance/06_unit-economics_final-6-tier-mileage-model.md
**Purpose:** base unit-economics model.

**What works:**
- Best numeric artifact in the bundle.
- Base-tier + mileage math is coherent under the stated assumptions.
- Cleaner pay ladder is simple and operationally legible.

**Gaps:**
- Does not yet cost add-ons, re-cleans, exception handling, overtime, admin escalation, or bonus stacking.
- Monthly capacity ranges are still assumptions without a capacity model.
- LTV/CAC outputs inherit weak upstream assumptions.

**Recommendation:**
Treat this as the baseline economics sheet, not the finished economics model.

---

## 02_strategy_finance/07_final-pricing-table_v4.md
**Purpose:** host-facing pricing structure.

**What works:**
- Clear price ladder.
- Bathroom / bed modifiers reflect real labor drivers.
- Mileage rule is easy to understand.
- Add-on menu is commercially legible.

**Gaps:**
- Example totals conflict with the formula by omitting mileage.
- “21–27% margins after modifiers and mileage” is not proved here.
- Add-ons are priced but not fully costed.

**Recommendation:**
Fix example formatting and move unsupported margin claims to internal notes only.

---

## 03_operations/03_operations-playbook_launch-region_monte-vista.md
**Purpose:** service-area and SLA operating playbook.

**What works:**
- One of the strongest docs in the set.
- Zone logic, cutoff times, compliance rules, and failure handling all move in the right direction.
- Dispatch framing feels operator-led rather than pitch-led.

**Gaps:**
- Still needs explicit standard cleaning-time assumptions and route-capacity math.
- Basic-tier radius rule conflicts with no-rush threshold.
- Needs more explicit service-failure remedy rules.

**Recommendation:**
Promote this as a core ops draft, but reconcile zone/radius conflicts before treating it as authoritative.

---

## 03_operations/08_ops-playbook_labor-and-routing.md
**Purpose:** labor payout and routing logic.

**What works:**
- Makes cleaner pay and routing constraints more concrete.
- Adds duration estimates and rule-based dispatch controls.
- Good focus on SLA feasibility.

**Gaps:**
- Statement that cleaners receive 100% of modifiers creates downstream margin implications not fully reflected elsewhere.
- Duration bands are still rough and not tied to measured field data.
- Reliability references point back to an earlier, now superseded scoring model.

**Recommendation:**
Keep, but update it after the scoring and payout conflicts are resolved.

---

## 03_operations/11_cleaner-reliability-scoring-system.md
**Purpose:** original cleaner scoring model.

**What works:**
- Good first attempt at operationalizing cleaner quality.
- Inputs are sensible: punctuality, SLA success, QA, feedback, reporting behavior.

**Gaps:**
- Now superseded conceptually by the dampened-score unified framework.
- `0.7 / 0.3` weighting is too volatile.
- Uses a single scalar more heavily than later logic supports.

**Recommendation:**
Mark as superseded by `05_governance/14_unified-reliability-framework.md`.

---

## 03_operations/15_cleaner-bonus-system_v5.md
**Purpose:** tenure-aligned bonus structure.

**What works:**
- Clever retention logic.
- Tenure caps are psychologically understandable.
- Integrates performance, complexity, SLA, and risk.

**Gaps:**
- Still not proven against full job-level contribution margins.
- Interaction with modifier pass-through may make some jobs too generous relative to earlier models.
- Tenure is being used both as retention ladder and routing signal; that coupling should be reviewed.

**Recommendation:**
Keep as policy draft pending cost-model validation.

---

## 04_product/04_mvp-prd.md
**Purpose:** high-level product requirements document.

**What works:**
- Good first system decomposition into entities, workflows, states, and permissions.
- Better than the foundation software section because it recognizes state machines and billing events.

**Gaps:**
- Still too conceptual for implementation.
- Missing required/optional fields, enums, validation rules, audit fields, idempotency, error handling, and source-of-truth definitions.
- State machines are not yet event-triggered or exception-complete.

**Recommendation:**
Treat as PRD v0 only.

---

## 04_product/09_prd_pricing-logic-and-routing-logic.md
**Purpose:** product requirements for pricing and routing.

**What works:**
- Moves core pricing and routing rules into something closer to executable requirements.
- Duration model and cleaner-capacity constraints are useful.

**Gaps:**
- Some payout assumptions conflict with base-margin assumptions elsewhere.
- Routing feasibility still relies on simplified time logic.
- No formal API/DB/event contract language yet.

**Recommendation:**
Use as a rules reference, not a final implementation document.

---

## 04_product/10_system-architecture_v1.md
**Purpose:** backend/frontend/service decomposition.

**What works:**
- Helpful system map.
- Separates pricing, routing, SLA, QA, and user surfaces.
- Good for communicating the overall shape of the platform.

**Gaps:**
- Not an architecture spec yet; still missing persistence, eventing, integration boundaries, auth, observability, retries, and failure domains.
- Many services are named, but contracts between them are not defined.

**Recommendation:**
Keep as architecture overview only.

---

## 04_product/17_full-system-diagram_architecture-map.md
**Purpose:** consolidated architecture diagram in prose form.

**What works:**
- Good executive systems map.
- Shows end-to-end event flow.
- Useful for onboarding humans into the concept.

**Gaps:**
- Inherits unresolved contradictions from upstream docs.
- Should not be treated as authoritative until pricing, risk, scoring, and governance conflicts are resolved.

**Recommendation:**
Regenerate this after the master spec is approved.

---

## 05_governance/12_host-reputation-scoring-system.md
**Purpose:** original host scoring model.

**What works:**
- Correctly recognizes that host behavior affects routing, cleaner experience, and margins.

**Gaps:**
- Early `0.7 / 0.3` score is too volatile.
- Over-relies on a single scalar.
- Now conceptually superseded by the unified framework + host tiering documents.

**Recommendation:**
Mark as superseded by the unified framework and host tiering docs.

---

## 05_governance/13_risk-engine_sla-cleaner-host-complexity.md
**Purpose:** numerical job-risk model.

**What works:**
- Important conceptual leap: centralized risk model combining SLA, cleaner, host, complexity, and travel.
- Defines useful outputs like manual review and auto-reject.

**Gaps:**
- Weighted formula underreacts to near-impossible jobs.
- Complexity function saturates too early.
- Should not be primary risk logic without hard-reject and escalation layers.

**Recommendation:**
Retain the concept, but replace the formula with layered gating in the master spec unless you decide otherwise.

---

## 05_governance/14_unified-reliability-framework.md
**Purpose:** improved control framework for cleaners and hosts.

**What works:**
- Strongest governance/control document in the set.
- Fixes the volatility problem with dampened scores.
- Adds incident counters, sample-size minimums, and hard-fail overrides.
- Correctly reframes dispatch as multi-factor rather than scalar-only.

**Gaps:**
- Needs final authority over earlier scoring docs.
- Still needs to be translated into exact enforcement clauses and DB-friendly fields.

**Recommendation:**
Use this as the baseline for all future reliability/tiering logic.

---

## 05_governance/16_host-tiering_v2.md
**Purpose:** host governance and routing consequence model.

**What works:**
- Good marketplace-governance direction.
- Connects host behavior to routing privileges, cleaner exposure, and pricing outcomes.

**Gaps:**
- Depends on unresolved risk-engine decisions.
- Some tenure-routing couplings may be more complex than needed for v1 launch.
- “Premium / Standard / Restricted” needs binding rule text, not just descriptive language.

**Recommendation:**
Keep as the policy direction, then reduce to simpler launch rules if needed.

---

## 05_governance/18_marketplace-governance-charter.md
**Purpose:** marketplace-level governance summary.

**What works:**
- Proper top-layer framing of rights, responsibilities, protections, penalties, and roles.
- Good executive governance narrative.

**Gaps:**
- Not yet enforceable.
- Missing explicit lock authority, evidence standards, appeals windows, money governance, safety protocol, and audit logging requirements.
- Still reads as a summary layer.

**Recommendation:**
Rewrite as enforceable policy; keep current form only as executive summary.

---

## 06_onboarding/19_cleaner-and-host-onboarding_v1.md
**Purpose:** onboarding system for cleaners and hosts.

**What works:**
- Strong conceptual integration of vehicle, probation, tiering, reliability, and host progression.
- Good call to delay same-day / premium privileges until behavior is proven.

**Gaps:**
- Missing worker classification, tax/payout setup, contract acceptance, payment verification, property verification workflow, and review ownership.
- Vehicle penalty stack is too blunt.
- “Production-ready” claim is ahead of the actual implementation detail.

**Recommendation:**
Retain as onboarding architecture draft; convert to state-machine onboarding spec next.

---

## 99_meta/review-log.md
**Purpose:** summary of review conclusions.

**What works:**
- Accurate snapshot of the major weaknesses and strengths across the cycle.
- Useful as a sanity check against overclaiming in the rest of the docs.

**Gaps:**
- None major; this file is useful as-is.

**Recommendation:**
Keep and extend as decisions are resolved.

---

## Priority gaps to close first
1. Resolve contradictions in the conflict register.
2. Build a real grounded evidence appendix with citations and quotes.
3. Build a full job-level economics model including add-ons, re-cleans, and exception handling.
4. Rewrite the charter as enforceable policy.
5. Convert onboarding into an implementation-grade state-machine and review workflow spec.
6. Produce a true technical master spec with authoritative rules, states, fields, and event contracts.
