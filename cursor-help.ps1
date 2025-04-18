# Установка кодировки для поддержки Unicode
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$PSDefaultParameterValues['*:Encoding'] = 'utf8'
$Host.UI.RawUI.WindowTitle = "Cursor Helper"

# Настройка ANSI-цветов
if ($PSVersionTable.PSVersion.Major -ge 7) {
    $PSStyle.OutputRendering = 'ANSI'
    $RED = "`e[31m"
    $GREEN = "`e[32m"
    $YELLOW = "`e[33m"
    $BLUE = "`e[34m"
    $NC = "`e[0m"
} else {
    $RED = "$([char]0x1b)[31m"
    $GREEN = "$([char]0x1b)[32m"
    $YELLOW = "$([char]0x1b)[33m"
    $BLUE = "$([char]0x1b)[34m"
    $NC = "$([char]0x1b)[0m"
}

# Текущий язык (по умолчанию английский)
$LANG_CHOICE = "en"

# Функция перевода
function Translate {
    param (
        [string]$key
    )
    
    switch ($LANG_CHOICE) {
        "ru" {
            switch ($key) {
                "info" { "[ИНФО]" }
                "warn" { "[ВНИМАНИЕ]" }
                "error" { "[ОШИБКА]" }
                "debug" { "[ОТЛАДКА]" }
                "get_user_error" { "Не удалось получить имя пользователя" }
                "run_with_admin" { "Запустите скрипт от имени администратора" }
                "example" { "Пример:" }
                "checking_cursor" { "Проверка процесса Cursor..." }
                "process_info" { "Получение информации о процессе" }
                "cursor_not_found" { "Процесс Cursor не найден" }
                "cursor_found" { "Найден запущенный процесс Cursor" }
                "killing_attempt" { "Попытка завершения процесса..." }
                "force_kill" { "Принудительное завершение..." }
                "cursor_killed" { "Процесс Cursor успешно завершен" }
                "waiting_termination" { "Ожидание завершения, попытка" }
                "kill_failed" { "Не удалось завершить процесс после" }
                "kill_manual" { "Завершите процесс вручную и повторите попытку" }
                "backup_skipped" { "Файл конфигурации не существует, пропуск резервного копирования" }
                "backup_created" { "Резервная копия создана:" }
                "backup_failed" { "Ошибка создания резервной копии" }
                "config_not_found" { "Файл конфигурации не найден:" }
                "install_first" { "Установите и запустите Cursor хотя бы раз" }
                "config_updated" { "Конфигурация обновлена:" }
                "rights_failed" { "Не удалось установить права только для чтения" }
                "rights_success" { "Права доступа установлены успешно" }
                "file_structure" { "Структура файлов:" }
                "modified" { "изменен" }
                "empty" { "пусто" }
                "follow_telegram" { "Подпишитесь на наш Telegram канал @exmodium" }
                "tool_name" { "Утилита обхода Cursor" }
                "important" { "ВАЖНО" }
                "version_support" { "Поддерживается текущая версия Cursor" }
                "version_not_support" { "" }
                "done" { "Готово!" }
                "restart_required" { "Перезапустите Cursor для применения изменений" }
                "disable_auto_update" { "Отключить автообновление Cursor?" }
                "no" { "Нет - оставить как есть (Enter)" }
                "yes" { "Да - отключить" }
                "disabling_update" { "Отключение автообновления..." }
                "manual_steps" { "Выполните следующие шаги вручную:" }
                "open_terminal" { "Откройте PowerShell от имени администратора" }
                "run_commands" { "Выполните команды:" }
                "if_no_rights" { "Если нет прав:" }
                "verification" { "Проверка:" }
                "check_rights" { "Убедитесь что файл только для чтения" }
                "restart_after" { "Перезапустите Cursor после выполнения" }
                "folder_deleted" { "Папка cursor-updater удалена" }
                "folder_delete_failed" { "Не удалось удалить папку cursor-updater" }
                "file_create_failed" { "Не удалось создать файл" }
                "rights_check_failed" { "Проверка прав не пройдена" }
                "update_disabled" { "Автообновление отключено" }
                "update_enabled" { "Автообновление оставлено включенным" }
                "current_machineguid" { "Текущий MachineGuid:" }
                "machineguid_updated" { "MachineGuid успешно обновлен на:" }
                default { "[$key]" }
            }
        }
        "zh" {
            switch ($key) {
                "info" { "[信息]" }
                "warn" { "[警告]" }
                "error" { "[错误]" }
                "debug" { "[调试]" }
                "get_user_error" { "无法获取用户名" }
                "run_with_admin" { "请以管理员身份运行此脚本" }
                "example" { "示例:" }
                "checking_cursor" { "检查 Cursor 进程..." }
                "process_info" { "获取进程信息" }
                "cursor_not_found" { "未发现 Cursor 进程" }
                "cursor_found" { "发现正在运行的 Cursor 进程" }
                "killing_attempt" { "尝试终止进程..." }
                "force_kill" { "强制终止..." }
                "cursor_killed" { "Cursor 进程已成功终止" }
                "waiting_termination" { "等待进程终止，尝试" }
                "kill_failed" { "在尝试后仍无法终止进程" }
                "kill_manual" { "请手动终止进程后重试" }
                "backup_skipped" { "配置文件不存在，跳过备份" }
                "backup_created" { "备份已创建:" }
                "backup_failed" { "备份创建失败" }
                "config_not_found" { "未找到配置文件:" }
                "install_first" { "请先安装并运行一次 Cursor" }
                "config_updated" { "配置已更新:" }
                "rights_failed" { "无法设置只读权限" }
                "rights_success" { "访问权限设置成功" }
                "file_structure" { "文件结构:" }
                "modified" { "已修改" }
                "empty" { "空" }
                "follow_telegram" { "关注我们的 Telegram 频道 @exmodium" }
                "tool_name" { "Cursor 绕过工具" }
                "important" { "重要" }
                "version_support" { "支持当前版本的 Cursor" }
                "version_not_support" { "" }
                "done" { "完成！" }
                "restart_required" { "重启 Cursor 以应用更改" }
                "disable_auto_update" { "是否禁用 Cursor 自动更新？" }
                "no" { "否 - 保持默认设置 (按回车)" }
                "yes" { "是 - 禁用自动更新" }
                "disabling_update" { "正在禁用自动更新..." }
                "manual_steps" { "自动设置失败，请手动执行以下步骤：" }
                "open_terminal" { "以管理员身份打开 PowerShell" }
                "run_commands" { "执行以下命令：" }
                "if_no_rights" { "如果没有权限：" }
                "verification" { "验证：" }
                "check_rights" { "确保文件为只读" }
                "restart_after" { "完成后重启 Cursor" }
                "folder_deleted" { "cursor-updater 文件夹已删除" }
                "folder_delete_failed" { "无法删除 cursor-updater 文件夹" }
                "file_create_failed" { "无法创建文件" }
                "rights_check_failed" { "权限检查失败" }
                "update_disabled" { "自动更新已禁用" }
                "update_enabled" { "自动更新保持启用状态" }
                "current_machineguid" { "当前 MachineGuid:" }
                "machineguid_updated" { "MachineGuid 已成功更新为:" }
                default { "[$key]" }
            }
        }
        default {  # English
            switch ($key) {
                "info" { "[INFO]" }
                "warn" { "[WARNING]" }
                "error" { "[ERROR]" }
                "debug" { "[DEBUG]" }
                "get_user_error" { "Failed to get username" }
                "run_with_admin" { "Please run script as administrator" }
                "example" { "Example:" }
                "checking_cursor" { "Checking Cursor process..." }
                "process_info" { "Getting process info" }
                "cursor_not_found" { "No Cursor process found" }
                "cursor_found" { "Found running Cursor process" }
                "killing_attempt" { "Attempting to kill process..." }
                "force_kill" { "Forcing termination..." }
                "cursor_killed" { "Cursor process successfully terminated" }
                "waiting_termination" { "Waiting for termination, attempt" }
                "kill_failed" { "Failed to terminate process after" }
                "kill_manual" { "Please terminate process manually and try again" }
                "backup_skipped" { "Configuration file doesn't exist, skipping backup" }
                "backup_created" { "Backup created at:" }
                "backup_failed" { "Backup creation failed" }
                "config_not_found" { "Configuration file not found:" }
                "install_first" { "Please install and run Cursor at least once" }
                "config_updated" { "Configuration updated:" }
                "rights_failed" { "Failed to set read-only permissions" }
                "rights_success" { "Access rights set successfully" }
                "file_structure" { "File structure:" }
                "modified" { "modified" }
                "empty" { "empty" }
                "follow_telegram" { "Follow our Telegram channel @exmodium" }
                "tool_name" { "Cursor Bypass Tool" }
                "important" { "IMPORTANT" }
                "version_support" { "Current Cursor version is supported" }
                "version_not_support" { "" }
                "done" { "Done!" }
                "restart_required" { "Restart Cursor to apply changes" }
                "disable_auto_update" { "Disable Cursor auto-update?" }
                "no" { "No - keep default settings (Press Enter)" }
                "yes" { "Yes - disable auto-update" }
                "disabling_update" { "Disabling auto-update..." }
                "manual_steps" { "Automatic setup failed. Manual steps:" }
                "open_terminal" { "Open PowerShell as administrator" }
                "run_commands" { "Run these commands:" }
                "if_no_rights" { "If permission denied:" }
                "verification" { "Verification:" }
                "check_rights" { "Verify file is read-only" }
                "restart_after" { "Restart Cursor after completion" }
                "folder_deleted" { "cursor-updater folder deleted" }
                "folder_delete_failed" { "Failed to delete cursor-updater folder" }
                "file_create_failed" { "Failed to create file" }
                "rights_check_failed" { "Rights check failed" }
                "update_disabled" { "Auto-update disabled" }
                "update_enabled" { "Auto-update remains enabled" }
                "current_machineguid" { "Current MachineGuid:" }
                "machineguid_updated" { "MachineGuid successfully updated to:" }
                default { "[$key]" }
            }
        }
    }
} 

