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

IniRead, Tibia10Directory, settings.ini, settings, Tibia10Directory

Start:
Loop
	{
	Sleep, 5000
	Process, Exist, ahk_class TibiaClient
	IF !errorlevel=0
		{
		Sleep, 5000
	    Goto, Start
		}
	else
		{
	    Run, "%Tibia10Directory%",, Max
	    Sleep, 5000
		Goto, Start
		Return
		}
	}

Return