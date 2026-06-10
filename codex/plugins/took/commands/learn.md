---
description: "Your learning curve — corrections falling, right-sizing rising, context waste shrinking. Weekly trends from your own event log; no cross-user comparison."
argument-hint: ""
allowed-tools:
  - Bash
---

## Learning — are you getting better at steering agents?

XP measures judgment earned; **learning** measures whether the judgment is compounding. Took derives a weekly series from your own local event log — nothing synthetic, nothing compared against other users:

- **Corrections / week** — how often the guard had to step in (falling is learning)
- **Right-sized %** — the share of your prompts that arrived properly scoped (rising is learning)
- **Context waste %** — how hard you're pushing the smart window (shrinking is learning)
- **Interventions** — what Took caught, counted never priced
- **XP by category** — where the judgment is being earned

Weeks with no signal render as `—`, never as a fake zero. Trends are yours alone: the honest claim is the slope, not a score.

Reading your learning curve now:

!took learn

Add `--json` for the raw weekly series. All local — derived aggregates only ever sync, and only with a synced privacy tier.
