---
description: "Git-native task graph: add / ready / show / claim / close / list / active. Token-lean, JSON-first, lives in the repo — the substrate for cost-per-task lineage."
argument-hint: "<sub> [args]  (e.g. add \"Wire the cost reader\" | ready | claim tk-0003)"
allowed-tools:
  - Bash
---

## Task graph — scope, don't dump

Piping a verbose tracker issue into an agent drags in thousands of tokens of custom fields and comment threads to say what three lines would. Took's task graph is the opposite: issues live as versioned data **in the repo**, the interface is JSON-first and machine-lean, and `ready` auto-finds the next unblocked task — so the agent reads only the slice it needs.

The task type (`feature | fix | chore`) is a **field, not a classifier guess**, which is what lets the cost ledger answer "what did this feature cost vs that fix?".

**Sub-commands:**
- `add "<title>"` — create a task (`--type`, `--dep <id>`, `--phase`)
- `ready` — the next unblocked task
- `show <id>` — one task's detail
- `claim <id>` / `close <id>` — move it (`--by <agent/branch>`)
- `list` / `active` — all tasks / the currently-claimed one

Running it now:

!took task $ARGUMENTS

Add `--text` for human-readable output instead of JSON. Claiming a task sets the active-task marker that cost events attribute against.
