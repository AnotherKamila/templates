#!/bin/bash

export TEMPLATES_DIR="$HOME/.templates"
TEMPLATE_FUNCTIONS_ALIASES=${1-$TEMPLATE_FUNCTIONS_ALIASES}


# Outputs the appropriate template file for the given
# filename/extension and (optional) template name.
template_for() {
    if [[ -f "$TEMPLATES_DIR/`basename $1`" ]]; then
        echo "$TEMPLATES_DIR/`basename $1`"
    else
        TEMPLATE_NAME=${2:-default}
        EXT=${1##*.}
        echo "$TEMPLATES_DIR/$TEMPLATE_NAME.$EXT"
    fi
}

template_new() {
    cp -i `template_for "$1" "$2"` "$1"
}
template_edit() {
    template_new "$1" "$2"
    $EDITOR "$1"
}

template_make() {
    # I deserve a slow and painful death for this, and I am rather content with it :D
    MAKEFILES="`template_for "$1" "$2"`-*.make"
    for f in $MAKEFILES; do
        OUT_EXT="${f%.make}"; OUT_EXT="${OUT_EXT##*-}"
        make -f "$f" "${1%.*}.$OUT_EXT"
    done
}

# if this file was sourced with a non-empty first argument,
# or the env var TEMPLATE_FUNCTIONS_ALIASES is set, these
# aliases will be available
if [[ -n $TEMPLATE_FUNCTIONS_ALIASES ]]; then
    alias tn=template_new
    alias te=template_edit
    alias tm=template_make
fi
