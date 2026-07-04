set -eu

ROOT_DIR="$(git rev-parse --show-toplevel)"
cd "$ROOT_DIR"

. scripts/githooks/common.sh
. scripts/githooks/commands.sh

TOTAL=2

print_header "React Frontend • Pre-Commit"

lint_staged 1 "$TOTAL" || exit 1
type_check 2 "$TOTAL" || exit 1

print_summary "Commit checks passed."