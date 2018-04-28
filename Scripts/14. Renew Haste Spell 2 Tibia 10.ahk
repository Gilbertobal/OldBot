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

IniRead, UtaniGranHurHotkeyTibia11, settings.ini, settings, UtaniGranHurHotkeyTibia11
IniRead, ShiftUtaniGranHurTibia11, settings.ini, settings, ShiftUtaniGranHurTibia11
If (ShiftUtaniGranHurTibia11 = "Shift +")
    {
    ShiftUtaniGranHurTibia11 = +
    }   
If (ShiftUtaniGranHurTibia11 = "Ctrl +")
    {
    ShiftUtaniGranHurTibia11 = "^"
    }       
If (ShiftUtaniGranHurTibia11 = "None")
    {
    ShiftUtaniGranHurTibia11 = ""
    }    


Loop,
    {
        Sleep, 200
CoordMode Pixel
WinWaitActive, ahk_class TibiaClient
IfNotExist, Images\HasteIcon.png
   MsgBox, HasteIcon.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\HasteIcon.png
     if ErrorLevel = 1
        {
        WinWaitActive, ahk_class TibiaClient
        Send, %ShiftUtaniGranHurTibia11%{%UtaniGranHurHotkeyTibia11%}
        Random, R, 250, 350
        Sleep, R
        }  
    }     
	Return