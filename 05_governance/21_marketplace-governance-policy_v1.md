# Sameday STRO — Marketplace Governance Policy v1

**Status:** binding operations policy

## 1. Purpose
This policy governs hosts, cleaners, dispatch, and platform enforcement for Sameday STRO. It is the authoritative governance document. The older Marketplace Governance Charter may remain as an executive summary, but this policy controls operations.

## 2. Core principles
1. Protect SLA reliability.
2. Protect cleaner safety and fairness.
3. Protect host transparency and predictable treatment.
4. Protect margin stability and operational viability.
5. Require consistent, auditable enforcement.

## 3. Roles and authority
### 3.1 Hosts
Hosts must provide accurate property data, maintain safe access, comply with checkout rules, and pay on time.

### 3.2 Cleaners
Cleaners must arrive on time, complete assigned work within policy, upload required QA evidence, report damage honestly, and follow routing and safety rules.

### 3.3 Dispatch
Dispatch may:
- assign or reassign jobs,
- require manual review,
- reject unsafe or infeasible jobs,
- place temporary operational holds,
- escalate safety and payment issues.

Dispatch must record reason codes for overrides, locks, rejections, and appeals decisions.

### 3.4 Platform operations authority
Permanent or longer-term restrictions should be reviewed and confirmed by an authorized operations owner, not only by ad hoc dispatch judgment.

## 4. Host rights
Hosts are entitled to:
- transparent pricing,
- stated routing and SLA rules,
- notice when same-day or deep-clean eligibility is denied,
- QA evidence for completed service where policy allows,
- appeal of demotion, restriction, or charge dispute under this policy.

## 5. Host obligations
Hosts must:
- provide accurate listing details,
- keep payment method valid,
- ensure timely checkout and confirmed access,
- avoid abusive, unsafe, or deceptive behavior,
- correct documented listing or access issues when instructed.

## 6. Cleaner rights
Cleaners are entitled to:
- transparent payout rules,
- mileage pay and approved add-on shares,
- tenure-capped bonus logic,
- safe routing,
- the right to decline restricted hosts without penalty when policy permits,
- access to QA and incident feedback,
- appeal of penalties under this policy.

## 7. Cleaner obligations
Cleaners must:
- arrive on time,
- communicate delays honestly,
- complete required QA photos,
- report damage and safety concerns honestly,
- use approved vehicle disclosure rules,
- avoid falsified submissions, no-shows, theft, or unsafe conduct.

## 8. Restriction triggers
### 8.1 Host hard-fail triggers
Any of the following may trigger immediate restriction or lock:
- failed payment,
- repeated late checkout,
- repeated inaccurate listing,
- harassment or abuse,
- safety issue,
- fraudulent damage claim,
- refusal of cleaner access.

### 8.2 Cleaner hard-fail triggers
Any of the following may trigger immediate restriction or lock:
- no-show,
- falsified photos,
- theft claim,
- safety violation,
- repeated SLA misses under the threshold rules,
- other dishonest or materially unsafe behavior.

## 9. Enforcement levels
### 9.1 Soft enforcement
Soft enforcement may include:
- score adjustments,
- incident counter updates,
- loss of same-day eligibility,
- loss of deep-clean eligibility,
- routing restrictions,
- bonus removal where policy allows,
- tier demotion.

### 9.2 Hard enforcement
Hard enforcement may include:
- host lock,
- cleaner lock,
- job auto-reject,
- same-day disabled,
- deep-clean disabled,
- restricted routing,
- payout hold pending investigation where legally permissible and contractually allowed.

## 10. Risk governance
### 10.1 Risk structure
Risk handling must follow the authoritative layered structure:
1. hard reject checks,
2. manual review triggers,
3. weighted ranking only among feasible jobs.

### 10.2 Mandatory hard rejects
A job must not auto-route when:
- time required exceeds time available,
- no eligible cleaner exists,
- host is under payment or safety lock,
- cleaner is under hard-fail lock,
- deep clean is requested after cutoff,
- same-day would violate route capacity.

### 10.3 Mandatory manual review
A job requires manual review when:
- same-day is requested beyond the 30-minute threshold,
- host or cleaner is on watchlist or restricted review status,
- access is uncertain,
- vehicle mismatch is unresolved,
- travel/weather uncertainty materially affects timing,
- dispute or surcharge conditions are unusual,
- complexity exceeds the normal auto-routing threshold.

## 11. Same-day and deep-clean eligibility
- Same-day is an earned privilege, not a default entitlement.
- Same-day beyond the 30-minute threshold requires manual review and positive risk pass.
- Deep clean may not be assigned after 2 PM and must satisfy time-block rules.
- Restricted hosts may not receive same-day or deep-clean service unless an authorized override is documented.

## 12. Scoring and tiering
### 12.1 Authoritative rolling formula
Cleaner reliability and host reputation must use:

`new_score = 0.85 × previous + 0.15 × last_job`

### 12.2 Control layers
Scores must not operate alone. Eligibility decisions must also consider:
- incident counters,
- sample-size minimums,
- hard-fail overrides,
- service-specific eligibility rules,
- current risk state.

## 13. Pricing, payout, refunds, and surcharges
### 13.1 Cleaner payout
Cleaner payout follows the fixed payout rules in the approved payout schedule.

### 13.2 Surcharges
Surcharges may be applied for:
- late checkout,
- lockout / no access,
- extreme mess,
- incorrect booking data,
- incorrect property data,
- restricted-host or unusual-risk handling where policy allows.

### 13.3 Refunds and credits
Refunds or credits may be issued when:
- SLA failure occurs on an otherwise eligible job,
- QA failure materially affects service quality,
- cleaner cancellation materially affects the promised service,
- a documented billing error occurs.

Refund and credit decisions must include a reason code.

### 13.4 Charge failures
Failed payment may trigger immediate restriction, pause future routing, or both.

## 14. Safety policy
### 14.1 Immediate safety escalation
Any report of harassment, threat, unsafe property condition, suspected criminal behavior, or serious access concern must be escalated immediately.

### 14.2 Refusal of unsafe service
No cleaner is required to enter an unsafe property or continue a job under unsafe conditions.

### 14.3 Safety documentation
Safety escalations must include documented notes, timestamps, involved parties, and available evidence.

## 15. Appeals policy
### 15.1 Who may appeal
- Hosts may appeal restrictions, demotions, or disputed charges.
- Cleaners may appeal reliability penalties, restrictions, or payout disputes.

### 15.2 Minimum appeal record
Every appeal must record:
- appellant,
- subject decision,
- timestamp,
- reason,
- supporting evidence if available,
- reviewer,
- resolution.

### 15.3 Interim status
While an appeal is pending, the platform may keep a temporary restriction in place when safety, payment, or SLA integrity requires it.

## 16. Audit logging
Every meaningful governance action must generate an auditable record containing at minimum:
- action type,
- actor,
- subject (host, cleaner, job, or property),
- timestamp,
- reason code,
- evidence reference if any,
- resulting status.

## 17. Relationship to other documents
This policy governs over conflicting governance statements in:
- the executive Marketplace Governance Charter,
- earlier reputation and reliability drafts,
- earlier risk summary language.
