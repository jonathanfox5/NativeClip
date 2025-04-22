# NativeClip

## Overview

A simple app that monitors the macOS clipboard for text data and displays it in a TextField. This allows the text to be manipulated in ways that only native mac apps can e.g. three finger tap to look up dictionary, right click to translate, etc.

Useful for displaying and interacting with subtitles using the automatic copy-to-clipboard mechanism in [mpvacious](https://github.com/Ajatt-Tools/mpvacious).

## Usage

1. Open app
2. Resize to your liking (note that the height of the TextField will adapt to match the contents of the clipboard)
3. Any new text data on the clipboard will be automatically displayed
4. Manipulate the text as desired.

## Installation

Since the app isn't signed by Apple, it will automatically be blocked from running. You will therefore need to give it explicit permission.

1. Download the latest `NativeClip.app.zip` from the [releases page](https://github.com/jonathanfox5/NativeClip/releases)
2. Double click on it to extract it.
3. Drag `NativeClip.app` into your Applications folder.
4. Open Terminal (this application is built into macOS). Paste in the following command `xattr -d com.apple.quarantine /Applications/NativeClip.app` and press enter.
5. Launch the app normally.

Alternatively, the full source code is available in this repository should you wish to build it yourself in Xcode.
