# Sameday STRO — Decision Log

This file records user decisions made after the initial conflict register and master-spec draft were created.

## Confirmed decisions
- **1. Creede policy:** defer hard classification until an actual operational conflict requires a rule.
- **2. Basic same-day beyond 30 minutes:** **B** — allowed only with manual review / risk pass.
- **3. Scoring formula:** **B** — use `0.85 / 0.15` for cleaner reliability and host reputation rolling updates.
- **4. Risk engine structure:** **B** — layered gating first, weighted ranking second.
- **5. Host-facing mileage display:** **B** — show mileage separately unless a live quote is generated.
- **7. Evidence treatment:** **B** — downgrade unsupported claims to assumptions until sourced.
- **8. Governance charter role:** **B** — rewrite into binding policy and make that authoritative.
- **9. Onboarding status:** **B** — relabel as v1 draft pending legal/payments/review workflows.

## Confirmed payout table for modifiers and add-ons
- **Bathrooms:** cleaner share is 60% of bathroom modifier.
  - 2 baths: host +$10 / cleaner $6
  - 3 baths: host +$20 / cleaner $12
  - 4 baths: host +$30 / cleaner $18
  - 5+ baths: host +$40 / cleaner $24
- **Beds:** cleaner share is 60% of bed modifier.
  - 3 beds: host +$10 / cleaner $6
  - 4 beds: host +$20 / cleaner $12
  - 5 beds: host +$30 / cleaner $18
  - 6+ beds: host +$40 / cleaner $24
- **Deep clean:** host +$60 / cleaner $40.
- **Same-day:** host +$40 / cleaner $25.
- **Consumables:** host +$25 / cleaner $15.
- **Linen handling:** host +$20 / cleaner $12.
- **Off-site laundry:** host +$15 / cleaner $10.
- **Pet add-on:** host +$15 / cleaner $10.
- **Trash haul-off:** host +$20 / cleaner $12.

## Still open
- No remaining major decision in the original 1–9 set is open, but the deferred Creede classification will need an explicit rule when a live operational conflict arises.
