#!/bin/bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. "$DIR/functions"

INSTALL_PATH="$(supplied_path_or_guess ${1-})"
if prompt_for_continue "Continue with uninstallation from ${INSTALL_PATH}?"; then
    uninstall "$INSTALL_PATH"
fi
exit $?

