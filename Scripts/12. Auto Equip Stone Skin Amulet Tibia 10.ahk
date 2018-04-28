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

IniRead, AmuletRefillHotkeyTibia10, settings.ini, settings, AmuletRefillHotkeyTibia10
IniRead, ShiftAmuletRefillHotkeyTibia10, settings.ini, settings, ShiftAmuletRefillHotkeyTibia10
If (ShiftAmuletRefillHotkeyTibia10 = "Shift +")
    {
    ShiftAmuletRefillHotkeyTibia10 = +
    }   
If (ShiftAmuletRefillHotkeyTibia10 = "Ctrl +")
    {
    ShiftAmuletRefillHotkeyTibia10 = "^"
    }       
If (ShiftAmuletRefillHotkeyTibia10 = "None")
    {
    ShiftAmuletRefillHotkeyTibia10 = ""
    } 		

Loop,
{
CoordMode Pixel
WinWaitActive, ahk_class TibiaClient
Sleep, 1000
IfNotExist, Images\SSAInSlot_Tibia10.png
   MsgBox, SSAInSlot_Tibia10.png does not exists.
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432,, Images\SSAInSlot_Tibia10.png
Sleep, 1000
	 if ErrorLevel = 1
		{
		WinWaitActive, ahk_class TibiaClient
		#IfWinActive, ahk_class TibiaClient
		Send, %ShiftAmuletRefillHotkeyTibia10%{%AmuletRefillHotkeyTibia10%}
		Random, R, 250, 350
		Sleep, R
		}		    
}
	Return