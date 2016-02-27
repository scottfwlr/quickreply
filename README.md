# QuickReply #

Reply to Notification Center message notifications without going to the app.

## Using it ##

### FastScripts ###
Free for up to 10 shortcuts.
* Get using [homebrew]: `cask update`, `cask install fastscripts`.
* Get manually: [download Fastscripts].
* Download `QuickReply.scpt` and move it to ~/Library/Scripts (may require administrator privileges)
* Open FastScripts preferences and assign a keyboard shortcut to **QuickReply**.

### Other options ###
* [There are many other options for running AppleScripts][https://superuser.com/questions/153890/assign-a-shortcut-to-running-a-script-in-os-x/264943#264943]
* Download `QuickReply.scpt` and assign it a shortcut

### OSX Services ###

**Unfortunately, there are several bugs with OSX Services that render this approach unworkable. Services take a long time to fire, and global Services shortcut keys don't work in applications that don't have a Services menu.**

~~* Download `QuickReply.workflow`
* Double-click it to install
* Go to **System Preferences** -> **Keyboard** -> **Shortcuts**
* Click **Services** on the left
* Scroll to the bottom, under **General**
* Assign a key combination to **QuickReply**~~


## Details ##

Lots of messaging applications (like Skype) tie into OSX's Notification Center.

Replying to a notification requires you to use the mouse, which is not ideal.

It's pretty simple to use AppleScripts to set up a shortcut key that lets you reply to Alerts... but using Alerts means notifications stay on the screen until dismissed, which is not ideal.

The simple approache is unworkable with Banners, since the Reply button only comes into existence once you hover over the notification. 

This script takes a more complicated approach: it stores the mouse location, hides the mouse cursor, mouses over the banner to reveal the Reply button, restores the mouse to its original location, then activates the Reply button.

When attached to a global shortcut, you now have a hotkey to immediately respond to notifications - without having to open the app.


[homebrew]: http://brew.sh/
[download Fastscripts]: https://red-sweater.com/fastscripts/