#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Restarting Caddy..."
docker compose -f "$DIR/caddy/docker-compose.yml" restart

echo "Restarting TimelessHub..."
docker compose -f "$DIR/timelesshub/docker-compose.yml" restart

echo "Restarting Duita..."
docker compose -f "$DIR/duita/docker-compose.yml" restart

echo "All services restarted."
