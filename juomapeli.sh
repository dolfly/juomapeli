#!/bin/sh

function usage() {
    echo "Example: $0 10 john mike daisy"
    exit 1
}

if test -z "$1" ; then
    echo "Please give a drinking interval, e.g. 5"
    echo
    usage
fi

t="$1"
shift

if test -z "$1" ; then
    echo "Please give names of drinkers.."
    echo
    usage
fi

poissonrun -q $t ./arvonta.py "$@"
