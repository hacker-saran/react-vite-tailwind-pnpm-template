run_check() {
  STEP="$1"
  TOTAL="$2"
  LABEL="$3"

  shift 3

  printf "[%s/%s] %-32s" "$STEP" "$TOTAL" "$LABEL"

  OUTPUT=$("$@" 2>&1)
  STATUS=$?

  if [ "$STATUS" -eq 0 ]; then
    print_success
    return 0
  fi

  print_failure

  printf "\n"
  printf "%s\n" "$OUTPUT"
  printf "\n"

  return "$STATUS"
}

lint_staged() {
  run_check "$1" "$2" "Lint Staged" pnpm lint-staged
}

format_check() {
  run_check "$1" "$2" "Format Check" pnpm format:check
}

lint() {
  run_check "$1" "$2" "ESLint" pnpm lint
}

type_check() {
  run_check "$1" "$2" "Type Check" pnpm typecheck
}

unit_tests() {
  run_check "$1" "$2" "Unit Tests" pnpm test:run
}

production_build() {
  run_check "$1" "$2" "Production Build" pnpm build
}