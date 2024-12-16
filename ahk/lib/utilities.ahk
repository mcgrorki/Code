#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



; _______________________________
; Basic Nav
Capslock & q::
send {Enter}
return

Capslock & a::
send {end}{enter}
return

Capslock & o::
send {Home}{Enter}
sleep 15
send {Up}             
return

Capslock & e::
send ^{Left}
return

Capslock & r::
send ^{right}
return

Capslock & w::
Send {Up}
return

Capslock & s::
send {down}
return


Capslock & 1::
send {Home}
return

Capslock & 2::
send {End}
return

Capslock & 3::
send +{Home}
return

Capslock & 4::
send +{End}
return

Capslock & d::
send {End}+{Home}
return

Capslock & LWin::
send {Left}
return

Capslock & LAlt::
send {Right}
return

PgUp::
send ^{Left}
return 

PgDn::
send ^{Right}
return

;_______________________________
; Delete Functionality

Capslock & f::
send ^{BackSpace}
return

Capslock & g::
send {End}+{Home}{BackSpace}
return

Capslock & t::
send {Delete}
return

Capslock & y::
send ^{Delete}
return

Capslock & Space::
send {BackSpace}
return

; Basic Functionality
Capslock & c::
send ^c
return

Capslock & v::
send ^v
Return

Capslock & x::
send ^x
return


;_______________________________
; misc

!s::
send {=}sum(
return

CapsLock & l::
send _______________________________
return


^!k::
send kmcgrory1105@gmail.com
return


Capslock & `;::
Send {End};
return

f5::
Hotkey f2,, Off
send {f2}
Hotkey f2,, On
return

!^w::
send !{f4}
return

; Play Button
+^w::Media_Play_Pause

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






; Edit close.ahk
^!1::
run C:\Program Files\Microsoft VS Code\Code.exe "./ahk.code-workspace"
return

^!`::
run C:\Users\kiern\OneDrive\K_Cloud\Code\ahk
return

Capslock & `::O
Hotkey ``,, Off
send ``
Hotkey ``,, On
return

; Window Spy
^!2::
run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoHotkey\Window Spy.lnk
return 

#!`::Suspend

Capslock & f1::
SetCapsLockState, off
reload
MsgBox, done
return

; Developer Mode
$^+c::
send ^+i
sleep 700
send ^+c
return



; Home::
; send +{Home}
; return 

; +Home::
; send {Home}
; return

; ^PgUp::
; send ^{Left}^{Left}^{Left}
; return

; +PgUp::
; send +^{Left}
; return


; ^PgDn::
; send ^{Right}^{Right}^{Right}
; return

; +PgDn::
; send ^+{Right}
; return

; ;Ctrl Del
; Insert::
; send ^{Backspace}
; return

; ^Insert::
; send ^{Backspace}^{Backspace}^{Backspace}
; return