#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.rel
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
CoordMode, Mouse, Screen
#SingleInstance force

#MenuMaskKey vkE8
#Include %A_ScriptDir%\lib\monitors.ahk
#Include %A_ScriptDir%\lib\utilities.ahk
#Include %A_ScriptDir%\lib\websites.ahk
#Include %A_ScriptDir%\lib\emojies.ahk
#Include %A_ScriptDir%\lib\windowsFunctions.ahk




SetTitleMatchMode, 2

!`:: ; Ctrl + Alt + Tab to cycle through windows
    WinGet, id, List
    Loop, %id%
    {
        WinActivate, % "ahk_id " id%A_Index%
        Sleep, 100 ; Adjust sleep duration as needed
    }
return



; MouseMove
Capslock & Home:: MouseMove A_ScreenWidth/2, A_ScreenHeight/2
Capslock & Up::MouseMove, 0, (15 * -1), 0, R
Capslock & Down::MouseMove, 0, 15, 0, R
Capslock & Left::MouseMove, (15 * -1), 0, 0, R
Capslock & Right::MouseMove, 15, 0, 0, R
Capslock & .::click left
Capslock & /::click right
    
Capslock & Tab::
SetCapsLockState, % (GetKeyState("CapsLock", "T") ? "Off" : "On")
return

Capslock::
return

f12::
send ^{Backspace}
return

!f12::
send {f12}
return

f16::
send ^{w}
return



; ^a::
; send {Alt down}{Tab}
; sleep 200
; send {Tab}
; sleep 200
; send {Alt up} 
; sleep 300
; send ^l
; sleep 200V
; send {right}
; sleep 200
; send ^{Backspace}
; return

; ; SCRATCHPAD
; !+c::
; send /*  */{Left}{Left}{Left}
; return



; !c::
; send <{!}--{Space}{Space}{Left}
; return 


!s::
send {=}sum(
return