# Функции логирования
function Write-LogInfo {
    param([string]$Message)
    Write-Host "$GREEN$(Translate 'info')$NC $Message"
}

function Write-LogWarn {
    param([string]$Message)
    Write-Host "$YELLOW$(Translate 'warn')$NC $Message"
}

function Write-LogError {
    param([string]$Message)
    Write-Host "$RED$(Translate 'error')$NC $Message"
}

function Write-LogDebug {
    param([string]$Message)
    Write-Host "$BLUE$(Translate 'debug')$NC $Message"
}

# Проверка прав администратора
function Test-AdminRights {
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    
    if (-not $isAdmin) {
        Write-LogError $(Translate "run_with_admin")
        Write-Host "$(Translate 'example'): Start-Process powershell -Verb RunAs -ArgumentList `"-File `"$PSCommandPath`"`""
        exit 1
    }
}

# Пути к файлам
$STORAGE_FILE = "$env:APPDATA\Cursor\User\globalStorage\storage.json"
$BACKUP_DIR = "$env:APPDATA\Cursor\User\globalStorage\backups"

# Выбор языка
function Select-Language {
    Write-Host "Select language / Выберите язык / 选择语言:"
    Write-Host "1) English"
    Write-Host "2) Русский"
    Write-Host "3) 中文"
    $choice = Read-Host
    
    switch ($choice) {
        "1" { $script:LANG_CHOICE = "en" }
        "2" { $script:LANG_CHOICE = "ru" }
        "3" { $script:LANG_CHOICE = "zh" }
        default { $script:LANG_CHOICE = "en" }
    }
}

