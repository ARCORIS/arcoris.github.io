#!/usr/bin/env bash
set -euo pipefail

DOMAIN="${1:-arcoris.dev}"
MODULE="${2:-pool}"
EXPECTED="<meta name=\"go-import\" content=\"${DOMAIN}/${MODULE} git https://github.com/arcoris/${MODULE}\">"
URL="https://${DOMAIN}/${MODULE}?go-get=1"

HTML="$(curl -fsSL "$URL")"

if grep -Fq "$EXPECTED" <<<"$HTML"; then
  echo "OK: go-import metadata is present for ${DOMAIN}/${MODULE}"
else
  echo "ERROR: expected go-import metadata was not found" >&2
  echo "URL: ${URL}" >&2
  echo "Expected: ${EXPECTED}" >&2
  exit 1
fi
