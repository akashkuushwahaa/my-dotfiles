# 🐧 Akash's Windows Dotfiles

My personal configuration files for a Catppuccin Mocha themed workspace.

## 🛠️ Applications Included
* **VS Code**: Custom UI via `Custom CSS and JS Loader`.
* **Discord**: Client enhancements via `Vencord`.
* **Zen Browser**: Web styling via `Stylus`.

---

## 🚀 Installation

### 1. VS Code (Custom CSS)
1. Install the [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css) extension.
2. Copy `vscode/settings.json` to `%APPDATA%\Code\User\settings.json`.
3. Copy `vscode/style.css` to a permanent location (e.g., your Documents folder).
4. In your `settings.json`, update the `vscode_custom_css.imports` path to point to your `style.css` file.
   > **Note:** Use `file:///` protocol (e.g., `file:///C:/Users/Akash/Documents/style.css`).
5. Press `Ctrl + Shift + P` and run **"Enable Custom CSS and JS"**.
6. Restart VS Code.

### 2. Discord (Vencord)
1. Install [Vencord](https://vencord.dev/).
2. Open Discord and go to **User Settings > Vencord > Themes**.
3. Click **"Open Themes Folder"**.
4. Move the `.css` files from the `discord/` folder of this repo into that directory.
5. Enable the theme in the Discord UI.

### 3. Zen Browser (Stylus)
1. Install the [Stylus Extension](https://add-ons.mozilla.org/en-US/firefox/addon/styl-us/) in Zen.
2. Open the Stylus Dashboard.
3. To import:
   - Click **"Manage"**.
   - Click **"Import"** and select the `.json` backup from the `zen/` folder.
   - *Alternatively*: Create a "New Style," name it, and paste the contents of the `.css` files in this repo.

---

## 📂 Repository Structure
* `vscode/`: Settings, keybindings, and custom UI styles.
* `discord/`: Vencord theme files.
* `zen/`: Stylus CSS exports and browser configurations.

## 🎨 Theme
**Colors:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)
