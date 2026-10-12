# Sameday STRO — Document Status Matrix

Use this file to tell which documents control, which are still drafts, and which are retained only for history or orientation.

| Document | Status | Meaning | Superseded / Controlled By |
|---|---|---|---|
| `00_master-spec-v1_authoritative.md` | **Authoritative** | Primary source of truth for current operating rules and policy boundaries. | `—` |
| `05_governance/19_binding-governance-policy_v1.md` | **Authoritative** | Binding governance, enforcement, appeals, safety, and audit policy. | `—` |
| `03_operations/20_cleaner-payout-shares_final.md` | **Authoritative** | Current payout share table for modifiers and add-ons. | `—` |
| `99_meta/decision-log.md` | **Authoritative** | Resolved decision record for the bundle. | `—` |
| `00_INDEX.md` | **Index** | Navigation file for the bundle. | `—` |
| `99_meta/conflict-register.md` | **Reference** | Tracks remaining or historical contradictions and their resolution status. | `—` |
| `99_meta/gap-report.md` | **Reference** | Cross-file assessment and next-action map. | `—` |
| `99_meta/review-log.md` | **Reference** | Review conclusions and major concerns from the drafting cycle. | `—` |
| `00_master-spec-draft.md` | **Superseded** | Earlier consolidation draft before the authoritative v1 spec was written. | `00_master-spec-v1_authoritative.md` |
| `01_foundation/01_business-plan-and-software-spec.md` | **Historical draft** | Original combined concept document; useful for origins, not authority. | `00_master-spec-v1_authoritative.md` |
| `02_strategy_finance/02_investor-memo_launch-market_monte-vista.md` | **Draft** | Internal market memo; assumptions still need evidence. | `00_master-spec-v1_authoritative.md` |
| `02_strategy_finance/05_evidence-appendix-and_sla-ltv-cac-notes.md` | **Draft** | Evidence scaffold and finance notes; not a true sourced appendix yet. | `00_master-spec-v1_authoritative.md` |
| `02_strategy_finance/06_unit-economics_final-6-tier-mileage-model.md` | **Draft** | Baseline economics model; still needs full scenario rebuild with final payout table. | `00_master-spec-v1_authoritative.md` |
| `02_strategy_finance/07_final-pricing-table_v4.md` | **Draft** | Host-facing pricing structure; now partly aligned, but still subordinate to the master spec. | `00_master-spec-v1_authoritative.md` |
| `03_operations/03_operations-playbook_launch-region_monte-vista.md` | **Draft** | Strong ops draft; useful but subordinate to authoritative v1 decisions. | `00_master-spec-v1_authoritative.md` |
| `03_operations/08_ops-playbook_labor-and-routing.md` | **Draft** | Operations draft updated for payout changes; still not the controlling source. | `00_master-spec-v1_authoritative.md` |
| `03_operations/11_cleaner-reliability-scoring-system.md` | **Historical draft** | Older scoring document retained for lineage; superseded scoring model noted inside. | `00_master-spec-v1_authoritative.md` |
| `03_operations/15_cleaner-bonus-system_v5.md` | **Draft** | Bonus design draft; authoritative only where referenced by master spec/payout policy. | `00_master-spec-v1_authoritative.md` |
| `04_product/04_mvp-prd.md` | **Draft** | PRD v0; conceptual, not implementation-grade. | `00_master-spec-v1_authoritative.md` |
| `04_product/09_prd_pricing-logic-and-routing-logic.md` | **Draft** | Rules reference updated for payout changes; still subordinate to authoritative spec. | `00_master-spec-v1_authoritative.md` |
| `04_product/10_system-architecture_v1.md` | **Draft** | Architecture overview, not binding system contract. | `00_master-spec-v1_authoritative.md` |
| `04_product/17_full-system-diagram_architecture-map.md` | **Draft** | Executive architecture map; not authoritative while upstream docs evolve. | `00_master-spec-v1_authoritative.md` |
| `05_governance/12_host-reputation-scoring-system.md` | **Historical draft** | Older host scoring doc retained for lineage; superseded scoring model noted inside. | `00_master-spec-v1_authoritative.md` |
| `05_governance/13_risk-engine_sla-cleaner-host-complexity.md` | **Draft** | Conceptual risk-engine document; authoritative structure now defined in master spec. | `00_master-spec-v1_authoritative.md` |
| `05_governance/14_unified-reliability-framework.md` | **Draft** | Best governance/control draft, but still subordinate to authoritative v1 files. | `00_master-spec-v1_authoritative.md` |
| `05_governance/16_host-tiering_v2.md` | **Draft** | Tiering policy direction; subordinate to authoritative v1 files. | `00_master-spec-v1_authoritative.md` |
| `05_governance/18_marketplace-governance-charter.md` | **Executive summary** | Narrative governance layer; not binding law. | `05_governance/19_binding-governance-policy_v1.md` |
| `06_onboarding/19_cleaner-and-host-onboarding_v1.md` | **Draft** | Onboarding architecture draft; explicitly not production-ready. | `00_master-spec-v1_authoritative.md` |

## Status key
- **Authoritative**: current source of truth.
- **Executive summary**: summary-layer document; not binding if it conflicts with an authoritative file.
- **Draft**: useful working document but not controlling.
- **Historical draft**: retained for lineage; no longer current.
- **Superseded**: replaced by a newer consolidation.
- **Reference**: meta document supporting navigation, review, or conflict tracking.
- **Index**: navigation file only.

## Current controlling set
- `00_master-spec-v1_authoritative.md`
- `05_governance/19_binding-governance-policy_v1.md`
- `03_operations/20_cleaner-payout-shares_final.md`
- `99_meta/decision-log.md`
