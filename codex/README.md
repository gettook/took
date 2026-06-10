# Took for Codex CLI

This directory is a **Codex CLI plugin marketplace** that ships the Took plugin — the same
RePPIT coach as the [Claude Code plugin](../plugin), packaged for OpenAI's Codex CLI
(validated against Codex `0.137.0`).

- Marketplace manifest: [`.agents/plugins/marketplace.json`](./.agents/plugins/marketplace.json)
- Plugin: [`plugins/took`](./plugins/took) — manifest, `hooks.json`, hook wrapper script, and 15 commands

Took is a coach, never an agent: it guards risky tool calls, narrates every action in plain
English, catches missing tests and docs drift, scores PR readiness, and rewards quality
judgment with XP.

---

## Install

### 1. Install the Took CLI

The plugin's hooks shell out to the `took` CLI (falling back to `npx -y @gettook/took` if it
is not on your PATH):

```sh
npm install -g @gettook/took
```

### 2. Add the marketplace and install the plugin

Clone this repo and add the `codex/` directory as a local marketplace:

```sh
git clone https://github.com/gettook/took.git
codex plugin marketplace add ./took/codex
codex plugin add took@took
```

`codex plugin list` should now show `took@took  installed, enabled`.

> **Why clone first?** This marketplace lives in the `codex/` subdirectory of the repo
> (the repo root hosts the Claude Code marketplace), and Codex resolves Git-source
> marketplaces **only at the repo root** — verified live against Codex `0.137.0`:
>
> - `codex plugin marketplace add gettook/took` succeeds, but it picks up the repo-root
>   `.claude-plugin/marketplace.json` (Codex's Claude-marketplace compatibility fallback) and
>   installs the **Claude Code package** from [`../plugin`](../plugin), whose hooks reference
>   `${CLAUDE_PLUGIN_ROOT}` — not this Codex-native package.
> - `--sparse codex` does not re-root the marketplace either; it fails with
>   "marketplace root does not contain a supported manifest".
>
> Pointing `marketplace add` at the cloned `codex/` directory installs this Codex-native
> package (validated by Codex's own plugin schema) and is the verified install path.

### 3. One-time hook trust (Codex's designed security flow)

Installing the plugin does **not** activate its hooks. On your next interactive `codex`
session, Codex shows a **"New hook — review required"** prompt listing Took's hooks. Review
and trust them once; Codex then records the trust decision itself (a `trusted_hash` in its
own state). This is deliberate: there is no installer-writable way to pre-trust hooks, and
that is Codex's security model working as intended — you, not an installer, approve what
runs on your machine. If the hook script ever changes, Codex re-prompts
("Modified since last trusted — review required").

---

## What's inside

- **Hooks** (`plugins/took/hooks.json`) — `PreToolUse`, `PostToolUse`, `UserPromptSubmit`,
  `PreCompact`, and `Stop` events pipe Codex's hook envelope to `took hook <event>` via
  [`scripts/hook.sh`](./plugins/took/scripts/hook.sh). Codex's hook wire protocol is
  Claude-Code-compatible, so the same Took handler drives both hosts.
- **Commands** (`plugins/took/commands/`) — the RePPIT loop (`/took:research`, `/took:propose`,
  `/took:plan`, `/took:implement`, `/took:test`, `/took:secure`), reviews (`/took:diff`,
  `/took:docs-check`, `/took:pr-ready`, `/took:ready`), and coaching (`/took:prompt`,
  `/took:explain`, `/took:pipp`, `/took:xp`, `/took:upgrade`).

## Uninstall

```sh
codex plugin remove took@took
codex plugin marketplace remove took
```

## Links

- Website: [tookbot.com](https://tookbot.com)
- Claude Code plugin: [`../plugin`](../plugin)
- License: [MIT](../LICENSE)
