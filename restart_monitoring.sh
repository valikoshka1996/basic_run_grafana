#!/bin/bash

# Функція для запуску сервісів та виведення повідомлень
start_service() {
    systemctl restart "$1"
    if [ $? -eq 0 ]; then
        echo "$1 restarted successfully"
    else
        echo "Failed to start $1"
    fi
}

# Запуск сервісів
start_service prometheus
start_service node_exporter
start_service grafana-server

# Пауза до натискання Enter
read -p "Press Enter to exit..."
