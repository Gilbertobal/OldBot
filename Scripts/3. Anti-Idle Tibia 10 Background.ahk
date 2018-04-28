#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
Process, Priority, %PID%, AboveNormal

IniRead, AntiIdleDelayTibia10, settings.ini, settings, AntiIdleDelayTibia10

Loop,
    {
	Sleep, 1000
    ControlSend,, {CTRLDOWN}{UP}{CTRLUP}, ahk_class TibiaClient 
    Random, R, 150, 250
    Sleep, R
    ControlSend,, {CTRLDOWN}{DOWN}{CTRLUP}, ahk_class TibiaClient 
    Sleep, %AntiIdleDelayTibia10%
    Random, R, 250, 350
	Sleep, R
    }
	Return