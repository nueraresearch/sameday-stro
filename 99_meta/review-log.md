# Sameday STRO — Review Log and Redline Notes

This file captures the major review conclusions developed during the drafting cycle.

## 1. Business plan / software spec review
- Core wedge was strong: same-day turnover guarantee + priority routing + consumables + single-vendor operations.
- Biggest weakness: the guarantee was not yet credible without capacity modeling, service-area constraints, failure handling, and economics.
- Market size, margins, and pricing claims were asserted without evidence.
- Software spec matched the concept, but was still a feature list rather than an implementation-grade spec.

## 2. Three-document split review
- Splitting the work into investor memo, operations playbook, and MVP PRD materially improved structure.
- Investor memo became a good founder memo, but not diligence-safe.
- Operations playbook became the strongest operational document.
- MVP PRD remained useful as a v0, but still needed validation rules, state detail, IDs, source-of-truth decisions, and non-functional requirements.

## 3. Pricing and economics review
- The 6-tier base price + mileage model was internally coherent under the stated assumptions.
- The base-margin math checked out, but add-on costs and downstream labor impacts were still under-modeled.
- Evidence appendix referenced real institutions, but without source URLs, quotes, and citations it was not yet a grounded appendix.
- Claims like “final,” “investor-grade,” and “YC-grade” were ahead of the proof.

## 4. Reliability / reputation / risk review
- Early cleaner and host scoring models were too blunt: too punitive on one bad event and too easy to recover from immediately after.
- The revised reliability framework improved stability by adding dampened rolling scores, incident counters, sample-size minimums, and hard-fail overrides.
- Risk-engine architecture was directionally right, but the published weighted formula still underreacted to near-impossible or highly complex jobs.
- Hard rejects and manual-review triggers were recommended ahead of any weighted ranking model.

## 5. Governance review
- Governance summary had the right layer and framing, but still read as a summary rather than binding operating law.
- A real charter still needed explicit triggers, evidence standards, lock authority, appeal windows, safety escalation policy, money governance, and auditability.

## 6. Onboarding review
- Onboarding architecture improved with probation, vehicle verification, and starting-state controls.
- Still needed payroll/legal onboarding, payment setup, review owners, pass/fail logic, manual review triggers, and stronger host/property verification.

## 7. Overall status at time of documentation
- Strong concept and increasingly coherent operating system.
- Strongest areas: routing logic direction, operations structure, marketplace control layering.
- Weakest unresolved areas: grounded evidence, add-on economics, enforceable governance, deployable onboarding spec, and implementation-grade technical detail.
