---
description: "Coach the Research phase: produce a research document before the agent writes any code. Runs took prompt to right-size the task and surface the research-first principle."
argument-hint: "<task description>"
allowed-tools:
  - Bash
---

## Research phase — why this comes first

The most common AI-coding failure mode is not a bad model — it's skipping research. An agent that writes code before understanding the problem will hallucinate APIs, touch the wrong files, and build the wrong thing. The *research-first* principle: produce a written research document that the planning step can reason from.

**What a research document is:**
- The files and modules already relevant to the task
- The APIs, schemas, or external contracts involved
- Constraints and risks the implementation must respect
- Open questions that must be answered before planning

**What it is not:** a plan, a proposal, or any code.

Ran against your current task:

!took prompt "$ARGUMENTS"

After reviewing the coaching output, use the `researcher` subagent to produce the actual research document, then move to `/took:propose`.
