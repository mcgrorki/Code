
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, Off

f19::
Send {f19 up}
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
send {Enter}
return

f19 & a::
send {Esc}
return

f19 & z::
send {end}{enter}
return

f19 & o::
send {Home}
sleep 25
send {Enter}
sleep 25
send {Up}             
return

f19 & e::
send ^{Left}
return

f19 & r::
send ^{right}
return

f19 & w::
Send {Up}
return

f19 & s::
send {down}
return


f19 & 1::
send {Home}
return

f19 & 2::
send {End}
return

f19 & LWin::
send {Left}
return

f19 & LAlt::
send {Right}
return

f19 & 3::
send +{Home}
return

f19 & 4::
send +{End}
return

f19 & d::
send {End}+{Home}
return

;_______________________________
; Delete Functionality

f19 & f::
send ^{BackSpace}
return

f19 & g::
send {End}
sleep 50
send +{Home}
sleep 50
send {BackSpace}
return

f19 & t::
send {Delete}
return

f19 & y::
send ^{Delete}
return

f19 & Space::
send {BackSpace}
return

; Basic Functionality
f19 & c::
send ^c
return

f19 & v::
send ^v
Return

f19 & x::
send ^x
return

f19 & `;::
Send {End};
return


; ___________________
; UTILITY
f19 & f1::
sleep 1000
reload
SetCapsLockState, off
MsgBox, done
return