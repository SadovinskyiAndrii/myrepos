#!/bin/bash

# Шлях до директорії, яку потрібно резервувати
SOURCE_DIR="/mnt/d/home "

# Шлях до директорії для зберігання резервних копій
BACKUP_DIR="/mnt/d "

# Поточна дата та час
DATE_PART=$(date +%Y%m%d)
TIME_PART=$(date +%H%M)
DATE=$(printf "%s_%s" "$DATE_PART" "$TIME_PART")

# Ім'я файлу резервної копії
BACKUP_FILE="backup_$DATE.tar.gz"

# Створення резервної копії
tar -czf "$BACKUP_DIR/$BACKUP_FILE" --exclude="*/*.dat" "$SOURCE_DIR"