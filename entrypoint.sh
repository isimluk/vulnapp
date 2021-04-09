#!/bin/sh

set -e -o pipefail

/shell2http -show-errors -include-stderr \
    /top "top -l 1 | head -10" \
    /date date \
    /ps "ps aux" \
    /env 'env' \



