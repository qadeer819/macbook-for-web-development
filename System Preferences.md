---
modified: 2022-12-15T21:51:24.920Z
title: null
---

[`index`](./README.md)
[`vs code extension`](./md-files/My%20VS%20Code%20extensions.md)
[`Awesome Web`](./md-files/Awesome-Web-Development-Resources.md)
[`chrome extensions`](./md-files/chrom-extension.md)
[`Cheat shees`](./md-files/cheat%20sheets.md)
[`brew install`](./md-files/brew%20setup.md)
[`System Preferences`](./System%20Preferences.md)

<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->
<!-- [`System Preferences`](./System%20Preferences.md) -->

#System Preferences

##First Time Setup

The first thing you should do is update your system. To do that go: Apple menu

```
() > About This Mac > Software Update.
```

Also upgrade your OS to the latest version to have a more secure OS. macOS upgrades are usually free so you might as well keep your machine up to date.

If this is a new computer there are a couple tweaks you could make to the System Preferences. These settings are all optional, consider them suggestions. Always choose the setting that makes the most sense to you.
##Users & Groups

> Login Options -> Change fast user switching menu as Icon
> Set up Password, Apple ID, Picture, etc.

##Trackpad

> Point & Click
> Enable Tap to click with one finger
> Change Secondary click to Right corner
> Uncheck Three Finger Drag
> Scroll & Zoom
> Uncheck all apart from Zoom in and out

##Dock

Visual Settings
Change position to Left and make the size of icons Small
Other settings
Remove workspace auto-switching by running the following command:
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock # Restart the Dock process

##Finder

General
Change New finder window show to open in your Home Directory
Sidebar
Add Home and your Code Directory
Uncheck all Shared boxes

##Menubar

Remove the Display and Bluetooth icons
Change battery to Show percentage symbols

##Spotlight

Uncheck fonts, images, files etc.
Uncheck the keyboard shortcuts as we'll be replacing them with Alfred

##Accounts

Add an iCloud account and sync Calendar, Find my Mac, Contacts etc.
##User Defaults

Enable repeating keys by pressing and holding down keys: defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false (and restart any app that you need to repeat keys in)
Change the default folder for screenshots
Open the terminal and create the folder where you would like to store your screenshots:

```
 mkdir -p /path/to/screenshots/
```

Then run the following command:

```
defaults write com.apple.screencapture location /path/to/screenshots/ && killall SystemUIServer
```
