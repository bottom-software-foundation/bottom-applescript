# bottom-applescript 🥺
An implementation* of the [bottom text encoding spec](https://github.com/bottom-software-foundation/spec) in AppleScript.

## *Major caveat
I can't find a way to get the bytes from a string in pure AppleScript. So this pretty much only works for ASCII characters :'( I also tried messing around with ASOC & `NSString` but I couldn't get it to work.

If anyone else is masochistic enough to try then please do 🥺👉👈

## How to use
Place `bottomify.scpt` and `debottomify.scpt` into your Script Libraries folder.

Example script using it:
```AppleScript
set plainText to text returned of (display dialog "Text to be bottom-ified🥺:" default answer "" buttons {"👉👈"} default button "👉👈" with title "Bottom Text")

tell script "bottomify"
	set bottomText to bottomify(plainText)
end tell

display dialog bottomText with title "Bottom Text" buttons {"uwu"} default button {"uwu"}
```
I now hate AppleScript.

---
More bottom [here](https://github.com/bottom-software-foundation)