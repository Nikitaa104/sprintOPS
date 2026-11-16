#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-balance-load.sh
# Deprecated: use sprintops-balance-load.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-balance-load.sh" "$@"
