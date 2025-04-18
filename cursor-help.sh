#!/bin/bash

# Обработка ошибок
set -e

# Определение цветов
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Текущий язык (по умолчанию английский)
LANG_CHOICE="en"

# Функция перевода
translate() {
    local key="$1"
    case $LANG_CHOICE in
        "ru")
            case $key in
                "select_language") echo "Выберите язык / Select language / 选择语言:";;
                "info") echo "[ИНФО]";;
                "warn") echo "[ВНИМАНИЕ]";;
                "error") echo "[ОШИБКА]";;
                "debug") echo "[ОТЛАДКА]";;
                "get_user_error") echo "Не удалось получить имя пользователя";;
                "run_with_sudo") echo "Запустите скрипт с sudo";;
                "example") echo "Пример:";;
                "checking_cursor") echo "Проверка процесса Cursor...";;
                "process_info") echo "Получение информации о процессе";;
                "cursor_not_found") echo "Процесс Cursor не найден";;
                "cursor_found") echo "Найден запущенный процесс Cursor";;
                "killing_attempt") echo "Попытка завершения процесса...";;
                "force_kill") echo "Принудительное завершение...";;
                "cursor_killed") echo "Процесс Cursor успешно завершен";;
                "waiting_termination") echo "Ожидание завершения, попытка";;
                "kill_failed") echo "Не удалось завершить процесс после";;
                "kill_manual") echo "Завершите процесс вручную и повторите попытку";;
                "backup_skipped") echo "Файл конфигурации не существует, пропуск резервного копирования";;
                "backup_created") echo "Резервная копия создана:";;
                "backup_failed") echo "Ошибка создания резервной копии";;
                "config_not_found") echo "Файл конфигурации не найден:";;
                "install_first") echo "Установите и запустите Cursor хотя бы раз";;
                "config_updated") echo "Конфигурация обновлена:";;
                "rights_failed") echo "Не удалось установить права только для чтения";;
                "rights_success") echo "Права доступа установлены успешно";;
                "file_structure") echo "Структура файлов:";;
                "modified") echo "изменен";;
                "empty") echo "пусто";;
                "follow_telegram") echo "Сделано при помощи: exmodium.ru";;
                "tool_name") echo "Утилита обхода Cursor";;
                "important") echo "ВАЖНО";;
                "version_support") echo "Поддерживается текущая версия Cursor";;
                "version_not_support") echo "";;
                "done") echo "Готово!";;
                "restart_required") echo "Перезапустите Cursor для применения изменений";;
                "disable_auto_update") echo "Отключить автообновление Cursor?";;
                "no") echo "Нет - оставить как есть (Enter)";;
                "yes") echo "Да - отключить";;
                "disabling_update") echo "Отключение автообновления...";;
                "manual_steps") echo "Автоматическое отключение не удалось. Выполните вручную:";;
                "open_terminal") echo "Откройте Terminal";;
                "run_commands") echo "Выполните команды:";;
                "if_no_rights") echo "Если нет прав, используйте sudo:";;
                "verification") echo "Проверка:";;
                "check_rights") echo "Убедитесь что права: r--r--r--";;
                "restart_after") echo "Перезапустите Cursor после выполнения";;
                "folder_deleted") echo "Папка cursor-updater удалена";;
                "folder_delete_failed") echo "Не удалось удалить папку cursor-updater";;
                "file_create_failed") echo "Не удалось создать файл";;
                "rights_check_failed") echo "Проверка прав не пройдена";;
                "update_disabled") echo "Автообновление отключено";;
                "update_enabled") echo "Автообновление оставлено включенным";;
                "current_machineguid") echo "Текущий MachineGuid:";;
                "machineguid_updated") echo "MachineGuid успешно обновлен на:";;
                "machineguid_update_failed") echo "Не удалось обновить MachineGuid";;
                "machineguid_error") echo "Ошибка при обновлении MachineGuid";;
                *) echo "[$key]";;
            esac
            ;;
        "zh")
            case $key in
                "select_language") echo "选择语言 / Select language / Выберите язык:";;
                "info") echo "[信息]";;
                "warn") echo "[警告]";;
                "error") echo "[错误]";;
                "debug") echo "[调试]";;
                "get_user_error") echo "无法获取用户名";;
                "run_with_sudo") echo "请使用 sudo 运行此脚本";;
                "example") echo "示例:";;
                "checking_cursor") echo "检查 Cursor 进程...";;
                "process_info") echo "获取进程信息";;
                "cursor_not_found") echo "未发现 Cursor 进程";;
                "cursor_found") echo "发现正在运行的 Cursor 进程";;
                "killing_attempt") echo "尝试终止进程...";;
                "force_kill") echo "强制终止...";;
                "cursor_killed") echo "Cursor 进程已成功终止";;
                "waiting_termination") echo "等待进程终止，尝试";;
                "kill_failed") echo "在尝试后仍无法终止进程";;
                "kill_manual") echo "请手动终止进程后重试";;
                "backup_skipped") echo "配置文件不存在，跳过备份";;
                "backup_created") echo "配置已备份到:";;
                "backup_failed") echo "备份失败";;
                "config_not_found") echo "未找到配置文件:";;
                "install_first") echo "请先安装并运行一次 Cursor";;
                "config_updated") echo "配置已更新:";;
                "rights_failed") echo "无法设置只读权限";;
                "rights_success") echo "权限设置成功";;
                "file_structure") echo "文件结构:";;
                "modified") echo "已修改";;
                "empty") echo "空";;
                "follow_telegram") echo "借助：exmodium.ru";;
                "tool_name") echo "Cursor 绕过工具";;
                "important") echo "重要";;
                "version_support") echo "支持当前版本的 Cursor";;
                "version_not_support") echo "";;
                "done") echo "完成！";;
                "restart_required") echo "请重启 Cursor 以应用更改";;
                "disable_auto_update") echo "是否禁用 Cursor 自动更新？";;
                "no") echo "否 - 保持默认设置 (按回车)";;
                "yes") echo "是 - 禁用自动更新";;
                "disabling_update") echo "正在禁用自动更新...";;
                "manual_steps") echo "自动设置失败，请手动操作：";;
                "open_terminal") echo "打开终端";;
                "run_commands") echo "运行以下命令：";;
                "if_no_rights") echo "如果没有权限，使用 sudo：";;
                "verification") echo "验证：";;
                "check_rights") echo "确认权限为 r--r--r--";;
                "restart_after") echo "完成后重启 Cursor";;
                "folder_deleted") echo "cursor-updater 文件夹已删除";;
                "folder_delete_failed") echo "无法删除 cursor-updater 文件夹";;
                "file_create_failed") echo "无法创建文件";;
                "rights_check_failed") echo "权限检查失败";;
                "update_disabled") echo "已禁用自动更新";;
                "update_enabled") echo "保持自动更新启用";;
                "current_machineguid") echo "当前 MachineGuid:";;
                "machineguid_updated") echo "MachineGuid 已成功更新为:";;
                "machineguid_update_failed") echo "无法更新 MachineGuid";;
                "machineguid_error") echo "更新 MachineGuid 时出错";;
                *) echo "[$key]";;
            esac
            ;;
        *)  # English (default)
            case $key in
                "select_language") echo "Select language / Выберите язык / 选择语言:";;
                "info") echo "[INFO]";;
                "warn") echo "[WARNING]";;
                "error") echo "[ERROR]";;
                "debug") echo "[DEBUG]";;
                "get_user_error") echo "Failed to get username";;
                "run_with_sudo") echo "Please run script with sudo";;
                "example") echo "Example:";;
                "checking_cursor") echo "Checking Cursor process...";;
                "process_info") echo "Getting process info";;
                "cursor_not_found") echo "No Cursor process found";;
                "cursor_found") echo "Found running Cursor process";;
                "killing_attempt") echo "Attempting to kill process...";;
                "force_kill") echo "Forcing termination...";;
                "cursor_killed") echo "Cursor process successfully terminated";;
                "waiting_termination") echo "Waiting for termination, attempt";;
                "kill_failed") echo "Failed to terminate process after";;
                "kill_manual") echo "Please terminate process manually and try again";;
                "backup_skipped") echo "Configuration file doesn't exist, skipping backup";;
                "backup_created") echo "Backup created at:";;
                "backup_failed") echo "Backup creation failed";;
                "config_not_found") echo "Configuration file not found:";;
                "install_first") echo "Please install and run Cursor at least once";;
                "config_updated") echo "Configuration updated:";;
                "rights_failed") echo "Failed to set read-only permissions";;
                "rights_success") echo "Access rights set successfully";;
                "file_structure") echo "File structure:";;
                "modified") echo "modified";;
                "empty") echo "empty";;
                "follow_telegram") echo "Made with the help of: exmodium.ru";;
                "tool_name") echo "Cursor Bypass Tool";;
                "important") echo "IMPORTANT";;
                "version_support") echo "Current Cursor version is supported";;
                "version_not_support") echo "";;
                "done") echo "Done!";;
                "restart_required") echo "Restart Cursor to apply changes";;
                "disable_auto_update") echo "Disable Cursor auto-update?";;
                "no") echo "No - keep default settings (Press Enter)";;
                "yes") echo "Yes - disable auto-update";;
                "disabling_update") echo "Disabling auto-update...";;
                "manual_steps") echo "Automatic setup failed. Manual steps:";;
                "open_terminal") echo "Open Terminal";;
                "run_commands") echo "Run these commands:";;
                "if_no_rights") echo "If permission denied, use sudo:";;
                "verification") echo "Verification:";;
                "check_rights") echo "Verify permissions are r--r--r--";;
                "restart_after") echo "Restart Cursor after completion";;
                "folder_deleted") echo "cursor-updater folder deleted";;
                "folder_delete_failed") echo "Failed to delete cursor-updater folder";;
                "file_create_failed") echo "Failed to create file";;
                "rights_check_failed") echo "Rights check failed";;
                "update_disabled") echo "Auto-update disabled";;
                "update_enabled") echo "Auto-update remains enabled";;
                "current_machineguid") echo "Current MachineGuid:";;
                "machineguid_updated") echo "MachineGuid successfully updated to:";;
                "machineguid_update_failed") echo "Failed to update MachineGuid";;
                "machineguid_error") echo "Error updating MachineGuid";;
                *) echo "[$key]";;
            esac
            ;;
    esac
}

