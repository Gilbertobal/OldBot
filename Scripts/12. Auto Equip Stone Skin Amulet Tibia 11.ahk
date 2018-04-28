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

IniRead, AmuletRefillHotkeyTibia11, settings.ini, settings, AmuletRefillHotkeyTibia11
IniRead, ShiftAmuletRefillHotkeyTibia11, settings.ini, settings, ShiftAmuletRefillHotkeyTibia11
If (ShiftAmuletRefillHotkeyTibia11 = "Shift +")
    {
    ShiftAmuletRefillHotkeyTibia11 = +
    }   
If (ShiftAmuletRefillHotkeyTibia11 = "Ctrl +")
    {
    ShiftAmuletRefillHotkeyTibia11 = "^"
    }       
If (ShiftAmuletRefillHotkeyTibia11 = "None")
    {
    ShiftAmuletRefillHotkeyTibia11 = ""
    } 	

Loop,
{
CoordMode Pixel
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
Sleep, 1000
IfNotExist, Images\SSAInSlot_Tibia11.png
   MsgBox, SSAInSlot_Tibia11.png does not exists.
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432,, Images\SSAInSlot_Tibia11.png
Sleep, 1000
	 if ErrorLevel = 1
		{
		WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
		#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, %ShiftAmuletRefillHotkeyTibia11%{%AmuletRefillHotkeyTibia11%}
		Random, R, 250, 350
		Sleep, R
		}		    
}
	Return