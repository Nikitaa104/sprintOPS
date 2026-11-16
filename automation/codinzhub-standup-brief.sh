#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-standup-brief.sh
# Deprecated: use sprintops-standup-brief.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-standup-brief.sh" "$@"
