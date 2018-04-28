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
    IniWrite, %Heal25Tibia11%, settings.ini, settings, Heal25Tibia11
    IniWrite, %Heal25HotkeyTibia11%, settings.ini, settings, Heal25HotkeyTibia11
    IniWrite, %AntiIdleTibia11%, settings.ini, settings, AntiIdleTibia11
    IniWrite, %AntiIdleDelayTibia11%, settings.ini, settings, AntiIdleDelayTibia11
    IniWrite, %AntiIdleBackgroundTibia11%, settings.ini, settings, AntiIdleBackgroundTibia11
    IniWrite, %LogoffIfBattleChangesTibia11%, settings.ini, settings, LogoffIfBattleChangesTibia11
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
    IniWrite, %ShiftAmuletRefillTibia11%, settings.ini, settings, ShiftAmuletRefillTibia11
    IniWrite, %RenewUtamoVitaTibia11%, settings.ini, settings, RenewUtamoVitaTibia11
    IniWrite, %RenewUtaniHurTibia11%, settings.ini, settings, RenewUtaniHurTibia11
    IniWrite, %RenewUtaniGranHurTibia11%, settings.ini, settings, RenewUtaniGranHurTibia11
    IniWrite, %RenewUtaniTempoHurTibia11%, settings.ini, settings, RenewUtaniTempoHurTibia11
    IniWrite, %RenewUtamoTempoSanTibia11%, settings.ini, settings, RenewUtamoTempoSanTibia11
    IniWrite, %UtaniHurHotkeyTibia11%, settings.ini, settings, UtaniHurHotkeyTibia11
    IniWrite, %ShiftUtaniHurTibia11%, settings.ini, settings, ShiftUtaniHurTibia11
    IniWrite, %UtaniGranHurHotkeyTibia11%, settings.ini, settings, UtaniGranHurHotkeyTibia11
    IniWrite, %ShiftUtaniGranHurTibia11%, settings.ini, settings, ShiftUtaniGranHurTibia11
    IniWrite, %UtaniTempoHurHotkeyTibia11%, settings.ini, settings, UtaniTempoHurHotkeyTibia11
    IniWrite, %ShiftUtaniTempoHurTibia11%, settings.ini, settings, ShiftUtaniTempoHurTibia11
    IniWrite, %UtamoTempoSanHotkeyTibia11%, settings.ini, settings, UtamoTempoSanHotkeyTibia11
    IniWrite, %ShiftUtamoTempoSanTibia11%, settings.ini, settings, ShiftUtamoTempoSanTibia11
    IniWrite, %UtamoVitaHotkeyTibia11%, settings.ini, settings, UtamoVitaHotkeyTibia11
    IniWrite, %ShiftUtamoVitaTibia11%, settings.ini, settings, ShiftUtamoVitaTibia11
    IniWrite, %DefaultHasteSpellTibia11%, settings.ini, settings, DefaultHasteSpellTibia11
    IniWrite, %DefaultSupportSpellTibia11%, settings.ini, settings, DefaultSupportSpellTibia11
    ; Tab 4/>
    ; <Tab 5

    ; Tab 5/>
    ; <Tab 6
    IniWrite, %TransparentOldBotTibia11%, settings.ini, settings, TransparentOldBotTibia11
    ; Tab 6/>
    
    Return
}