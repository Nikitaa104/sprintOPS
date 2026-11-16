#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-retro-notes.sh
# Deprecated: use sprintops-retro-notes.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-retro-notes.sh" "$@"
