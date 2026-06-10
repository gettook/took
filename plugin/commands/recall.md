---
description: "Recall the most relevant symbols for a query — a zero-dep structural map of the repo, returned within a token budget so the agent reads only the slice it needs."
argument-hint: "<query>  (e.g. \"where is auth wired\")"
allowed-tools:
  - Bash
---

## Recall — load only the slice you need

Protecting the context budget is the whole game: the ~170K "smart" window is finite, and re-feeding a bloated context is what makes an agent dumber and more expensive. Instead of dumping files, `recall` returns a ranked, structural map of the symbols most relevant to a query — within an explicit token budget.

It is dependency-free and local: no index server, no embeddings, no network.

Recalling for your query now:

!took recall "$ARGUMENTS"

Tune `--budget <tokens>` (default 1500) for how much context to return, or `--max <n>` to cap the result count. Add `--json` for the raw report (for agents/tooling).
