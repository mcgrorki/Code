#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



; FOLDERS
!d:: 
run shell:downloads
send {Alt Up}
return

!+d::
run C:\Users\kiern\KsWorld\KsDocuments
send {Alt Up}
return

!^d::
run C:\Users\kiern\OneDrive\K's Cloud
send {Alt Up}
return

!^+s::
run C:\Users\kiern\KsWorld\KsDocuments\admin\Screenshots
send {Alt Up}
return

^!k::
SendInput kmcgrory1105@gmail.com
send {Alt Up}
return

!s::
SendInput {=}sum(
send {Alt Up}
return

; More SCROLLL
!WheelUp::
SendInput {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
sleep 10
SendInput {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
send {Alt Up}
return

!WheelDown::
SendInput {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
sleep 10
SendInput {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
send {Alt Up}
return


^!+`::
msgbox % GroupCounter
send {Alt Up}
return

#IfWinActive, ahk_exe Explorer.EXE
!v::
clipboard := ""
sleep 100   
SendInput ^+{c}
sleep 100
if (clipboard = "") {
    SendInput ^{l}
    sleep 100
    SendInput ^{c}
}
sleep 200
openInVsCode(clipboard)
send {Alt Up}
return
#IfWinActive

openInVsCode(path) {
    run "C:\Program Files\Microsoft VS Code\Code.exe" -n %path%
    send {Alt Up}
    return
}