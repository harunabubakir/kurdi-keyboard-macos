# ⌨️ Kurdi Keyboard Layouts for macOS

**Kurdish (Sorani) keyboard layouts for Mac, updated and fixed by [Haroon](https://github.com/harunabubakir).**

## ✨ What's fixed

- ↔️ **Right-to-left writing direction** now works in apps, especially **Microsoft Word**
- ⌘ **System shortcuts work** while these layouts are active
- 🟢 **Rounded flag icon** that matches the macOS menu bar style

## 📦 Layouts

One bundle, `Kurdi.bundle`, with two layouts. Both are tagged as Central Kurdish (`ckb`) and show the Kurdistan flag.

### Kurdi-Sorani

Phonetic Kurdish, like *Kurdish (Central)* on Windows.

![Kurdi-Sorani layout](images/kurdi-sorani.png)

### Kurdi-Arabi

The Arabic Windows layout with Kurdish letters added.

![Kurdi-Arabi layout](images/kurdi-arabi.png)

In both pictures: black is the normal key, red is Shift, green is with Caps Lock on, blue is Option.

> macOS shows a privacy warning instead of a keyboard preview for keyboards that don't come from Apple, so use the pictures above. Once a layout is active you can also choose **Show Keyboard Viewer** from the input menu in the menu bar.

## 🚀 Install

1. Download the zip from the [latest release](../../releases/latest) and unzip it.
2. Copy `Kurdi.bundle` to:

   ```
   ~/Library/Keyboard Layouts/
   ```

   In Finder: **Go → Go to Folder…** (⇧⌘G), paste the path above, and drop the file in.
3. Log out and log back in.
4. Open **System Settings → Keyboard → Input Sources → Edit → +**, find **Kurdi-Sorani** and **Kurdi-Arabi** (under *Kurdish* or *Others*) and add them.

**Upgrading from v1.0.0:** delete the old `Kurdi Sorani.bundle` and `Kurdi.bundle` from that folder first.

## 🗑️ Uninstall

Delete `Kurdi.bundle` from `~/Library/Keyboard Layouts/`, then log out and back in.

## 📝 Word extras (optional)

These are in the repository, not in the release zip.

| File | What it does |
|---|---|
| `Normal.dotm` + `install.sh` | Makes right-to-left the default for every new Word document. Quit Word, then run `bash install.sh`. Undo with `bash install.sh undo`. |
| `Fix Word Direction.app` | Sets each paragraph of the open Word document to RTL or LTR from its first letter. The app is not notarized, so the first time use right-click → **Open**. |
| `fix-direction.applescript` | Source of the app above. |

## 🙏 Credits

Based on the unified Kurdish keyboard published by the Kurdistan Regional Government Department of Information Technology: <http://unicode.ekrg.org/download.html>
