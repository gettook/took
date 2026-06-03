#!/usr/bin/env sh
# Took Claude Code hook wrapper.
# Reads the hook event from $1, pipes stdin to the took CLI, and exits with
# the CLI's exit code. This file must be executable: chmod +x hook.sh
#
# Usage (invoked by Claude Code via hooks.json):
#   hook.sh <event>
#   where <event> is one of: pre-tool | post-tool | user-prompt | pre-compact
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
