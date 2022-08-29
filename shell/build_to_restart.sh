#!/usr/bin/env bash
set -e
export MIX_ENV=prod
cd /app/apps/block_scout_web/assets
node_modules/webpack/bin/webpack.js --mode development
cd /app
mix phx.digest
mix phx.server