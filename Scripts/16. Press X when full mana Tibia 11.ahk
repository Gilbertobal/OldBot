#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, Low

IniRead, PressHotkeyWhenFullManaTibia11, settings.ini, settings, PressHotkeyWhenFullManaTibia11
IniRead, PressHotkeyWhenFullManaHotkeyTibia11, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia11

Loop,
{
	Sleep, 2000
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
CoordMode Pixel
IfNotExist, Images\FullManaBarTibia11.png
   MsgBox, FullManaBarTibia11.png doesn't exist
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\FullManaBarTibia11.png 
	 if ErrorLevel = 0
		{
		WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
		#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, {%PressHotkeyWhenFullManaHotkeyTibia11%}
		Random, R, 550, 750
		Sleep, R
		}
    
}
	Return