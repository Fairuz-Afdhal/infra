#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Starting Caddy..."
docker compose -f "$DIR/caddy/docker-compose.yml" up -d --build

echo "Starting TimelessHub..."
docker compose -f "$DIR/timelesshub/docker-compose.yml" up -d

echo "Starting Duita..."
docker compose -f "$DIR/duita/docker-compose.yml" up -d

echo "All services started."