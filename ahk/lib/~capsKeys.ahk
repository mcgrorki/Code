
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, Off

Capslock & Tab::
SetCapsLockState, % (GetKeyState("CapsLock", "T") ? "Off" : "On")
return

~Capslock::
SetCapsLockState, OFF
return

; _______________________________
; Basic Nav
Capslock & q::
send {Enter}
return

Capslock & a::
send {end}{enter}
return

Capslock & o::
send {Home}
sleep 25
send {Enter}
sleep 25
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

;_______________________________
; Delete Functionality

Capslock & f::
send ^{BackSpace}
return

Capslock & g::
send {End}
sleep 50
send +{Home}
sleep 50
send {BackSpace}
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

Capslock & `;::
Send {End};
return