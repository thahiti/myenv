set keyboardLayout to do shell script "defaults read com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID"

if keyboardLayout is not "com.apple.keylayout.ABC" then
    tell application "System Events"
        -- Simulate pressing the Shift + Space keys
        keystroke space using shift down
    end tell
end if
