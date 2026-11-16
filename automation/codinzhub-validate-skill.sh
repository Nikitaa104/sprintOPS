#!/usr/bin/env bash
# Backward compatibility wrapper for sprintops-validate-skill.sh
# Deprecated: use sprintops-validate-skill.sh directly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-validate-skill.sh" "$@"
