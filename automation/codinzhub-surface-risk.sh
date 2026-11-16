#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-surface-risk.sh
# Deprecated: use sprintops-surface-risk.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-surface-risk.sh" "$@"
