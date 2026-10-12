# Sameday STRO — Permission Matrix v1

**Status:** build blueprint

## 1. Roles
- Guest
- Host
- Cleaner
- Dispatch
- Admin
- System

## 2. Permission principles
- Users can only act on their own account unless elevated.
- Dispatch can operate jobs and restrictions, but not change core system settings unless granted admin.
- Admin can do everything dispatch can do plus policy/configuration management.
- System can perform automated actions within rule boundaries and must create audit events.

## 3. Matrix
| Capability | Guest | Host | Cleaner | Dispatch | Admin | System |
|---|---|---|---|---|---|---|
| Register account | ✓ | ✓ | ✓ | — | — | — |
| Log in | — | ✓ | ✓ | ✓ | ✓ | — |
| View own profile | — | ✓ | ✓ | ✓ | ✓ | — |
| Edit own profile | — | ✓ | ✓ | ✓ | ✓ | — |
| Add payment method | — | ✓ | — | — | ✓ | — |
| View own payment methods | — | ✓ | — | — | ✓ | — |
| Create property | — | ✓ | — | — | ✓ | — |
| Edit own property | — | ✓ | — | — | ✓ | — |
| View any property | — | own | assigned context only | ✓ | ✓ | ✓ |
| Request quote | — | ✓ | — | ✓ | ✓ | ✓ |
| Submit service request | — | ✓ | — | ✓ | ✓ | ✓ |
| Cancel own pending request | — | ✓ | — | ✓ | ✓ | ✓ |
| View own requests/jobs | — | ✓ | assigned only | ✓ | ✓ | ✓ |
| Connect calendar | — | ✓ | — | — | ✓ | — |
| Submit cleaner onboarding items | — | — | ✓ | — | ✓ | — |
| View own onboarding status | — | — | ✓ | — | ✓ | ✓ |
| Create / edit own vehicle | — | — | ✓ | — | ✓ | — |
| Submit vehicle override | — | — | ✓ | — | ✓ | ✓ |
| Set availability | — | — | ✓ | ✓ | ✓ | ✓ |
| Accept / decline job | — | — | ✓ | ✓ override | ✓ | ✓ offer generation |
| Mark arrival/start/complete | — | — | ✓ | ✓ override | ✓ | — |
| Upload QA photos | — | — | ✓ | ✓ | ✓ | — |
| File issue report | — | ✓ own dispute | ✓ | ✓ | ✓ | — |
| View QA review on own jobs | — | ✓ | own jobs | ✓ | ✓ | ✓ |
| Approve manual-review job | — | — | — | ✓ | ✓ | — |
| Reject manual-review job | — | — | — | ✓ | ✓ | — |
| Override assignment | — | — | — | ✓ | ✓ | — |
| Create restriction | — | — | — | ✓ | ✓ | ✓ rules |
| Lift restriction | — | — | — | ✓ | ✓ | — |
| File appeal | — | ✓ | ✓ | — | — | — |
| Decide appeal | — | — | — | ✓ | ✓ | — |
| Issue refund / credit | — | — | — | ✓ | ✓ | — |
| Apply surcharge | — | — | — | ✓ | ✓ | ✓ rules |
| View KPI dashboard | — | limited future | limited earnings only | ✓ | ✓ | ✓ |
| View audit log | — | own-facing only | own-facing only | ✓ | ✓ | ✓ |
| Modify pricing rules | — | — | — | — | ✓ | — |
| Modify policy configuration | — | — | — | — | ✓ | — |

## 4. High-risk actions requiring audit
Always audit:
- manual-review approvals/rejections
- assignment overrides
- restrictions and lifts
- refunds, credits, surcharges
- appeal decisions
- pricing-rule changes
- policy changes
- payout holds

## 5. Suggested RBAC implementation
Use coarse roles plus scoped ownership checks:
- role grants capability category
- ownership check narrows actual accessible records
- policy layer enforces additional eligibility restrictions
