#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SavePresetTibia10:     ; Save configs in settings.ini file
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/SavingPreset500ms.ahk
    ; <Tab 1
    IniWrite, %LoginHotkey1Tibia10%, settings.ini, settings, LoginHotkey1Tibia10
    IniWrite, %LoginHotkey2Tibia10%, settings.ini, settings, LoginHotkey2Tibia10
    IniWrite, %AutoReconnectTibia10%, settings.ini, settings, AutoReconnectTibia10
    IniWrite, %AccountNameReconnectTibia10%, settings.ini, settings, AccountNameReconnectTibia10
    IniWrite, %PasswordReconnectTibia10%, settings.ini, settings, PasswordReconnectTibia10
    IniWrite, %AccountNameReconnect2Tibia10%, settings.ini, settings, AccountNameReconnect2Tibia10
    IniWrite, %PasswordReconnect2Tibia10%, settings.ini, settings, PasswordReconnect2Tibia10
    IniWrite, %TimesToPressDownTibia10%, settings.ini, settings, TimesToPressDownTibia10
    IniWrite, %TimesToPressDown2Tibia10%, settings.ini, settings, TimesToPressDown2Tibia10
    IniWrite, %KeepTibia10ClientActive%, settings.ini, settings, KeepTibia10ClientActive
    IniWrite, %PressFXEveryXms1Tibia10%, settings.ini, settings, PressFXEveryXms1Tibia10
    IniWrite, %PressFXEveryXms2Tibia10%, settings.ini, settings, PressFXEveryXms2Tibia10
    IniWrite, %PressFXEveryXms3Tibia10%, settings.ini, settings, PressFXEveryXms3Tibia10
    IniWrite, %PressFXEveryXms1DelayTibia10%, settings.ini, settings, PressFXEveryXms1DelayTibia10
    IniWrite, %PressFXEveryXms2DelayTibia10%, settings.ini, settings, PressFXEveryXms2DelayTibia10
    IniWrite, %PressFXEveryXms3DelayTibia10%, settings.ini, settings, PressFXEveryXms3DelayTibia10
    IniWrite, %PressFXEveryXms1HotkeyTibia10%, settings.ini, settings, PressFXEveryXms1HotkeyTibia10
    IniWrite, %PressFXEveryXms2HotkeyTibia10%, settings.ini, settings, PressFXEveryXms2HotkeyTibia10
    IniWrite, %PressFXEveryXms3HotkeyTibia10%, settings.ini, settings, PressFXEveryXms3HotkeyTibia10
    IniWrite, %PressHotkeyWhenFullManaTibia10%, settings.ini, settings, PressHotkeyWhenFullManaTibia10
    IniWrite, %ShiftFullManaTibia10%, settings.ini, settings, ShiftFullManaTibia10
    IniWrite, %PressHotkeyWhenFullManaHotkeyTibia10%, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia10
    IniWrite, %EatFoodTibia10%, settings.ini, settings, EatFoodTibia10
    IniWrite, %EatFoodHotkeyTibia10%, settings.ini, settings, EatFoodHotkeyTibia10
    IniWrite, %ShiftEatFoodTibia10%, settings.ini, settings, ShiftEatFoodTibia10
    IniWrite, %RightClickHold%, settings.ini, settings, RightClickHold
    IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
    IniWrite, %Heal25Tibia10%, settings.ini, settings, Heal25Tibia10
    IniWrite, %Heal25HotkeyTibia10%, settings.ini, settings, Heal25HotkeyTibia10
    IniWrite, %AntiIdleTibia10%, settings.ini, settings, AntiIdleTibia10
    IniWrite, %AntiIdleDelayTibia10%, settings.ini, settings, AntiIdleDelayTibia10
    IniWrite, %AntiIdleBackgroundTibia10%, settings.ini, settings, AntiIdleBackgroundTibia10
    IniWrite, %LogoffIfBattleChangesTibia10%, settings.ini, settings, LogoffIfBattleChangesTibia10
    ; Tab 1/>
    ; <Tab 2
    IniWrite, %GamingMode%, settings.ini, settings, GamingMode
    IniWrite, %ReopenTibia10Client%, settings.ini, settings, ReopenTibia10Client
    IniWrite, %Tibia10Directory%, settings.ini, settings, Tibia10Directory
    ; Tab 2/>
    ; <Tab 3
    IniWrite, %MoveItemToBackpackTibia10%, settings.ini, settings, MoveItemToBackpackTibia10
    IniWrite, %MoveItemToGroundTibia10%, settings.ini, settings, MoveItemToGroundTibia10
    IniWrite, %MoveItemToBackpackHotkeyTibia10%, settings.ini, settings, MoveItemToBackpackHotkeyTibia10
    IniWrite, %MoveItemToGroundHotkeyTibia10%, settings.ini, settings, MoveItemToGroundHotkeyTibia10
    IniWrite, %BPPosXTibia10%, settings.ini, settings, BPPosXTibia10
    IniWrite, %BPPosYTibia10%, settings.ini, settings, BPPosYTibia10
    IniWrite, %CharPosXTibia10%, settings.ini, settings, CharPosXTibia10
    IniWrite, %CharPosYTibia10%, settings.ini, settings, CharPosYTibia10
    IniWrite, %RemapKey1Tibia10%, settings.ini, settings, RemapKey1Tibia10
    IniWrite, %RemapKey2Tibia10%, settings.ini, settings, RemapKey2Tibia10
    IniWrite, %RemapKey3Tibia10%, settings.ini, settings, RemapKey3Tibia10
    IniWrite, %RemapKey4Tibia10%, settings.ini, settings, RemapKey4Tibia10
    IniWrite, %RemapKey1RemapTibia10%, settings.ini, settings, RemapKey1RemapTibia10
    IniWrite, %RemapKey2RemapTibia10%, settings.ini, settings, RemapKey2RemapTibia10
    IniWrite, %RemapKey3RemapTibia10%, settings.ini, settings, RemapKey3RemapTibia10
    IniWrite, %RemapKey4RemapTibia10%, settings.ini, settings, RemapKey4RemapTibia10
    IniWrite, %CharPosYTibia10%, settings.ini, settings, CharPosYTibia10
    IniWrite, %HotkeyComboTibia10%, settings.ini, settings, HotkeyComboTibia10
    IniWrite, %HotkeyComboHotkey1Tibia10%, settings.ini, settings, HotkeyComboHotkey1Tibia10
    IniWrite, %HotkeyComboHotkey2Tibia10%, settings.ini, settings, HotkeyComboHotkey2Tibia10
    IniWrite, %HotkeyComboHotkey3Tibia10%, settings.ini, settings, HotkeyComboHotkey3Tibia10
    IniWrite, %ClickOnPosXTibia10%, settings.ini, settings, ClickOnPosXTibia10
    IniWrite, %ClickOnPosYTibia10%, settings.ini, settings, ClickOnPosYTibia10
    IniWrite, %Sleep1Tibia10%, settings.ini, settings, Sleep1Tibia10
    IniWrite, %Sleep2Tibia10%, settings.ini, settings, Sleep2Tibia10
    ; Tab 3/>
    ; <Tab 4
     IniWrite, %RingRefillTibia10%, settings.ini, settings, RingRefillTibia10
    IniWrite, %RingToRefillTibia10%, settings.ini, settings, RingToRefillTibia10
    IniWrite, %RingRefillHotkeyTibia10%, settings.ini, settings, RingRefillHotkeyTibia10
    IniWrite, %ShiftRingRefillTibia10%, settings.ini, settings, ShiftRingRefillTibia10
    IniWrite, %AmuletRefillTibia10%, settings.ini, settings, AmuletRefillTibia10
    IniWrite, %AmuletToRefillTibia10%, settings.ini, settings, AmuletToRefillTibia10
    IniWrite, %AmuletRefillHotkeyTibia10%, settings.ini, settings, AmuletRefillHotkeyTibia10
    IniWrite, %SoftBootsRefillTibia10%, settings.ini, settings, SoftBootsRefillTibia10
    IniWrite, %SoftBootsRefillHotkeyTibia10%, settings.ini, settings, SoftBootsRefillHotkeyTibia10
    IniWrite, %ShiftSoftBootsRefillTibia10%, settings.ini, settings, ShiftSoftBootsRefillTibia10
    IniWrite, %ShiftAmuletRefillTibia10%, settings.ini, settings, ShiftAmuletRefillTibia10
    IniWrite, %RenewUtamoVitaTibia10%, settings.ini, settings, RenewUtamoVitaTibia10
    IniWrite, %UtamoVitaHotkeyTibia10%, settings.ini, settings, UtamoVitaHotkeyTibia10
    IniWrite, %ShiftUtamoVitaTibia10%, settings.ini, settings, ShiftUtamoVitaTibia10
    IniWrite, %DefaultSupportSpellTibia10%, settings.ini, settings, DefaultSupportSpellTibia10
    IniWrite, %RenewHasteSpellTibia10%, settings.ini, settings, RenewHasteSpellTibia10
    IniWrite, %HasteSpellHotkeyTibia10%, settings.ini, settings, HasteSpellHotkeyTibia10
    IniWrite, %ShiftHasteSpellTibia10%, settings.ini, settings, ShiftHasteSpellTibia10
    IniWrite, %RenewBuffSpellTibia10%, settings.ini, settings, RenewBuffSpellTibia10
    IniWrite, %BuffSpellHotkeyTibia10%, settings.ini, settings, BuffSpellHotkeyTibia10
    IniWrite, %ShiftBuffSpellTibia10%, settings.ini, settings, ShiftBuffSpellTibia10
    IniWrite, %RefillArrowSlotWithMouseTibia10%, settings.ini, settings, RefillArrowSlotWithMouseTibia10
    IniWrite, %ArrowSlotPosXTibia10%, settings.ini, settings, ArrowSlotPosXTibia10
    IniWrite, %ArrowSlotPosYTibia10%, settings.ini, settings, ArrowSlotPosYTibia10
    IniWrite, %AmmoPosXTibia10%, settings.ini, settings, AmmoPosXTibia10
    IniWrite, %AmmoPosYTibia10%, settings.ini, settings, AmmoPosYTibia10
    IniWrite, %RefillArrowSlotDelayTibia10%, settings.ini, settings, RefillArrowSlotDelayTibia10
    IniWrite, %RemoveParalyzeTibia10%, settings.ini, settings, RemoveParalyzeTibia10
    IniWrite, %RemoveParalyzeHotkeyTibia10%, settings.ini, settings, RemoveParalyzeHotkeyTibia10
    IniWrite, %ShiftRemoveParalyzeTibia10%, settings.ini, settings, ShiftRemoveParalyzeTibia10
    ; Tab 4/>
    ; <Tab 5

    ; Tab 5/>
    ; <Tab 6
    ; Tab 6/>
    
    Return
}