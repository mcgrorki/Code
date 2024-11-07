#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Snap Functionality ____________________________________________________________________


global dockHeight = 45


f1::
screen:= getActiveMonitor()
WinMove, A, , screen.left, 0, screen.width/2, screen.height
return

f2::    
screen:= getActiveMonitor()
WinMove, A, , screen.left+screen.width/2, 0, screen.width/2, screen.height
return

f3::
screen:= getActiveMonitor()
WinMove, A, , screen.left, 0, screen.width-2, screen.height
return

f4::#+left

; THIRDS ____________________________________________________________________
^`:: 
screen:= getActiveMonitor()
WinGetPos, X, Y, W,, A
; MsgBox %X% %screenThird% %MonitorLeft%
if (X = screen.left && Y = 0 && W = screen.third)
    WinMove, A, , screen.left+screen.third, 0, screen.third, screen.height
else if (X = screen.left+screen.third && Y = 0)
    WinMove, A, , screen.left+screen.third*2, 0, screen.third, screen.height
else {
    WinMove, A, , screen.left, 0, screen.third, screen.height
}
return
 

; TWO THIRDS
#`::
screen:= getActiveMonitor()
WinGetPos, X, Y, W,, A
if (X = screen.left && Y = 0 && W = screen.third*2)
WinMove, A, , screen.left+screen.third, 0, screen.third*2, screen.height
else {
WinMove, A, , screen.left, 0, screen.third*2, screen.height
}
return

; HALF HEIGHT
^+`::
screen:= getActiveMonitor()
WinGetPos, X, Y, W, H, A 
if ( H = screen.height/2 and Y = 0)
    WinMove, A, , , screen.height/2, , screen.height/2
else 
    WinMove, A, , , 0 , , screen.height/2
return


; BRIGHTNESS ____________________________________________________________________

#+Up:: 
run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Primary 10 +15
sleep 200
return

#+Down:: 
run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Primary 10 -15
sleep 200
return

#^Up:: 
run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Secondary 10 +15
sleep 200
return

#^Down:: 
run "%A_ScriptDir%\lib\ControlMyMonitor.exe" /ChangeValue Secondary 10 -15
sleep 200
return

; FUNCTIONS ____________________________________________________________________

getActiveMonitor() {
    WinGet, hWnd, ID, A

    WinGetPos, WinX, WinY, WinWidth, WinHeight, % "ahk_id " hWnd
    SysGet, MonitorCount, MonitorCount

    Loop, %MonitorCount% {
        SysGet, Monitor, Monitor, %A_Index%
        
        if (WinX >= MonitorLeft-15 && WinX <= MonitorRight-15) {
            width:= MonitorRight-MonitorLeft
            third:= floor(width/3)
            if (winWidth - width > 10) {
                if (!WinActive("ahk_exe explorer.exe")) {
                    send #{Up}#{Down}
                }
            }
            return {left:MonitorLeft, right:MonitorRight, width:width, third:third, height:MonitorBottom-dockHeight, monNum:A_Index, monCount:MonitorCount}
        }
    }
    return
}


; HARD WAY 
; f4::
; screen:= getActiveMonitor()
; if (screen.monCount == screen.monNum) {
;     index:= 1
; }
; else {
;     index:=index+1
; }
; SysGet, Monitor, Monitor, %index%
; screenWidth := MonitorRight-MonitorLeft
; WinMove, A, , MonitorLeft, 0, floor(screenWidth/2), MonitorBottom
; WinMove, A, , MonitorLeft, 0, floor(screenWidth/2), MonitorBottom
; return




f9::
SysGet, WorkArea, MonitorWorkArea
MsgBox, The size of the dock (taskbar) is: %A_ScreenWidth%x%A_ScreenHeight% - WorkArea: %WorkAreaRight%x%WorkAreaBottom%
return 