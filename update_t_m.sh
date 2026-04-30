#!/bin/bash

echo "🔄 Обновляем Backend (из ветки TEST)..."
cd ../backend
git fetch --all
git checkout test
git pull origin test

echo "🔄 Обновляем Frontend (из ветки MAIN)..."
cd ../frontend
git fetch --all
git checkout main
git pull origin main

echo "🔄 Обновляем DevOps (из ветки MAIN)..."
cd ../devops
git pull origin main

echo "🚀 Пересобираем и запускаем Docker..."
# Удалил ключ -d, чтобы ты видел логи сборки прямо сейчас
docker compose up --build
