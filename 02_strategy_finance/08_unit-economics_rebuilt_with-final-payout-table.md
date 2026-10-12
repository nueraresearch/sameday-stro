# Rebuilt Unit Economics with Final Payout Table

This rebuild replaces the old payout assumptions with the locked payout-share table and recalculates baseline and scenario contribution margins.

## Baseline assumptions used
- This rebuild uses the locked payout table from 03_operations/20_cleaner-payout-shares_final.md.
- Mileage model remains host $0.60 / one-way mile and cleaner $0.35 / one-way mile at an 18-mile baseline.
- Base consumable COGS remain $18 / $22 / $25–28 from the earlier unit-economics draft.
- Add-on and modifier margins are now calculated using fixed cleaner shares, not 100% cleaner pass-through.
- LTV/CAC and retention claims are not rebuilt here because they still depend on unsourced acquisition and retention assumptions.

## Baseline per-turnover margins by tier

| Tier | Sq Ft | Revenue | Cost | Margin | Margin % |
|---|---|---:|---:|---:|---:|
| 1 | 0–799 | $110.80 | $82.30 | $28.50 | 25.7% |
| 2 | 800–1199 | $125.80 | $92.30 | $33.50 | 26.6% |
| 3 | 1200–1499 | $140.80 | $106.30 | $34.50 | 24.5% |
| 4 | 1500–1799 | $150.80 | $116.30 | $34.50 | 22.9% |
| 5 | 1800–2199 | $165.80 | $129.30 | $36.50 | 22.0% |
| 6 | 2200+ | $180.80 | $142.30 | $38.50 | 21.3% |

## Scenario margins using locked payout shares

| Scenario | Tier | Add-ons / modifiers | Revenue | Cost | Margin | Margin % |
|---|---:|---|---:|---:|---:|---:|
| Tier 1 baseline local turnover | 1 | none | $110.80 | $82.30 | $28.50 | 25.7% |
| Tier 3 baseline average turnover | 3 | none | $140.80 | $106.30 | $34.50 | 24.5% |
| Tier 4 + 4 baths + 5 beds | 4 | bath_4, bed_5 | $210.80 | $152.30 | $58.50 | 27.8% |
| Tier 4 + same-day + consumables | 4 | same_day, consumables_addon | $215.80 | $156.30 | $59.50 | 27.6% |
| Tier 5 + deep clean + pet | 5 | deep_clean, pet | $240.80 | $179.30 | $61.50 | 25.5% |
| Tier 5 + 4 baths + 5 beds + same-day + consumables + pet | 5 | bath_4, bed_5, same_day, consumables_addon, pet | $305.80 | $215.30 | $90.50 | 29.6% |
| Tier 6 + 5+ baths + 6+ beds + deep clean + same-day + consumables + linen + offsite + pet + trash | 6 | bath_5p, bed_6p, deep_clean, same_day, consumables_addon, linen_handling, offsite_laundry, pet, trash | $455.80 | $314.30 | $141.50 | 31.0% |

## Monthly margin and simple LTV ranges at 4 turnovers/month

| Tier | Sq Ft | Monthly Margin | 12-Month Margin | 24-Month Margin |
|---|---|---:|---:|---:|
| 1 | 0–799 | $114.00 | $1368.00 | $2736.00 |
| 2 | 800–1199 | $134.00 | $1608.00 | $3216.00 |
| 3 | 1200–1499 | $138.00 | $1656.00 | $3312.00 |
| 4 | 1500–1799 | $138.00 | $1656.00 | $3312.00 |
| 5 | 1800–2199 | $146.00 | $1752.00 | $3504.00 |
| 6 | 2200+ | $154.00 | $1848.00 | $3696.00 |

## Takeaways

- Baseline tier margins remain in the low-20s to mid-20s under the original assumptions.
- The fixed payout table preserves positive margin on modifier/add-on-heavy jobs in these modeled scenarios.
- Same-day, deep-clean, and consumable add-ons still leave retained margin, but the retained dollars are lower than they would be under looser payout assumptions.
- The economics are now cleaner structurally, but they still need real-world validation for time expansion, re-cleans, disputes, weather, and utilization shocks.
- LTV/CAC should stay out of any authoritative economics claim until acquisition and retention are sourced or measured.