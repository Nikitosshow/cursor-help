# 🚀 Cursor Free Trial Reset Tool

<div align="center">

[![Release](https://img.shields.io/github/v/release/Nikitosshow/cursor-help?style=flat-square&logo=github&color=blue)](https://github.com/Nikitosshow/cursor-help/releases/latest)
![Stars](https://img.shields.io/github/stars/Nikitosshow/cursor-help?style=flat-square&logo=github&label=stars)

### 🌐 Translations
[⭐ English](README_EN.md) | [⭐ 中文](README_CN.md) | [⭐ Русский](README.md)

<img src="https://ai-cursor.com/wp-content/uploads/2024/09/logo-cursor-ai-png.webp" alt="Cursor Logo" width="120"/>

</div>

> 💖 **Support Our Projects!**
> 
> Visit and register on our websites:
> - [assets-hub.ru](https://assets-hub.ru) - Free assets and resources
> - [exmodium.ru](https://exmodium.ru) - Cheat for game "DEADLOCK"
> 
> Your support helps us develop our projects!

> ⚠️ **IMPORTANT NOTICE**
> 
> This tool currently supports:
> - ✅ Cursor v0.45.x and below
> - ✅ Latest 0.47.x versions
>
> Please check your Cursor version before using this tool.

> 💾 **Download Cursor v0.44.11**
> - [Download from Cursor Official](https://downloader.cursor.sh/builds/250103fqxdt5u9z/windows/nsis/x64)
> - [Download from ToDesktop](https://download.todesktop.com/230313mzl4w4u92/Cursor%20Setup%200.44.11%20-%20Build%20250103fqxdt5u9z-x64.exe)
---
![image](https://github.com/user-attachments/assets/29fbc9c4-61ab-408c-82cf-7603adea2a11)


### 📝 Description

> When you encounter any of these messages:

#### Issue 1: Trial Account Limit <p align="right"><a href="#issue1"><img src="https://img.shields.io/badge/Go%20to%20Solution-Blue?style=plastic" alt="Back To Top"></a></p>
```
Too many free trial accounts used on this machine.
Please upgrade to Pro. We have this limit in place
to prevent abuse. Please let us know if you believe
this is a mistake.
```

#### Issue 2: API Key Limitation <p align="right"><a href="#issue2"><img src="https://img.shields.io/badge/Go%20to%20Solution-Green?style=plastic" alt="Back To Top"></a></p>
```
[New Issue]

Composer relies on custom models that cannot be billed to an API key.
Please disable API keys and use a Pro or Business subscription.
Request ID: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

#### Issue 3: Trial Request Limit

> This indicates you've reached the usage limit during the VIP free trial period:
```
You've reached your trial request limit.
```

<br>

<p id="issue2"></p>

#### Solution: Completely Uninstall and Reinstall Cursor (API Key Issue)

1. Download [Geek.exe Uninstaller[Free]](https://geekuninstaller.com/download)
2. Completely uninstall the Cursor app
3. Reinstall the Cursor app
4. Proceed to Solution 1

<br>

<p id="issue1"></p>

> Temporary Solution:

#### Solution 1: Quick Reset (Recommended)

1. Download the latest version of `cursor_bypass` from [releases](https://github.com/Nikitosshow/cursor-help/releases)
2. Sign out of your current account
3. Run `cursor_bypass.exe`
4. Click the "Bypass" button to reset
5. Launch Cursor and log in with a new account

### 💻 System Support

<table>
<tr>
<td>

**Windows** ✅

- x64 (64-bit)
- x86 (32-bit)

</td>
</tr>
</table>

#### Installation Features on Windows:
- 🔍 Automatic detection
- 💡 Provides manual instructions if privilege escalation fails
- 💡 You can use a quick script via PowerShell

#### How to run via PowerShell

1. Run PowerShell as Administrator
2. Copy and paste the script below
3. Run it, select the language, and the script will do everything automatically
4. You can disable auto-updates or leave them enabled
```
irm https://raw.githubusercontent.com/Nikitosshow/cursor-help/refs/heads/main/cursor-help.ps1 | iex
```
That's it! The script will:

1. ✨ Install the tool automatically
2. 🔄 Reset your Cursor trial immediately

### 📦 Manual Installation

> Download the appropriate file for your system from [releases](https://github.com/Nikitosshow/cursor-help/releases/latest)

<details>
<summary>Windows Packages</summary>

- 64-bit
- 32-bit
</details>

<details>

### 🔧 Technical Details

<details>
<summary><b>Configuration Files</b></summary>

The program modifies Cursor's storage.json config file located at:

- Windows: %APPDATA%\Cursor\User\globalStorage\storage.json
</details>

<details>
<summary><b>Modified Fields</b></summary>

The tool generates new unique identifiers for:

- telemetry.machineId
- telemetry.macMachineId
- telemetry.devDeviceId
- telemetry.sqmId
</details>

<details>
<summary><b>Manual Auto-Update Disable</b></summary>

Windows users can manually disable the auto-update feature:

1. Close all Cursor processes
2. Delete the directory: C:\Users\username\AppData\Local\cursor-updater
3. Create a file with the same name: cursor-updater (no extension)

macOS/Linux users can try to locate a similar cursor-updater directory in their system and perform the same operation.

</details>

<details>
<summary><b>Safety Features</b></summary>

- ✅ Safe process termination
- ✅ Atomic file operations
- ✅ Error handling and recovery
</details>
