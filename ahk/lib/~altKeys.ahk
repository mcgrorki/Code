#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



; FOLDERS
!d:: 
run shell:downloads
return

!+d::
run C:\Users\kiern\KsWorld\KsDocuments
return

!^d::
run C:\Users\kiern\OneDrive\K's Cloud
return

!^+s::
run C:\Users\kiern\KsWorld\KsDocuments\admin\Screenshots
return

^!k::
SendInput kmcgrory1105@gmail.com
return

!s::
SendInput {=}sum(
return

!^w::
SendInput !{f4}
return

; More SCROLLL
!WheelUp::
SendInput {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
sleep 10
SendInput {WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}
return

!WheelDown::
SendInput {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
sleep 10
SendInput {WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}
return


^!+`::
msgbox % GroupCounter
return

#IfWinActive, ahk_exe Explorer.EXE
!v::
clipboard := ""
sleep 100   
SendInput ^+{c}
if (clipboard = "") {
    SendInput ^{l}
    SendInput ^{c}
}
sleep 200
openInVsCode(clipboard)
return
#IfWinActive

openInVsCode(path) {
    run "C:\Program Files\Microsoft VS Code\Code.exe" -n %path%
    return
}