#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


StartScriptsTibia11:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
    ; < Tab 1
    GuiControlGet, LoginHotkey1Tibia11
    If (LoginHotkey1Tibia11 = 1)
        {
        Run, %A_ScriptDir%/Scripts/18. Login 1 Hotkey Tibia 11.exe
        }
        GuiControlGet, LoginHotkey2Tibia11
    If (LoginHotkey2Tibia11 = 1)
        {
        Run, %A_ScriptDir%/Scripts/18. Login 2 Hotkey Tibia 11.exe
        }
    GuiControlGet, AntiIdleTibia11
    GuiControlGet, AntiIdleBackgroundTibia11
    GuiControlGet, AutoReconnectTibia11
    If (AutoReconnectTibia11 = 1)
        {
        IniWrite, %AccountNameReconnectTibia11%, settings.ini, settings, AccountNameReconnectTibia11
        IniWrite, %PasswordReconnectTibia11%, settings.ini, settings, PasswordReconnectTibia11
        IniWrite, %AccountNameReconnect2Tibia11%, settings.ini, settings, AccountNameReconnect2Tibia11
        IniWrite, %PasswordReconnect2Tibia11%, settings.ini, settings, PasswordReconnect2Tibia11
        IniWrite, %TimesToPressDownTibia11%, settings.ini, settings, TimesToPressDownTibia11
        IniWrite, %TimesToPressDown2Tibia11%, settings.ini, settings, TimesToPressDown2Tibia11
        Run, %A_ScriptDir%/Scripts/1. Auto Reconnect Tibia 11.exe
        }
    GuiControlGet, AntiIdleTibia11
    GuiControlGet, AntiIdleBackgroundTibia11
    If (AntiIdleTibia11 = 1)
        {
        if (AntiIdleBackgroundTibia11 = 1)
            {
            IniWrite, %AntiIdleDelayTibia11%, settings.ini, settings, AntiIdleDelayTibia11
            Run, %A_ScriptDir%/Scripts/3. Anti-Idle Tibia 11 Background.exe
            }
            IniWrite, %AntiIdleDelayTibia11%, settings.ini, settings, AntiIdleDelayTibia11
            Run, %A_ScriptDir%/Scripts/3. Anti-Idle Tibia 11.exe
        }
    GuiControlGet, LogoffIfBattleChangesTibia11
    If (LogoffIfBattleChangesTibia11 = 1)
        {
        Process, Exist, 1. Auto Reconnect Tibia 11.exe
        IF !errorlevel=0
            {
            MsgBox, 1. Auto Reconnect Tibia 11 script is running, please close it to use logoff if battle window changes.
            }
        else
            {
            Run, %A_ScriptDir%/Scripts/22. Logoff if battle window changes Tibia 11.exe
            }
        }
    GuiControlGet, PressFXEveryXms1Tibia11
    If (PressFXEveryXms1Tibia11 = 1)
        {
        IniWrite, %PressFXEveryXms1DelayTibia11%, settings.ini, settings, PressFXEveryXms1DelayTibia11
        IniWrite, %PressFXEveryXms1HotkeyTibia11%, settings.ini, settings, PressFXEveryXms1HotkeyTibia11
        Run, %A_ScriptDir%/Scripts/4. Press FX every X ms 1 Tibia 11.exe   
        }    
    GuiControlGet, PressFXEveryXms2Tibia11
    If (PressFXEveryXms2Tibia11 = 1)
        {
        IniWrite, %PressFXEveryXms2DelayTibia11%, settings.ini, settings, PressFXEveryXms2DelayTibia11
        IniWrite, %PressFXEveryXms2HotkeyTibia11%, settings.ini, settings, PressFXEveryXms2HotkeyTibia11
        Run, %A_ScriptDir%/Scripts/5. Press FX every X ms 2 Tibia 11.exe   
        }    
    GuiControlGet, PressFXEveryXms3Tibia11
    If (PressFXEveryXms3Tibia11 = 1)
        {
        IniWrite, %PressFXEveryXms3DelayTibia11%, settings.ini, settings, PressFXEveryXms3DelayTibia11
        IniWrite, %PressFXEveryXms3HotkeyTibia11%, settings.ini, settings, PressFXEveryXms3HotkeyTibia11
        Run, %A_ScriptDir%/Scripts/6. Press FX every X ms 3 Tibia 11.exe   
        }   
    GuiControlGet, KeepTibia11ClientActive
    If (KeepTibia11ClientActive = 1)
        {
        Run, %A_ScriptDir%/Scripts/2. Keep Tibia 11 Client Active.exe
        }
        GuiControlGet, PressHotkeyWhenFullManaTibia11
    If (PressHotkeyWhenFullManaTibia11 = 1)
        {
        IniWrite, %PressHotkeyWhenFullManaHotkeyTibia11%, settings.ini, settings, PressHotkeyWhenFullManaHotkeyTibia11
        Run, %A_ScriptDir%/Scripts/16. Press X when full mana Tibia 11.exe
        }
        GuiControlGet, EatFoodTibia11
    If (EatFoodTibia11 = 1)
        {
        IniWrite, %EatFoodHotkeyTibia11%, settings.ini, settings, EatFoodHotkeyTibia11
        Run, %A_ScriptDir%/Scripts/15. Press X to autoeat Tibia 11.exe   
        } 
        GuiControlGet, RightClickHold
    If (RightClickHold = 1)
        {
        IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
        Run, %A_ScriptDir%/Scripts/17. Right Click Hold.exe
        }
    ; Tab 1 />
    ; < Tab 2
    GuiControlGet, ReopenTibia11Client
    If (ReopenTibia11Client = 1)
        {
        IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
        Run, %A_ScriptDir%/Scripts/7. Reopen Tibia 11 Client.exe   
        }
    GuiControlGet, MoveItemToBackpackTibia11
    If (MoveItemToBackpackTibia11 = 1)
        {
            IniWrite, %MoveItemToBackpackHotkeyTibia11%, settings.ini, settings, MoveItemToBackpackHotkeyTibia11
            If (MoveItemToBackpackHotkeyTibia11 = "None")
            {
            }
            If (MoveItemToBackpackHotkeyTibia11 = "Forward Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/20. Move item to backpack 1 Tibia 11.exe   
            }
            If (MoveItemToBackpackHotkeyTibia11 = "Back Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/20. Move item to backpack 2 Tibia 11.exe   
            }
            If (MoveItemToBackpackHotkeyTibia11 = "Scroll Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/20. Move item to backpack 3 Tibia 11.exe   
            }
        }
    GuiControlGet, MoveItemToGroundTibia11
    If (MoveItemToGroundTibia11 = 1)
        {
        IniWrite, %MoveItemToGroundHotkeyTibia11%, settings.ini, settings, MoveItemToGroundHotkeyTibia11
        If (MoveItemToGroundHotkeyTibia11 = "None")
            {
            }
            If (MoveItemToGroundHotkeyTibia11 = "Forward Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/21. Move item to ground 1 Tibia 11.exe   
            }
            If (MoveItemToGroundHotkeyTibia11 = "Back Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/21. Move item to ground 2 Tibia 11.exe   
            }
            If (MoveItemToGroundHotkeyTibia11 = "Scroll Mouse Button")
            {
            Run, %A_ScriptDir%/Scripts/21. Move item to ground 3 Tibia 11.exe   
            }
        }
    ; Tab 2 />
    ; < Tab 3
    GuiControlGet, EquipLifeRingTibia11
    If (EquipLifeRingTibia11 = 1)
        {
        IniWrite, %EquipLifeRingHotkeyTibia11%, settings.ini, settings, EquipLifeRingHotkeyTibia11
        IniWrite, %ShiftEquipLifeRingTibia11%, settings.ini, settings, ShiftEquipLifeRingTibia11
        Run, %A_ScriptDir%/Scripts/8. Auto Equip Life Ring Tibia 11 .exe 
        }
    GuiControlGet, EquipRoHTibia11
    If (EquipRoHTibia11 = 1)
        {
        IniWrite, %EquipRoHHotkeyTibia11%, settings.ini, settings, EquipRoHHotkeyTibia11
        IniWrite, %ShiftEquipRoHTibia11%, settings.ini, settings, ShiftEquipRoHTibia11
        Run, %A_ScriptDir%/Scripts/9. Auto Equip Ring of Healing Tibia 11 .exe       
        }
    GuiControlGet, EquipTimeRingTibia11
    If (EquipTimeRingTibia11 = 1)
        {
        IniWrite, %EquipTimeRingHotkeyTibia11%, settings.ini, settings, EquipTimeRingHotkeyTibia11
        IniWrite, %ShiftEquipTimeRingTibia11%, settings.ini, settings, ShiftEquipTimeRingTibia11
        Run, %A_ScriptDir%/Scripts/10. Auto Equip Time Ring Tibia 11 .exe       
        }
    GuiControlGet, EquipDwarvenRingTibia11
    If (EquipDwarvenRingTibia11 = 1)
        {
        IniWrite, %EquipDwarvenRingHotkeyTibia11%, settings.ini, settings, EquipDwarvenRingHotkeyTibia11
        IniWrite, %ShiftEquipDwarvenRingTibia11%, settings.ini, settings, ShiftEquipDwarvenRingTibia11
        Run, %A_ScriptDir%/Scripts/11. Auto Equip Dwarven Ring Tibia 11 .exe       
        }
    GuiControlGet, EquipSSATibia11
    If (EquipSSATibia11 = 1)
        {
        IniWrite, %EquipSSAHotkeyTibia11%, settings.ini, settings, EquipSSAHotkeyTibia11
        IniWrite, %ShiftEquipSSATibia11%, settings.ini, settings, ShiftEquipSSATibia11
        Run, %A_ScriptDir%/Scripts/12. Auto Equip Stone Skin Amulet Tibia 11 .exe       
        }
    GuiControlGet, RenewUtaniHurTibia11
    If (RenewUtaniHurTibia11 = 1)
        {
        IniWrite, %UtaniHurHotkeyTibia11%, settings.ini, settings, UtaniHurHotkeyTibia11
        IniWrite, %ShiftUtaniHurTibia11%, settings.ini, settings, ShiftUtaniHurTibia11
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 1 Tibia 11.exe       
        }
    GuiControlGet, RenewUtaniGranHurTibia11
    If (RenewUtaniGranHurTibia11 = 1)
        {
        IniWrite, %UtaniGranHurHotkeyTibia11%, settings.ini, settings, UtaniGranHurHotkeyTibia11
        IniWrite, %ShiftUtaniGranHurTibia11%, settings.ini, settings, ShiftUtaniGranHurTibia11
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 2 Tibia 11.exe       
        }
    GuiControlGet, RenewUtaniTempoHurTibia11
    If (RenewUtaniTempoHurTibia11 = 1)
        {
        IniWrite, %UtaniTempoHurHotkeyTibia11%, settings.ini, settings, UtaniTempoHurHotkeyTibia11
        IniWrite, %ShiftUtaniTempoHurTibia11%, settings.ini, settings, ShiftUtaniTempoHurTibia11
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 3 Tibia 11.exe       
        }
    GuiControlGet, RenewUtamoTempoSanTibia11
    If (RenewUtamoTempoSanTibia11 = 1)
        {
        IniWrite, %UtamoTempoSanHotkeyTibia11%, settings.ini, settings, UtamoTempoSanHotkeyTibia11
        IniWrite, %ShiftUtamoTempoSanTibia11%, settings.ini, settings, ShiftUtamoTempoSanTibia11
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell 4 Tibia 11.exe       
        }
    GuiControlGet, RenewUtamoVitaTibia11
    If (RenewUtamoVitaTibia11 = 1)
        {
        IniWrite, %UtamoVitaHotkeyTibia11%, settings.ini, settings, UtamoVitaHotkeyTibia11
        IniWrite, %ShiftUtamoVitaTibia11%, settings.ini, settings, ShiftUtamoVitaTibia11
        Run, %A_ScriptDir%/Scripts/19. Renew Support Spell 1 Tibia 11.exe       
        }
    ; Tab 3/>
    ; <Tab 4

    ; Tab 4/>
    ; <Tab 5
    
    ; Tab 5/>

    Return
} ; StartScripts