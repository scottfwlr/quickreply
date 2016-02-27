// JavaScript

bannerPresence = Application("System Events")
                .processes["Notification Center"]
                .windows()[0];

if ('undefined' !== typeof bannerPresence) {

    ObjC.import("CoreGraphics");
    
    // Get current mouse location and store it
    // so we can return when we are done.
    
    dummyMouseEvent = $.CGEventCreate(null);
    loc = $.CGEventGetLocation(dummyMouseEvent);
    
    // Hide the cursor for aesthetic purposes.

    $.CGDisplayHideCursor(0);
    $.CGAssociateMouseAndMouseCursorPosition(false);
    
    // (from http://apple.stackexchange.com/a/180331)
    // Notification only detects hover when moving in
    // from outside its borders, so first go to (0, 0).

    $.CGWarpMouseCursorPosition({x:0 , y:0});
    mainDisplayWidth = $.CGDisplayPixelsWide($.CGMainDisplayID());
    $.CGWarpMouseCursorPosition({x:mainDisplayWidth - 50, y: 81});

    // Return mouse to original position and unhide it.
    
    $.CGWarpMouseCursorPosition({x:loc.x, y:loc.y});
    $.CGAssociateMouseAndMouseCursorPosition(true);
    $.CGDisplayShowCursor(1);
    
    // Paranoid error-handling
    try {
        Application("System Events")
        .processes["Notification Center"]
        .windows()[0]
        .buttons["Reply"]
        .click();
    }
    catch(err) {  }
};