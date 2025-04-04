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


^!+`::
msgbox % GroupCounter
return

#IfWinActive, ahk_exe Explorer.EXE
!v::
clipboard := ""
sleep 100   
send ^+{c}
if (clipboard = "") {
    send ^{l}
    send ^{c}
}
sleep 200
openInVsCode(clipboard)
return
#IfWinActive

openInVsCode(path) {
    run "C:\Program Files\Microsoft VS Code\Code.exe" -n %path%
    return
}