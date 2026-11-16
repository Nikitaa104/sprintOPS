#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-triage-queue.sh
# Deprecated: use sprintops-triage-queue.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-triage-queue.sh" "$@"