# Функции логирования
log_info() {
    echo -e "${GREEN}$(translate "info")${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}$(translate "warn")${NC} $1"
}

log_error() {
    echo -e "${RED}$(translate "error")${NC} $1"
}

log_debug() {
    echo -e "${BLUE}$(translate "debug")${NC} $1"
}

# Выбор языка
select_language() {
    echo -e "$(translate "select_language")"
    echo "1) English"
    echo "2) Русский"
    echo "3) 中文"
    read -r lang_choice
    case $lang_choice in
        1) LANG_CHOICE="en";;
        2) LANG_CHOICE="ru";;
        3) LANG_CHOICE="zh";;
        *) LANG_CHOICE="en";;
    esac
}

# Получение текущего пользователя
get_current_user() {
    if [ "$EUID" -eq 0 ]; then
        echo "$SUDO_USER"
    else
        echo "$USER"
    fi
}

CURRENT_USER=$(get_current_user)
if [ -z "$CURRENT_USER" ]; then
    log_error "$(translate "get_user_error")"
    exit 1
fi

# Пути к файлам
STORAGE_FILE="$HOME/Library/Application Support/Cursor/User/globalStorage/storage.json"
BACKUP_DIR="$HOME/Library/Application Support/Cursor/User/globalStorage/backups"

