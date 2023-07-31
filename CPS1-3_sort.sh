#!/usr/bin/env bash

readonly SOURCE="${1:-roms}"

copy_from() {
	local -r system="$1"
	local -r dest_dir="${system^^}"

	mkdir -p "$dest_dir"
	while IFS= read -r file; do
		cp "$SOURCE/$file" "$dest_dir"
	done < "${system}.txt"
}

copy_from "cps1"
copy_from "cps2"
copy_from "cps3"
