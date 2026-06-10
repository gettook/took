---
description: "Coach the Plan phase: turn the chosen proposal into a reviewable spec with a verifiable done. Surfaces the spec-quality principle."
argument-hint: "<proposal summary or task>"
allowed-tools:
  - Bash
---

## Plan phase — a spec an agent can be held to

The *spec-quality* principle: a plan is only useful if it is reviewable and has a verifiable done. Vague plans produce vague implementations. An agent needs a concrete, enumerable list of what to do and how to confirm it's done.

**A good plan includes:**
- A numbered list of discrete, ordered steps
- For each step: what file/module changes, what behavior results
- A verifiable done criterion (a test that passes, a command that succeeds, a UI state that changes)
- Files that must NOT be touched (scope discipline)
- Known risks and the mitigation for each

**Right-sizing the plan to the task** (the *right-size-rigor* principle):
- Trivial fix → one-sentence plan is fine; skip the ceremony
- Standard feature → a clear step list + done criteria
- Large/migration → externalize the plan as an artifact the agent can checkpoint against

Ran against your current task:

!took prompt "$ARGUMENTS"

When the plan is written, share it with the agent as context, then proceed to `/took:implement`.
