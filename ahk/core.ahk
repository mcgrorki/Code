#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.rel
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
CoordMode, Mouse, Screen
#SingleInstance force

#MenuMaskKey vkE8
#Include %A_ScriptDir%\lib\~capsKeys.ahk
#Include %A_ScriptDir%\lib\~altKeys.ahk
#Include %A_ScriptDir%\lib\~winKeys.ahk
#Include %A_ScriptDir%\lib\~utilities.ahk
#Include %A_ScriptDir%\lib\monitors.ahk
#Include %A_ScriptDir%\lib\websites.ahk
#Include %A_ScriptDir%\lib\emojies.ahk
#Include %A_ScriptDir%\lib\mousefunction.ahk
#Include %A_ScriptDir%\lib\scratchpad.ahk


; Edit core.ahk
^!1::
run C:\Program Files\Microsoft VS Code\Code.exe "./ahk.code-workspace" "%A_ScriptDir%\core.ahk"
return

^!`::
run %A_ScriptDir%
return

; Window Spy
^!2::
run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoHotkey\Window Spy.lnk
return

^#!`::Suspend

Capslock & f1::
sleep 1000
reload
SetCapsLockState, off
MsgBox, done
return

CapsLock & f2::
sleep 1000
origin := "C:\Users\kiern\OneDrive\K_Cloud\powerUser\Powershell\Microsoft.PowerShell_profile.ps1"
destination := "C:\Users\kiern\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
FileCopy %origin%, %destination%, 1
msgbox done
return

