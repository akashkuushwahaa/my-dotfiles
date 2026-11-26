# 🐧 Akash's Dotfiles (Windows + macOS)

Windows and macOS workspace customization based on the **Catppuccin Mocha** palette: a tiling window manager, custom status bar, and deep application styling on both.

* **Windows** configs live at the repo root (sections below).
* **macOS** configs live in [`macos/`](macos) — see [🍎 macOS](#-macos).

## 🛠️ Windows Applications Included
* **GlazeWM**: Tiling Window Manager for Windows.
* **YASB**: Yet Another Status Bar (highly customizable top/bottom bar).
* **Zen Browser**: Custom `userChrome` and `userContent` styles.
* **VS Code**: Custom UI via `Custom CSS and JS Loader`.
* **Discord**: Client enhancements via `Vencord`.
* **Windhawk**: System-wide UI tweaks (Taskbar, Start Menu, etc.).
* **OBS Studio**, **PowerShell**, **Windows Terminal**, **Flow Launcher**: Themes and settings.

---

## 🚀 Windows Installation

### 1. GlazeWM (Window Manager)
* Copy `glazewm/config.yaml` to `%USERPROFILE%\.glazewm\config.yaml`.
* Restart GlazeWM to apply keybindings and gaps.

### 2. YASB (Status Bar)
* Install [YASB](https://github.com/denBot/yasb).
* Copy the contents of `yasb/` to `%USERPROFILE%\.yasb\`.
* Ensure `config.yaml` and `styles.css` are in the root of that folder.

### 3. Zen Browser
* Open Zen and go to `about:support`.
* Click **"Open Folder"** next to *Profile Folder*.
* Create a folder named `chrome` if it doesn't exist.
* Copy all files from `zen browser/` into that `chrome` folder.
* **Note:** Ensure `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true` in `about:config`.

### 4. VS Code (Custom CSS)
1. Install [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css).
2. Copy `vs-code/settings.json` to `%APPDATA%\Code\User\`.
3. Link `vs-code/custom-vscode.css` in your settings imports.
4. Run **"Enable Custom CSS and JS"** from the Command Palette (`Ctrl+Shift+P`).

### 5. Discord (Vencord)
1. Open Discord Settings -> **Vencord** -> **Themes**.
2. Click **"Open Themes Folder"**.
3. Move `discord/system24-catppuccin-mocha.theme.css` into that folder.

### 6. Windhawk (System Tweaks)
* Open **Windhawk** -> **Library**.
* For each `.json` file in the `windhawk/` folder:
    1. Install the corresponding mod (e.g., Taskbar Styler).
    2. Go to **Settings** -> **Advanced** -> **Import**.
    3. Paste/Upload the `.json` configuration.

### 7. OBS Studio
* Copy `obs/Catppuccin_Mocha.ovt` to `%APPDATA%\obs-studio\themes\`.
* Restart OBS, then pick the theme in **Settings** -> **Appearance**. It extends OBS's `Catppuccin` base theme.

### 8. PowerShell
* Copy `powershell/Microsoft.PowerShell_profile.ps1` to the path shown by `$PROFILE` (back up your existing profile first).
* It runs [Fastfetch](https://github.com/fastfetch-cli/fastfetch) with `~/.config/fastfetch/config.jsonc` (that config is not included here).

### 9. Windows Terminal
* Open **Settings** -> **Open JSON file**, back it up, and replace it with `windows-terminal/settings.json`.
* Needs [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip).

### 10. Flow Launcher
* Copy `flow-launcher/Catppuccin Mocha.xaml` into the folder opened by **Settings** -> **Appearance** -> **Open Theme Folder**.
* Restart Flow Launcher and select the theme.

The configs in steps 7-10 come from [SleepyCatHey/Ultimate-Win11-Setup](https://github.com/SleepyCatHey/Ultimate-Win11-Setup) (MIT, see [`LICENSE-Ultimate-Win11-Setup`](LICENSE-Ultimate-Win11-Setup)).

---

## 🍎 macOS

| Folder | App | Installs to |
|--------|-----|-------------|
| `macos/aerospace/` | [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling WM (starts sketchybar + borders) | `~/.config/aerospace/aerospace.toml` |
| `macos/sketchybar/` | [SketchyBar](https://github.com/FelixKratz/SketchyBar) Lua bar, based on [Efterklang/sketchybar](https://github.com/Efterklang/sketchybar) | `~/.config/sketchybar/` |
| `macos/borders/` | [JankyBorders](https://github.com/FelixKratz/JankyBorders) window borders | `~/.config/borders/bordersrc` |
| `macos/ghostty/` | [Ghostty](https://ghostty.org) terminal + starfield shader | `~/.config/ghostty/` |
| `macos/tmux/` | tmux (prefix `C-s`, Catppuccin bar on top, plugins via tpm) | `~/.config/tmux/tmux.conf` |
| `macos/claude/` | Claude Code Catppuccin statusline | `~/.claude/` |
| `macos/git/` | Global gitignore | `~/.config/git/ignore` |
| `macos/zsh/` | `.zshrc` / `.zprofile` (reference copies, merge by hand) | `~/` |

### Install

```bash
./macos/install.sh --brew   # brew bundle macos/Brewfile, then symlink everything
./macos/install.sh          # symlink only
```

Existing files are moved aside to `*.bak-<timestamp>` before linking. Then:

1. **Claude statusline:** merge `macos/claude/settings.statusline.json` into `~/.claude/settings.json`.
2. **SketchyBar:** install SbarLua and (optionally) the app icon map — see [`macos/sketchybar/README.md`](macos/sketchybar/README.md).
3. **tmux:** open tmux and press `C-s` then `I` to install plugins.
4. **macOS settings:** auto-hide the native menu bar, and grant Accessibility to AeroSpace and sketchybar.

---

## 📂 Repository Structure
* `glazewm/`: Window management rules and keybinds.
* `yasb/`: Status bar styling and widgets.
* `vs-code/`: Editor settings and custom CSS.
* `windhawk/`: Massive collection of system UI tweaks.
* `zen browser/`: Full browser UI customization (CSS + SVG logo).
* `discord/`: Catppuccin Mocha theme for Vencord.
* `obs/`, `powershell/`, `windows-terminal/`, `flow-launcher/`: Themes and settings for each app.
* `macos/`: AeroSpace, SketchyBar, borders, Ghostty, tmux, Claude statusline, zsh.

## 🎨 Theme
**Palette:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)
