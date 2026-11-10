#!/bin/sh
# Sets the contact address on every policy page and removes the "not yet set"
# banner. Run once, before submitting anything to App Review.
#
#   ./set-contact.sh apps@yourdomain.com
set -e

if [ -z "$1" ]; then
  echo "usage: ./set-contact.sh you@yourdomain.com" >&2
  exit 1
fi

for page in album-yearbook/index.html studioscan/index.html traildot/index.html; do
  # The address, in both the mailto: and the visible link text.
  sed -i '' "s/apps@example\.com/$1/g" "$page"
  # The banner is one line; drop it whole.
  sed -i '' '/<div class="todo">/d' "$page"
  echo "updated $page"
done

echo
echo "Done. Commit and push, then the pages are ready to reference from"
echo "App Store Connect."
