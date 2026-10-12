# Unit Economics Stress-Test Model

This model adds explicit downside-cost assumptions on top of the rebuilt payout-share economics so the bundle includes failure-mode scenarios, not just clean-path scenarios.

## Stress-cost assumptions used

- `late_checkout_wait_15m` = $10.00
- `lockout_wait_10m` = $7.00
- `weather_overrun` = $12.00
- `qa_reclean_admin` = $35.00
- `same_day_dispatch_intensity` = $8.00
- `restricted_host_friction` = $10.00
- `outer_zone_extra_miles_14` = $3.50
- `high_complexity_time_overrun` = $18.00
- `failed_access_partial` = $20.00

## Stress-test scenarios

| Scenario | Tier | Sq Ft | One-Way Miles | Add-ons / modifiers | Stress costs applied | Revenue | Cost | Margin | Margin % |
|---|---:|---|---:|---|---|---:|---:|---:|---:|
| Tier 4 same-day + consumables baseline | 4 | 1500–1799 | 18 | same_day, consumables_addon | none | $215.80 | $156.30 | $59.50 | 27.6% |
| Tier 4 same-day + consumables + late checkout wait | 4 | 1500–1799 | 18 | same_day, consumables_addon | late_checkout_wait_15m | $215.80 | $166.30 | $49.50 | 22.9% |
| Tier 4 same-day + consumables + lockout wait | 4 | 1500–1799 | 18 | same_day, consumables_addon | lockout_wait_10m | $215.80 | $163.30 | $52.50 | 24.3% |
| Tier 5 deep clean + pet + QA reclean/admin hit | 5 | 1800–2199 | 18 | deep_clean, pet | qa_reclean_admin | $240.80 | $214.30 | $26.50 | 11.0% |
| Tier 5 heavy combo + restricted host friction | 5 | 1800–2199 | 18 | bath_4, bed_5, same_day, consumables_addon, pet | restricted_host_friction | $305.80 | $225.30 | $80.50 | 26.3% |
| Tier 6 max-heavy combo baseline | 6 | 2200+ | 18 | bath_5p, bed_6p, deep_clean, same_day, consumables_addon, linen_handling, offsite_laundry, pet, trash | none | $455.80 | $314.30 | $141.50 | 31.0% |
| Tier 6 max-heavy + weather overrun + complexity overrun | 6 | 2200+ | 18 | bath_5p, bed_6p, deep_clean, same_day, consumables_addon, linen_handling, offsite_laundry, pet, trash | weather_overrun, high_complexity_time_overrun | $455.80 | $344.30 | $111.50 | 24.5% |
| Tier 6 outer-zone long-drive same-day review case | 6 | 2200+ | 32 | bath_5p, bed_6p, same_day, consumables_addon | weather_overrun, outer_zone_extra_miles_14 | $334.20 | $250.70 | $83.50 | 25.0% |
| Tier 3 failed access partial service cost | 3 | 1200–1499 | 18 | none | failed_access_partial | $140.80 | $126.30 | $14.50 | 10.3% |

## Interpretation

- Late checkout, lockout, weather, and re-clean events materially compress margin even when host pricing remains unchanged.
- Same-day and deep-clean jobs remain positive in these modeled cases, but they are much more sensitive to execution failure than the clean-path model suggests.
- Outer-zone long-drive cases still need caution even when pricing looks positive on paper.
- Failed-access and restricted-host friction should be governed tightly because they consume margin quickly.
- These are still model assumptions, not observed field data; use them as downside planning cases, not proven market outcomes.