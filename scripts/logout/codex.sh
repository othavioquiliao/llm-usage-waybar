#!/usr/bin/env bash
set -euo pipefail

echo "Logging out Codex..."
rm -rf "$HOME/.codex"
rm -f /tmp/codex-quota.json
pkill -USR2 waybar || true

echo "Codex logout complete."
