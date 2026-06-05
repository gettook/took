# Took

[![npm version](https://img.shields.io/npm/v/took)](https://www.npmjs.com/package/took)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Agent-Ready ✓](https://img.shields.io/badge/Agent--Ready-%E2%9C%93-brightgreen)](https://tookbot.com/agent-ready)

**Took is a local-first CLI + Claude Code plugin that coaches anyone steering AI coding agents through the RePPIT workflow — Research → Propose → Plan → Implement → Test (+ Secure for regulated work).** It is a coach, never an agent: it reviews what you put in and what comes out, course-corrects before damage, and teaches you to become a better manager of AI coding agents.

---

## Install

```sh
npm install -g @gettook/took
```

Initialise a repo, verify it is agent-ready, and coach your first prompt:

```sh
took init           # write .took/ config + AGENTS.md scaffold
took ready          # agent-readiness report card + highest-leverage fix
took prompt "add Stripe webhook handler"   # right-size + RePPIT next step
```

---

## Install the Claude Code plugin

The plugin adds slash commands and hooks directly into Claude Code so Took coaches every session automatically.

```
/plugin marketplace add gettook/took
/plugin install took@took
```

> **Note:** this repo *is* the marketplace. `.claude-plugin/marketplace.json` points at the bundled plugin in [`./plugin`](./plugin) — adding `gettook/took` clones the repo and installs it. The plugin's hooks shell out to the `took` CLI you installed above (falling back to `npx -y took`).

---

## Core commands

| Command | What it does |
|---|---|
| `took init` | Writes `.took/` config and AGENTS.md scaffold. No account needed. |
| `took ready` | Runs an agent-readiness audit; returns a score and the highest-leverage fix. |
| `took prompt "<text>"` | Right-sizes the task and coaches the next RePPIT step. |
| `took diff` | Reviews the current diff for scope creep, missing tests, secrets, and leftover slop. |
| `took docs-check` | Checks README, `.env.example`, and AGENTS.md for drift. |
| `took pr-ready` | Scores PR readiness; blocks on failures; produces a next-action prompt. |

Run `took --help` for the full command list, including `xp`, `guard`, `secure`, `scan`, `stats`, and `badge`.

---

## How it works

- **RePPIT loop** — Took coaches the full Research → Propose → Plan → Implement → Test cycle (and the Secure phase for regulated teams). Each command maps to a phase so you never skip the steps that matter.
- **Two-axis governor** — Rigor scales to task size (no ceremony for a one-line fix); protection scales to operator experience (heavier scanning and plain-language explanations for non-technical builders).
- **Agent-ready repo** — `took ready` audits your repo against the agent-readiness checklist (tests, hermetic build, documented patterns, verifiable style, AGENTS.md) and frames every gap as a thing that breaks agents.
- **Action interceptor** — after every tool call, Took tells you in plain English what you did, what you should have done, and how to improve — surfaced as a can't-miss note and earned as XP on a real course-correction. `took explain --deep` goes deeper (Pipp-depth, on Took Max).

---

## Local-first & private

Took runs entirely on your machine. No data leaves your repo unless you opt in to team/employer features. The `.took/` directory holds your config and event ledger; add it to `.gitignore` if you prefer it untracked.

---

## Links

- Website: [tookbot.com](https://tookbot.com)
- Docs: [tookbot.com/docs](https://tookbot.com/docs)
- Changelog: [CHANGELOG.md](CHANGELOG.md)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Issues and pull requests welcome.

## License

MIT — see [LICENSE](LICENSE).
