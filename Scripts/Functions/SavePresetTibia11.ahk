#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SavePresetTibia11:     ; Save configs in settings.ini file
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/SavingPreset500ms.ahk
    ; <Tab 1
    IniWrite, %LoginHotkey1Tibia11%, settings.ini, settings, LoginHotkey1Tibia11
    IniWrite, %LoginHotkey2Tibia11%, settings.ini, settings, LoginHotkey2Tibia11
    IniWrite, %AutoReconnectTibia11%, settings.ini, settings, AutoReconnectTibia11
    IniWrite, %AccountNameReconnectTibia11%, settings.ini, settings, AccountNameReconnectTibia11
    IniWrite, %PasswordReconnectTibia11%, settings.ini, settings, PasswordReconnectTibia11
    IniWrite, %AccountNameReconnect2Tibia11%, settings.ini, settings, AccountNameReconnect2Tibia11
    IniWrite, %PasswordReconnect2Tibia11%, settings.ini, settings, PasswordReconnect2Tibia11
    IniWrite, %TimesToPressDownTibia11%, settings.ini, settings, TimesToPressDownTibia11
    IniWrite, %TimesToPressDown2Tibia11%, settings.ini, settings, TimesToPressDown2Tibia11
    IniWrite, %KeepTibia11ClientActive%, settings.ini, settings, KeepTibia11ClientActive
    IniWrite, %PressFXEveryXms1Tibia11%, settings.ini, settings, PressFXEveryXms1Tibia11
    IniWrite, %PressFXEveryXms2Tibia11%, settings.ini, settings, PressFXEveryXms2Tibia11
    IniWrite, %PressFXEveryXms3Tibia11%, settings.ini, settings, PressFXEveryXms3Tibia11
    IniWrite, %PressFXEveryXms1DelayTibia11%, settings.ini, settings, PressFXEveryXms1DelayTibia11
    IniWrite, %PressFXEveryXms2DelayTibia11%, settings.ini, settings, PressFXEveryXms2DelayTibia11
    IniWrite, %PressFXEveryXms3DelayTibia11%, settings.ini, settings, PressFXEveryXms3DelayTibia11
    IniWrite, %PressFXEveryXms1HotkeyTibia11%, settings.ini, settings, PressFXEveryXms1HotkeyTibia11
    IniWrite, %PressFXEveryXms2HotkeyTibia11%, settings.ini, settings, PressFXEveryXms2HotkeyTibia11
    IniWrite, %PressFXEveryXms3HotkeyTibia11%, settings.ini, settings, PressFXEveryXms3HotkeyTibia11
    IniWrite, %PressHotkeyWhenFullManaTibia11%, settings.ini, settings, PressHotkeyWhenFullManaTibia11
    IniWrite, %ShiftFullManaTibia11%, settings.ini, settings, ShiftFullManaTibia11
    IniWrite, %PressHotkeyWhenFullManaHotkeyTibia11%, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia11
    IniWrite, %EatFoodTibia11%, settings.ini, settings, EatFoodTibia11
    IniWrite, %EatFoodHotkeyTibia11%, settings.ini, settings, EatFoodHotkeyTibia11
    IniWrite, %ShiftEatFoodTibia11%, settings.ini, settings, ShiftEatFoodTibia11
    IniWrite, %RightClickHold%, settings.ini, settings, RightClickHold
    IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
    IniWrite, %AntiIdleTibia11%, settings.ini, settings, AntiIdleTibia11
    IniWrite, %AntiIdleDelayTibia11%, settings.ini, settings, AntiIdleDelayTibia11
    IniWrite, %AntiIdleBackgroundTibia11%, settings.ini, settings, AntiIdleBackgroundTibia11
    IniWrite, %LogoffIfBattleChangesTibia11%, settings.ini, settings, LogoffIfBattleChangesTibia11
    IniWrite, %LifeHealerTibia11%, settings.ini, settings, LifeHealerTibia11
    IniWrite, %Heal80HotkeyTibia11%, settings.ini, settings, Heal80HotkeyTibia11
    IniWrite, %Heal50HotkeyTibia11%, settings.ini, settings, Heal50HotkeyTibia11
    IniWrite, %Heal25HotkeyTibia11%, settings.ini, settings, Heal25HotkeyTibia11
    IniWrite, %ManaHealerTibia11%, settings.ini, settings, ManaHealerTibia11
    IniWrite, %Mana80HotkeyTibia11%, settings.ini, settings, Mana80HotkeyTibia11
    IniWrite, %Mana50HotkeyTibia11%, settings.ini, settings, Mana50HotkeyTibia11
    IniWrite, %Mana25HotkeyTibia11%, settings.ini, settings, Mana25HotkeyTibia11
    ; Tab 1/>
    ; <Tab 2
    IniWrite, %ReopenTibia11Client%, settings.ini, settings, ReopenTibia11Client
    IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
    ; Tab 2/>
    ; <Tab 3
    IniWrite, %MoveItemToBackpackTibia11%, settings.ini, settings, MoveItemToBackpackTibia11
    IniWrite, %MoveItemToGroundTibia11%, settings.ini, settings, MoveItemToGroundTibia11
    IniWrite, %MoveItemToBackpackHotkeyTibia11%, settings.ini, settings, MoveItemToBackpackHotkeyTibia11
    IniWrite, %MoveItemToGroundHotkeyTibia11%, settings.ini, settings, MoveItemToGroundHotkeyTibia11
    IniWrite, %BPPosXTibia11%, settings.ini, settings, BPPosXTibia11
    IniWrite, %BPPosYTibia11%, settings.ini, settings, BPPosYTibia11
    IniWrite, %CharPosXTibia11%, settings.ini, settings, CharPosXTibia11
    IniWrite, %CharPosYTibia11%, settings.ini, settings, CharPosYTibia11
    IniWrite, %HotkeyComboTibia11%, settings.ini, settings, HotkeyComboTibia11
    IniWrite, %HotkeyComboHotkey1Tibia11%, settings.ini, settings, HotkeyComboHotkey1Tibia11
    IniWrite, %HotkeyComboHotkey2Tibia11%, settings.ini, settings, HotkeyComboHotkey2Tibia11
    IniWrite, %HotkeyComboHotkey3Tibia11%, settings.ini, settings, HotkeyComboHotkey3Tibia11
    IniWrite, %ClickOnPosXTibia11%, settings.ini, settings, ClickOnPosXTibia11
    IniWrite, %ClickOnPosYTibia11%, settings.ini, settings, ClickOnPosYTibia11
    IniWrite, %Sleep1Tibia11%, settings.ini, settings, Sleep1Tibia11
    IniWrite, %Sleep2Tibia11%, settings.ini, settings, Sleep2Tibia11
    ; Tab 3/>
    ; <Tab 4
    IniWrite, %RingRefillTibia11%, settings.ini, settings, RingRefillTibia11
    IniWrite, %RingToRefillTibia11%, settings.ini, settings, RingToRefillTibia11
    IniWrite, %RingRefillHotkeyTibia11%, settings.ini, settings, RingRefillHotkeyTibia11
    IniWrite, %ShiftRingRefillTibia11%, settings.ini, settings, ShiftRingRefillTibia11
    IniWrite, %AmuletRefillTibia11%, settings.ini, settings, AmuletRefillTibia11
    IniWrite, %AmuletToRefillTibia11%, settings.ini, settings, AmuletToRefillTibia11
    IniWrite, %AmuletRefillHotkeyTibia11%, settings.ini, settings, AmuletRefillHotkeyTibia11
    IniWrite, %SoftBootsRefillTibia11%, settings.ini, settings, SoftBootsRefillTibia11
    IniWrite, %SoftBootsRefillHotkeyTibia11%, settings.ini, settings, SoftBootsRefillHotkeyTibia11
    IniWrite, %ShiftSoftBootsRefillTibia11%, settings.ini, settings, ShiftSoftBootsRefillTibia11
    IniWrite, %ShiftAmuletRefillTibia11%, settings.ini, settings, ShiftAmuletRefillTibia11
    IniWrite, %RenewUtamoVitaTibia11%, settings.ini, settings, RenewUtamoVitaTibia11
    IniWrite, %UtamoVitaHotkeyTibia11%, settings.ini, settings, UtamoVitaHotkeyTibia11
    IniWrite, %ShiftUtamoVitaTibia11%, settings.ini, settings, ShiftUtamoVitaTibia11
    IniWrite, %DefaultSupportSpellTibia11%, settings.ini, settings, DefaultSupportSpellTibia11
    IniWrite, %RenewHasteSpellTibia11%, settings.ini, settings, RenewHasteSpellTibia11
    IniWrite, %HasteSpellHotkeyTibia11%, settings.ini, settings, HasteSpellHotkeyTibia11
    IniWrite, %ShiftHasteSpellTibia11%, settings.ini, settings, ShiftHasteSpellTibia11
    IniWrite, %RenewUtitoTibia11%, settings.ini, settings, RenewUtitoTibia11
    IniWrite, %UtitoHotkeyTibia11%, settings.ini, settings, UtitoHotkeyTibia11
    IniWrite, %ShiftUtitoTibia11%, settings.ini, settings, ShiftUtitoTibia11
    IniWrite, %RefillArrowSlotWithMouseTibia11%, settings.ini, settings, RefillArrowSlotWithMouseTibia11
    IniWrite, %ArrowSlotPosXTibia11%, settings.ini, settings, ArrowSlotPosXTibia11
    IniWrite, %ArrowSlotPosYTibia11%, settings.ini, settings, ArrowSlotPosYTibia11
    IniWrite, %AmmoPosXTibia11%, settings.ini, settings, AmmoPosXTibia11
    IniWrite, %AmmoPosXTibia11%, settings.ini, settings, AmmoPosXTibia11
    IniWrite, %RefillArrowSlotDelayTibia11%, settings.ini, settings, RefillArrowSlotDelayTibia11
    IniWrite, %RemoveParalyzeTibia11%, settings.ini, settings, RemoveParalyzeTibia11
    IniWrite, %RemoveParalyzeHotkeyTibia11%, settings.ini, settings, RemoveParalyzeHotkeyTibia11
    IniWrite, %ShiftRemoveParalyzeTibia11%, settings.ini, settings, ShiftRemoveParalyzeTibia11
    ; Tab 4/>
    ; <Tab 5
    ; Tab 5/>
    ; <Tab 6
    IniWrite, %CronometerAppTibia11%, settings.ini, settings, CronometerAppTibia11
    IniWrite, %CronometerHotkey1%, settings.ini, settings, CronometerHotkey1
    IniWrite, %CronometerHotkey2%, settings.ini, settings, CronometerHotkey2  
    IniWrite, %CronometerHotkey3%, settings.ini, settings, CronometerHotkey3 
    IniWrite, %CronometerHotkey4%, settings.ini, settings, CronometerHotkey4
    IniWrite, %CronometerHotkey5%, settings.ini, settings, CronometerHotkey5 
    IniWrite, %CronometerHotkey6%, settings.ini, settings, CronometerHotkey6 
    IniWrite, %CronometerSeconds%, settings.ini, settings, CronometerSeconds 
    IniWrite, %CronometerMessage%, settings.ini, settings, CronometerMessage 
    IniWrite, %CronometerMessageDelay%, settings.ini, settings, CronometerMessageDelay
    IniWrite, %CronometerMessageColor1%, settings.ini, settings, CronometerMessageColor1 
    IniWrite, %CronometerMessageColor2%, settings.ini, settings, CronometerMessageColor2 
    ; Tab 6/>
    
    Return
}