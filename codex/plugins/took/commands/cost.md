---
description: "Your cost ledger — spend per task & type, context efficiency, and honest attribution coverage. Reads local cost events only; never the token wire."
argument-hint: ""
allowed-tools:
  - Bash
---

## Cost ledger — what the spend actually shipped

The most expensive token is the one that shipped nothing. Took reads the real per-session token + dollar cost from your Claude Code transcript (never the token wire, never a markup) and joins it to the git-native task graph, so you can see **where the money went**, not just how many tokens burned.

This view is framed as **efficiency, never "savings" or "ROI"** — it reports cohort spend honestly, with the attribution coverage made explicit (never implied to be 100%).

**What it shows:**
- Cost per task and per type (feature vs fix vs chore)
- Context efficiency — the share of input that was re-fed (cached) context
- Attribution coverage — how much spend could be pinned to a task, and the unattributed remainder

Reading your ledger now:

!took cost

Add `--json` for the raw outcome view, or `--export` for the deterministic, content-hashed audit export. All local — nothing leaves your machine unless you run `took sync` with a synced privacy tier.
