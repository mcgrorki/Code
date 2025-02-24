#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

f1::
screen := getMonitorWindows()
WinMove, A, , screen.left, screen.top, screen.width/2, screen.height
WinGetPos, X, Y, W,, A
if (W > screen.width/2+30) {
    send #{Down}
    sleep 50
    WinMove, A, , screen.left, screen.top, screen.width/2, screen.height
}
return

f2::
screen := getMonitorWindows()
WinMove, A, , screen.left+screen.width/2, screen.top, screen.width/2, screen.height
WinGetPos, X, Y, W,, A
if (W > screen.width/2+30) {
    send #{Down}
    sleep 50
    WinMove, A, , screen.left+screen.width/2, screen.top, screen.width/2, screen.height
}
return

f3::
screen := getMonitorWindows()
WinMove, A, , screen.left, screen.top, screen.width, screen.height
return

f4::
send #+{Left}   
return


^`:: 
screen:= getMonitorWindows()
WinGetPos, X, Y, W,, A
; msgbox % X " " Y " " W " `n" screen.left " " screen.top " " floor(screen.width/3)

if (X = screen.left && Y = screen.top && Round(W,-1) = Round(screen.width/3,-1)) {
    ; Second Third
    WinMove, A, , screen.left+ floor(screen.width/3), screen.top, floor(screen.width/3), screen.height
}
else if (Round(X,-1) = Round(screen.left+screen.width/3,-1) && Y = screen.top) {
    ; Third Third
    WinMove, A, , screen.left+ 2*floor(screen.width/3), screen.top, floor(screen.width/3), screen.height

}
else {
    ; First Third
    WinMove, A, , screen.left, screen.top, floor(screen.width/3), screen.height
}
WinGetPos, X1, Y1, W1,, A
if (X==X1 && Y==Y1 && W==W1) {
    WinMove, A, , screen.left+ floor(screen.width/3), screen.top, floor(screen.width/3), screen.height
}
return


#`::
screen:= getMonitorWindows()
WinGetPos, X, Y, W,, A

if (X = screen.left && Y = screen.top && W = 2*floor(screen.width/3))
    WinMove, A, , screen.left+ floor(screen.width/3), screen.top, 2*floor(screen.width/3), screen.height
else {
    WinMove, A, , screen.left, screen.top, 2*floor(screen.width/3), screen.height
}
return

^+`::
screen:= getMonitorWindows()
WinGetPos, X, Y, W, H, A
; msgbox % Y " " H " `n" screen.top " " screen.height

if (H == screen.height/2 && Y == screen.top) {
    WinMove, A, , , screen.top + screen.height/2, , screen.height/2
}
else {
    WinMove, A, , , screen.top, , screen.height/2
}
return


#Persistent
CurrentProcess := ""
GroupCounter := 0
!`::
WinGet, NewProcess, ProcessName, A
if (NewProcess != CurrentProcess) {
    CurrentProcess := NewProcess
    GroupCounter++
    UniqueGroupName := "CurrentAppGroup" . GroupCounter ; Create a unique group name
    GroupAdd, %UniqueGroupName%, ahk_exe %CurrentProcess% ; Add windows of the new process
}
GroupActivate, %UniqueGroupName%, R
return



getMonitorWindows() {
    dockHeight = 30
    
    WinGetPos, X, Y, W, H, A
    XMid := X+W/2
    YMid := Y+H/2
    
    SysGet, MonitorCount, MonitorCount

    loop, %MonitorCount% {
        SysGet, M, Monitor, %A_Index%
        MonHeight := MBottom - MTop
        if (XMid >= MLeft && XMid <= MRight && YMid <= MBottom && YMid >= MTop) {
            return {left:MLeft, right:MRight, top:MTop, width:MRight-MLeft, height:MBottom-MTop-dockHeight}
        }
    }

    send #{Left}
    sleep 200
    return getMonitorWindows()
}

























; DEPRECATED, TO BE DELETED EVENTUALLY


; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; ; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; ; Snap Functionality ____________________________________________________________________


; global dockHeight = 46


; f1::
; ; screen:= getActiveMonitor()
; send #{left}

; ; WinMove, A, , screen.left, 0, screen.width/2, screen.height
; return

; f2::    
; ; screen:= getActiveMonitor()
; ; WinMove, A, , screen.left+screen.width/2, 0, screen.width/2, screen.height
; send #{right}
; return

; f3::
; ; screen:= getActiveMonitor()
; ; WinMove, A, , screen.left, 0, screen.width-2, screen.height
; send #{up}
; return


; f4::#+left

; ; THIRDS ____________________________________________________________________
; ^`:: 
; screen:= getActiveMonitor()
; WinGetPos, X, Y, W,, A
; ; MsgBox %X% %screenThird% %MonitorLeft%
; if (X = screen.left && Y = 0 && W = screen.third)
;     WinMove, A, , screen.left+screen.third, 0, screen.third, screen.height
; else if (X = screen.left+screen.third && Y = 0)
;     WinMove, A, , screen.left+screen.third*2, 0, screen.third, screen.height
; else {
;     WinMove, A, , screen.left, 0, screen.third, screen.height
; }
; return


; ; TWO THIRDS
; #`::
; screen:= getActiveMonitor()
; WinGetPos, X, Y, W,, A
; if (X = screen.left && Y = 0 && W = screen.third*2)
; WinMove, A, , screen.left+screen.third, 0, screen.third*2, screen.height
; else {
; WinMove, A, , screen.left, 0, screen.third*2, screen.height
; }
; return

; ; HALF HEIGHT
; #+`::
; screen:= getActiveMonitor()
; WinGetPos, X, Y, W, H, A 
; if ( H = screen.height/2 and Y = 0)
;     WinMove, A, , , screen.height/2, , screen.height/2
; else 
;     WinMove, A, , , 0 , , screen.height/2
; return


; ; BRIGHTNESS ____________________________________________________________________

; #+Up:: 
; run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Primary 10 +15
; sleep 200
; return

; #+Down:: 
; run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Primary 10 -15
; sleep 200
; return

; #^Up:: 
; run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Secondary 10 +15
; sleep 200
; return

; #^Down:: 
; run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Secondary 10 -15
; sleep 200
; return

; ; FUNCTIONS ____________________________________________________________________

; getActiveMonitor() {
;     WinGet, hWnd, ID, A

;     WinGetPos, WinX, WinY, WinWidth, WinHeight, % "ahk_id " hWnd
;     SysGet, MonitorCount, MonitorCount

;     Loop, %MonitorCount% {
;         SysGet, Monitor, Monitor, %A_Index%
        
;         if (WinX >= MonitorLeft-15 && WinX <= MonitorRight-15) {
;             width:= MonitorRight-MonitorLeft
;             third:= floor(width/3)
;             if (winWidth - width > 10) {
;                 if (!WinActive("ahk_exe explorer.exe")) {
;                     send #{Up}#{Down}
;                 }
;             }
;             return {left:MonitorLeft, right:MonitorRight, width:width, third:third, height:MonitorBottom-dockHeight, monNum:A_Index, monCount:MonitorCount}
;         }
;     }
;     return
; }

; f9::
; SysGet, WorkArea, MonitorWorkArea
; MsgBox, The size of the dock (taskbar) is: %A_ScreenWidth%x%A_ScreenHeight% - WorkArea: %WorkAreaRight%x%WorkAreaBottom%
; return 