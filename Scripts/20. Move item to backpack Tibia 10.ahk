#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, AboveNormal
CoordMode, Mouse, Screen


IniRead, MoveItemToBackpackHotkeyTibia10, settings.ini, settings, MoveItemToBackpackHotkeyTibia10

If (MoveItemToBackpackHotkeyTibia10 = "Forward Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia10 = XButton1
    }
If (MoveItemToBackpackHotkeyTibia10 = "Back Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia10 = XButton2
    }
If (MoveItemToBackpackHotkeyTibia10 = "Scroll Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia10 = MButton
    }
Hotkey,%MoveItemToBackpackHotkeyTibia10%,Hotkey1

Return

Hotkey1:
    {
    IniRead, BPPosXTibia10, settings.ini, settings, BPPosXTibia10
    IniRead, BPPosYTibia10, settings.ini, settings, BPPosYTibia10
    #IfWinActive, ahk_class TibiaClient
    MouseGetPos, X, Y
    MouseClickDrag, Left, %X%, %Y%, %BPPosXTibia10%, %BPPosYTibia10%
    MouseMove, %X%, %Y%
    Return
    }
