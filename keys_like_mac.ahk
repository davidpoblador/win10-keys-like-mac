; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

; Recommended for new scripts due to its superior speed and reliability.
SendMode Input
; Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir% 

; Make sure we do not spawn several instances
#SingleInstance Force

; Alfred-like shortcut to open search bar
!Space::Send #{q}

; Requires remapping left windows key to F20 with Sharpkeys
; Allows Control + Tab to cycle through tabs in browsers or vscode...
F20 & Tab::
If GetKeyState("Shift")
    Send ^{PgUp}
Else
    Send ^{PgDn}
Return

; Control + a and Control + e send to beginning and end of line
F20 & a::Send {Home}
F20 & e::Send {End}

; Remap Ctrl-Tab to Alt-Tab
^Tab::
Send {Alt down}{Tab}
Keywait Control
Send {Alt up}
return

; Remap Ctrl-Shift-Tab to Alt-Shift-Tab
^+Tab::
Send {Alt down}{Shift down}{Tab}
Keywait Control
Send {Alt up}
return

; Disable Alt-Tab
!Tab::return

; Try to mimic Command+q
^q::Send !{F4}

