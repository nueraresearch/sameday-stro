# Sameday STRO — Conflict Register for Resolution

This file lists the main contradictions and unresolved decisions found across the current document set. Each item should be resolved before a final authoritative spec is frozen.

## C-01 — Creede service classification
**Conflict:**
- Investor memo treats Creede as a secondary / high-value town.
- Operations playbook treats Creede as tertiary / constrained / often no-rush.

**Where it appears:**
- `02_strategy_finance/02_investor-memo_launch-market_monte-vista.md`
- `03_operations/03_operations-playbook_launch-region_monte-vista.md`

**Decision needed:**
Choose one of the following:
1. Creede is **secondary/high-value but operationally tertiary**.
2. Creede is **fully tertiary** for both strategy and ops.
3. Creede is **premium-eligible only under explicit seasonal/capacity conditions**.

**Recommended default:** Option 1 or 3.

---

## C-02 — Basic tier radius vs no-rush threshold
**Conflict:**
- Some docs say Basic is available across the full 50-mile radius.
- Other docs say no-rush applies to properties more than 30 minutes from cleaner origin.

**Where it appears:**
- `02_strategy_finance/02_investor-memo_launch-market_monte-vista.md`
- `03_operations/03_operations-playbook_launch-region_monte-vista.md`

**Decision needed:**
Define whether Basic same-day can ever apply beyond the 30-minute threshold.

**Recommended default:**
Basic same-day is allowed only when the risk engine and cleaner availability approve it; otherwise the default offer is no-rush.

---

## C-03 — Which reliability formula is authoritative
**Status:** resolved.

**Resolution:** use `0.85 / 0.15` for cleaner reliability and host reputation rolling updates.

**Where it appears:**
- `03_operations/11_cleaner-reliability-scoring-system.md`
- `05_governance/12_host-reputation-scoring-system.md`
- `05_governance/14_unified-reliability-framework.md`
- `05_governance/16_host-tiering_v2.md`

**Action:** treat earlier `0.7 / 0.3` scoring docs as historical drafts.

---

## C-04 — Whether the published weighted risk formula remains active
**Status:** resolved.

**Resolution:** replace the weighted formula as primary logic with layered gating: hard rejects → manual review triggers → weighted ranking among feasible jobs.

**Where it appears:**
- `05_governance/13_risk-engine_sla-cleaner-host-complexity.md`
- `05_governance/14_unified-reliability-framework.md`
- `99_meta/review-log.md`

**Action:** treat the weighted formula as optional secondary ranking logic only.

---

## C-05 — Pricing formula examples exclude mileage in some places
**Status:** resolved.

**Resolution:** host-facing examples should show mileage separately unless a live location-specific quote is being generated.

**Where it appears:**
- `02_strategy_finance/07_final-pricing-table_v4.md`

**Action:** update pricing examples so they do not imply mileage is already included unless the quote explicitly includes it.

---

## C-06 — Evidence appendix status
**Conflict:**
- Evidence appendix claims the model is externally validated.
- No actual source URLs, quotes, or citations are embedded in the document set.

**Where it appears:**
- `02_strategy_finance/05_evidence-appendix-and_sla-ltv-cac-notes.md`
- `99_meta/review-log.md`

**Decision needed:**
Should unsupported market/evidence claims remain in the master spec, or be downgraded to assumptions pending sourcing?

**Recommended default:** downgrade to explicit assumptions pending evidence.

---

## C-07 — Cleaner pay treatment for modifiers and add-ons
**Status:** resolved.

**Resolution:** use a fixed payout table by modifier/add-on instead of “100% of everything.”

**Where it appears:**
- `03_operations/08_ops-playbook_labor-and-routing.md`
- `04_product/09_prd_pricing-logic-and-routing-logic.md`
- `02_strategy_finance/06_unit-economics_final-6-tier-mileage-model.md`

**Confirmed payout table:**
- Bathrooms: 60% of modifier (`+$10/$20/$30/$40` host → `$6/$12/$18/$24` cleaner)
- Beds: 60% of modifier (`+$10/$20/$30/$40` host → `$6/$12/$18/$24` cleaner)
- Deep clean: `+$60` host → `$40` cleaner
- Same-day: `+$40` host → `$25` cleaner
- Consumables: `+$25` host → `$15` cleaner
- Linen handling: `+$20` host → `$12` cleaner
- Off-site laundry: `+$15` host → `$10` cleaner
- Pet add-on: `+$15` host → `$10` cleaner
- Trash haul-off: `+$20` host → `$12` cleaner

**Action:** replace earlier “100%” language in downstream docs when producing the next revision set.

---

## C-08 — Same-day guarantee wording
**Conflict:**
- Several docs state “guaranteed same-day turnover” broadly.
- Later docs constrain same-day by geography, host eligibility, cleaner eligibility, risk, and manual review.

**Where it appears:**
- `01_foundation/01_business-plan-and-software-spec.md`
- `02_strategy_finance/02_investor-memo_launch-market_monte-vista.md`
- later ops/governance docs

**Decision needed:**
Pick the final public promise language.

**Recommended default:**
“Same-day service is guaranteed only for eligible member properties that meet published SLA conditions.”

---

## C-09 — Governance charter role
**Conflict:**
- Current charter reads as a governance summary.
- Review notes say the authoritative version should be enforceable policy with explicit triggers, evidence standards, money rules, and appeals.

**Where it appears:**
- `05_governance/18_marketplace-governance-charter.md`
- `99_meta/review-log.md`

**Decision needed:**
Should the current charter stand as a summary layer, or be rewritten as binding operations policy?

**Recommended default:** rewrite as binding policy; keep current document as an executive summary if desired.

---

## C-10 — Onboarding “production-ready” claim
**Conflict:**
- Onboarding doc calls itself production-ready.
- Review notes say payroll/legal, payment setup, property verification, and review workflows are still missing.

**Where it appears:**
- `06_onboarding/19_cleaner-and-host-onboarding_v1.md`
- `99_meta/review-log.md`

**Decision needed:**
Should onboarding remain labeled v1 draft until those controls are added?

**Recommended default:** yes.
