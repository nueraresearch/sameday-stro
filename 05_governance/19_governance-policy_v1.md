# Sameday STRO — Governance Policy v1

**Status:** authoritative binding governance policy

## 1. Purpose
This document is the binding governance policy for hosts, cleaners, dispatch, and platform enforcement. Where any summary-level governance document conflicts with this policy, this policy controls.

## 2. Governing principles
1. Protect SLA reliability.
2. Protect cleaner safety.
3. Protect host transparency and fair treatment.
4. Protect economic viability.
5. Protect operational predictability.

## 3. Roles and authority
### 3.1 Hosts
Hosts are responsible for listing accuracy, property access, checkout compliance, communication, and payment.

### 3.2 Cleaners
Cleaners are responsible for punctuality, honest reporting, QA compliance, and safe job execution.

### 3.3 Dispatch
Dispatch has authority to:
- approve or deny same-day assignments,
- require manual review,
- lock or restrict hosts under published triggers,
- lock or restrict cleaners under published triggers,
- reject unsafe or infeasible jobs,
- escalate safety, payment, and QA issues.

### 3.4 Platform
The platform is responsible for preserving audit history, enforcing rule-based restrictions, calculating payouts and charges, and maintaining evidence records for enforcement actions.

## 4. Enforcement classes
### 4.1 Soft enforcement
Soft enforcement includes:
- score adjustments,
- incident-counter updates,
- tier demotion,
- bonus removal,
- manual-review routing.

### 4.2 Hard enforcement
Hard enforcement includes:
- host lock,
- cleaner lock,
- auto-reject,
- same-day disablement,
- deep-clean disablement,
- restricted routing.

## 5. Host policy
### 5.1 Host rights
Hosts are entitled to:
- transparent pricing,
- visibility into routing status,
- QA evidence where applicable,
- explanation of enforcement actions,
- an appeals path for formal restrictions.

### 5.2 Host obligations
Hosts must:
- keep listing details materially accurate,
- provide safe and workable property access,
- maintain payment validity,
- avoid creating late-checkout conflicts,
- communicate material changes that affect routing or safety.

### 5.3 Host restriction triggers
A host may be restricted when any of the following occurs:
- failed payment,
- repeated late checkout,
- repeated listing inaccuracy,
- harassment or abuse,
- safety issue,
- fraudulent damage claim,
- refusal of cleaner access.

### 5.4 Host consequences
Restricted hosts may receive any combination of:
- same-day disabled,
- deep-clean disabled,
- manual dispatch review,
- risk surcharge,
- removal of SLA guarantee,
- limited cleaner pool,
- platform lock.

## 6. Cleaner policy
### 6.1 Cleaner rights
Cleaners are entitled to:
- safe routing,
- published payout rules,
- visibility into reliability status,
- ability to decline restricted-host jobs without penalty where policy allows,
- an appeals path for formal restrictions.

### 6.2 Cleaner obligations
Cleaners must:
- arrive on time or communicate lateness,
- comply with QA photo requirements,
- report damage honestly,
- avoid falsified evidence,
- comply with safety and access procedures.

### 6.3 Cleaner restriction triggers
A cleaner may be restricted when any of the following occurs:
- no-show,
- falsified photos or falsified reporting,
- theft claim requiring investigation,
- safety violation,
- repeated SLA misses,
- repeated QA failures.

### 6.4 Cleaner consequences
Restricted cleaners may receive any combination of:
- score penalty,
- eligibility downgrade,
- routing restriction,
- bonus removal,
- temporary suspension,
- platform lock.

## 7. Same-day and deep-clean governance
### 7.1 Same-day is conditional
Same-day service is not an unconditional right. It may be denied when eligibility, routing, geography, payment, safety, or risk conditions fail.

### 7.2 Deep-clean is conditional
Deep-clean service may be denied when the time block is infeasible, when the cleaner pool is unsuitable, or when the host is restricted.

### 7.3 Beyond 30-minute rule
Basic same-day beyond 30 minutes requires manual review and a positive risk/availability pass.

## 8. Risk governance
### 8.1 Risk structure
The authoritative risk structure is layered:
1. hard reject checks,
2. manual review triggers,
3. weighted ranking among feasible jobs.

### 8.2 Hard reject conditions
A job must be auto-rejected or blocked from auto-routing when:
- time required exceeds time available,
- the host is payment-locked or safety-locked,
- the cleaner is under hard restriction,
- no eligible cleaner exists,
- deep-clean is requested after cutoff,
- same-day would violate route capacity.

### 8.3 Manual review conditions
Manual review is required when:
- outer-zone same-day is requested,
- SLA compression exceeds threshold,
- complexity exceeds threshold,
- host or cleaner is on watchlist,
- vehicle mismatch or access ambiguity exists,
- adverse travel or weather uncertainty is present,
- unusual surcharge, claim, or dispute conditions exist.

## 9. Payout, refund, surcharge, and bonus policy
### 9.1 Cleaner payout formula
Cleaner payout is:

**Base Pay + Mileage Pay + Modifier Shares + Add-On Shares + Bonuses (capped by tenure)**

### 9.2 Fixed cleaner payout shares
| Modifier / Add-On | Host Charge | Cleaner Share |
|---|---:|---:|
| Bathroom modifier | +$10 / +$20 / +$30 / +$40 | $6 / $12 / $18 / $24 |
| Bed modifier | +$10 / +$20 / +$30 / +$40 | $6 / $12 / $18 / $24 |
| Deep clean | +$60 | $40 |
| Same-day | +$40 | $25 |
| Consumables | +$25 | $15 |
| Linen handling | +$20 | $12 |
| Off-site laundry | +$15 | $10 |
| Pet add-on | +$15 | $10 |
| Trash haul-off | +$20 | $12 |

Mileage remains separate at $0.35 per one-way mile.

### 9.3 Bonus caps
- New cleaner: max $25/job
- Experienced cleaner: max $35/job
- Veteran cleaner: max $45/job

### 9.4 Refund and surcharge authority
Dispatch or platform policy may apply refunds, credits, surcharges, or payout holds when:
- SLA-eligible service fails,
- QA failure is confirmed,
- payment dispute exists,
- cleaner cancellation or host-caused failure materially affects service outcome,
- access failure or late checkout changes the job classification.

## 10. Safety policy
### 10.1 Immediate safety escalation
Immediate escalation is required for:
- harassment,
- threats,
- unsafe property access conditions,
- suspected theft,
- physical danger,
- repeated abusive conduct.

### 10.2 Safety authority
Dispatch may immediately block a job, lock a host, lock a cleaner, or pause routing when safety concerns are credible.

## 11. Appeals policy
### 11.1 Appeal right
Hosts and cleaners may appeal formal restrictions, tier demotions with material business consequence, payout holds, and platform locks.

### 11.2 Minimum appeal record
Every appeal must reference:
- action taken,
- date/time,
- reason code,
- supporting evidence if available.

### 11.3 Appeal state during review
While an appeal is pending, dispatch may preserve the restriction if safety, payment, or operational risk requires it.

## 12. Audit logging
Every formal enforcement action must create an auditable record with:
- actor,
- timestamp,
- target entity,
- reason code,
- evidence reference if any,
- appeal state,
- final resolution if changed.

## 13. Relationship to summary documents
The executive governance charter may be retained as a summary document. It is not the controlling policy if it conflicts with this file.