# Проверка и завершение процесса Cursor
function Stop-CursorProcess {
    Write-LogInfo $(Translate "checking_cursor")
    
    $attempt = 1
    $maxAttempts = 5
    
    function Get-ProcessDetails {
        param([string]$ProcessName)
        Write-LogDebug "$(Translate 'process_info') $ProcessName"
        Get-Process | Where-Object { $_.ProcessName -like "*$ProcessName*" } | Format-Table -AutoSize
    }
    
    while ($attempt -le $maxAttempts) {
        $cursorProcess = Get-Process "Cursor" -ErrorAction SilentlyContinue
        
        if (-not $cursorProcess) {
            Write-LogInfo $(Translate "cursor_not_found")
            return
        }
        
        Write-LogWarn $(Translate "cursor_found")
        Get-ProcessDetails "Cursor"
        
        Write-LogWarn $(Translate "killing_attempt")
        
        if ($attempt -eq $maxAttempts) {
            Write-LogWarn $(Translate "force_kill")
            $cursorProcess | Stop-Process -Force -ErrorAction SilentlyContinue
        } else {
            $cursorProcess | Stop-Process -ErrorAction SilentlyContinue
        }
        
        Start-Sleep -Seconds 1
        
        if (-not (Get-Process "Cursor" -ErrorAction SilentlyContinue)) {
            Write-LogInfo $(Translate "cursor_killed")
            return
        }
        
        Write-LogWarn "$(Translate 'waiting_termination') $attempt/$maxAttempts..."
        $attempt++
    }
    
    Write-LogError "$(Translate 'kill_failed') $maxAttempts"
    Get-ProcessDetails "Cursor"
    Write-LogError $(Translate "kill_manual")
    exit 1
}