# Проверка прав
check_permissions() {
    if [ "$EUID" -ne 0 ]; then
        log_error "$(translate "run_with_sudo")"
        echo "$(translate "example"): sudo $0"
        exit 1
    fi
}

# Проверка и завершение процесса Cursor
check_and_kill_cursor() {
    log_info "$(translate "checking_cursor")"
    
    local attempt=1
    local max_attempts=5
    
    get_process_details() {
        local process_name="$1"
        log_debug "$(translate "process_info") $process_name:"
        ps aux | grep -i "$process_name" | grep -v grep
    }
    
    while [ $attempt -le $max_attempts ]; do
        CURSOR_PIDS=$(pgrep -i "cursor" || true)
        
        if [ -z "$CURSOR_PIDS" ]; then
            log_info "$(translate "cursor_not_found")"
            return 0
        fi
        
        log_warn "$(translate "cursor_found")"
        get_process_details "cursor"
        
        log_warn "$(translate "killing_attempt")"
        
        if [ $attempt -eq $max_attempts ]; then
            log_warn "$(translate "force_kill")"
            kill -9 $CURSOR_PIDS 2>/dev/null || true
        else
            kill $CURSOR_PIDS 2>/dev/null || true
        fi
        
        sleep 1
        
        if ! pgrep -i "cursor" > /dev/null; then
            log_info "$(translate "cursor_killed")"
            return 0
        fi
        
        log_warn "$(translate "waiting_termination") $attempt/$max_attempts..."
        ((attempt++))
    done
    
    log_error "$(translate "kill_failed") $max_attempts"
    get_process_details "cursor"
    log_error "$(translate "kill_manual")"
    exit 1
}

