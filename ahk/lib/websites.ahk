#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Kiernan Email
!k::
openWebpage("https://mail.google.com/mail/u/0")
return

;Kiernan Drive
!+k::
openWebpage("https://drive.google.com/drive/u/0/my-drive")
return

!m::
sleep 100
send ^{a}
send ^{c}
sleep 100
if strlen(Clipboard) > 50
    openWebPage("https://www.google.com/maps")
else
    URL = https://www.google.com/maps/search/?api=1&query=%clipboard%
    openWebPage(URL)
return 

; K's Messenger
#+Tab::
openWebpage("https://www.messenger.com/t/100001197843252")
return

; Calendar
!c::
openWebpage("https://calendar.google.com/")
return

; Messenger
!+tab::
openWebpage("https://messenger.com")
return

; Youtube speeds
~.::
SetTitleMatchMode, 2
if WinActive("YouTube")
send >>>>
return

~,::
SetTitleMatchMode, 2
if WinActive("YouTube")
send <<<<
return

; Run Youtube
!y::
sleep 100
send ^{a}
sleep 100
send ^{c}
sleep 100
URL = https://www.youtube.com/results?search_query=%clipboard%
openWebPage(URL)
return

!+g::
; openWebPage("https://chat.openai.com")
run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://chat.openai.com"
return

openWebPage(x) {
    if (WinActive("Start Page - Vivaldi")) {
    send ^l
    send %x%{enter}
    sleep 150
    send {alt up}
    return
    }
    run %x%
    return
}
    
    
    