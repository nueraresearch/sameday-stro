# Sameday STRO — Onboarding Exception Specification v1

**Status:** build blueprint

## 1. Goal
Define what happens when self-onboarding does not pass cleanly for hosts or cleaners.

## 2. Why this matters
Self-onboarding should be the default, but the platform must safely handle incomplete, failed, or suspicious cases without blocking the whole business.

## 3. Host onboarding exception types
- missing payment method
- property verification mismatch
- incomplete access instructions
- calendar sync failure
- inaccurate property details
- policy acknowledgment incomplete

### Host exception actions
- request correction from host
- hold property in `pending_verification`
- route to manual review
- block same-day eligibility
- block service request approval

## 4. Cleaner onboarding exception types
- identity verification failure
- background flag
- missing vehicle data
- payout setup incomplete
- training incomplete
- suspicious or inconsistent data

### Cleaner exception actions
- request correction from cleaner
- hold in onboarding pending state
- escalate to manual review
- block activation
- block assignment eligibility

## 5. Required onboarding review queue
Admin/dispatch needs an onboarding exception queue showing:
- entity type (`host`, `cleaner`, `property`)
- current onboarding state
- blocking reason
- submitted evidence
- next required action
- assigned reviewer

## 6. Resolution outcomes
Every exception should resolve into one of:
- approved / continue onboarding
- rejected / blocked
- needs more information
- escalated for policy decision

## 7. Audit requirements
Every onboarding exception decision must record:
- who reviewed it
- reason code
- evidence reviewed
- final outcome
- timestamp

## 8. MVP rule
Do not allow “silent failure” onboarding.
Every blocked onboarding path must show the user:
- what failed
- what they need to do next
- whether manual review is underway