# Резервное копирование
backup_config() {
    if [ ! -f "$STORAGE_FILE" ]; then
        log_warn "$(translate "backup_skipped")"
        return 0
    fi
    
    mkdir -p "$BACKUP_DIR"
    local backup_file="$BACKUP_DIR/storage.json.backup_$(date +%Y%m%d_%H%M%S)"
    
    if cp "$STORAGE_FILE" "$backup_file"; then
        chmod 644 "$backup_file"
        chown "$CURRENT_USER" "$backup_file"
        log_info "$(translate "backup_created") $backup_file"
    else
        log_error "$(translate "backup_failed")"
        exit 1
    fi
}

# Генерация случайного ID
generate_random_id() {
    openssl rand -hex 32
}

# Генерация UUID
generate_uuid() {
    uuidgen | tr '[:upper:]' '[:lower:]'
}

# Добавляем функцию для получения и обновления MachineGuid для macOS
generate_machine_guid() {
    local current_guid
    local new_guid
    
    # Получаем текущий Hardware UUID
    current_guid=$(ioreg -d2 -c IOPlatformExpertDevice | awk -F\" '/IOPlatformUUID/{print $(NF-1)}')
    log_info "$(translate 'current_machineguid') $current_guid"
    
    # Генерируем новый UUID
    new_guid=$(uuidgen | tr '[:upper:]' '[:lower:]')
    
    # Пытаемся обновить Hardware UUID (требует sudo)
    if nvram SystemUUID="$new_guid" 2>/dev/null; then
        log_info "$(translate 'machineguid_updated') $new_guid"
    else
        log_error "$(translate 'machineguid_update_failed')"
        return 1
    fi
}

# Модифицируем функцию generate_new_config
generate_new_config() {
    if [ ! -f "$STORAGE_FILE" ]; then
        log_error "$(translate 'config_not_found') $STORAGE_FILE"
        log_warn "$(translate 'install_first')"
        exit 1
    }
    
    # Сохраняем текущие права доступа
    local current_perms=$(stat -f "%A" "$STORAGE_FILE" 2>/dev/null)
    
    # Временно делаем файл доступным для записи
    chmod 644 "$STORAGE_FILE" 2>/dev/null || true
    
    local machine_id="authuser_$(generate_random_id)"
    local mac_machine_id=$(generate_random_id)
    local device_id=$(generate_uuid | tr '[:upper:]' '[:lower:]')
    local sqm_id="{$(generate_uuid | tr '[:lower:]' '[:upper:]')}"
    
    # Обновляем конфигурацию
    local temp_file=$(mktemp)
    jq --arg mid "$machine_id" \
       --arg mmid "$mac_machine_id" \
       --arg did "$device_id" \
       --arg sid "$sqm_id" \
       '.["telemetry.machineId"]=$mid | .["telemetry.macMachineId"]=$mmid | .["telemetry.devDeviceId"]=$did | .["telemetry.sqmId"]=$sid' \
       "$STORAGE_FILE" > "$temp_file"
    
    mv "$temp_file" "$STORAGE_FILE"
    
    # Восстанавливаем права только для чтения
    chmod 444 "$STORAGE_FILE"
    chown "$CURRENT_USER" "$STORAGE_FILE"
    
    if [ -w "$STORAGE_FILE" ]; then
        log_warn "$(translate 'rights_failed')"
        sudo chflags schg "$STORAGE_FILE" 2>/dev/null || true
    else
        log_info "$(translate 'rights_success')"
    fi
    
    echo
    log_info "$(translate 'config_updated')"
    log_debug "machineId: $machine_id"
    log_debug "macMachineId: $mac_machine_id"
    log_debug "deviceId: $device_id"
    log_debug "sqmId: $sqm_id"
}

