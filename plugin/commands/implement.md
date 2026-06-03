---
description: "Coach the Implement phase: right-size delegation, protect the context budget, and externalize progress on long tasks. Runs took diff to review what the agent produced."
argument-hint: "<task or intent description>"
allowed-tools:
  - Bash
---

## Implement phase — steering without vibe-coding

The *scope-discipline* principle: an agent that edits too many files is drifting. The *externalize-progress* principle: on long tasks, write intermediate artifacts (summaries, checkpoints) before the context fills up. The *context-budget* principle: treat the ~170K smart-token window as a finite resource.

**Before the agent starts:**
- Confirm the plan is in context.
- Confirm the research document is in context (or summarized).
- Set an explicit file scope — what is in and what is out.

**During implementation:**
- Watch the file count. If the agent touches significantly more files than the plan called for, stop and review.
- On tasks that will run long, ask the agent to checkpoint progress into an artifact periodically.

**After the agent stops, review the diff:**

!took diff

The diff review checks scope, missing tests, secrets, and leftover slop. Fix any `block`-severity findings before moving on. Then run `/took:test`.
