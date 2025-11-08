#!/usr/bin/env bash
set -e

echo "[*] Starting containers..."
docker compose up -d
echo "[*] Waiting a few seconds for services to initialize..."
sleep 6

echo "[*] Containers running:"
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"
