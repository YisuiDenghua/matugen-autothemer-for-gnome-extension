# **Matugen Auto-Themer for GNOME**

<img src="./pictures/example1.png" width="48%" style="display:inline-block;" /> <img src="./pictures/example2.png" width="48%" style="display:inline-block" />

## **English Description**

**Matugen Auto-Themer** is a powerful GNOME Shell extension that brings Material You (Material Design 3) coloring to your entire Linux desktop. It watches for wallpaper changes or mode switches (Light/Dark) and automatically uses [Matugen](https://github.com/InioX/matugen) to generate and apply cohesive color schemes across your system. Some of the configurations come from [Noctalia Shell](https://github.com/noctalia-dev/noctalia-shell).

### **⚠️ Requirements & Dependencies**

Before installing, ensure you have the following tools installed. **The extension will not work without them.**

> **⚠️ matugen Version Warning**: matugen **4.0.0 and above** introduced an interactive accent color source selection prompt in the CLI. This interactive prompt will **interrupt and break** the extension's scripts. You **must** use a matugen version that is **>= 3.0.0 and < 4.0.0**.

| Dependency | Description |
| :--- | :--- |
| **matugen(>=3.0.0, <4.0.0)**  | **CRITICAL.** The core color generation tool. Versions 4.0.0+ are **not supported** due to a breaking interactive CLI change. |
| **sassc** | Required to compile the GNOME Shell theme. |
| **libjxl (djxl)**| Required **only** if you use `.jxl` (JPEG XL) wallpapers. |
| **adw-gtk3** | Theme for legacy GTK applications. |
| **qt5ct / qt6ct**| Required to theme Qt applications. |

### **🎨 Supported Theming Scope**

Based on the configuration, it generates and applies themes for:

  * **GNOME Shell**: Top panel, quick settings, overview, and popups.
  * **GTK 4 & GTK 3**: Libadwaita apps and legacy GTK apps.
  * **Qt 5 & Qt 6**: Themed via qt5ct/qt6ct.
  * **Terminals & Launchers**: Ghostty, Fuzzel, Walker.
  * **Applications**: VSCode, Zed Editor, Firefox (via Pywalfox), Vicinae.
  * **[Rounded Window Corners Reborn Gnome extension](https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/)**: The Border color. 

You can customize the scope further by editing the configuration file located at `~/.local/share/gnome-shell/extensions/matugen-autothemer@luxingzhi27/matugen/config.toml`.

### **📥 Installation**

1.  **Download the latest release**:
    Download the latest release from the [Releases page](https://github.com/luxingzhi27/matugen-autothemer-for-gnome-extension/releases).

2.  **Extract the archive**:
    Unzip the downloaded file and open a terminal in the extracted folder.

3.  **Run the installation script**:
    ```bash
    chmod +x install.sh
    ./install.sh
    ```

4.  **Restart GNOME Shell**: Log out and log back in (or press `Alt+F2`, type `r`, and hit Enter on X11).

### **⚙️ Configuration (One-time Setup)**

After installing the extension, you must configure your system to use the generated themes:

1.  **Enable the Extension**: Open **Extension Manager** and enable "Matugen Auto-Themer".
2.  **GNOME Tweaks**:
      * **Shell Theme**: Select `Material-You` (Requires "User Themes" extension).
      * **Legacy Applications**: Select `adw-gtk3` (or `adw-gtk3-dark`).
3.  **Qt Setup**:
      * Add `QT_QPA_PLATFORMTHEME=qt5ct` to your `/etc/environment`(May cause issues when start plasma desktop, before you start plasma, you can unset it).
      * Open `qt5ct` / `qt6ct` and set the color scheme to `MaterialYou`.
4.  **Extension Preferences**:
      * Go to the extension settings.
      * Ensure "Matugen Executable Path" is correct (usually found automatically).

### **🚀 Usage**

  * **Change Wallpaper**: The system theme updates automatically.
  * **Panel Menu**: Click the palette icon in the top bar to:
      * Toggle Light/Dark mode.
      * Change the Color Flavor (e.g., Tonal Spot, Fruit Salad).
      * Force a theme regeneration.

-----

## **中文说明**

**Matugen Auto-Themer** 是一个强大的 GNOME Shell 扩展，旨在为您的 Linux 桌面带来全局的 Material You (Material Design 3) 动态配色体验。它会监听壁纸更换或明暗模式的切换，并自动调用 [Matugen](https://github.com/InioX/matugen) 生成并应用统一的配色方案。部分配置参考自 [Noctalia Shell](https://github.com/noctalia-dev/noctalia-shell)。

### **⚠️ 依赖与版本要求**

安装前请确保您的系统满足以下要求，**否则插件将无法运行**：

> **⚠️ matugen 版本警告**：matugen **4.0.0 及以上版本**在命令行中引入了交互式选择重点色来源的功能（交互式提示），这会**中断本插件的脚本执行并导致报错**。请务必使用 **>= 3.0.0 且 < 4.0.0** 的 matugen 版本。

| 依赖软件 | 说明 |
| :--- | :--- |
| **matugen(>=3.0.0, <4.0.0)** | **必须。** 核心配色生成工具。**4.0.0 及以上版本因引入交互式 CLI 变更而不兼容，会导致脚本中断报错。** |
| **sassc** | **必须。** 用于编译 GNOME Shell 主题样式表。 |
| **libjxl (djxl)**| **可选。** 仅当您使用 `.jxl` 格式壁纸时需要。 |
| **adw-gtk3** | 用于统一传统 GTK 应用的样式。 |
| **qt5ct / qt6ct**| 用于管理 Qt 应用样式。 |

### **🎨 自动配色范围**

根据配置文件，本插件支持为以下组件生成主题：

  * **GNOME Shell**: 顶栏、快速设置、概览等完整配色。
  * **GTK 4 & GTK 3**: 适配 Libadwaita 及传统 GTK 应用。
  * **Qt 5 & Qt 6**: 通过 qt5ct/qt6ct 适配。
  * **其他工具**: Ghostty, Fuzzel, Walker, VSCode, Firefox (Pywalfox) 等。
  * **[Rounded Window Corners Reborn Gnome extension](https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/)**: 窗口边框颜色。

您也可以通过编辑配置文件 `~/.local/share/gnome-shell/extensions/matugen-autothemer@luxingzhi27/matugen/config.toml` 来进一步自定义配色范围。

### **📥 安装方法**

1.  **下载最新版本**:
    从 [Releases 页面](https://github.com/luxingzhi27/matugen-autothemer-for-gnome-extension/releases) 下载最新版本。

2.  **解压文件**:
    解压下载的压缩包，并在解压后的文件夹中打开终端。

3.  **运行安装脚本**:
    ```bash
    chmod +x install.sh
    ./install.sh
    ```

4.  **重启 GNOME Shell**: 注销并重新登录（X11 用户可按 `Alt+F2` 输入 `r` 回车）。

### **⚙️ 初始化配置**

安装完成后，需要进行一次性设置以应用主题：

1.  **启用扩展**: 在扩展管理器中启用 "Matugen Auto-Themer"。
2.  **设置主题 (GNOME Tweaks)**:
      * **Shell 主题**: 选择 `Material-You`（需先安装 User Themes 扩展）。
      * **过时应用程序**: 选择 `adw-gtk3`。
3.  **Qt 环境配置**:
      * 在 `/etc/environment` 中添加 `QT_QPA_PLATFORMTHEME=qt5ct`(可能在启动 plasma 桌面时导致问题，启动 plasma 前可以取消该变量)。
      * 在 `qt5ct`/`qt6ct` 中将配色方案设置为 `MaterialYou`。
4.  **插件设置**:
      * 打开插件首选项，确保 Matugen 的路径被正确识别。

### **🚀 使用指南**

  * **更换壁纸**: 系统配色将自动跟随更新。
  * **顶栏菜单**: 点击顶栏的调色板图标可以：
      * 快速切换 明亮/暗黑 模式。
      * 选择喜欢的 **配色风格 (Scheme type)**（如 Tonal Spot, Vibrant 等）。
      * 强制重新生成主题。