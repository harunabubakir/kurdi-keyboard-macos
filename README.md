# ⌨️ Kurdi Keyboard Layouts for macOS

**Kurdish (Sorani) keyboard layouts for Mac, updated and fixed by [Haroon](https://github.com/harunabubakir).**

## ✨ What's fixed

- ↔️ **Right-to-left writing direction** now works in apps, especially **Microsoft Word**
- ⌘ **System shortcuts work** while these layouts are active
- 🟢 **Rounded flag icon** that matches the macOS menu bar style

## 📦 Layouts

| Bundle | Layouts inside |
|---|---|
| `Kurdi Sorani.bundle` | Kurdi Sorani |
| `Kurdi.bundle` | Kurdi-کوردی, Kurdi-عەرەبی |

All three are tagged as Central Kurdish (`ckb`).

## 🚀 Install

1. Download the zip from the [latest release](../../releases/latest) and unzip it.
2. Copy all files to:

   ```
   ~/Library/Keyboard Layouts/
   ```

   In Finder: **Go → Go to Folder…** (⇧⌘G), paste the path above, and drop the files in.
3. Log out and log back in.
4. Open **System Settings → Keyboard → Input Sources → Edit → +**, find the Kurdi keyboards (under *Kurdish* or *Others*) and add them.

## 🗑️ Uninstall

Delete `Kurdi.bundle` and `Kurdi Sorani.bundle` from `~/Library/Keyboard Layouts/`, then log out and back in.

## 📝 Word extras (optional)

These are in the repository, not in the release zip.

| File | What it does |
|---|---|
| `Normal.dotm` + `install.sh` | Makes right-to-left the default for every new Word document. Quit Word, then run `bash install.sh`. Undo with `bash install.sh undo`. |
| `Fix Word Direction.app` | Sets each paragraph of the open Word document to RTL or LTR from its first letter. The app is not notarized, so the first time use right-click → **Open**. |
| `fix-direction.applescript` | Source of the app above. |

## 🙏 Credits

Based on the unified Kurdish keyboard published by the Kurdistan Regional Government Department of Information Technology: <http://unicode.ekrg.org/download.html>
