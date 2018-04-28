#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

DefaultHasteSpell:
    {
        
        GuiControlGet, DefaultHasteSpellTibia10
        GuiControlGet, DefaultHasteSpellTibia11
        GuiControl, Disable, DefaultHasteSpellTibia10
        GuiControl, Disable, DefaultHasteSpellTibia11

            If (DefaultHasteSpellTibia10 = 1)
            {
            GuiControl, Disable, DefaultHasteSpellTibia10
            Return
            }
            If (DefaultHasteSpellTibia10 <> 1)
            {
            GuiControl, Enable, DefaultHasteSpellTibia10
            Return   
            }
            If (DefaultHasteSpellTibia11 = 1)
            {
            GuiControl, Disable, DefaultHasteSpellTibia11
            Return
            }
            If (DefaultHasteSpellTibia11 <> 1)
            {
            GuiControl, Enable, DefaultHasteSpellTibia11
            Return   
            }
        Return
    }