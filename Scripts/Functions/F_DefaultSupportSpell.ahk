#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DefaultSupportSpell:
    {
        GuiControlGet, DefaultSupportSpellTibia10
        GuiControlGet, DefaultSupportSpellTibia11
        GuiControl, Disable, DefaultSupportSpellTibia10
        GuiControl, Disable, DefaultSupportSpellTibia11
            If (DefaultSupportSpellTibia10 = 1)
            {
            GuiControl, Disable, DefaultSupportSpellTibia10
            Return
            }
            If (DefaultSupportSpellTibia10 <> 1)
            {
            GuiControl, Enable, DefaultSupportSpellTibia10
            Return   
            }
            If (DefaultSupportSpellTibia11 = 1)
            {
            GuiControl, Disable, DefaultSupportSpellTibia11
            Return
            }
            If (DefaultSupportSpellTibia11 <> 1)
            {
            GuiControl, Enable, DefaultSupportSpellTibia11
            Return   
            }
        Return
    }