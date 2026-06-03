---
description: "Check README, .env.example, and AGENTS.md for drift against the current diff. Surfaces the env-example-current and agents-md-standard principles."
argument-hint: ""
allowed-tools:
  - Bash
---

## Docs check — the playbook must stay current

Three documents that drift silently and break the next agent:

1. **README** (*agent-ready-docs*): does it still accurately describe the project, setup, and key commands? If the diff changes the setup or commands, the README must change too.

2. **.env.example** (*env-example-current*): every environment variable the code references must appear in `.env.example`. Missing vars break every agent (and developer) who sets up the project fresh.

3. **AGENTS.md** (*agents-md-standard*): the playbook for coding agents. Missing sections — overview, build/test commands, code-style, testing instructions, security — leave agents without the context they need to be consistent.

Running the docs check:

!took docs-check

Drift is framed as: "this change modified behavior X, and the corresponding documentation Y was not updated." Fix the documentation as part of the same diff, not in a follow-up.

After the docs check passes, run `/took:pr-ready` to get a readiness score and the copy-ready next prompt.
