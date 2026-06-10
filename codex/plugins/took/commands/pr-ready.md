---
description: "Score the PR for readiness: tests, docs, scope, secrets, and a copy-ready next prompt to close any gap. Blocking findings prevent merge."
argument-hint: ""
allowed-tools:
  - Bash
---

## PR readiness — the merge bar, not a formality

A PR is ready when a reviewer — human or agent — can verify what changed, confirm it works, understand the risk, and roll back if needed. The readiness check scores that directly.

**What is checked:**
- Tests: behavior changes are covered
- Scope: blast radius is documented and intentional
- Secrets: nothing sensitive in the diff
- Docs: README, `.env.example`, AGENTS.md are current
- Description: the PR description explains *why*, not just *what*
- Rollback: there is a documented rollback path for risky changes

Running the readiness check:

!took pr-ready

**Output includes:**
- A 0–100 score
- The blocking checks (status `fail`) that must be resolved
- A copy-ready `nextPrompt` you can send to the agent to close the gap

Blocking findings are not suggestions. A diff that can't be verified shouldn't merge, regardless of how confident the agent was.
