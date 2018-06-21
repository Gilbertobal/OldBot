#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


StartScriptsTibia11:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
    ; < Tab 1
    GuiControlGet, LoginHotkey1Tibia11
    If (LoginHotkey1Tibia11 = 1)
        {
        IniWrite, %AccountNameReconnectTibia11%, settings.ini, settings, AccountNameReconnectTibia11
        IniWrite, %PasswordReconnectTibia11%, settings.ini, settings, PasswordReconnectTibia11
        IniWrite, %TimesToPressDownTibia11%, settings.ini, settings, TimesToPressDownTibia11
        Run, %A_ScriptDir%/Scripts/18. Login 1 Hotkey Tibia 11.exe
        }
        GuiControlGet, LoginHotkey2Tibia11
    If (LoginHotkey2Tibia11 = 1)
        {
        IniWrite, %AccountNameReconnect2Tibia11%, settings.ini, settings, AccountNameReconnect2Tibia11
        IniWrite, %PasswordReconnect2Tibia11%, settings.ini, settings, PasswordReconnect2Tibia11
        IniWrite, %TimesToPressDown2Tibia11%, settings.ini, settings, TimesToPressDown2Tibia11
        Run, %A_ScriptDir%/Scripts/18. Login 2 Hotkey Tibia 11.exe
        }
    GuiControlGet, AutoReconnectTibia11
    If (AutoReconnectTibia11 = 1)
        {
        IniWrite, %AccountNameReconnectTibia11%, settings.ini, settings, AccountNameReconnectTibia11
        IniWrite, %PasswordReconnectTibia11%, settings.ini, settings, PasswordReconnectTibia11
        IniWrite, %TimesToPressDownTibia11%, settings.ini, settings, TimesToPressDownTibia11
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
        IniWrite, %ShiftEatFoodTibia11%, settings.ini, settings, ShiftEatFoodTibia11
        Run, %A_ScriptDir%/Scripts/15. Press X to autoeat Tibia 11.exe   
        } 
        GuiControlGet, RightClickHold
    If (RightClickHold = 1)
        {
        IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
        Run, %A_ScriptDir%/Scripts/17. Right Click Hold.exe
        }
        GuiControlGet, LifeHealerTibia11
    If (LifeHealerTibia11 = 1)
        {
        IniWrite, %Heal25HotkeyTibia11%, settings.ini, settings, Heal25HotkeyTibia11
        IniWrite, %Heal50HotkeyTibia11%, settings.ini, settings, Heal50HotkeyTibia11
        IniWrite, %Heal80HotkeyTibia11%, settings.ini, settings, Heal80HotkeyTibia11
        Run, %A_ScriptDir%/Scripts/30. Life Healer Tibia 11.exe
        }
        GuiControlGet, ManaHealerTibia11
    If (ManaHealerTibia11 = 1)
        {
        IniWrite, %Mana25HotkeyTibia11%, settings.ini, settings, Mana25HotkeyTibia11
        IniWrite, %Mana50HotkeyTibia11%, settings.ini, settings, Mana50HotkeyTibia11
        IniWrite, %Mana80HotkeyTibia11%, settings.ini, settings, Mana80HotkeyTibia11
        Run, %A_ScriptDir%/Scripts/31. Mana Healer Tibia 11.exe
        }
    ; Tab 1 />
    ; < Tab 2
    GuiControlGet, ReopenTibia11Client
    If (ReopenTibia11Client = 1)
        {
        IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
        Run, %A_ScriptDir%/Scripts/7. Reopen Tibia 11 Client.exe   
        }
    ; Tab 2 />
    ; < Tab 3
    GuiControlGet, MoveItemToBackpackTibia11
    If (MoveItemToBackpackTibia11 = 1)
        {
            If (MoveItemToBackpackHotkeyTibia11 = "None")
            {
            MsgBox, Please select a hotkey to run move item to backpack function
            } 
            Else
            {
            IniWrite, %MoveItemToBackpackHotkeyTibia11%, settings.ini, settings, MoveItemToBackpackHotkeyTibia11
            Run, %A_ScriptDir%/Scripts/20. Move item to backpack Tibia 11.exe  
            } 
        }
    GuiControlGet, MoveItemToGroundTibia11
    If (MoveItemToGroundTibia11 = 1)
        {
            If (MoveItemToGroundHotkeyTibia11 = "None")
            {
            MsgBox, Please select a hotkey to run move item to ground function
            } 
            Else
            {
            IniWrite, %MoveItemToGroundHotkeyTibia11%, settings.ini, settings, MoveItemToGroundHotkeyTibia11
            Run, %A_ScriptDir%/Scripts/21. Move item to ground Tibia 11.exe  
            }
        }
    GuiControlGet, HotkeyComboTibia11
    If (HotkeyComboTibia11 = 1)
        {
            IniWrite, %HotkeyComboHotkey1Tibia11%, settings.ini, settings, HotkeyComboHotkey1Tibia11
            IniWrite, %HotkeyComboHotkey2Tibia11%, settings.ini, settings, HotkeyComboHotkey2Tibia11
            IniWrite, %HotkeyComboHotkey3Tibia11%, settings.ini, settings, HotkeyComboHotkey3Tibia11
            IniWrite, %ClickOnPosXTibia11%, settings.ini, settings, ClickOnPosXTibia11
            IniWrite, %ClickOnPosYTibia11%, settings.ini, settings, ClickOnPosYTibia11
            IniWrite, %Sleep1Tibia11%, settings.ini, settings, Sleep1Tibia11
            IniWrite, %Sleep2Tibia11%, settings.ini, settings, Sleep2Tibia11
            If (HotkeyComboHotkey1Tibia11 = "None")
            {
            MsgBox, Hotkey 1 must be chosen to run Hotkey Combo, please select one and try again.
            }   
            If (HotkeyComboHotkey1Tibia11 != "None")
            {
            Run, %A_ScriptDir%/Scripts/24. Hotkey Combo Tibia 11.exe   
            }   
        }
    ; Tab 3 />
    ; < Tab 4
    GuiControlGet, RingRefillTibia11
    If (RingRefillTibia11 = 1)
        {
            If (RingRefillHotkeyTibia11 = "None")
            {
                MsgBox, Please select a hotkey to run move refill ring function.
            } 
            Else
            {
            IniWrite, %RingRefillHotkeyTibia11%, settings.ini, settings, RingRefillHotkeyTibia11
            IniWrite, %ShiftRingRefillTibia11%, settings.ini, settings, ShiftRingRefillTibia11 
            Run, %A_ScriptDir%/Scripts/8. Auto Equip Ring Tibia 11.exe   
            }   
        }
    GuiControlGet, AmuletRefillTibia11
    If (AmuletRefillTibia11 = 1)
        {
            If (AmuletRefillHotkeyTibia11 = "None")
            {
                MsgBox, Please select a hotkey to run move refill amulet function.
            }
            Else
            IniWrite, %AmuletRefillHotkeyTibia11%, settings.ini, settings, AmuletRefillHotkeyTibia11
            IniWrite, %ShiftAmuletRefillTibia11%, settings.ini, settings, ShiftAmuletRefillTibia11
            Run, %A_ScriptDir%/Scripts/12. Auto Equip Amulet Tibia 11.exe    
            }
       }
     GuiControlGet, RenewHasteSpellTibia11
    If (RenewHasteSpellTibia11 = 1)
        {
            If (HasteSpellHotkeyTibia11 = "None")
            {
                MsgBox, Please select a hotkey to run renew haste spell function.
            } 
        IniWrite, %HasteSpellHotkeyTibia11%, settings.ini, settings, HasteSpellHotkeyTibia11
        IniWrite, %ShiftHasteSpellTibia11%, settings.ini, settings, ShiftHasteSpellTibia11
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell Tibia 11.exe       
        }
    GuiControlGet, RenewUtamoVitaTibia11
    If (RenewUtamoVitaTibia11 = 1)
        {
            If (UtamoVitaHotkeyTibia11 = "None")
            {
                MsgBox, Please select a hotkey to run renew utamo vita function.
            }
        IniWrite, %UtamoVitaHotkeyTibia11%, settings.ini, settings, UtamoVitaHotkeyTibia11
        IniWrite, %ShiftUtamoVitaTibia11%, settings.ini, settings, ShiftUtamoVitaTibia11
        Run, %A_ScriptDir%/Scripts/19. Renew Utamo Vita Tibia 11.exe       
        }
    GuiControlGet, RenewBuffSpellTibia11
    If (RenewBuffSpellTibia11 = 1)
        {
            If (BuffSpellHotkeyTibia11 = "None")
            {
                MsgBox, Please select a hotkey to run renew buff spell function.
            }
        IniWrite, %BuffSpellHotkeyTibia11%, settings.ini, settings, BuffSpellHotkeyTibia11
        IniWrite, %ShiftBuffSpellTibia11%, settings.ini, settings, ShiftBuffSpellTibia11
        Run, %A_ScriptDir%/Scripts/25. Renew Buff Spell Tibia 11.exe       
        }
    GuiControlGet, RefillArrowSlotWithMouseTibia11
    If (RefillArrowSlotWithMouseTibia11 = 1)
        {
        IniWrite, %RefillArrowSlotDelayTibia11%, settings.ini, settings, RefillArrowSlotDelayTibia11
        IniWrite, %ArrowSlotPosXTibia11%, settings.ini, settings, ArrowSlotPosXTibia11
        IniWrite, %ArrowSlotPosYTibia11%, settings.ini, settings, ArrowSlotPosYTibia11
        IniWrite, %AmmoPosXTibia11%, settings.ini, settings, AmmoPosXTibia11
        IniWrite, %AmmoPosYTibia11%, settings.ini, settings, AmmoPosYTibia11
        Run, %A_ScriptDir%/Scripts/27. Refill Arrow Slot with Mouse Tibia 11.exe       
        }
    GuiControlGet, RemoveParalyzeTibia11
    If (RemoveParalyzeTibia11 = 1)
        {
        IniWrite, %RemoveParalyzeHotkeyTibia11%, settings.ini, settings, RemoveParalyzeHotkeyTibia11
        IniWrite, %ShiftRemoveParalyzeTibia11%, settings.ini, settings, ShiftRemoveParalyzeTibia11
        Run, %A_ScriptDir%/Scripts/28. Remove Paralyze Tibia 11.exe       
        }
    ; <Tab 4

    ; Tab 4/>
    ; <Tab 5
    
    ; Tab 5/>
    ; <Tab 6
    GuiControlGet, CronometerAppTibia11
    If (CronometerAppTibia11 = 1)
        {
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
        Run, %A_ScriptDir%/Scripts/29. CronometerApp.exe      
        }
    ; Tab 6>
    Return
} ; StartScripts