# 🐧 Akash's Windows Dotfiles

A complete Windows workspace customization based on the **Catppuccin Mocha** palette. This setup features a tiling window manager, custom status bar, and deep application styling.

## 🛠️ Applications Included
* **GlazeWM**: Tiling Window Manager for Windows.
* **YASB**: Yet Another Status Bar (highly customizable top/bottom bar).
* **Zen Browser**: Custom `userChrome` and `userContent` styles.
* **VS Code**: Custom UI via `Custom CSS and JS Loader`.
* **Discord**: Client enhancements via `Vencord`.
* **Windhawk**: System-wide UI tweaks (Taskbar, Start Menu, etc.).

---

## 🚀 Installation

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

---

## 📂 Repository Structure
* `glazewm/`: Window management rules and keybinds.
* `yasb/`: Status bar styling and widgets.
* `vs-code/`: Editor settings and custom CSS.
* `windhawk/`: Massive collection of system UI tweaks.
* `zen browser/`: Full browser UI customization (CSS + SVG logo).
* `discord/`: Catppuccin Mocha theme for Vencord.

## 🎨 Theme
**Palette:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)
