# 🚀 Инструмент для сброса пробного периода Cursor

<div align="center">

[![Релиз](https://img.shields.io/github/v/release/Nikitosshow/cursor-help?style=flat-square&logo=github&color=blue)](https://github.com/Nikitosshow/cursor-help/releases/latest)
![Звезды](https://img.shields.io/github/stars/Nikitosshow/cursor-help?style=flat-square&logo=github&label=stars)

### 🌐 Переводы
[⭐ English](README_EN.md) | [⭐ 中文](README_CN.md) | [⭐ Русский](README.md)

<img src="https://ai-cursor.com/wp-content/uploads/2024/09/logo-cursor-ai-png.webp" alt="Логотип Cursor" width="120"/>

</div>

> 💖 **Поддержите наши проекты!**
> 
> Посетите и зарегистрируйтесь на наших сайтах:
> - [assets-hub.ru](https://assets-hub.ru) - Бесплатные ассеты и ресурсы
> - [exmodium.ru](https://exmodium.ru) - Чит для Deadlock
> 
> Ваша поддержка помогает нам развивать проекты!

> ⚠️ **ВАЖНОЕ УВЕДОМЛЕНИЕ**
> 
> Этот инструмент поддерживает:
> - ✅ Cursor версии 0.45.x и ниже
> - ✅ Последние версии 0.47.x
>
> Пожалуйста, проверьте версию Cursor перед использованием этого инструмента.

> 💾 **Скачать Cursor v0.44.11**
> - [Скачать с официального сайта Cursor](https://downloader.cursor.sh/builds/250103fqxdt5u9z/windows/nsis/x64)
> - [Скачать с ToDesktop](https://download.todesktop.com/230313mzl4w4u92/Cursor%20Setup%200.44.11%20-%20Build%20250103fqxdt5u9z-x64.exe)
---
![image](https://github.com/user-attachments/assets/c594c702-ed52-47e7-bf15-228b185478cc)

### 📝 Описание

> Когда вы сталкиваетесь с одним из этих сообщений:

#### Проблема 1: Лимит пробной учетной записи <p align="right"><a href="#issue1"><img src="https://img.shields.io/badge/Перейти%20к%20решению-Синий?style=plastic" alt="Наверх"></a></p>
```
Слишком много пробных учетных записей использовано на этом устройстве.
Пожалуйста, перейдите на Pro. Мы установили этот лимит,
чтобы предотвратить злоупотребления. Пожалуйста, сообщите нам,
если вы считаете, что это ошибка.
```

#### Проблема 2: Ограничение API-ключа <p align="right"><a href="#issue2"><img src="https://img.shields.io/badge/Перейти%20к%20решению-Зеленый?style=plastic" alt="Наверх"></a></p>
```
[Новая проблема]

Composer использует пользовательские модели, которые не могут быть оплачены с помощью API-ключа.
Пожалуйста, отключите API-ключи и используйте подписку Pro или Business.
ID запроса: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

#### Проблема 3: Лимит пробных запросов

> Это указывает на то, что вы достигли лимита использования в течение пробного VIP-периода:

```
Вы достигли лимита пробных запросов.
```

<br>

<p id="issue2"></p>

#### Решение: Полностью удалите Cursor и переустановите (Проблема с API-ключом)

1. Скачайте [Geek.exe Uninstaller[Бесплатно]](https://geekuninstaller.com/download)
2. Полностью удалите приложение Cursor
3. Переустановите приложение Cursor
4. Перейдите к Решению 1

<br>

<p id="issue1"></p>

> Временное решение:

#### Решение 1: Быстрый сброс (Рекомендуется)

1. Скачайте послежнюю версию cursor_bypass в [releases](github.com/Nikitosshow/cursor-help/releases) 
2. Выйдите из текущего аккаунта 
3. Запустите cursor_bypass.exe
4. Нажмите кнопку Обход для сброса
5. Запустите Cursor и войдите в новый аккаунт

### 💻 Поддержка систем

<table>
<tr>
<td>

**Windows** ✅

- x64 (64-бит)
- x86 (32-бит)

</td>
</tr>
</table>

#### Особенности установки на Windows:

- 🔍 Автоматическое обнаружение
- 💡 Предоставляет ручные инструкции, если повышение прав не удалось
- 💡 Вы можете использовать быстрый скрипт с помощью powershell

#### Как запустить с помощью PowerShell

1. Запустите PowerShell от имени администратора
2. Скопируйте скрипт ниже и вставьте его
3. Запустите выберите язык и скрипт сам все сделает
4. Можно отключить авто обновления или оставить как есть
```
irm https://raw.githubusercontent.com/Nikitosshow/cursor-help/refs/heads/main/cursor-help.ps1 | iex
```
Вот и все! Скрипт:

1. ✨ Установит инструмент автоматически
2. 🔄 Сбросит ваш пробный период Cursor сразу же

### 📦 Ручная установка

> Скачайте соответствующий файл для вашей системы из [релизов](https://github.com/Nikitosshow/cursor-help/releases/latest)

<details>
<summary>Пакеты для Windows</summary>

- 64-бит
- 32-бит
</details>

<details>

### 🔧 Технические детали

<details>
<summary><b>Конфигурационные файлы</b></summary>

Программа изменяет файл конфигурации Cursor storage.json, расположенный по адресу:

- Windows: %APPDATA%\Cursor\User\globalStorage\storage.json
</details>

<details>
<summary><b>Измененные поля</b></summary>

Инструмент генерирует новые уникальные идентификаторы для:

- telemetry.machineId
- telemetry.macMachineId
- telemetry.devDeviceId
- telemetry.sqmId
</details>

<details>
<summary><b>Ручное отключение автообновления</b></summary>

Пользователи Windows могут вручную отключить функцию автообновления:

1. Закройте все процессы Cursor
2. Удалите директорию: C:\Users\username\AppData\Local\cursor-updater
3. Создайте файл с тем же именем: cursor-updater (без расширения)

Пользователи macOS/Linux могут попытаться найти аналогичную директорию cursor-updater в своей системе и выполнить те же действия.

</details>

<details>
<summary><b>Функции безопасности</b></summary>

- ✅ Безопасное завершение процессов
- ✅ Атомарные операции с файлами
- ✅ Обработка ошибок и восстановление
</details>
