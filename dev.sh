#!/bin/bash
# Serve the vault locally with hot reload.
# Override ports with e.g. PORT=8081 WS_PORT=3004 ./dev.sh
set -e

PORT="${PORT:-8080}"
# Not 3001: a bun process commonly holds that port, and a collision kills the
# server instead of just disabling hot reload.
WS_PORT="${WS_PORT:-3003}"

VAULT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$VAULT/.quartz"
# See build.sh: `npx quartz` resolves to an unrelated registry package.
node ./quartz/bootstrap-cli.mjs build --serve \
  --port "$PORT" --wsPort "$WS_PORT" \
  -d ../content -o ../public
