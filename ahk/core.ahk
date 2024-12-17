#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.rel
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
CoordMode, Mouse, Screen
#SingleInstance force

#MenuMaskKey vkE8
#Include %A_ScriptDir%\lib\monitors.ahk
#Include %A_ScriptDir%\lib\misc.ahk
#Include %A_ScriptDir%\lib\websites.ahk
#Include %A_ScriptDir%\lib\emojies.ahk
#Include %A_ScriptDir%\lib\capsKeys.ahk
#Include %A_ScriptDir%\lib\winKeys.ahk
#Include %A_ScriptDir%\lib\altKeys.ahk

; MouseMove
Capslock & Home:: MouseMove A_ScreenWidth/2, A_ScreenHeight/2
Capslock & Up::MouseMove, 0, (15 * -1), 0, R
Capslock & Down::MouseMove, 0, 15, 0, R
Capslock & Left::MouseMove, (15 * -1), 0, 0, R
Capslock & Right::MouseMove, 15, 0, 0, R
Capslock & .::click left
Capslock & /::click right
    



; Edit core.ahk
^!1::
run C:\Program Files\Microsoft VS Code\Code.exe "./ahk.code-workspace"
return

^!`::
run C:\Users\kiern\OneDrive\K_Cloud\Code\ahk
return


; Window Spy
^!2::
run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoHotkey\Window Spy.lnk
return
 
#!`::Suspend

Capslock & f1::
reload
SetCapsLockState, off
MsgBox, done
return





; !`::
; WinGetClass, OldClass, A
; WinGet, ActiveProcessName, ProcessName, A
; WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
; IF WinClassCount = 1
;     Return
; if ActiveProcessName = vivaldi.exe
;     send ^#{2}
; else if ActiveProcessName = Code.exe
;     send ^#{5}
; else if ActiveProcessName = msedge.exe
;     send ^#{4}
; Else
;     loop, 2 {
;     WinSet, Bottom,, A
;     WinActivate, ahk_exe %ActiveProcessName%
;     Winset, AlwaysOnTop,On, A
;     WinGetClass, NewClass, A
;     if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
;         break
;     }
; return