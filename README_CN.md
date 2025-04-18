# 🚀 Cursor 免费试用重置工具

<div align="center">

[![发布](https://img.shields.io/github/v/release/Nikitosshow/cursor-help?style=flat-square&logo=github&color=blue)](https://github.com/Nikitosshow/cursor-help/releases/latest)
![星标](https://img.shields.io/github/stars/Nikitosshow/cursor-help?style=flat-square&logo=github&label=stars)

### 🌐 翻译
[⭐ English](README_EN.md) | [⭐ 中文](README_CN.md) | [⭐ Русский](README.md)

<img src="https://ai-cursor.com/wp-content/uploads/2024/09/logo-cursor-ai-png.webp" alt="Cursor 标志" width="120"/>

</div>

> 💖 **支持我们的项目！**
> 
> 访问并注册我们的网站：
> - [assets-hub.ru](https://assets-hub.ru) - 免费资源和素材
> - [exmodium.ru](https://exmodium.ru) - 死锁游戏的作弊工具
> 
> 您的支持帮助我们发展项目！

> ⚠️ **重要通知**
> 
> 此工具目前支持：
> - ✅ Cursor v0.45.x 及以下版本
> - ✅ 最新的 0.47.x 版本
>
> 使用此工具前请检查您的 Cursor 版本。

> 💾 **下载 Cursor v0.44.11**
> - [从 Cursor 官方下载](https://downloader.cursor.sh/builds/250103fqxdt5u9z/windows/nsis/x64)
> - [从 ToDesktop 下载](https://download.todesktop.com/230313mzl4w4u92/Cursor%20Setup%200.44.11%20-%20Build%20250103fqxdt5u9z-x64.exe)
---
![image](https://github.com/user-attachments/assets/29fbc9c4-61ab-408c-82cf-7603adea2a11)

### 📝 描述

> 当您遇到以下任何一条消息时：

#### 问题 1：试用账户限制 <p align="right"><a href="#issue1"><img src="https://img.shields.io/badge/转到解决方案-蓝色?style=plastic" alt="返回顶部"></a></p>
```
此机器上使用了过多的免费试用账户。
请升级到 Pro。我们设置此限制
以防止滥用。如果您认为这是错误，
请告知我们
```

#### 问题 2：API 密钥限制 <p align="right"><a href="#issue2"><img src="https://img.shields.io/badge/转到解决方案-绿色?style=plastic" alt="返回顶部"></a></p>
```
[新问题]

Composer 依赖于无法通过 API 密钥计费的自定义模型。
请禁用 API 密钥并使用 Pro 或 Business 订阅。
请求 ID：xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

#### 问题 3：试用请求限制

> 这表示您在 VIP 免费试用期间已达到使用限制：
```
您已达到试用请求限制。
```

<br>

<p id="issue2"></p>

#### 解决方案：完全卸载并重新安装 Cursor（API 密钥问题）

1. 下载 [Geek.exe 卸载工具[免费]](https://geekuninstaller.com/download)
2. 完全卸载 Cursor 应用程序
3. 重新安装 Cursor 应用程序
4. 继续到解决方案 1

<br>

<p id="issue1"></p>

> 临时解决方案：

#### 解决方案 1：快速重置（推荐）

1. 从 [发布页面](https://github.com/Nikitosshow/cursor-help/releases) 下载最新版本的 `cursor_bypass`
2. 退出当前账户
3. 运行 `cursor_bypass.exe`
4. 点击"绕过"按钮进行重置
5. 启动 Cursor 并使用新账户登录

### 💻 系统支持

<table>
<tr>
<td>

**Windows** ✅

- x64 (64 位)
- x86 (32 位)

</td>
</tr>
</table>

#### Windows 安装特点：
- 🔍 自动检测
- 💡 如果权限提升失败，则提供手动安装说明
- 💡 您可以使用 PowerShell 快速运行脚本
如何通过 PowerShell 运行

#### 以管理员身份运行 PowerShell
1. 复制并粘贴下面的脚本
2. 运行脚本，选择语言，脚本将自动完成所有操作
3. 可以禁用自动更新或保持默认设置
```
irm https://raw.githubusercontent.com/Nikitosshow/cursor-help/refs/heads/main/cursor-help.ps1 | iex
```
就是这样！脚本将：

1. ✨ 自动安装工具
2. 🔄 立即重置您的 Cursor 试用期

### 📦 手动安装

> 从 [发布页面](https://github.com/Nikitosshow/cursor-help/releases/latest) 下载适合您系统的文件

<details>
<summary>Windows 包</summary>

- 64 位
- 32 位
</details>

<details>

### 🔧 技术细节

<details>
<summary><b>配置文件</b></summary>

程序修改 Cursor 的 storage.json 配置文件，位于：

- Windows：%APPDATA%\Cursor\User\globalStorage\storage.json
</details>

<details>
<summary><b>修改的字段</b></summary>

工具生成新的唯一标识符：

- telemetry.machineId
- telemetry.macMachineId
- telemetry.devDeviceId
- telemetry.sqmId
</details>

<details>
<summary><b>手动禁用自动更新</b></summary>

Windows 用户可以手动禁用自动更新功能：

1. 关闭所有 Cursor 进程
2. 删除目录：C:\Users\username\AppData\Local\cursor-updater
3. 创建一个同名文件：cursor-updater（无扩展名）

macOS/Linux 用户可以尝试在系统中找到类似的 cursor-updater 目录并执行相同的操作。

</details>

<details>
<summary><b>安全功能</b></summary>

- ✅ 安全终止进程
- ✅ 原子文件操作
- ✅ 错误处理和恢复
</details>
