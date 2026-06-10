#!/usr/bin/env sh
# Took Codex hook wrapper.
# Reads the hook event from $1, pipes the Codex hook envelope on stdin to the
# took CLI, and exits with the CLI's exit code. Must be executable: chmod +x.
#
# Usage (invoked by Codex via hooks.json):
#   hook.sh <event>
#   where <event> is one of: pre-tool | post-tool | user-prompt | pre-compact | stop
#
# Codex's hook wire protocol is Claude-Code-compatible (research
# 2026-06-08-codex-agent-host.md §3b), so the same `took hook <event>` handler
# drives both hosts — only this wrapper and the event registration differ.
#
# The script prefers a globally-installed `took`; falls back to npx if not found.

set -e

EVENT="${1}"

if [ -z "${EVENT}" ]; then
  echo "took hook.sh: missing event argument" >&2
  exit 1
fi

if command -v took > /dev/null 2>&1; then
  TOOK_CMD="took"
else
  TOOK_CMD="npx -y @gettook/took"
fi

exec ${TOOK_CMD} hook "${EVENT}"
