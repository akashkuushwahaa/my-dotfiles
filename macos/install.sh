#!/usr/bin/env bash
# Symlink the macOS configs in this folder into place.
# Existing files are moved to <name>.bak-<timestamp> first. Safe to re-run.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

link() {
  local src="$DIR/$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [[ -L "$dst" && "$(readlink "$dst")" == "$src" ]]; then
    echo "ok      $dst"; return
  fi
  if [[ -e "$dst" || -L "$dst" ]]; then
    mv "$dst" "$dst.bak-$STAMP"; echo "backup  $dst -> $dst.bak-$STAMP"
  fi
  ln -s "$src" "$dst"; echo "linked  $dst"
}

if [[ "${1-}" == "--brew" ]]; then
  brew bundle --file="$DIR/Brewfile"
fi

link aerospace/aerospace.toml       "$HOME/.config/aerospace/aerospace.toml"
link sketchybar                     "$HOME/.config/sketchybar"
link borders/bordersrc              "$HOME/.config/borders/bordersrc"
link ghostty/config                 "$HOME/.config/ghostty/config"
link ghostty/shaders                "$HOME/.config/ghostty/shaders"
link tmux/tmux.conf                 "$HOME/.config/tmux/tmux.conf"
link git/ignore                     "$HOME/.config/git/ignore"
link claude/statusline-wrapper.sh   "$HOME/.claude/statusline-wrapper.sh"
link claude/statusline-mocha.sh     "$HOME/.claude/statusline-mocha.sh"

# tmux plugins (catppuccin etc.) are installed by tpm, not stored here
if [[ ! -d "$HOME/.config/tmux/plugins/tpm" ]]; then
  git clone --depth 1 https://github.com/tmux-plugins/tpm "$HOME/.config/tmux/plugins/tpm"
fi

cat <<'MSG'

Done. Remaining manual steps:
  - Claude statusline: add to ~/.claude/settings.json (see macos/claude/settings.statusline.json)
  - SbarLua for sketchybar: see macos/sketchybar/README.md (step 2)
  - tmux: press prefix (C-s) + I to install plugins
  - zsh: macos/zsh/.zshrc and .zprofile are reference copies; merge by hand
MSG
