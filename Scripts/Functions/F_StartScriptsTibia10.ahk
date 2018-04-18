#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


StartScriptsTibia10:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
    ; < Tab 1
    GuiControlGet, LoginHotkey1Tibia10
    If (LoginHotkey1Tibia10 = 1)
        {
        Run, %A_ScriptDir%/Scripts/18. Login 1 Hotkey Tibia 10.exe
        }
        GuiControlGet, LoginHotkey2Tibia10
    If (LoginHotkey2Tibia10 = 1)
        {
        Run, %A_ScriptDir%/Scripts/18. Login 2 Hotkey Tibia 10.exe
        }
    GuiControlGet, AutoReconnectTibia10
    If (AutoReconnectTibia10 = 1)
        {
        IniWrite, %AccountNameReconnectTibia10%, settings.ini, settings, AccountNameReconnectTibia10
        IniWrite, %PasswordReconnectTibia10%, settings.ini, settings, PasswordReconnectTibia10
        IniWrite, %AccountNameReconnect2Tibia10%, settings.ini, settings, AccountNameReconnect2Tibia10
        IniWrite, %PasswordReconnect2Tibia10%, settings.ini, settings, PasswordReconnect2Tibia10
        IniWrite, %TimesToPressDownTibia10%, settings.ini, settings, TimesToPressDownTibia10
        IniWrite, %TimesToPressDown2Tibia10%, settings.ini, settings, TimesToPressDown2Tibia10
        Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
        Run, %A_ScriptDir%/Scripts/1. Auto Reconnect Tibia 10.exe
        }
    GuiControlGet, AntiIdleTibia10
    GuiControlGet, AntiIdleBackgroundTibia10
    If (AntiIdleTibia10 = 1)
        {
        if (AntiIdleBackgroundTibia10 = 1)
            {
            IniWrite, %AntiIdleDelayTibia10%, settings.ini, settings, AntiIdleDelayTibia10
            Run, %A_ScriptDir%/Scripts/3. Anti-Idle Tibia 10 Background.exe
            }
            IniWrite, %AntiIdleDelayTibia10%, settings.ini, settings, AntiIdleDelayTibia10
            Run, %A_ScriptDir%/Scripts/3. Anti-Idle Tibia 10.exe
        }
    GuiControlGet, LogoffIfBattleChangesTibia10
    If (LogoffIfBattleChangesTibia10 = 1)
        {
        Process, Exist, 1. Auto Reconnect Tibia 10.exe
        IF !errorlevel=0
            {
            MsgBox, 1. Auto Reconnect Tibia 10 script is running, please close it to use logoff if battle window changes.
            }
        else
            {
            Run, %A_ScriptDir%/Scripts/22. Logoff if battle window changes Tibia 10.exe
            }
        }
    GuiControlGet, PressFXEveryXms1Tibia10
    If (PressFXEveryXms1Tibia10 = 1)
        {
        IniWrite, %PressFXEveryXms1DelayTibia10%, settings.ini, settings, PressFXEveryXms1DelayTibia10
        IniWrite, %PressFXEveryXms1HotkeyTibia10%, settings.ini, settings, PressFXEveryXms1HotkeyTibia10
        Run, %A_ScriptDir%/Scripts/4. Press FX every X ms 1 Tibia 10.exe   
        }    
    GuiControlGet, PressFXEveryXms2Tibia10
    If (PressFXEveryXms2Tibia10 = 1)
        {
        IniWrite, %PressFXEveryXms2DelayTibia10%, settings.ini, settings, PressFXEveryXms2DelayTibia10
        IniWrite, %PressFXEveryXms2HotkeyTibia10%, settings.ini, settings, PressFXEveryXms2HotkeyTibia10
        Run, %A_ScriptDir%/Scripts/5. Press FX every X ms 2 Tibia 10.exe   
        }    
    GuiControlGet, PressFXEveryXms3Tibia10
    If (PressFXEveryXms3Tibia10 = 1)
        {
        IniWrite, %PressFXEveryXms3DelayTibia10%, settings.ini, settings, PressFXEveryXms3DelayTibia10
        IniWrite, %PressFXEveryXms3HotkeyTibia10%, settings.ini, settings, PressFXEveryXms3HotkeyTibia10
        Run, %A_ScriptDir%/Scripts/6. Press FX every X ms 3 Tibia 10.exe   
        }   
    GuiControlGet, KeepTibia10ClientActive
    If (KeepTibia10ClientActive = 1)
        {
        Run, %A_ScriptDir%/Scripts/2. Keep Tibia 10 Client Active.exe
        }
        GuiControlGet, PressHotkeyWhenFullManaTibia10
    If (PressHotkeyWhenFullManaTibia10 = 1)
        {
        IniWrite, %PressHotkeyWhenFullManaHotkeyTibia10%, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia10
        Run, %A_ScriptDir%/Scripts/16. Press X when full mana Tibia 10.exe
        } 
        GuiControlGet, RightClickHold
    If (RightClickHold = 1)
        {
        IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
        Run, %A_ScriptDir%/Scripts/17. Right Click Hold.exe
        }
    ; Tab 1 />
    ; < Tab 2
    GuiControlGet, ReopenTibia10Client
    If (ReopenTibia10Client = 1)
        {
        IniWrite, %Tibia10Directory%, settings.ini, settings, Tibia10Directory
        Run, %A_ScriptDir%/Scripts/7. Reopen Tibia 10 Client.exe   
        }
    GuiControlGet, MoveItemToBackpackTibia10
    If (MoveItemToBackpackTibia10 = 1)
        {
        IniWrite, %MoveItemToBackpackHotkeyTibia10%, settings.ini, settings, MoveItemToBackpackHotkeyTibia10
        IniWrite, %BPPosXTibia10%, settings.ini, settings, BPPosXTibia10
        IniWrite, %BPPosYTibia10%, settings.ini, settings, BPPosYTibia10
        Run, %A_ScriptDir%/Scripts/20. Move item to backpack Tibia 10.exe   
        }
    GuiControlGet, MoveItemToGroundTibia10
    If (MoveItemToGroundTibia10 = 1)
        {
        IniWrite, %MoveItemToGroundHotkeyTibia10%, settings.ini, settings, MoveItemToGroundHotkeyTibia10
        IniWrite, %CharPosXTibia10%, settings.ini, settings, CharPosXTibia10
        IniWrite, %CharPosYTibia10%, settings.ini, settings, CharPosYTibia10
        Run, %A_ScriptDir%/Scripts/21. Move item to Ground Tibia 10.exe   
        }
    GuiControlGet, GamingMode
    If (GamingMode = 1)
        {
        IniWrite, %RemapKey1Tibia10%, settings.ini, settings, RemapKey1Tibia10
        IniWrite, %RemapKey2Tibia10%, settings.ini, settings, RemapKey2Tibia10
        IniWrite, %RemapKey3Tibia10%, settings.ini, settings, RemapKey3Tibia10
        IniWrite, %RemapKey4Tibia10%, settings.ini, settings, RemapKey4Tibia10
        IniWrite, %RemapKey1RemapTibia10%, settings.ini, settings, RemapKey1RemapTibia10
        IniWrite, %RemapKey2RemapTibia10%, settings.ini, settings, RemapKey2RemapTibia10
        IniWrite, %RemapKey3RemapTibia10%, settings.ini, settings, RemapKey3RemapTibia10
        IniWrite, %RemapKey4RemapTibia10%, settings.ini, settings, RemapKey4RemapTibia10
        Run, %A_ScriptDir%/Scripts/0. Gaming Mode.exe       
        }
    ; Tab 2 />
    ; < Tab 3
    GuiControlGet, EquipLifeRingTibia10
    If (EquipLifeRingTibia10 = 1)
        {
        IniWrite, %EquipLifeRingHotkeyTibia10%, settings.ini, settings, EquipLifeRingHotkeyTibia10
        IniWrite, %ShiftEquipLifeRingTibia10%, settings.ini, settings, ShiftEquipLifeRingTibia10
        Run, %A_ScriptDir%/Scripts/8. Auto Equip Life Ring Tibia 10 .exe 
        }
    GuiControlGet, EquipRoHTibia10
    If (EquipRoHTibia10 = 1)
        {
        IniWrite, %EquipRoHHotkeyTibia10%, settings.ini, settings, EquipRoHHotkeyTibia10
        IniWrite, %ShiftEquipRoHTibia10%, settings.ini, settings, ShiftEquipRoHTibia10
        Run, %A_ScriptDir%/Scripts/9. Auto Equip Ring of Healing Tibia 10 .exe       
        }
    GuiControlGet, EquipTimeRingTibia10
    If (EquipTimeRingTibia10 = 1)
        {
        IniWrite, %EquipTimeRingHotkeyTibia10%, settings.ini, settings, EquipTimeRingHotkeyTibia10
        IniWrite, %ShiftEquipTimeRingTibia10%, settings.ini, settings, ShiftEquipTimeRingTibia10
        Run, %A_ScriptDir%/Scripts/10. Auto Equip Time Ring Tibia 10 .exe       
        }
    GuiControlGet, EquipDwarvenRingTibia10
    If (EquipDwarvenRingTibia10 = 1)
        {
        IniWrite, %EquipDwarvenRingHotkeyTibia10%, settings.ini, settings, EquipDwarvenRingHotkeyTibia10
        IniWrite, %ShiftEquipDwarvenRingTibia10%, settings.ini, settings, ShiftEquipDwarvenRingTibia10
        Run, %A_ScriptDir%/Scripts/11. Auto Equip Dwarven Ring Tibia 10 .exe       
        }
    GuiControlGet, EquipSSATibia10
    If (EquipSSATibia10 = 1)
        {
        IniWrite, %EquipSSAHotkeyTibia10%, settings.ini, settings, EquipSSAHotkeyTibia10
        IniWrite, %ShiftEquipSSATibia10%, settings.ini, settings, ShiftEquipSSATibia10
        Run, %A_ScriptDir%/Scripts/12. Auto Equip Stone Skin Amulet Tibia 10 .exe       
        }
    GuiControlGet, RenewUtaniHurTibia10
    If (RenewUtaniHurTibia10 = 1)
        {
        IniWrite, %UtaniHurHotkeyTibia10%, settings.ini, settings, UtaniHurHotkeyTibia10
        IniWrite, %ShiftUtaniHurTibia10%, settings.ini, settings, ShiftUtaniHurTibia10
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 1 Tibia 10.exe       
        }
    GuiControlGet, RenewUtaniGranHurTibia10
    If (RenewUtaniGranHurTibia10 = 1)
        {
        IniWrite, %UtaniGranHurHotkeyTibia10%, settings.ini, settings, UtaniGranHurHotkeyTibia10
        IniWrite, %ShiftUtaniGranHurTibia10%, settings.ini, settings, ShiftUtaniGranHurTibia10
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 2 Tibia 10.exe       
        }
    GuiControlGet, RenewUtaniTempoHurTibia10
    If (RenewUtaniTempoHurTibia10 = 1)
        {
        IniWrite, %UtaniTempoHurHotkeyTibia10%, settings.ini, settings, UtaniTempoHurHotkeyTibia10
        IniWrite, %ShiftUtaniTempoHurTibia10%, settings.ini, settings, ShiftUtaniTempoHurTibia10
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 3 Tibia 10.exe       
        }
    GuiControlGet, RenewUtamoTempoSanTibia10
    If (RenewUtamoTempoSanTibia10 = 1)
        {
        IniWrite, %UtamoTempoSanHotkeyTibia10%, settings.ini, settings, UtamoTempoSanHotkeyTibia10
        IniWrite, %ShiftUtamoTempoSanTibia10%, settings.ini, settings, ShiftUtamoTempoSanTibia10
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 4 Tibia 10.exe       
        }
    GuiControlGet, RenewUtamoVitaTibia10
    If (RenewUtamoVitaTibia10 = 1)
        {
        IniWrite, %UtamoVitaHotkeyTibia10%, settings.ini, settings, UtamoVitaHotkeyTibia10
        IniWrite, %ShiftUtamoVitaTibia10%, settings.ini, settings, ShiftUtamoVitaTibia10
        Run, %A_ScriptDir%/Scripts/19. Renew Support Spell 1 Tibia 10.exe       
        }

        
    ; Tab 3/>
    ; <Tab 4

    ; Tab 4/>
    ; <Tab 5
    
    ; Tab 5/>

    Return
} ; StartScripts