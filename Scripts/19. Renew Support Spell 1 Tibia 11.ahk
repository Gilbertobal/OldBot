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

IniRead, UtamoVitaHotkeyTibia11, settings.ini, settings, UtamoVitaHotkeyTibia11
IniRead, ShiftUtamoVitaTibia11, settings.ini, settings, ShiftUtamoVitaTibia11
If (ShiftUtamoVitaTibia11 = "Shift +")
    {
    ShiftUtamoVitaTibia11 = +
    }   
If (ShiftUtamoVitaTibia11 = "Ctrl +")
    {
    ShiftUtamoVitaTibia11 = "^"
    }       
If (ShiftUtamoVitaTibia11 = "None")
    {
    ShiftUtamoVitaTibia11 = ""
    }    


Loop,
    {
        Sleep, 200
CoordMode Pixel
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
IfNotExist, Images\ManaShieldIcon.png
   MsgBox, ManaShieldIcon.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\ManaShieldIcon.png
     if ErrorLevel = 1
        {
        WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
        Send, %ShiftUtamoVitaTibia11%{%UtamoVitaHotkeyTibia11%}
        Random, R, 250, 350
        Sleep, R
        }  
    }     
	Return