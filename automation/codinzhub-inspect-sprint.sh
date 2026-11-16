#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-inspect-sprint.sh
# Deprecated: use sprintops-inspect-sprint.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-inspect-sprint.sh" "$@"
