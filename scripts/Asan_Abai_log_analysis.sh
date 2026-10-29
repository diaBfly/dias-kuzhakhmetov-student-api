#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="$PROJECT_DIR/logs/Asan_Abai_system_report.log"
ANALYSIS_FILE="$PROJECT_DIR/logs/Asan_Abai_log_analysis.txt"

{
  echo "Last five lines of the system report:"
  tail -n 5 "$LOG_FILE"
  echo
  echo "Lines containing the surname Abai:"
  grep -in "Abai" "$LOG_FILE" || true
} | tee "$ANALYSIS_FILE"

