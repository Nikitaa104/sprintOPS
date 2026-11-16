#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-install-skill.sh
# Deprecated: use sprintops-install-skill.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-install-skill.sh" "$@"
