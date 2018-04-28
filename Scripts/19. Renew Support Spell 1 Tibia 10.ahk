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

IniRead, UtamoVitaHotkeyTibia10, settings.ini, settings, UtamoVitaHotkeyTibia10
IniRead, ShiftUtamoVitaTibia10, settings.ini, settings, ShiftUtamoVitaTibia10
If (ShiftUtamoVitaTibia10 = "Shift +")
    {
    ShiftUtamoVitaTibia10 = +
    }   
If (ShiftUtamoVitaTibia10 = "Ctrl +")
    {
    ShiftUtamoVitaTibia10 = "^"
    }       
If (ShiftUtamoVitaTibia10 = "None")
    {
    ShiftUtamoVitaTibia10 = ""
    }    


Loop,
    {
        Sleep, 200
CoordMode Pixel
WinWaitActive, ahk_class TibiaClient
IfNotExist, Images\ManaShieldIcon.png
   MsgBox, ManaShieldIcon.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\ManaShieldIcon.png
     if ErrorLevel = 1
        {
        WinWaitActive, ahk_class TibiaClient
        Send, %ShiftUtamoVitaTibia10%{%UtamoVitaHotkeyTibia10%}
        Random, R, 250, 350
        Sleep, R
        }  
    }     
	Return