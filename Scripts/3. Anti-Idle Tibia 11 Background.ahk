#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
Process, Priority, %PID%, AboveNormal

IniRead, AntiIdleDelayTibia11, settings.ini, settings, AntiIdleDelayTibia11

Loop,
    {
	Sleep, 1000
    ControlSend,, {CTRLDOWN}{UP}{CTRLUP}, ahk_class Qt5QWindowOwnDCIcon 
    Random, R, 150, 250
    Sleep, R
    ControlSend,, {CTRLDOWN}{DOWN}{CTRLUP}, ahk_class Qt5QWindowOwnDCIcon 
    Sleep, %AntiIdleDelayTibia11%
    Random, R, 250, 350
	Sleep, R
    }
	Return