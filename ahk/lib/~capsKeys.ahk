
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, Off

f19::
SendInput {f19 up}
return

f19 & Tab::
SetCapsLockState, % (GetKeyState("CapsLock", "T") ? "Off" : "On")
return

Capslock::
SetCapsLockState, OFF
return

; _______________________________
; Basic Nav
f19 & q::
SendInput {Enter}
return

f19 & a::
SendInput {Esc}
return

f19 & z::
SendInput {end}{enter}
return

f19 & o::
SendInput {Home}
sleep 25
SendInput {Enter}
sleep 25
SendInput {Up}             
return

f19 & e::
SendInput ^{Left}
return

f19 & r::
SendInput ^{right}
return

f19 & w::
SendInput {Up}
return

f19 & s::
SendInput {down}
return


f19 & 1::
SendInput {Home}
return

f19 & 2::
SendInput {End}
return

f19 & LWin::
SendInput {Left}
return

f19 & LAlt::
SendInput {Right}
return

f19 & 3::
SendInput +{Home}
return

f19 & 4::
SendInput +{End}
return

f19 & d::
SendInput {End}+{Home}
return

;_______________________________
; Delete Functionality

f19 & f::
SendInput ^{BackSpace}
return

f19 & g::
SendInput {End}
sleep 50
SendInput +{Home}
sleep 50
SendInput {BackSpace}
return

f19 & t::
SendInput {Delete}
return

f19 & y::
SendInput ^{Delete}
return

f19 & Space::
SendInput {BackSpace}
return

; Basic Functionality
f19 & c::
SendInput ^c
return

f19 & v::
SendInput ^v
Return

f19 & x::
SendInput ^x
return

f19 & `;::
SendInput {End};
return


; ___________________
; UTILITY
f19 & f1::
sleep 1000
reload
SetCapsLockState, off
MsgBox, done
return