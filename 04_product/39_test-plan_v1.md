# Sameday STRO — Test Plan v1

**Status:** build blueprint

## 1. Goal
Define how the MVP will be verified before and during pilot use.

## 2. Test layers
- unit tests
- service / business-rule tests
- API tests
- integration tests
- end-to-end workflow tests
- pilot smoke tests

## 3. Highest-risk areas to test first
1. pricing calculation
2. cleaner payout calculation
3. same-day eligibility gates
4. restriction enforcement
5. payment failure handling
6. onboarding blocking rules
7. manual-review routing
8. audit-event creation

## 4. Unit tests
Must cover:
- base pricing
- modifier calculations
- add-on calculations
- mileage calculations
- payout share calculations
- score update formulas
- risk gating logic inputs

## 5. Service-layer tests
Must cover:
- host eligibility changes after failed payment
- cleaner activation after onboarding completion
- restriction creation and lift
- service request auto-approve vs manual-review
- job state transitions

## 6. API tests
Must cover:
- auth
- host property CRUD
- quote endpoint
- service request endpoint
- cleaner onboarding endpoints
- job accept/decline/complete
- admin manual review actions

## 7. End-to-end scenarios
At minimum test these flows:
1. host registers, adds property, requests standard service
2. cleaner registers, finishes onboarding, accepts a job
3. job is completed, QA passes, billing and payout records created
4. same-day request goes to manual review
5. failed payment blocks host eligibility
6. restricted host cannot auto-book same-day
7. QA failure triggers re-clean workflow

## 8. Pilot smoke checklist
Before pilot launch, manually verify:
- first host signup
- first cleaner signup
- first property creation
- first quote
- first request
- first assignment
- first completed job
- first invoice record
- first payout record
- first manual review item
- first restriction item

## 9. Ongoing pilot test cadence
- daily smoke on critical paths
- weekly regression on pricing/payout/routing/restriction flows
- monthly review of production incidents to add missing tests
