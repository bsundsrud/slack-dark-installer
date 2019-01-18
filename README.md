# Installer for Slack Dark Mode

Attempts to identify slack installs on macOS and linux and inject code to load custom css.

## Installing

Run `./install.sh [theme-name] [path-to-slack-resource-dir]`.  Theme name defaults to `default`, and if the slack resource path is omitted it will search known locations for installs.  If it can't find it, you will need to supply the directory that `ssb-interop.js` lives in (on my linux system, for example, this is `/usr/lib/slack/resources/app.asar.unpacked/src/static/ssb-interop.js`

## After slack updates

Rerun the install.  It will either reinstall if `ssb-interop.js` was overwritten, or it will detect that the shim is already in place, restore the backup file, and re-apply.

## Uninstalling

Run `./uninstall.sh [path-to-slack-resource-dir]` to restore the original version of `ssb-interop.js`.  Will only run if it detects an altered `ssb-interop.js`, so as to avoid overwriting an updated version with an old one.

## Adding your own CSS

Due to "security reasons", Electron can only load 3rd party content via fetch/XHR over HTTPS.  Therefore, you need to host any css you have *somewhere*.  By default, the `themes` file pins to specific revisions on github.  If you want to customize, change the CSS and add your own theme.


Default theme is `slack-night-mode` from https://github.com/laCour/slack-night-mode
