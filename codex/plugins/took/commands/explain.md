---
description: "Plain-English explanation of an agent action or concept, with cited resources. Pipp register. Pass the action or thing to explain as the argument."
argument-hint: "<action or concept to explain>"
allowed-tools:
  - Bash
---

## Explain — narration, not just output

The *teach-why* principle: a bare warning teaches nothing. Pipp's `explain` goes further — it describes what happened in plain terms, why it matters, what the risk is if ignored, and where to learn more.

**What you get:**
- A plain-language description of the action or concept (no jargon, or glossary links for unavoidable terms)
- Why it matters in this context
- What could go wrong if handled incorrectly
- Leveled learning resources — cited to real documentation, not generated summaries
- A `[Mark as learned]` option — once marked, Took stops re-explaining this concept

**Anti-hallucination guarantee:**
Citations in Pipp mode point to real, grounded sources. Took will not generate a plausible-sounding citation it can't verify. If a source isn't available, it says so.

**Go deeper (Took Max):**
`took explain --deep` gives Pipp-depth narration — plain English that defines the jargon and explains more fully. On the free/engineer tier you still get the terse answer plus a pointer to Max; on Max it goes deep automatically.

Running the explanation:

!took explain "$ARGUMENTS"

Use this command freely — understanding what your agent is doing is the whole point of Pipp.
