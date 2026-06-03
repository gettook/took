---
description: "Review the current staged diff: scope blast radius, missing tests, secrets, and leftover slop. Surfaces block-severity findings before anything ships."
argument-hint: ""
allowed-tools:
  - Bash
---

## Diff review — catch it before it ships

The diff review runs four checks in sequence:

1. **Scope** (*scope-discipline*): how many files changed, which areas they touch, and whether any suspects look outside the stated intent.
2. **Tests** (*verifiable-tests*): are the behavior changes covered by test file changes? The test/source co-change ratio is the signal.
3. **Secrets** (*secret-exposure*, *phi-exposure*): pattern scan of the diff for credentials, tokens, PHI, and PII. Matches are redacted — the label and line number are surfaced, never the raw value.
4. **Slop** (*deslop*): leftover debug statements, dead code, commented-out blocks, and TODO bombs that the agent left in.

Running the diff review:

!took diff

**What to do with the output:**
- `block` severity: must be resolved before this diff goes further.
- `warn` severity: strong recommendation; document the reason if you're proceeding.
- `info` severity: awareness only.

After the diff review passes, run `/took:docs-check` to catch playbook drift, then `/took:pr-ready` for the final score.
