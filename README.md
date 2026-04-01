# 🐧 Akash's Windows Dotfiles

My personal configuration files for a Catppuccin Mocha themed workspace.

## 🛠️ Applications Included
* **VS Code**: Custom UI via `Custom CSS and JS Loader`.
* **Discord**: Client enhancements via `Vencord`.
* **Zen Browser**: Web styling via `Stylus`.
* **Windows System**: UI tweaks via `Windhawk`.

---

## 🚀 Installation

### 1. VS Code (Custom CSS)
1. Install the [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css) extension.
2. Copy `vscode/settings.json` to `%APPDATA%\Code\User\settings.json`.
3. Copy your `.css` file to a stable folder.
4. Update the `vscode_custom_css.imports` path in your VS Code settings to point to your local CSS file.
5. Press `Ctrl + Shift + P`, run **"Enable Custom CSS and JS"**, and restart.

### 2. Discord (Vencord)
1. Install [Vencord](https://vencord.dev/).
2. Open Discord settings -> **Vencord** -> **Themes**.
3. Click **"Open Themes Folder"** and drop your `.css` files there.
4. Toggle the theme "On" in the Discord menu.

### 3. Zen Browser (Stylus)
1. Install the [Stylus Extension](https://add-ons.mozilla.org/en-US/firefox/addon/styl-us/).
2. Open the Stylus Dashboard -> **Manage**.
3. Click **Import** and select the `.json` backup from the `zen/` folder of this repo.

### 4. Windows Notification Center (Windhawk)
1. Install [Windhawk](https://windhawk.net/).
2. Install the **"Notification Center Styler"** mod from the Windhawk library.
3. Go to the mod's **Settings** tab.
4. Click on the **Advanced** tab / **Export/Import** section.
5. Import `windhawk/notification-center-styler.json` from this repo to apply the styles.

---

## 📂 Repository Structure
* `vscode/`: Settings and custom CSS.
* `discord/`: Vencord `.theme.css` files.
* `zen/`: Stylus backups and CSS.
* `windhawk/`: Mod configurations (Notification Center Styler).

## 🎨 Theme
**Colors:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)
