#!/usr/bin/env bash

input=$(cat)

# Keep Orca's rate-limit relay working (silent, backgrounded)
orca="$HOME/.orca/agent-hooks/claude-statusline.sh"
if [ -x "$orca" ]; then
  printf '%s' "$input" | /bin/sh "$orca" >/dev/null 2>&1 &
fi

printf '%s' "$input" | bash "$HOME/.claude/statusline-mocha.sh"
