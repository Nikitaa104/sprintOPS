#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-progress-pulse.sh
# Deprecated: use sprintops-progress-pulse.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-progress-pulse.sh" "$@"
