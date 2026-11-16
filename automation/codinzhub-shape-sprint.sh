#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-shape-sprint.sh
# Deprecated: use sprintops-shape-sprint.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-shape-sprint.sh" "$@"
