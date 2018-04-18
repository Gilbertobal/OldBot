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
    IniWrite, %RightClickHold%, settings.ini, settings, RightClickHold
    IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
    IniWrite, %AntiIdleTibia10%, settings.ini, settings, AntiIdleTibia10
    IniWrite, %AntiIdleDelayTibia10%, settings.ini, settings, AntiIdleDelayTibia10
    IniWrite, %AntiIdleBackgroundTibia10%, settings.ini, settings, AntiIdleBackgroundTibia10
    IniWrite, %LogoffIfBattleChangesTibia10%, settings.ini, settings, LogoffIfBattleChangesTibia10
    ; Tab 1/>
    ; <Tab 2
    IniWrite, %GamingMode%, settings.ini, settings, GamingMode
    IniWrite, %ReopenTibia10Client%, settings.ini, settings, ReopenTibia10Client
    IniWrite, %Tibia10Directory%, settings.ini, settings, Tibia10Directory
    IniWrite, %MoveItemToBackpackTibia10%, settings.ini, settings, MoveItemToBackpackTibia10
    IniWrite, %MoveItemToGroundTibia10%, settings.ini, settings, MoveItemToGroundTibia10
    IniWrite, %MoveItemToBackpackHotkeyTibia10%, settings.ini, settings, MoveItemToBackpackHotkeyTibia10
    IniWrite, %MoveItemToGroundHotkeyTibia10%, settings.ini, settings, MoveItemToGroundHotkeyTibia10
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
    ; Tab 2/>
    ; <Tab 3
    IniWrite, %EquipRoHTibia10%, settings.ini, settings, EquipRoHTibia10
    IniWrite, %EquipLifeRingTibia10%, settings.ini, settings, EquipLifeRingTibia10
    IniWrite, %EquipTimeRingTibia10%, settings.ini, settings, EquipTimeRingTibia10
    IniWrite, %EquipDwarvenRingTibia10%, settings.ini, settings, EquipDwarvenRingTibia10
    IniWrite, %EquipSSATibia10%, settings.ini, settings, EquipSSATibia10
    IniWrite, %DefaultRingTibia10%, settings.ini, settings, DefaultRingTibia10
    IniWrite, %DefaultAmuletTibia10%, settings.ini, settings, DefaultAmuletTibia10
    IniWrite, %DefaultSupportSpellTibia10%, settings.ini, settings, DefaultSupportSpellTibia10
    IniWrite, %DefaultHasteSpellTibia10%, settings.ini, settings, DefaultHasteSpellTibia10
    IniWrite, %EquipLifeRingHotkeyTibia10%, settings.ini, settings, EquipLifeRingHotkeyTibia10
    IniWrite, %ShiftEquipLifeRingTibia10%, settings.ini, settings, ShiftEquipLifeRingTibia10
    IniWrite, %EquipRoHHotkeyTibia10%, settings.ini, settings, EquipRoHHotkeyTibia10
    IniWrite, %ShiftEquipRoHTibia10%, settings.ini, settings, ShiftEquipRoHTibia10
    IniWrite, %EquipTimeRingHotkeyTibia10%, settings.ini, settings, EquipTimeRingHotkeyTibia10
    IniWrite, %ShiftEquipTimeRingTibia10%, settings.ini, settings, ShiftEquipTimeRingTibia10
    IniWrite, %EquipDwarvenRingHotkeyTibia10%, settings.ini, settings, EquipDwarvenRingHotkeyTibia10
    IniWrite, %ShiftEquipDwarvenRingTibia10%, settings.ini, settings, ShiftEquipDwarvenRingTibia10
    IniWrite, %EquipSSAHotkeyTibia10%, settings.ini, settings, EquipSSAHotkeyTibia10
    IniWrite, %ShiftEquipSSATibia10%, settings.ini, settings, ShiftEquipSSATibia10
    IniWrite, %RenewUtamoVitaTibia10%, settings.ini, settings, RenewUtamoVitaTibia10
    IniWrite, %RenewUtaniHurTibia10%, settings.ini, settings, RenewUtaniHurTibia10
    IniWrite, %RenewUtaniGranHurTibia10%, settings.ini, settings, RenewUtaniGranHurTibia10
    IniWrite, %RenewUtaniTempoHurTibia10%, settings.ini, settings, RenewUtaniTempoHurTibia10
    IniWrite, %RenewUtamoTempoSanTibia10%, settings.ini, settings, RenewUtamoTempoSanTibia10
    IniWrite, %UtaniHurHotkeyTibia10%, settings.ini, settings, UtaniHurHotkeyTibia10
    IniWrite, %ShiftUtaniHurTibia10%, settings.ini, settings, ShiftUtaniHurTibia10
    IniWrite, %UtaniGranHurHotkeyTibia10%, settings.ini, settings, UtaniGranHurHotkeyTibia10
    IniWrite, %ShiftUtaniGranHurTibia10%, settings.ini, settings, ShiftUtaniGranHurTibia10
    IniWrite, %UtaniTempoHurHotkeyTibia10%, settings.ini, settings, UtaniTempoHurHotkeyTibia10
    IniWrite, %ShiftUtaniTempoHurTibia10%, settings.ini, settings, ShiftUtaniTempoHurTibia10
    IniWrite, %UtamoTempoSanHotkeyTibia10%, settings.ini, settings, UtamoTempoSanHotkeyTibia10
    IniWrite, %ShiftUtamoTempoSanTibia10%, settings.ini, settings, ShiftUtamoTempoSanTibia10
    IniWrite, %UtamoVitaHotkeyTibia10%, settings.ini, settings, UtamoVitaHotkeyTibia10
    IniWrite, %ShiftUtamoVitaTibia10%, settings.ini, settings, ShiftUtamoVitaTibia10
    ; Tab 3/>
    ; <Tab 4

    ; Tab 4/>
    ; <Tab 5
    IniWrite, %TransparentOldBotTibia10%, settings.ini, settings, TransparentOldBotTibia10
    ; Tab 5/>
    
    Return
}