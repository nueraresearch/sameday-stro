# Financial Assessment and Market-Fit Review

This file assesses the current Sameday STRO financial structure against the internal model and the external benchmark data already gathered.

## External benchmark references used

- Indeed Colorado house cleaner salary: average **$23.12/hour**, low **$14.81**, high **$36.34** (updated Oct. 4, 2026).
- Colorado DLSS statewide 2026 minimum wage: **$15.16/hour**.
- IRS 2026 business mileage rate: **$0.725/mile**.
- AirDNA U.S. average Airbnb cleaning fee in 2025: **$161.10/stay**.
- AirDNA example U.S. two-bedroom cleaning fee: about **$141.60**.
- Homeyou Alamosa single-family cleaning baseline: **$100–$130**.

## 1. Cleaner effective hourly earnings under planned duration bands

Assumption used here: cleaner receives base cleaner pay plus $6.30 mileage on an 18-mile one-way job. This excludes bonuses and excludes modifier/add-on shares.

| Tier | Sq Ft | Cleaner Pay + Mileage | Duration Band | Effective Hourly Range | Midpoint Effective Hourly |
|---|---|---:|---|---:|---:|
| 1 | 0–799 | $56.30 | 45-75 min | $45.04–$75.07 | $56.30 |
| 2 | 800–1199 | $66.30 | 75-95 min | $41.87–$53.04 | $46.80 |
| 3 | 1200–1499 | $76.30 | 95-120 min | $38.15–$48.19 | $42.59 |
| 4 | 1500–1799 | $86.30 | 120-150 min | $34.52–$43.15 | $38.36 |
| 5 | 1800–2199 | $96.30 | 150-180 min | $32.10–$38.52 | $35.02 |
| 6 | 2200+ | $106.30 | 180-220 min | $28.99–$35.43 | $31.89 |

- Average midpoint effective hourly across tiers: **$41.83/hour**.
- Compared with Colorado average cleaner wage (**$23.12/hour**), the planned cleaner earnings look strong **if** job times stay inside the modeled bands.
- Compared with Colorado minimum wage (**$15.16/hour**), every tier clears the floor comfortably under the planned time assumptions.

## 2. Host pricing compared to cleaning-fee benchmarks

| Tier | Base Host Price | Host Price + 18-Mile Mileage | Benchmark Read |
|---|---:|---:|---|
| 1 | $100.00 | $110.80 | inside local Alamosa baseline |
| 2 | $115.00 | $125.80 | inside local Alamosa baseline |
| 3 | $130.00 | $140.80 | above local baseline / near U.S. 2BR reference |
| 4 | $140.00 | $150.80 | near U.S. average cleaning-fee territory |
| 5 | $155.00 | $165.80 | above U.S. average cleaning-fee territory |
| 6 | $170.00 | $180.80 | above U.S. average cleaning-fee territory |

- Tier 1 with baseline mileage (**$110.80**) sits inside the Alamosa-style $100–$130 baseline.
- Tier 3 with baseline mileage (**$140.80**) is essentially aligned with the U.S. 2BR cleaning-fee reference (**$141.60**).
- Tier 5 and Tier 6 with baseline mileage (**$165.80** / **$180.80**) remain close to or modestly above the broader U.S. average cleaning-fee reference (**$161.10**), which is plausible for larger, more complex STRs.

## 3. Mileage competitiveness

- Current host mileage charge: **$0.60/mile** one-way.
- Current cleaner mileage pay: **$0.35/mile** one-way.
- IRS 2026 business mileage benchmark: **$0.725/mile**.

Interpretation:
- The host-side mileage charge is below the IRS benchmark but still meaningful.
- The cleaner-side mileage pay is less than half the IRS business-mileage benchmark, so long-drive job acceptance is the most likely early pressure point in the model.
- This does not automatically mean the cleaner mileage rate is too low, because cleaners also receive flat job pay; it does mean remote-zone economics should be observed carefully in practice.

## 4. Profitability review

What currently looks good:
- Base-tier margins remain positive and stable in the low-20s to mid-20s.
- Locked payout shares still preserve retained margin on same-day, deep-clean, and add-on-heavy jobs in the modeled clean-path cases.
- Stress tests still keep many adverse scenarios positive, which is encouraging.

What still looks fragile:
- QA failure / re-clean events compress margin sharply.
- Failed-access and late-checkout friction consume margin quickly.
- Outer-zone travel remains the most likely place for cleaner dissatisfaction and hidden cost creep.
- The model still depends on duration estimates that are not yet field-validated.

## 5. Sweet-spot conclusion

### Provisional conclusion
The current design appears to be in a **reasonable provisional sweet spot** for launch, especially in core zones, because:
- host pricing is not obviously above market,
- cleaner pay is not obviously below market for core-zone work under the planned duration bands,
- retained margin remains positive under both clean-path and many stressed scenarios.

### Where the sweet spot could fail
The current sweet spot likely breaks first if:
- travel times run higher than planned,
- complex jobs take materially longer than modeled,
- remote-zone jobs become a large share of volume,
- surcharge collection is weak,
- re-clean frequency is higher than expected.

## 6. Best tuning levers if pilots show pressure

1. Increase outer-zone / remote-zone economics before changing core-zone base pricing.
2. Add stronger same-day pricing for high-complexity jobs before touching low-tier prices.
3. Use host-friction surcharges and restrictions aggressively if late checkouts, failed access, or disputes become common.
4. Revisit cleaner mileage if tertiary-zone acceptance or retention looks weak.

## 7. Bottom line

The base model currently looks **more likely operationally fragile than commercially underpriced**. In other words, the bigger threat is not that you are charging too little everywhere; it is that rural travel, failure-mode friction, and execution variance could quietly erode the margin you appear to have on paper.

That means the present recommendation is:
- keep core-zone pricing intact for now,
- keep payout shares intact for now,
- monitor real effective cleaner hourly earnings and remote-zone acceptance immediately in pilot operations,
- be ready to tune travel and high-friction cases first.