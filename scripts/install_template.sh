#!/usr/bin/env bash
set -euo pipefail

skill_dir="$(cd "$(dirname "$0")/.." && pwd)"
template_dir="$skill_dir/assets/template"
target_dir="${1:-.}"

mkdir -p "$target_dir"

while IFS= read -r -d '' src; do
  rel="${src#"$template_dir"/}"
  dest="$target_dir/$rel"

  if [[ -e "$dest" ]]; then
    continue
  fi

  mkdir -p "$(dirname "$dest")"
  cp -R "$src" "$dest"
done < <(find "$template_dir" -mindepth 1 -print0)
