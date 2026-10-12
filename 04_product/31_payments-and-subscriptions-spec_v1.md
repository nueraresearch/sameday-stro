# Sameday STRO — Payments and Subscriptions Specification v1

**Status:** build blueprint

## 1. Goal
Define how hosts pay, how subscriptions are managed, and how cleaner payouts are tracked.

## 2. Host-side payments
### 2.1 Payment method requirements
Hosts must add at least one valid payment method before auto-approved service requests can be fulfilled.

### 2.2 Payment states
- `ok`
- `failed`
- `review_required`

### 2.3 Host charge categories
- membership subscription
- cleaning job charge
- consumables charge
- surcharge
- refund / credit adjustments

## 3. Subscription model
### 3.1 Subscription states
- `trial`
- `active`
- `past_due`
- `paused`
- `cancelled`

### 3.2 Subscription actions
- start
- upgrade
- downgrade
- pause
- resume
- cancel
- renew

### 3.3 Required subscription events
- subscription created
- renewal billed
- renewal failed
- plan changed
- plan cancelled

## 4. Payment failure policy
When a host payment fails:
1. mark payment status failed
2. notify host
3. pause auto-approval for future services if policy requires
4. route host to payment remediation flow
5. if severe or repeated, trigger restriction workflow

## 5. Cleaner payouts
Cleaner payout record must separate:
- base pay
- mileage pay
- modifier shares
- add-on shares
- bonus
- total payout

### 5.1 Payout states
- `pending`
- `approved`
- `paid`
- `held`

### 5.2 Hold triggers
Possible payout hold reasons:
- fraud review
- QA investigation
- safety investigation
- missing completion evidence

## 6. Refunds / credits
Refunds or credits may be issued for:
- platform-side SLA failure on eligible job
- QA failure requiring remedy
- cleaner cancellation causing service failure
- manual admin decision in dispute resolution

Detailed formulas can live in a later finance policy doc, but the system must support itemized refund/credit records from day one.

## 7. Processor recommendation
Use Stripe or equivalent processor for:
- payment methods
- subscriptions
- invoice-like charge records
- refund support

Cleaner payouts may use:
- Stripe Connect, or
- internal payout ledger + external payout provider

## 8. MVP requirements
Build first:
- save payment method
- create subscription
- charge host for approved service
- record charge success/failure
- create payout ledger entry
- mark payout approved/paid