# Отображение структуры файлов
show_file_tree() {
    local base_dir=$(dirname "$STORAGE_FILE")
    echo
    log_info "$(translate "file_structure")"
    echo -e "${BLUE}$base_dir${NC}"
    echo "├── globalStorage"
    echo "│   ├── storage.json ($(translate "modified"))"
    echo "│   └── backups"
    
    if [ -d "$BACKUP_DIR" ]; then
        local backup_files=("$BACKUP_DIR"/*)
        if [ ${#backup_files[@]} -gt 0 ]; then
            for file in "${backup_files[@]}"; do
                if [ -f "$file" ]; then
                    echo "│       └── $(basename "$file")"
                fi
            done
        else
            echo "│       └── ($(translate "empty"))"
        fi
    fi
    echo
}

# Информация о Telegram
show_follow_info() {
    echo
    echo -e "${GREEN}================================${NC}"
    echo -e "${YELLOW}  $(translate "follow_telegram") ${NC}"
    echo -e "${GREEN}================================${NC}"
    echo
}

# Отключение автообновлений
disable_auto_update() {
    echo
    log_warn "$(translate "disable_auto_update")"
    echo "1) $(translate "no")"
    echo "2) $(translate "yes")"
    read -r choice
    
    if [ "$choice" = "2" ]; then
        echo
        log_info "$(translate "disabling_update")"
        local updater_path="$HOME/Library/Application Support/cursor-updater"
        
        if [ -d "$updater_path" ]; then
            rm -rf "$updater_path" 2>/dev/null || {
                log_error "$(translate "folder_delete_failed")"
                show_manual_guide
                return 1
            }
            log_info "$(translate "folder_deleted")"
        fi
        
        touch "$updater_path" 2>/dev/null || {
            log_error "$(translate "file_create_failed")"
            show_manual_guide
            return 1
        }
        
        chmod 444 "$updater_path" 2>/dev/null && \
        chown "$CURRENT_USER" "$updater_path" 2>/dev/null || {
            log_error "$(translate "rights_failed")"
            show_manual_guide
            return 1
        }
        
        if [ ! -f "$updater_path" ] || [ -w "$updater_path" ]; then
            log_error "$(translate "rights_check_failed")"
            show_manual_guide
            return 1
        }
        
        log_info "$(translate "update_disabled")"
    else
        log_info "$(translate "update_enabled")"
    fi
}

# Отображение инструкций для ручной настройки
show_manual_guide() {
    echo
    log_warn "$(translate "manual_steps")"
    echo -e "${YELLOW}$(translate "open_terminal")${NC}"
    echo "$(translate "run_commands"):"
    echo -e "${BLUE}rm -rf \"$updater_path\" && touch \"$updater_path\" && chmod 444 \"$updater_path\"${NC}"
    echo
    echo -e "${YELLOW}$(translate "if_no_rights")${NC}"
    echo -e "${BLUE}sudo rm -rf \"$updater_path\" && sudo touch \"$updater_path\" && sudo chmod 444 \"$updater_path\"${NC}"
    echo
    echo -e "${YELLOW}$(translate "verification")${NC}"
    echo "ls -l \"$updater_path\""
    echo "$(translate "check_rights")"
    echo
    log_warn "$(translate "restart_after")"
}

# Функция для открытия сайта
open_website() {
    local sites=("https://assets-hub.ru" "https://assets-hub.pro")
    local random_site=${sites[$RANDOM % ${#sites[@]}]}
    
    if command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$random_site" 2>/dev/null || true
    elif command -v open >/dev/null 2>&1; then
        open "$random_site" 2>/dev/null || true
    else
        log_error "Не удалось открыть сайт: $random_site"
        return 1
    fi
    
    log_info "Открыт сайт: $random_site"
}

# Главная функция
main() {
    clear
    select_language
    echo -e "
    ██████╗██╗   ██╗██████╗ ███████╗ ██████╗ ██████╗ 
   ██╔════╝██║   ██║██╔══██╗██╔════╝██╔═══██╗██╔══██╗
   ██║     ██║   ██║██████╔╝███████╗██║   ██║██████╔╝
   ██║     ██║   ██║██╔══██╗╚════██║██║   ██║██╔══██╗
   ╚██████╗╚██████╔╝██║  ██║███████║╚██████╔╝██║  ██║
    ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
    "
    echo -e "${BLUE}================================${NC}"
    echo -e "${GREEN}      $(translate "tool_name")         ${NC}"
    echo -e "${BLUE}================================${NC}"
    echo
    echo -e "${YELLOW}[$(translate "important")]${NC} $(translate "version_support")"
    echo
    
    check_permissions
    check_and_kill_cursor
    backup_config
    generate_machine_guid
    generate_new_config
    
    echo
    log_info "$(translate "done")"
    show_file_tree
    show_follow_info
    log_info "$(translate "restart_required")"
    
    disable_auto_update
    
    # Открываем случайный сайт после успешного выполнения
    open_website
}

main
