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
Process, Priority, %PID%, Low

IniRead, RingRefillHotkeyTibia10, settings.ini, settings, RingRefillHotkeyTibia10
IniRead, ShiftRingRefillTibia10, settings.ini, settings, ShiftRingRefillTibia10
If (ShiftRingRefillTibia10 = "Shift +")
    {
    ShiftRingRefillTibia10 = +
    }   
If (ShiftRingRefillTibia10 = "Ctrl +")
    {
    ShiftRingRefillTibia10 = "^"
    }       
If (ShiftRingRefillTibia10 = "None")
    {
    ShiftRingRefillTibia10 = ""
    } 			

Loop,
{
CoordMode Pixel
WinWaitActive, ahk_class TibiaClient
Sleep, 1000
IfNotExist, Images\LifeRingInSlot_Tibia10.png
   MsgBox, LifeRingInSlot_Tibia10.png does not exists.
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\LifeRingInSlot_Tibia10.png
Sleep, 1000
	 if ErrorLevel = 1
		{
		WinWaitActive, ahk_class TibiaClient
        #IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, %ShiftRingRefillTibia10%{%RingRefillHotkeyTibia10%}
		Random, R, 250, 350
		Sleep, R
		}		    
}
	Return