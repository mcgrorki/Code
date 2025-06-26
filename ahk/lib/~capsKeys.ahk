
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, Off

f19::
SendInput {f19 up}
send {f19 Up}
return

f19 & Tab::
SetCapsLockState, % (GetKeyState("CapsLock", "T") ? "Off" : "On")
send {f19 Up}
return

Capslock::
SetCapsLockState, OFF
send {f19 Up}
return

; _______________________________
; Basic Nav
f19 & q::
SendInput {Enter}
send {f19 Up}
return

f19 & a::
SendInput {Esc}
send {f19 Up}
return

f19 & z::
SendInput {end}{enter}
send {f19 Up}
return

f19 & o::
SendInput {Home}
sleep 25
SendInput {Enter}
sleep 25
SendInput {Up}             
send {f19 Up}
return

f19 & e::
SendInput ^{Left}
send {f19 Up}
return

f19 & r::
SendInput ^{right}
send {f19 Up}
return

f19 & w::
SendInput {Up}
send {f19 Up}
return

f19 & s::
SendInput {down}
send {f19 Up}
return


f19 & 1::
SendInput {Home}
send {f19 Up}
return

f19 & 2::
SendInput {End}
send {f19 Up}
return

f19 & LWin::
SendInput {Left}
send {f19 Up}
return

f19 & LAlt::
SendInput {Right}
send {f19 Up}
return

f19 & 3::
SendInput +{Home}
send {f19 Up}
return

f19 & 4::
SendInput +{End}
send {f19 Up}
return

f19 & d::
SendInput {End}+{Home}
send {f19 Up}
return

;_______________________________
; Delete Functionality

f19 & f::
SendInput ^{BackSpace}
send {f19 Up}
return

f19 & g::
SendInput {End}
sleep 50
SendInput +{Home}
sleep 50
SendInput {BackSpace}
send {f19 Up}
return

f19 & t::
SendInput {Delete}
send {f19 Up}
return

f19 & y::
SendInput ^{Delete}
send {f19 Up}
return

f19 & Space::
SendInput {BackSpace}
send {f19 Up}
return

; Basic Functionality
f19 & c::
SendInput ^c
send {f19 Up}
return

f19 & v::
SendInput ^v
send {f19 Up}
Return

f19 & x::
SendInput ^x
send {f19 Up}
return

f19 & `;::
SendInput {End};
send {f19 Up}
return

f19 & 8::
SendInput *
return



; ___________________
; UTILITY
f19 & f1::
sleep 1000
Run, "%A_AhkPath%\..\Compiler\Ahk2Exe.exe" /in "%A_ScriptDir%\core.ahk" /out "%A_ScriptDir%\core.exe"
FileCopy "C:\Users\kiern\KsWorld\1\hello.txt", "C:\Users\kiern\KsWorld\2\", 1
reload
SetCapsLockState, off
MsgBox, done
send {f19 Up}
return