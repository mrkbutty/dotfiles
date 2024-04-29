#!/usr/bin/env bash

SCRIPT=$(realpath "${BASH_SOURCE[0]}")
SCRIPTPATH=$(dirname "$SCRIPT")

cd $SCRIPTPATH
for d in */; do
	stow -v $d
done

