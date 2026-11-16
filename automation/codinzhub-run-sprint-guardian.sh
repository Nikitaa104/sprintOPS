#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-run.sh
# Deprecated: use sprintops-run.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-run.sh" "$@"
