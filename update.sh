#!/bin/bash

echo "🔄 Обновляем Backend..."
cd ../backend && git pull origin main

echo "🔄 Обновляем Frontend..."
cd ../frontend && git pull origin main

echo "🔄 Обновляем DevOps..."
cd ../devops && git pull origin main

echo "🚀 Пересобираем и запускаем Docker..."
docker compose up --build -d

echo "✅ Казино запущено в фоновом режиме!"
