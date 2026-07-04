# ==========================================================
# Common Utilities
# ==========================================================

# ---------- Colors ----------
if [ -t 1 ]; then
  GREEN="$(printf '\033[0;32m')"
  RED="$(printf '\033[0;31m')"
  CYAN="$(printf '\033[0;36m')"
  RESET="$(printf '\033[0m')"
else
  GREEN=""
  RED=""
  CYAN=""
  RESET=""
fi

DIVIDER="=============================================================="

print_header() {
  printf "\n"
  printf "%s%s%s\n" "$CYAN" "$DIVIDER" "$RESET"
  printf "%s%s%s\n" "$CYAN" "$1" "$RESET"
  printf "%s%s%s\n" "$CYAN" "$DIVIDER" "$RESET"
  printf "\n"
}

print_footer() {
  printf "\n"
  printf "%s%s%s\n" "$CYAN" "$DIVIDER" "$RESET"
}

print_success() {
  printf "%sPASS%s\n" "$GREEN" "$RESET"
}

print_failure() {
  printf "%sFAIL%s\n" "$RED" "$RESET"
}

print_summary() {
  printf "\n"
  printf "%s%s%s\n" "$CYAN" "$DIVIDER" "$RESET"
  printf "%s\n" "$1"
  printf "%s%s%s\n" "$CYAN" "$DIVIDER" "$RESET"
}