#!/bin/bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. "$DIR/functions"

INJECT="$DIR/addition.js"
INJECT_CSS="$DIR/custom.css"

INSTALL_PATH="$(supplied_path_or_guess ${1-})"
if [[ "$?" != "0" ]]; then
    exit 1
fi

THEME_NAME="${2-}"

if [ -z "$THEME_NAME" ]; then
    THEME_NAME="default"
fi

if prompt_for_continue "Continue with installation of '$THEME_NAME' to ${INSTALL_PATH}?"; then
    install "$INSTALL_PATH" "$INJECT" "$(theme_path "$DIR/$THEMES_FILE" "$THEME_NAME")"
fi
exit $?

    
