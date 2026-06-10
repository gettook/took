---
description: "Build a frozen, source-grounded repo cartridge — a slim context artifact (compression ratio reported per build as a labeled estimate; 18.8× in the reference PoC run), faithfulness-gated, with a labeled savings estimate."
argument-hint: "[build|status] (e.g. build --budget 24000, build --strict)"
allowed-tools:
  - Bash
---

## Cartridge — repo knowledge without re-pasting the repo

Re-feeding the same repo context every session is the single biggest avoidable spend. A **cartridge** is a frozen, content-hashed artifact distilled from the repo's load-bearing files (AGENTS.md, README, the highest-PageRank sources) that an agent can read in one gulp instead.

Every claim in the artifact must survive the **faithfulness gate** — source-grounded against the file it cites, or it is dropped and reported (`--strict` refuses the whole freeze instead). An unfaithful cartridge is worse than none: it lies confidently. Nothing unfaithful is ever frozen.

The compression ratio and per-session savings are **labeled estimates** (`estimate-vs-full-corpus-reingestion`), priced only at a known model rate — never invented.

Running it now:

!took cartridge $ARGUMENTS

After a build, reference the frozen `.took/memory/cartridge@<hash>.md` in your agent context instead of re-pasting files. `status` shows the latest frozen artifact and its ratio.
