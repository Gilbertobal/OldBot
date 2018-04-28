#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input

IniRead, UtaniHurHotkeyTibia11, settings.ini, settings, UtaniHurHotkeyTibia11
IniRead, ShiftUtaniHurTibia11, settings.ini, settings, ShiftUtaniHurTibia11
If (ShiftUtaniHurTibia11 = "Shift +")
    {
    ShiftUtaniHurTibia11 = +
    }   
If (ShiftUtaniHurTibia11 = "Ctrl +")
    {
    ShiftUtaniHurTibia11 = "^"
    }       
If (ShiftUtaniHurTibia11 = "None")
    {
    ShiftUtaniHurTibia11 = ""
    }    


Loop,
    {
        Sleep, 200
CoordMode Pixel
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
IfNotExist, Images\HasteIcon.png
   MsgBox, HasteIcon.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\HasteIcon.png
     if ErrorLevel = 1
        {
        WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
        Send, %ShiftUtaniHurTibia11%{%UtaniHurHotkeyTibia11%}
        Random, R, 250, 350
        Sleep, R
        }  
    }     
	Return