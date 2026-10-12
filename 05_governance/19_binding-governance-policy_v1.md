# Sameday STRO — Binding Governance Policy v1

**Status:** authoritative policy draft  
**Supersedes as binding law:** `05_governance/18_marketplace-governance-charter.md`  
**Executive-summary companion:** the earlier charter may remain as a narrative overview, but this file governs actual enforcement.

## 1. Purpose
This policy defines the binding governance rules for hosts, cleaners, dispatch, and platform enforcement.

It governs:
- restrictions and locks
- manual review triggers
- same-day and deep-clean privilege eligibility
- payout and surcharge policy boundaries
- appeals
- safety escalation
- audit logging expectations

## 2. Governing principles
1. **SLA protection comes before convenience.**
2. **Cleaner safety overrides revenue opportunities.**
3. **Hosts must receive transparent reasons for penalties or restrictions.**
4. **Dispatch decisions must be explainable and auditable.**
5. **Restrictions must be triggered by defined policy events, not arbitrary judgment.**

## 3. Roles and authority
### 3.1 Hosts
Hosts may request service, view pricing, submit property data, and appeal restrictions affecting their account.

### 3.2 Cleaners
Cleaners may accept or decline eligible jobs, report damage or safety issues, view payout breakdowns, and appeal reliability penalties.

### 3.3 Dispatch
Dispatch may:
- approve or deny manual-review jobs,
- override routing when policy permits,
- restrict or lock jobs/accounts under the triggers defined here,
- document reason codes,
- escalate safety and payment events.

### 3.4 Platform
The platform must:
- calculate pricing and payout consistently,
- enforce policy triggers,
- preserve event logs,
- present reasons for restrictions where policy requires them.

## 4. Host rights
Hosts are entitled to:
- transparent pricing,
- transparent explanation of manual review, restrictions, surcharges, and denials,
- access to dispute and appeal channels,
- access to QA evidence when relevant to a re-clean, refund, or quality dispute,
- fair application of published eligibility rules.

## 5. Host obligations
Hosts must:
- provide materially accurate property details,
- maintain safe and accessible property conditions,
- ensure timely payment,
- avoid creating preventable late-checkout conflicts,
- avoid harassment, abuse, fraud, or safety violations.

## 6. Cleaner rights
Cleaners are entitled to:
- transparent payout rules,
- safe-routing protections,
- decline restricted-host jobs without penalty where policy allows,
- access to QA feedback affecting score or eligibility,
- appeal channels for restrictions or penalties.

## 7. Cleaner obligations
Cleaners must:
- arrive on time or communicate delays,
- complete required QA evidence,
- report damage honestly,
- comply with safety rules,
- use vehicle declaration / override tools honestly where required,
- avoid no-shows, falsified evidence, theft, or other hard-fail conduct.

## 8. Eligibility baseline
### 8.1 Same-day service
Same-day service is an earned privilege, not a universal entitlement.

A same-day request may be auto-routed only if:
- the job is SLA-feasible,
- the host is not restricted,
- an eligible cleaner exists,
- no hard reject trigger is present,
- the route does not exceed capacity.

### 8.2 Deep clean service
Deep clean service may be disabled when:
- the host is restricted,
- the request appears after cutoff,
- route capacity is insufficient,
- the risk/manual-review layer rejects the request.

## 9. Hard enforcement triggers
### 9.1 Host hard-fail triggers
Any of the following may trigger host restriction or lock:
- failed payment,
- repeated late checkout,
- repeated inaccurate listing,
- harassment or abuse,
- safety issue,
- fraudulent damage claim,
- refusal of safe cleaner access.

### 9.2 Cleaner hard-fail triggers
Any of the following may trigger cleaner restriction or lock:
- no-show,
- falsified photos or falsified job evidence,
- theft claim,
- safety violation,
- repeated SLA misses at the hard-fail threshold,
- other serious integrity breach.

## 10. Soft enforcement actions
Soft enforcement may include:
- score adjustments,
- incident-counter increments,
- tier demotion,
- bonus removal,
- temporary manual review status,
- loss of same-day privilege,
- loss of deep-clean privilege.

Soft enforcement should be used when the issue is correctable and does not require immediate safety or fraud control.

## 11. Hard enforcement actions
Hard enforcement may include:
- host lock,
- cleaner lock,
- job auto-reject,
- same-day disabled,
- deep-clean disabled,
- restricted routing,
- payout hold pending review where fraud or integrity is under review,
- service denial where safety is at issue.

## 12. Manual review triggers
A job requires manual review when any of the following are true:
- outer-zone same-day request,
- compressed SLA window,
- high-complexity job,
- restricted or watchlist host,
- watchlist cleaner,
- vehicle mismatch,
- access ambiguity,
- weather or travel uncertainty,
- unusual surcharge or dispute condition,
- any reason code requiring dispatch judgment.

## 13. Restriction effects
### 13.1 Restricted host effects
A restricted host may be subject to:
- manual dispatch review,
- same-day disabled,
- deep-clean disabled,
- limited cleaner pool,
- cleaner decline without penalty,
- risk surcharge,
- SLA guarantee removal.

### 13.2 Restricted cleaner effects
A restricted cleaner may be subject to:
- no new auto-assigned jobs,
- removal from same-day eligibility,
- removal from high-complexity eligibility,
- required review or retraining,
- lock pending investigation for hard-fail events.

## 14. Payout, surcharge, and refund policy boundaries
### 14.1 Cleaner payout
Cleaner payout follows:
- base pay,
- mileage pay,
- fixed modifier/add-on payout shares,
- bonuses subject to tenure caps.

### 14.2 Surcharges
The platform may apply surcharges for conditions already contemplated in the service model, including but not limited to:
- late checkout,
- lockout or access delay,
- extreme mess,
- inaccurate listing impacts,
- restricted-host risk.

### 14.3 Refund / credit boundary
Refunds or credits may be considered when:
- an eligible same-day guarantee is missed,
- QA failure requires remedy,
- platform-side cleaner cancellation causes service failure,
- other platform-responsible failures occur.

This policy establishes when refunds may exist; detailed refund amounts and formulas should be maintained in a dedicated pricing/refund operations policy.

## 15. Safety escalation
### 15.1 Immediate safety rule
If a job presents a credible safety risk, cleaner safety overrides job completion.

### 15.2 Safety actions
Dispatch may:
- stop or reassign the job,
- lock the host account pending review,
- document safety evidence,
- escalate for permanent restriction if warranted.

## 16. Appeals policy
### 16.1 Host appeals
Hosts may appeal:
- tier demotion,
- restriction,
- surcharge linked to disputed facts,
- guarantee-related denial where they believe eligibility was met.

### 16.2 Cleaner appeals
Cleaners may appeal:
- reliability penalties,
- bonus removal,
- lock or restriction,
- QA-based disciplinary outcomes.

### 16.3 Appeal handling requirements
Every appeal should record:
- who appealed,
- what action is being appealed,
- reason code,
- evidence provided,
- decision owner,
- disposition.

This version does not set a final appeal SLA clock; that should be added in a later operational revision.

## 17. Audit logging requirements
Every enforcement or override event should create an event record including:
- timestamp,
- actor,
- target entity,
- action taken,
- reason code,
- relevant evidence reference if available,
- resulting state,
- appeal status where applicable.

## 18. Relationship to other documents
If another file conflicts with this policy on enforcement, restrictions, appeals, or authority, this document controls.

The earlier charter remains useful as an executive summary, but not as binding operating law.
