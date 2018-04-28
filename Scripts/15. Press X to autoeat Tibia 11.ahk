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

IniRead, EatFoodHotkeyTibia11, settings.ini, settings, EatFoodHotkeyTibia11

Loop,
{
	Sleep, 5000
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
CoordMode Pixel
	IfNotExist, Images\FoodZeroMin.png
	MsgBox, FoodZeroMin.png doesn't exist
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\FoodZeroMin.png
		if ErrorLevel = 0
		{
		WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
		#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, {%EatFoodHotkeyTibia11%}
		Random, R, 150, 250
		Sleep, R
		#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, {%EatFoodHotkeyTibia11%}
		Random, R, 150, 250
		Sleep, R
		#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
		Send, {%EatFoodHotkeyTibia11%}
		Random, R, 150, 250
		Sleep, R
		}
    
}
	Return