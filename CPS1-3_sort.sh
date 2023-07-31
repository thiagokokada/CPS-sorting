#!/usr/bin/env bash

readonly SOURCE="${1:-roms}"

copy_from() {
	local -r system="$1"

	mkdir -p "$system"
	while IFS= read -r file; do
		cp "$SOURCE/$file" "$system"
	done < "${system}.txt"
}

copy_from "cps1"
copy_from "cps2"
copy_from "cps3"
