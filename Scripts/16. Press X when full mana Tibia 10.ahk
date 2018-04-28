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

IniRead, PressHotkeyWhenFullManaTibia10, settings.ini, settings, PressHotkeyWhenFullManaTibia10
IniRead, PressHotkeyWhenFullManaHotkeyTibia10, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia10

Loop,
{
	Sleep, 2000
WinWaitActive, ahk_class TibiaClient
CoordMode Pixel
IfNotExist, Images\FullManaBarTibia10.png
   MsgBox, FullManaBarTibia10.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\FullManaBarTibia10.png 
	 if ErrorLevel = 0
		{
		WinWaitActive, ahk_class TibiaClient
		#IfWinActive, ahk_class TibiaClient
		Send, {%PressHotkeyWhenFullManaHotkeyTibia10%}
		Random, R, 550, 750
		Sleep, R
		}
    
}
	Return