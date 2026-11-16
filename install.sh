#!/bin/bash
# Makes right-to-left the default for every new Word document on this Mac.
# Usage: quit Word, then run:  bash install.sh        (undo: bash install.sh undo)
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)/Normal.dotm"
DIR="$HOME/Library/Group Containers/UBF8T346G9.Office/User Content.localized/Templates.localized"
DST="$DIR/Normal.dotm"
BAK="$DIR/Normal.dotm.before-rtl"

if pgrep -xq "Microsoft Word"; then
  echo "Word is running. Save your work, quit Word (Cmd+Q), then run this again."; exit 1
fi
[ -d "$DIR" ] || { echo "Word template folder not found. Open and quit Word once, then run this again."; exit 1; }

if [ "${1:-}" = "undo" ]; then
  rm -f "$DST"
  [ -f "$BAK" ] && mv "$BAK" "$DST"
  echo "Undone. Word is back to its previous default."; exit 0
fi

[ -f "$SRC" ] || { echo "Normal.dotm must sit next to this script."; exit 1; }
# Keep the original only once, so re-running never overwrites the real backup.
if [ -f "$DST" ] && [ ! -f "$BAK" ]; then cp -p "$DST" "$BAK"; fi
cp "$SRC" "$DST"
echo "Done. New Word documents now start right-to-left."
