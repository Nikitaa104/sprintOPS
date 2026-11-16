#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-suggest-owner.sh
# Deprecated: use sprintops-suggest-owner.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-suggest-owner.sh" "$@"
