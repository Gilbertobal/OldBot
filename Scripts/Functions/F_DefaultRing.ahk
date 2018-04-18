#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DefaultRing:
    {
        GuiControlGet, DefaultRingTibia10
        GuiControlGet, DefaultRingTibia11
        GuiControl, Disable, DefaultRingTibia10
        GuiControl, Disable, DefaultRingTibia11
            If (DefaultRingTibia10 = 1)
            {
            GuiControl, Disable, DefaultRingTibia10
            Return
            }
            If (DefaultRingTibia10 <> 1)
            {
            GuiControl, Enable, DefaultRingTibia10
            Return   
            }
            If (DefaultRingTibia11 = 1)
            {
            GuiControl, Disable, DefaultRingTibia11
            Return
            }
            If (DefaultRingTibia11 <> 1)
            {
            GuiControl, Enable, DefaultRingTibia11
            Return   
            }
        Return
    } ; DefaultRing
