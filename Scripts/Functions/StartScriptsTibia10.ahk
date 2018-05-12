#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


StartScriptsTibia10:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
    ; < Tab 1
    GuiControlGet, LoginHotkey1Tibia10
    If (LoginHotkey1Tibia10 = 1)
        {
        IniWrite, %AccountNameReconnectTibia10%, settings.ini, settings, AccountNameReconnectTibia10
        IniWrite, %PasswordReconnectTibia10%, settings.ini, settings, PasswordReconnectTibia10
        IniWrite, %TimesToPressDownTibia10%, settings.ini, settings, TimesToPressDownTibia10
        Run, %A_ScriptDir%/Scripts/18. Login 1 Hotkey Tibia 10.exe
        }
        GuiControlGet, LoginHotkey2Tibia10
    If (LoginHotkey2Tibia10 = 1)
        {
        IniWrite, %AccountNameReconnect2Tibia10%, settings.ini, settings, AccountNameReconnect2Tibia10
        IniWrite, %PasswordReconnect2Tibia10%, settings.ini, settings, PasswordReconnect2Tibia10
        IniWrite, %TimesToPressDown2Tibia10%, settings.ini, settings, TimesToPressDown2Tibia10
        Run, %A_ScriptDir%/Scripts/18. Login 2 Hotkey Tibia 10.exe
        }
    GuiControlGet, AutoReconnectTibia10
    If (AutoReconnectTibia10 = 1)
        {
        IniWrite, %AccountNameReconnectTibia10%, settings.ini, settings, AccountNameReconnectTibia10
        IniWrite, %PasswordReconnectTibia10%, settings.ini, settings, PasswordReconnectTibia10
        IniWrite, %TimesToPressDownTibia10%, settings.ini, settings, TimesToPressDownTibia10
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
    GuiControlGet, EatFoodTibia10
    If (EatFoodTibia10 = 1)
        {
        IniWrite, %EatFoodHotkeyTibia10%, settings.ini, settings, EatFoodHotkeyTibia10
        IniWrite, %ShiftEatFoodTibia10%, settings.ini, settings, ShiftEatFoodTibia10
        Run, %A_ScriptDir%/Scripts/15. Press X to autoeat Tibia 10.exe   
        } 
        GuiControlGet, RightClickHold
    If (RightClickHold = 1)
        {
        IniWrite, %RightClickHoldDelay%, settings.ini, settings, RightClickHoldDelay
        Run, %A_ScriptDir%/Scripts/17. Right Click Hold.exe
        }
    GuiControlGet, Heal25Tibia10
    If (Heal25Tibia10 = 1)
        {
        IniRead, Heal25HotkeyTibia10, settings.ini, settings, Heal25HotkeyTibia10
        Run, %A_ScriptDir%/Scripts/23. Press Hotkey when health is below 25 percent Tibia 10.exe
        }
    ; Tab 1 />
    ; < Tab 2
    GuiControlGet, ReopenTibia10Client
    If (ReopenTibia10Client = 1)
        {
        IniWrite, %Tibia10Directory%, settings.ini, settings, Tibia10Directory
        Run, %A_ScriptDir%/Scripts/7. Reopen Tibia 10 Client.exe   
        }
    ; Tab 2 />
    ; < Tab 3
    GuiControlGet, MoveItemToBackpackTibia10
    If (MoveItemToBackpackTibia10 = 1)
        {
            If (MoveItemToBackpackHotkeyTibia10 = "None")
            {
            MsgBox, Please select a hotkey to run move item to backpack function
            } 
            Else
            {
            IniWrite, %MoveItemToBackpackHotkeyTibia10%, settings.ini, settings, MoveItemToBackpackHotkeyTibia10
            Run, %A_ScriptDir%/Scripts/20. Move item to backpack Tibia 10.exe   
            }
        }
    GuiControlGet, MoveItemToGroundTibia10
    If (MoveItemToGroundTibia10 = 1)
        {
            If (MoveItemToGroundHotkeyTibia10 = "None")
            {
            MsgBox, Please select a hotkey to run move item to ground function
            } 
            Else
            {
            IniWrite, %MoveItemToGroundHotkeyTibia10%, settings.ini, settings, MoveItemToGroundHotkeyTibia10
            Run, %A_ScriptDir%/Scripts/21. Move item to Ground Tibia 10.exe   
            }
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
    GuiControlGet, HotkeyComboTibia10
    If (HotkeyComboTibia10 = 1)
        {
        IniWrite, %HotkeyComboHotkey1Tibia10%, settings.ini, settings, HotkeyComboHotkey1Tibia10
        IniWrite, %HotkeyComboHotkey2Tibia10%, settings.ini, settings, HotkeyComboHotkey2Tibia10
        IniWrite, %HotkeyComboHotkey3Tibia10%, settings.ini, settings, HotkeyComboHotkey3Tibia10
        IniWrite, %ClickOnPosXTibia10%, settings.ini, settings, ClickOnPosXTibia10
        IniWrite, %ClickOnPosYTibia10%, settings.ini, settings, ClickOnPosYTibia10
        IniWrite, %Sleep1Tibia10%, settings.ini, settings, Sleep1Tibia10
        IniWrite, %Sleep2Tibia10%, settings.ini, settings, Sleep2Tibia10
            If (HotkeyComboHotkey1Tibia10 = "None")
            {
            MsgBox, Hotkey 1 must be chosen to run Hotkey Combo, please select one and try again.
            }   
            If (HotkeyComboHotkey1Tibia10 != "None")
            {
            Run, %A_ScriptDir%/Scripts/24. Hotkey Combo Tibia 10.exe   
            }   
        }
    ; Tab 3 />
    ; < Tab 4
    GuiControlGet, RingRefillTibia10
    If (RingRefillTibia10 = 1)
        {
            If (RingRefillHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run move refill ring function.
            } 
            Else
            {
            IniWrite, %RingRefillHotkeyTibia10%, settings.ini, settings, RingRefillHotkeyTibia10
            IniWrite, %ShiftRingRefillTibia10%, settings.ini, settings, ShiftRingRefillTibia10 
            Run, %A_ScriptDir%/Scripts/8. Auto Equip Ring Tibia 10.exe   
            }   
        }
    GuiControlGet, AmuletRefillTibia10
    If (AmuletRefillTibia10 = 1)
        {
            If (AmuletRefillHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run move refill amulet function.
            } 
            Else
            {
            IniWrite, %AmuletRefillHotkeyTibia10%, settings.ini, settings, AmuletRefillHotkeyTibia10
            IniWrite, %ShiftAmuletRefillTibia10%, settings.ini, settings, ShiftAmuletRefillTibia10
            Run, %A_ScriptDir%/Scripts/12. Auto Equip Amulet Tibia 10.exe 
            }   
       }
    If (SoftBootsRefillTibia10 = 1)
        {
            If (SoftBootsRefillHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run move refill soft boots function.
            } 
            Else
            {
            IniWrite, %SoftBootsRefillHotkeyTibia10%, settings.ini, settings, SoftBootsRefillHotkeyTibia10
            IniWrite, %ShiftSoftBootsRefillTibia10%, settings.ini, settings, ShiftSoftBootsRefillTibia10
            Run, %A_ScriptDir%/Scripts/25. Auto Equip SoftBoots Tibia 10.exe 
            }   
       }
     GuiControlGet, RenewHasteSpellTibia10
    If (RenewHasteSpellTibia10 = 1)
        {
            If (HasteSpellHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run renew haste spell function.
            } 
        IniWrite, %HasteSpellHotkeyTibia10%, settings.ini, settings, HasteSpellHotkeyTibia10
        IniWrite, %ShiftHasteSpellTibia10%, settings.ini, settings, ShiftHasteSpellTibia10
        Run, %A_ScriptDir%/Scripts/14. Renew Haste Spell Tibia 10.exe       
        }
    GuiControlGet, RenewUtamoVitaTibia10
    If (RenewUtamoVitaTibia10 = 1)
        {
            If (UtamoVitaHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run renew utamo vita function.
            }
        IniWrite, %UtamoVitaHotkeyTibia10%, settings.ini, settings, UtamoVitaHotkeyTibia10
        IniWrite, %ShiftUtamoVitaTibia10%, settings.ini, settings, ShiftUtamoVitaTibia10
        Run, %A_ScriptDir%/Scripts/19. Renew Utamo Vita Tibia 10.exe       
        }
    GuiControlGet, RenewBuffSpellTibia10
    If (RenewBuffSpellTibia10 = 1)
        {
            If (BuffSpellHotkeyTibia10 = "None")
            {
                MsgBox, Please select a hotkey to run renew buff spell function.
            }
        IniWrite, %BuffSpellHotkeyTibia10%, settings.ini, settings, BuffSpellHotkeyTibia10
        IniWrite, %ShiftBuffSpellTibia10%, settings.ini, settings, ShiftBuffSpellTibia10
        Run, %A_ScriptDir%/Scripts/25. Renew Buff Spell Tibia 10.exe       
        }
    GuiControlGet, RefillArrowSlotWithMouseTibia10
    If (RefillArrowSlotWithMouseTibia10 = 1)
        {
        IniWrite, %RefillArrowSlotDelayTibia10%, settings.ini, settings, RefillArrowSlotDelayTibia10
        IniWrite, %ArrowSlotPosXTibia10%, settings.ini, settings, ArrowSlotPosXTibia10
        IniWrite, %ArrowSlotPosYTibia10%, settings.ini, settings, ArrowSlotPosYTibia10
        IniWrite, %AmmoPosXTibia10%, settings.ini, settings, AmmoPosXTibia10
        IniWrite, %AmmoPosYTibia10%, settings.ini, settings, AmmoPosYTibia10
        Run, %A_ScriptDir%/Scripts/27. Refill Arrow Slot with Mouse Tibia 10.exe       
        }
    GuiControlGet, RemoveParalyzeTibia10
    If (RemoveParalyzeTibia10 = 1)
        {
        IniWrite, %RemoveParalyzeHotkeyTibia10%, settings.ini, settings, RemoveParalyzeHotkeyTibia10
        IniWrite, %ShiftRemoveParalyzeTibia10%, settings.ini, settings, ShiftRemoveParalyzeTibia10
        Run, %A_ScriptDir%/Scripts/28. Remove Paralyze Tibia 10.exe       
        }
    ; <Tab 4
    ; <Tab 5

    ; Tab 5/>
    ; <Tab 6
    
    ; Tab 6/>

    Return
} ; StartScripts