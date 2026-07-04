set -eu

ROOT_DIR="$(git rev-parse --show-toplevel)"
cd "$ROOT_DIR"

. scripts/githooks/common.sh
. scripts/githooks/commands.sh

TOTAL=5

print_header "React Frontend • Pre-Push"

format_check 1 "$TOTAL" || exit 1
lint 2 "$TOTAL" || exit 1
type_check 3 "$TOTAL" || exit 1
unit_tests 4 "$TOTAL" || exit 1
production_build 5 "$TOTAL" || exit 1

print_summary "Repository is ready to push."