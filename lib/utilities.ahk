#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



^!k::
send kmcgrory1105@gmail.com
return

!Space::
send #^r
return

Capslock & a::
send {end}{enter}
return

Capslock & s::
send {down}{End}
return

Capslock & w::
Send {Up}{End}
return

Capslock & e::
send {Up}
return

Capslock & d::
send {Down}
return

Capslock & q::
send {Enter}
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

Home::
send +{Home}
return 

+Home::
send {Home}
return

PgUp::
send ^{Left}
return 

^PgUp::
send ^{Left}^{Left}^{Left}
return

+PgUp::
send +^{Left}
return

PgDn::
send ^{Right}
return

^PgDn::
send ^{Right}^{Right}^{Right}
return

+PgDn::
send ^+{Right}
return

;Ctrl Del
Insert::
send ^{Backspace}
return

^Insert::
send ^{Backspace}^{Backspace}^{Backspace}
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
^!`::
run C:\Program Files\Microsoft VS Code\Code.exe "C:\Users\kiern\OneDrive\Ks Cloud\admin\ahk\core_cloud.ahk"
return

^!1::
run C:\Users\kiern\OneDrive\Ks Cloud\admin\ahk
return

Capslock & `::
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
reload
MsgBox, done
return

; Developer Mode
$^+c::
send ^+i
sleep 700
send ^+c
return