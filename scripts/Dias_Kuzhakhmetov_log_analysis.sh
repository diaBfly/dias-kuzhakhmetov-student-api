#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="$PROJECT_DIR/logs/Dias_Kuzhakhmetov_system_report.log"
ANALYSIS_FILE="$PROJECT_DIR/logs/Dias_Kuzhakhmetov_log_analysis.txt"

{
  echo "Last five lines of the system report:"
  tail -n 5 "$LOG_FILE"
  echo
  echo "Lines containing the surname Kuzhakhmetov:"
  grep -in "Kuzhakhmetov" "$LOG_FILE" || true
} | tee "$ANALYSIS_FILE"

