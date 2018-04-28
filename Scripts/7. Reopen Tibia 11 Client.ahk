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

IniRead, Tibia11Directory, settings.ini, settings, Tibia11Directory


Start:
Loop
	{
	Sleep, 5000
	Process, Exist, ahk_class Qt5QWindowOwnDCIcon
	if !errorlevel=0
		{
		Sleep, 5000
	    Goto, Start
		}
	else
		{
	    Run *RunAs "%Tibia11Directory%",, Max
	    Sleep, 25000
		Goto, Start
		Return
		}
	}

Return