#!/usr/bin/env bash
set -e

cd /app/block_scout_web/assets
node_modules/webpack/bin/webpack.js --mode development
cd apps
mix phx.digest
mix phx.server