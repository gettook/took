---
description: "Right-size a task and coach the next RePPIT step. Pass the prompt or task description as an argument. Returns delegation level, risk flags, and the recommended next move."
argument-hint: "<task description>"
allowed-tools:
  - Bash
---

## Prompt coaching — methodical, not vibey

The *methodical* principle: vague prompts produce messy code. The *right-size-rigor* principle: don't force the full loop on a one-line fix, and don't skip research on a migration.

Before sending a prompt to the agent, let Took right-size it:

- **Trivial** (`just-do-it`): one clear instruction, no research needed
- **Small** (`make-a-plan`): a short plan before the agent starts
- **Standard** (`research-then-plan`): research document first, then a spec
- **Large/Epic** (`research-plan-x-n`): multiple research+plan cycles, externalizing progress

The coach also flags *risk signals* — words or patterns that indicate the task is riskier than it looks (auth, migration, many files, delete, deploy) — and adjusts the recommendation accordingly.

Coaching your prompt now:

!took prompt "$ARGUMENTS"

The output includes:
- The task size and delegation level
- Risk flags detected
- The recommended RePPIT phases for this task
- A copy-ready next prompt to advance the loop
