#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; FOLDERS
!d:: 
run shell:downloads
return

!+d::
run C:\Users\kiern\K's World\K's Documents
return

!^d::
run C:\Users\kiern\OneDrive\K's Cloud
return

!^+s::
run C:\Users\kiern\K's World\K's Documents\admin\Screenshots
return


^!k::
send kmcgrory1105@gmail.com
return

!s::
send {=}sum(
return

!^w::
send !{f4}
return

; More SCROLLL
!WheelUp::
send {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
sleep 10
send {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
return

!WheelDown::
send {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
sleep 10
send {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
return


!`::
WinGetClass, OldClass, A
WinGet, ActiveProcessName, ProcessName, A
WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
IF WinClassCount = 1
    Return
if ActiveProcessName = vivaldi.exe
    send ^#{2}
else if ActiveProcessName = Code.exe
    send ^#{5}
else if ActiveProcessName = msedge.exe
    send ^#{4}
Else
    loop, 2 {
    WinSet, Bottom,, A
    WinActivate, ahk_exe %ActiveProcessName%
    Winset, AlwaysOnTop,On, A
    WinGetClass, NewClass, A
    if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
        break
    }
return