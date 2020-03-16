#!/usr/bin/env bash
set -euo pipefail

_term() {
  >&2 echo "TERM"
  exit 0
}

session_id=${1:-}
match=${2:-}
args=${@:3}

while true; do
  output=$(curlser $session_id $args)
  if [[ $output =~ "$match" ]]; then
    echo "output matches: $match"
  else
    echo $output
    echo ""
    echo "does not match $match"
    exit 1
  fi
done
