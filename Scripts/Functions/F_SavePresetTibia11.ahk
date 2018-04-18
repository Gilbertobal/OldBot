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
    ; Tab 1/>
    ; <Tab 2
    IniWrite, %ReopenTibia11Client%, settings.ini, settings, ReopenTibia11Client
    IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
    IniWrite, %MoveItemToBackpackTibia11%, settings.ini, settings, MoveItemToBackpackTibia11
    IniWrite, %MoveItemToGroundTibia11%, settings.ini, settings, MoveItemToGroundTibia11
    IniWrite, %MoveItemToBackpackHotkeyTibia11%, settings.ini, settings, MoveItemToBackpackHotkeyTibia11
    IniWrite, %MoveItemToGroundHotkeyTibia11%, settings.ini, settings, MoveItemToGroundHotkeyTibia11
    IniWrite, %CharPosXTibia11%, settings.ini, settings, CharPosXTibia11
    IniWrite, %CharPosYTibia11%, settings.ini, settings, CharPosYTibia11
    ; Tab 2/>
    ; <Tab 3
    IniWrite, %EquipRoHTibia11%, settings.ini, settings, EquipRoHTibia11
    IniWrite, %EquipLifeRingTibia11%, settings.ini, settings, EquipLifeRingTibia11
    IniWrite, %EquipTimeRingTibia11%, settings.ini, settings, EquipTimeRingTibia11
    IniWrite, %EquipDwarvenRingTibia11%, settings.ini, settings, EquipDwarvenRingTibia11
    IniWrite, %EquipSSATibia11%, settings.ini, settings, EquipSSATibia11
    IniWrite, %DefaultRingTibia11%, settings.ini, settings, DefaultRingTibia11
    IniWrite, %DefaultAmuletTibia11%, settings.ini, settings, DefaultAmuletTibia11
    IniWrite, %DefaultSupportSpellTibia11%, settings.ini, settings, DefaultSupportSpellTibia11
    IniWrite, %DefaultHasteSpellTibia11%, settings.ini, settings, DefaultHasteSpellTibia11
    IniWrite, %EquipLifeRingHotkeyTibia11%, settings.ini, settings, EquipLifeRingHotkeyTibia11
    IniWrite, %ShiftEquipLifeRingTibia11%, settings.ini, settings, ShiftEquipLifeRingTibia11
    IniWrite, %EquipRoHHotkeyTibia11%, settings.ini, settings, EquipRoHHotkeyTibia11
    IniWrite, %ShiftEquipRoHTibia11%, settings.ini, settings, ShiftEquipRoHTibia11
    IniWrite, %EquipTimeRingHotkeyTibia11%, settings.ini, settings, EquipTimeRingHotkeyTibia11
    IniWrite, %ShiftEquipTimeRingTibia11%, settings.ini, settings, ShiftEquipTimeRingTibia11
    IniWrite, %EquipDwarvenRingHotkeyTibia11%, settings.ini, settings, EquipDwarvenRingHotkeyTibia11
    IniWrite, %ShiftEquipDwarvenRingTibia11%, settings.ini, settings, ShiftEquipDwarvenRingTibia11
    IniWrite, %EquipSSAHotkeyTibia11%, settings.ini, settings, EquipSSAHotkeyTibia11
    IniWrite, %ShiftEquipSSATibia11%, settings.ini, settings, ShiftEquipSSATibia11
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
    ; Tab 3/>
    ; <Tab 4

    ; Tab 4/>
    ; <Tab 5
    IniWrite, %TransparentOldBotTibia11%, settings.ini, settings, TransparentOldBotTibia11
    ; Tab 5/>
    
    Return
}