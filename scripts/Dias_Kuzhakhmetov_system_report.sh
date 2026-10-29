#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="$PROJECT_DIR/logs/Dias_Kuzhakhmetov_system_report.log"

{
  echo "===== Dias Kuzhakhmetov System Report ====="
  echo "Student: Dias Kuzhakhmetov"
  echo "Date and time: $(date '+%Y-%m-%d %H:%M:%S %Z')"
  echo "Username: $(whoami)"
  echo "Operating system: $(uname -s)"
  echo "Kernel version: $(uname -r)"
  echo
  echo "CPU information:"
  if command -v lscpu >/dev/null 2>&1; then lscpu | head -n 12; else sysctl -n machdep.cpu.brand_string 2>/dev/null || true; fi
  echo
  echo "Memory information:"
  if command -v free >/dev/null 2>&1; then free -h; else vm_stat 2>/dev/null | head -n 10 || true; fi
  echo
  echo "Disk usage and available disk space:"
  df -h "$PROJECT_DIR"
  echo
} | tee "$LOG_FILE"