# Резервное копирование
function Backup-Config {
    if (-not (Test-Path $STORAGE_FILE)) {
        Write-LogWarn $(Translate "backup_skipped")
        return
    }
    
    New-Item -ItemType Directory -Force -Path $BACKUP_DIR | Out-Null
    $backupFile = Join-Path $BACKUP_DIR "storage.json.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
    
    try {
        Copy-Item $STORAGE_FILE $backupFile
        Write-LogInfo "$(Translate 'backup_created') $backupFile"
    } catch {
        Write-LogError $(Translate "backup_failed")
        exit 1
    }
}

# Генерация случайного ID
function New-RandomId {
    $bytes = New-Object byte[] 32
    $rng = [System.Security.Cryptography.RNGCryptoServiceProvider]::new()
    $rng.GetBytes($bytes)
    return [System.BitConverter]::ToString($bytes) -replace '-',''
}

# Генерация UUID
function New-UUID {
    return [guid]::NewGuid().ToString().ToLower()
}

# Генерация новой конфигурации
function Update-Config {
    if (-not (Test-Path $STORAGE_FILE)) {
        Write-LogError "$(Translate 'config_not_found') $STORAGE_FILE"
        Write-LogWarn $(Translate "install_first")
        exit 1
    }
    
    $machineId = "authuser_" + (New-RandomId)
    $macMachineId = New-RandomId
    $deviceId = New-UUID
    $sqmId = "{" + (New-UUID).ToUpper() + "}"
    
    try {
        # Снимаем все атрибуты файла
        attrib -r -h -s $STORAGE_FILE

        # Читаем и обновляем конфигурацию
        $config = Get-Content $STORAGE_FILE -Raw | ConvertFrom-Json
        $config.'telemetry.machineId' = $machineId
        $config.'telemetry.macMachineId' = $macMachineId
        $config.'telemetry.devDeviceId' = $deviceId
        $config.'telemetry.sqmId' = $sqmId
        
        # Сохраняем обновленную конфигурацию
        $config | ConvertTo-Json -Depth 100 | Set-Content $STORAGE_FILE

        # Устанавливаем атрибут "только для чтения" через командную строку
        attrib +r $STORAGE_FILE

        Write-Host
        Write-LogInfo $(Translate "config_updated")
        Write-LogDebug "machineId: $machineId"
        Write-LogDebug "macMachineId: $macMachineId"
        Write-LogDebug "deviceId: $deviceId"
        Write-LogDebug "sqmId: $sqmId"
        
    } catch {
        Write-LogError $_.Exception.Message
        Write-LogError $(Translate "run_with_admin")
        exit 1
    }
}

# Отображение структуры файлов
function Show-FileTree {
    Write-Host
    Write-LogInfo $(Translate "file_structure")
    $baseDir = Split-Path $STORAGE_FILE -Parent
    Write-Host "$BLUE$baseDir$NC"
    Write-Host "├── globalStorage"
    Write-Host "│   ├── storage.json ($(Translate 'modified'))"
    Write-Host "│   └── backups"
    
    if (Test-Path $BACKUP_DIR) {
        $backupFiles = Get-ChildItem $BACKUP_DIR -File
        if ($backupFiles.Count -gt 0) {
            foreach ($file in $backupFiles) {
                Write-Host "│       └── $($file.Name)"
            }
        } else {
            Write-Host "│       └── ($(Translate 'empty'))"
        }
    }
    Write-Host
}

# Информация о Telegram
function Show-FollowInfo {
    Write-Host
    Write-Host "$GREEN================================$NC"
    Write-Host "$YELLOW  $(Translate 'follow_telegram') $NC"
    Write-Host "$GREEN================================$NC"
    Write-Host
}

