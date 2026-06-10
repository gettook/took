---
description: "Run the agent-readiness audit: 0–100 score on tests, build hermetics, documented patterns, style checks, and AGENTS.md. Shows the highest-leverage fix."
argument-hint: ""
allowed-tools:
  - Bash
---

## Agent-readiness — what breaks agents first

The *agent-ready-* family of principles: the repo must have reliable tests, a hermetic build, documented consistent patterns, verifiable style checks, and an AGENTS.md playbook. Every gap in this checklist is something that will cause an agent to fail or hallucinate.

This audit tells you what to fix first — not as a priority for you, but as a priority for the agents that will work here.

**What is scored:**
- Tests: presence, framework, co-change ratio
- Build: hermetic, reproducible, command documented
- Patterns: consistent structure, AGENTS.md coverage
- Style: lint/format check configured and documented
- Playbook: AGENTS.md meets the standard sections

Running the audit:

!took ready

Start with the `highestLeverageFix` — the single check that, if resolved, most improves the agents working in this repo. You don't need a perfect score to ship; you need to know what agents will struggle with.
