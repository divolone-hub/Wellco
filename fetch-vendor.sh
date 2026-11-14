#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VENDOR="$ROOT/app/src/main/assets/www/vendor"
mkdir -p "$VENDOR"
curl -fL --retry 3 'https://cdn.tailwindcss.com/3.4.17' -o "$VENDOR/tailwindcss.js"
curl -fL --retry 3 'https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js' -o "$VENDOR/html2pdf.bundle.min.js"
test -s "$VENDOR/tailwindcss.js"
test -s "$VENDOR/html2pdf.bundle.min.js"
echo 'Vendor-библиотеки загружены.'