# Отключение автообновлений
function Disable-AutoUpdate {
    Write-Host
    Write-LogWarn $(Translate "disable_auto_update")
    Write-Host "1) $(Translate 'no')"
    Write-Host "2) $(Translate 'yes')"
    $choice = Read-Host
    
    if ($choice -eq "2") {
        Write-Host
        Write-LogInfo $(Translate "disabling_update")
        $updaterPath = "$env:APPDATA\cursor-updater"
        
        try {
            if (Test-Path $updaterPath) {
                Remove-Item $updaterPath -Force -Recurse
                Write-LogInfo $(Translate "folder_deleted")
            }
            
            New-Item -ItemType File $updaterPath -Force | Out-Null
            Set-ItemProperty $updaterPath -Name IsReadOnly -Value $true
            
            if (-not (Test-Path $updaterPath) -or (Get-Item $updaterPath).IsReadOnly -eq $false) {
                Write-LogError $(Translate "rights_check_failed")
                Write-Host
                Write-LogWarn $(Translate "manual_steps")
                Write-Host "$YELLOW$(Translate 'open_terminal')$NC"
                Write-Host "$(Translate 'run_commands'):"
                Write-Host "$BLUE`"rm -r '$updaterPath'; New-Item -ItemType File '$updaterPath'; Set-ItemProperty '$updaterPath' -Name IsReadOnly -Value `$true`"$NC"
                Write-Host
                Write-Host "$YELLOW$(Translate 'verification')$NC"
                Write-Host "Get-ItemProperty '$updaterPath'"
                Write-Host "$(Translate 'check_rights')"
                Write-Host
                Write-LogWarn $(Translate "restart_after")
                return
            }
            
            Write-LogInfo $(Translate "update_disabled")
        } catch {
            Write-LogError $(Translate "file_create_failed")
            Write-Host
            Write-LogWarn $(Translate "manual_steps")
            Write-Host "$YELLOW$(Translate 'open_terminal')$NC"
            Write-Host "$(Translate 'run_commands'):"
            Write-Host "$BLUE`"rm -r '$updaterPath'; New-Item -ItemType File '$updaterPath'; Set-ItemProperty '$updaterPath' -Name IsReadOnly -Value `$true`"$NC"
            Write-Host
            Write-Host "$YELLOW$(Translate 'verification')$NC"
            Write-Host "Get-ItemProperty '$updaterPath'"
            Write-Host "$(Translate 'check_rights')"
            Write-Host
            Write-LogWarn $(Translate "restart_after")
        }
    } else {
        Write-LogInfo $(Translate "update_enabled")
    }
}

# Добавляем функцию для обновления MachineGuid
function Update-MachineGuid {
    try {
        $newGuid = [guid]::NewGuid().ToString()
        $registryPath = "HKLM:\SOFTWARE\Microsoft\Cryptography"
        
        $currentGuid = Get-ItemPropertyValue -Path $registryPath -Name "MachineGuid"
        Write-LogInfo "$(Translate 'current_machineguid') $currentGuid"
        
        Set-ItemProperty -Path $registryPath -Name "MachineGuid" -Value $newGuid -Force
        
        $updatedGuid = Get-ItemPropertyValue -Path $registryPath -Name "MachineGuid"
        if ($updatedGuid -eq $newGuid) {
            Write-LogInfo "$(Translate 'machineguid_updated') $newGuid"
        } else {
            Write-LogError $(Translate "machineguid_update_failed")
        }
    } catch {
        Write-LogError "$(Translate 'machineguid_error'): $_"
    }
}

# Функция для открытия сайта
function Open-Website {
    $sites = @("https://assets-hub.ru", "https://assets-hub.pro")
    $randomSite = $sites | Get-Random
    try {
        Start-Process $randomSite
        
    } catch {
        Write-LogError "Не удалось открыть сайт: $_"
    }
}

# Главная функция
function Start-Main {
    Clear-Host
    Select-Language
    Write-Host @"
    ██████╗██╗   ██╗██████╗ ███████╗ ██████╗ ██████╗ 
   ██╔════╝██║   ██║██╔══██╗██╔════╝██╔═══██╗██╔══██╗
   ██║     ██║   ██║██████╔╝███████╗██║   ██║██████╔╝
   ██║     ██║   ██║██╔══██╗╚════██║██║   ██║██╔══██╗
   ╚██████╗╚██████╔╝██║  ██║███████║╚██████╔╝██║  ██║
    ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
"@
    Write-Host "$BLUE================================$NC"
    Write-Host "$GREEN      $(Translate 'tool_name')         $NC"
    Write-Host "$BLUE================================$NC"
    Write-Host
    Write-Host "$YELLOW[$(Translate 'important')]$NC $(Translate 'version_support')"
    Write-Host
    
    Test-AdminRights
    Stop-CursorProcess
    Backup-Config
    Update-Config
    Update-MachineGuid
    
    Write-Host
    Write-LogInfo $(Translate "done")
    Show-FileTree
    Show-FollowInfo
    Write-LogInfo $(Translate "restart_required")
    
    Disable-AutoUpdate
    
    # Открываем случайный сайт после успешного выполнения
    Open-Website
}

# Оставляем только прямой вызов главной функции:
Start-Main
