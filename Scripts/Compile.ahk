#SingleInstance, Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
CoordMode Pixel


MButton::
MouseGetPos, x2, y2
MouseClick, Right, %x2%, %y2%

Sleep, 200
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, a.png
FoundX := FoundX +42
        FoundY := FoundY +15
     if ErrorLevel = 0
        {
        MouseClick, Left, %FoundX%, %FoundY%
        MouseMove, %x2%, %y2%
        Return
        }  
         if ErrorLevel = 1
        {
         msgbox, 1
        }  



return