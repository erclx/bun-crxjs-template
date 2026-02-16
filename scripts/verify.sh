#!/bin/bash
set -e
set -o pipefail

GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[1;37m'
GREY='\033[0;90m'
NC='\033[0m'

log_info() { echo -e "${GREY}│${NC} ${GREEN}✓${NC} $1"; }
log_error() {
  echo -e "${GREY}│${NC} ${RED}✗${NC} $1"
  exit 1
}
log_step() { echo -e "${GREY}│${NC}\n${GREY}├${NC} ${WHITE}$1${NC}"; }

check_dependencies() {
  command -v bun >/dev/null 2>&1 || log_error "bun is not installed"
}

main() {
  check_dependencies

  echo -e "${GREY}┌${NC}"

  log_step "1. Type Checking"
  bun run typecheck || log_error "Type Check Failed"
  log_info "Types valid"

  log_step "2. Linting"
  bun run lint || log_error "Linting Failed"
  log_info "Linting clean"

  log_step "3. Formatting"
  bun run check:format || log_error "Formatting Check Failed"
  log_info "Formatting correct"

  log_step "4. Spelling"
  bun run check:spell || log_error "Spelling Check Failed"
  log_info "Spelling correct"

  log_step "5. Unit Testing"
  bun run test:run || log_error "Tests Failed"
  log_info "Tests passed"

  log_step "6. Production Build"
  bun run build || log_error "Build Failed - Assets could not be bundled"
  log_info "Build successful"

  echo -e "${GREY}└${NC}\n"
  echo -e "${GREEN}✓ Verification Passed!${NC}"
}

main "$@"
