#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SavePreset:     ; Save configs in settings.ini file
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/SavingPreset500ms.ahk
    ; <Tab 1
    IniWrite, %LoginHotkey1%, settings.ini, settings, LoginHotkey1
    IniWrite, %LoginHotkey2%, settings.ini, settings, LoginHotkey2
    IniWrite, %AutoReconnect%, settings.ini, settings, AutoReconnect
    IniWrite, %AccountNameReconnect%, settings.ini, settings, AccountNameReconnect
    IniWrite, %PasswordReconnect%, settings.ini, settings, PasswordReconnect
    IniWrite, %AccountNameReconnect2%, settings.ini, settings, AccountNameReconnect2
    IniWrite, %PasswordReconnect2%, settings.ini, settings, PasswordReconnect2
    IniWrite, %TimesToPressDown%, settings.ini, settings, TimesToPressDown
    IniWrite, %TimesToPressDown2%, settings.ini, settings, TimesToPressDown2
    IniWrite, %KeepClientActive%, settings.ini, settings, KeepClientActive
    IniWrite, %PressFXEveryXms1%, settings.ini, settings, PressFXEveryXms1
    IniWrite, %PressFXEveryXms2%, settings.ini, settings, PressFXEveryXms2
    IniWrite, %PressFXEveryXms3%, settings.ini, settings, PressFXEveryXms3
    IniWrite, %PressFXEveryXms1Delay%, settings.ini, settings, PressFXEveryXms1Delay
    IniWrite, %PressFXEveryXms2Delay%, settings.ini, settings, PressFXEveryXms2Delay
    IniWrite, %PressFXEveryXms3Delay%, settings.ini, settings, PressFXEveryXms3Delay
    IniWrite, %PressFXEveryXms1Hotkey%, settings.ini, settings, PressFXEveryXms1Hotkey
    IniWrite, %PressFXEveryXms2Hotkey%, settings.ini, settings, PressFXEveryXms2Hotkey
    IniWrite, %PressFXEveryXms3Hotkey%, settings.ini, settings, PressFXEveryXms3Hotkey
    IniWrite, %PressHotkeyWhenFullMana%, settings.ini, settings, PressHotkeyWhenFullMana
    IniWrite, %ShiftFullMana%, settings.ini, settings, ShiftFullMana
    IniWrite, %PressHotkeyWhenFullManaHotkey%, settings.ini, settings, PressHotkeyWhenFullManaHotkey
    IniWrite, %EatFood%, settings.ini, settings, EatFood
    IniWrite, %EatFoodHotkey%, settings.ini, settings, EatFoodHotkey
    IniWrite, %AutoFishing%, settings.ini, settings, AutoFishing
    IniWrite, %ShiftEatFood%, settings.ini, settings, ShiftEatFood
    IniWrite, %RightClickHold%, settings.ini, settings, RightClickHold
    IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
    IniWrite, %AntiIdle%, settings.ini, settings, AntiIdle
    IniWrite, %AntiIdleDelay%, settings.ini, settings, AntiIdleDelay
    IniWrite, %AntiIdleBackground%, settings.ini, settings, AntiIdleBackground
    IniWrite, %LogoffIfBattleChanges%, settings.ini, settings, LogoffIfBattleChanges
    IniWrite, %LifeHealer%, settings.ini, settings, LifeHealer
    IniWrite, %Heal80Hotkey%, settings.ini, settings, Heal80Hotkey
    IniWrite, %Heal50Hotkey%, settings.ini, settings, Heal50Hotkey
    IniWrite, %Heal25Hotkey%, settings.ini, settings, Heal25Hotkey
    IniWrite, %ManaHealer%, settings.ini, settings, ManaHealer
    IniWrite, %Mana80Hotkey%, settings.ini, settings, Mana80Hotkey
    IniWrite, %Mana50Hotkey%, settings.ini, settings, Mana50Hotkey
    IniWrite, %Mana25Hotkey%, settings.ini, settings, Mana25Hotkey
    ; Tab 1/>
    ; <Tab 2
    IniWrite, %GamingMode%, settings.ini, settings, GamingMode
    IniWrite, %ReopenClient%, settings.ini, settings, ReopenClient
    IniWrite, %Directory%, settings.ini, settings, Directory
    ; Tab 2/>
    ; <Tab 3
    IniWrite, %MoveItemToBackpack%, settings.ini, settings, MoveItemToBackpack
    IniWrite, %MoveItemToGround%, settings.ini, settings, MoveItemToGround
    IniWrite, %MoveItemToBackpackHotkey%, settings.ini, settings, MoveItemToBackpackHotkey
    IniWrite, %MoveItemToGroundHotkey%, settings.ini, settings, MoveItemToGroundHotkey
    IniWrite, %BPPosX%, settings.ini, settings, BPPosX
    IniWrite, %BPPosY%, settings.ini, settings, BPPosY
    IniWrite, %CharPosX%, settings.ini, settings, CharPosX
    IniWrite, %CharPosY%, settings.ini, settings, CharPosY
    IniWrite, %HotkeyCombo%, settings.ini, settings, HotkeyCombo
    IniWrite, %HotkeyComboHotkey1%, settings.ini, settings, HotkeyComboHotkey1
    IniWrite, %HotkeyComboHotkey2%, settings.ini, settings, HotkeyComboHotkey2
    IniWrite, %HotkeyComboHotkey3%, settings.ini, settings, HotkeyComboHotkey3
    IniWrite, %ClickOnPosX%, settings.ini, settings, ClickOnPosX
    IniWrite, %ClickOnPosY%, settings.ini, settings, ClickOnPosY
    IniWrite, %Sleep1%, settings.ini, settings, Sleep1
    IniWrite, %Sleep2%, settings.ini, settings, Sleep2
    ; Tab 3/>
    ; <Tab 4
    IniWrite, %RingRefill%, settings.ini, settings, RingRefill
    IniWrite, %RingToRefill%, settings.ini, settings, RingToRefill
    IniWrite, %RingRefillHotkey%, settings.ini, settings, RingRefillHotkey
    IniWrite, %ShiftRingRefill%, settings.ini, settings, ShiftRingRefill
    IniWrite, %AmuletRefill%, settings.ini, settings, AmuletRefill
    IniWrite, %AmuletToRefill%, settings.ini, settings, AmuletToRefill
    IniWrite, %AmuletRefillHotkey%, settings.ini, settings, AmuletRefillHotkey
    IniWrite, %SoftBootsRefill%, settings.ini, settings, SoftBootsRefill
    IniWrite, %SoftBootsRefillHotkey%, settings.ini, settings, SoftBootsRefillHotkey
    IniWrite, %ShiftSoftBootsRefill%, settings.ini, settings, ShiftSoftBootsRefill
    IniWrite, %ShiftAmuletRefill%, settings.ini, settings, ShiftAmuletRefill
    IniWrite, %RenewUtamoVita%, settings.ini, settings, RenewUtamoVita
    IniWrite, %UtamoVitaHotkey%, settings.ini, settings, UtamoVitaHotkey
    IniWrite, %ShiftUtamoVita%, settings.ini, settings, ShiftUtamoVita
    IniWrite, %DefaultSupportSpell%, settings.ini, settings, DefaultSupportSpell
    IniWrite, %RenewHasteSpell%, settings.ini, settings, RenewHasteSpell
    IniWrite, %HasteSpellHotkey%, settings.ini, settings, HasteSpellHotkey
    IniWrite, %ShiftHasteSpell%, settings.ini, settings, ShiftHasteSpell
    IniWrite, %RenewUtito%, settings.ini, settings, RenewUtito
    IniWrite, %UtitoHotkey%, settings.ini, settings, UtitoHotkey
    IniWrite, %ShiftUtito%, settings.ini, settings, ShiftUtito
    IniWrite, %RefillArrowSlotWithMouse%, settings.ini, settings, RefillArrowSlotWithMouse
    IniWrite, %ArrowSlotPosX%, settings.ini, settings, ArrowSlotPosX
    IniWrite, %ArrowSlotPosY%, settings.ini, settings, ArrowSlotPosY
    IniWrite, %AmmoPosX%, settings.ini, settings, AmmoPosX
    IniWrite, %AmmoPosX%, settings.ini, settings, AmmoPosX
    IniWrite, %RefillArrowSlotDelay%, settings.ini, settings, RefillArrowSlotDelay
    IniWrite, %RemoveParalyze%, settings.ini, settings, RemoveParalyze
    IniWrite, %RemoveParalyzeHotkey%, settings.ini, settings, RemoveParalyzeHotkey
    IniWrite, %ShiftRemoveParalyze%, settings.ini, settings, ShiftRemoveParalyze
    ; Tab 4/>
    ; <Tab 5
    ; Tab 5/>
    ; <Tab 6
    IniWrite, %CronometerApp%, settings.ini, settings, CronometerApp
    
    ; Tab 6/>
    
    Return
}