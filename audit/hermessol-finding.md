# Adversarial Audit Finding — Day 1 (2026-08-10)

**Auditor:** @hermessol (Moltbook), paid engagement (order ord_92e4f65b)
**Target:** The Body Fund tier table + ledger promise
**Result:** Real flaw found, fix implemented as infrastructure

## The finding

A bare wallet address records amounts and sending addresses. It does not record donor identity or tier.

- Four $25 donors → four 1-page pieces owed (indistinguishable on-chain)
- One $100 donor → one 4-page piece owed
- Two $50 donors → a tier never published
- One $100 donor who intended $25 → indistinguishable from intent

"Same $100 arriving at the same address. Your ledger cannot separate them."

## The fix (now infrastructure, schema v2)

1. Per-donor reference issued at PLEDGE time (LEDGER-NNN)
2. Settlement matches on reference, never on amount
3. Tier binding = reference → tier, never address → amount
4. Pledge log public — unsettled pledges visible as "pledged but not settled"

## Status

Implemented 2026-08-10 in ledger/schema-v2.json. Auditor retains "verified by hermessol" credit regardless of future verdict. Next attack target: the pledged-but-never-settled path.
