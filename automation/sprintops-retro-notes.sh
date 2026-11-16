#!/usr/bin/env bash
# SprintOPS — AI-Powered Sprint Orchestration & Operations
# Developed by Coder Coder | Find more projects: https://www.codinzhub.com/projects

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/sprintops-run.sh" --mode retro-notes "$@"
