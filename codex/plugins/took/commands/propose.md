---
description: "Coach the Propose phase: weigh at least two solutions and commit to one with a rationale. Surfaces the propose-alternatives principle."
argument-hint: "<task or research document summary>"
allowed-tools:
  - Bash
---

## Propose phase — alternatives before commitment

The *propose-alternatives* principle: always surface ≥2 solutions before the agent writes a line. Not because every task needs a formal design review — but because the act of comparing forces clarity about trade-offs, and the rationale becomes the spec's context.

**A good proposal covers:**
- Option A and Option B (at minimum)
- The key trade-offs for each (complexity, reversibility, test surface, perf)
- A clear recommendation with one-paragraph rationale
- What the proposal does *not* cover (scope discipline from the start)

This is also the right moment to confirm that the research document from `/took:research` actually answers the questions the proposal depends on. If it does not, go back.

Ran against your current task:

!took prompt "$ARGUMENTS"

When the proposal is written and agreed, move to `/took:plan` to turn it into a verifiable spec.
