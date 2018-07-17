#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


StartScripts:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/StartingScript.ahk
    IniRead, LastDetectedClientClass, settings.ini, clientclass, LastDetectedClientClass
    if (LastDetectedClientClass = "")
    {
        Msgbox, [EN-US]`n`nThere is no class detected for the client you are using, please detect it now and try again.`n`n[PT-BR]`n`nNão foi detectada nenhuma classe para o cliente que você está usando, por favor detecte agora e tente novamente.

        IfMsgBox, Ok
        Goto, GetClientClass
        Return
    }
    ; Tab 1
        GuiControlGet, LoginHotkey1
        If (LoginHotkey1 = 1)
            {
            IniWrite, %AccountNameReconnect%, settings.ini, settings, AccountNameReconnect
            IniWrite, %PasswordReconnect%, settings.ini, settings, PasswordReconnect
            IniWrite, %TimesToPressDown%, settings.ini, settings, TimesToPressDown
            Run, %A_ScriptDir%/Scripts/Login Hotkey 1.exe
            }
        GuiControlGet, LoginHotkey2
        If (LoginHotkey2 = 1)
            {
            IniWrite, %AccountNameReconnect2%, settings.ini, settings, AccountNameReconnect2
            IniWrite, %PasswordReconnect2%, settings.ini, settings, PasswordReconnect2
            IniWrite, %TimesToPressDown2%, settings.ini, settings, TimesToPressDown2
            Run, %A_ScriptDir%/Scripts/Login Hotkey 2.exe
            }
        GuiControlGet, AutoReconnect
        If (AutoReconnect = 1)
            {
            IniWrite, %AccountNameReconnect%, settings.ini, settings, AccountNameReconnect
            IniWrite, %PasswordReconnect%, settings.ini, settings, PasswordReconnect
            IniWrite, %TimesToPressDown%, settings.ini, settings, TimesToPressDown
            Run, %A_ScriptDir%/Scripts/Auto Reconnect.exe
            }
        GuiControlGet, AntiIdle
        GuiControlGet, AntiIdleBackground
        If (AntiIdle = 1)
            {
            if (AntiIdleBackground = 1)
                {
                Run, %A_ScriptDir%/Scripts/Anti-Idle Background.exe
                }
                Run, %A_ScriptDir%/Scripts/Anti-Idle.exe
            }
        GuiControlGet, LogoffIfBattleChanges
        If (LogoffIfBattleChanges = 1)
            {
            Process, Exist, 1. Auto Reconnect.exe
            IF !errorlevel=0
                {
                MsgBox, Auto Reconnect script is running, please close it to use logoff if battle window changes.
                }else{
                Run, %A_ScriptDir%/Scripts/Logoff if battle window changes.exe
                }
            }
        GuiControlGet, PressFXEveryXms1
        If (PressFXEveryXms1 = 1)
            {
            Run, %A_ScriptDir%/Scripts/Press hotkey every X ms 1.exe   
            }    
        GuiControlGet, PressFXEveryXms2
        If (PressFXEveryXms2 = 1)
            {
            Run, %A_ScriptDir%/Scripts/Press hotkey every X ms 2.exe    
            }    
        GuiControlGet, PressFXEveryXms3
        If (PressFXEveryXms3 = 1)
            {
            Run, %A_ScriptDir%/Scripts/Press hotkey every X ms 3.exe    
            }   
        GuiControlGet, KeepClientActive
        If (KeepClientActive = 1)
            {
            Run, %A_ScriptDir%/Scripts/Keep Tibia Client Active.exe
            }
            GuiControlGet, PressHotkeyWhenFullMana
        If (PressHotkeyWhenFullMana = 1)
            {
            Run, %A_ScriptDir%/Scripts/Press hotkey when full mana.exe
            }
            GuiControlGet, EatFood
        If (EatFood = 1)
            {
            Run, %A_ScriptDir%/Scripts/Auto eat food.exe   
            } 
            GuiControlGet, RightClickHold
        If (RightClickHold = 1)
            {
            Run, %A_ScriptDir%/Scripts/Right Click Hold.exe
            }
            GuiControlGet, AutoFishing
        If (AutoFishing = 1)
            {
            Run, %A_ScriptDir%/Scripts/Auto Fishing.exe
            }
            GuiControlGet, LifeHealer
        If (LifeHealer = 1)
            {
            Run, %A_ScriptDir%/Scripts/Life Healer.exe
            }
            GuiControlGet, ManaHealer
        If (ManaHealer = 1)
            {
            Run, %A_ScriptDir%/Scripts/Mana Healer.exe
            }
    ; Tab 1 />
    ; Tab 2
        
        GuiControlGet, GamingMode
        If (GamingMode = 1)
            {
            Run, %A_ScriptDir%/Scripts/Gaming Mode.exe       
            }
        GuiControlGet, MoveItemToBackpack
        If (MoveItemToBackpack = 1)
            {
                If (MoveItemToBackpackHotkey = %A_Space%)
                {
                MsgBox, Please select a hotkey to run move item to backpack function
                }Else{
                Run, %A_ScriptDir%/Scripts/Move item to backpack.exe  
                } 
            }
        GuiControlGet, MoveItemToGround
        If (MoveItemToGround = 1)
            {
                If (MoveItemToGroundHotkey = %A_Space%)
                {
                MsgBox, Please select a hotkey to run move item to ground function
                }Else{
                Run, %A_ScriptDir%/Scripts/Move item to ground.exe  
                }
            }
        GuiControlGet, HotkeyCombo
        If (HotkeyCombo = 1)
            {
                
                If (HotkeyComboHotkey1 = %A_Space%)
                {
                MsgBox, Hotkey 1 must be chosen to run Hotkey Combo, please select one and try again.
                }   
                If (HotkeyComboHotkey1 != %A_Space%)
                {
                Run, %A_ScriptDir%/Scripts/Hotkey Combo.exe   
                }   
            }
    ; Tab 3
        GuiControlGet, RingRefill
        If (RingRefill = 1)
            {
                If (RingRefillHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run auto equip refill function.
                }else{
                Run, %A_ScriptDir%/Scripts/Auto Equip Ring.exe   
                }   
            }
        GuiControlGet, AmuletRefill
        If (AmuletRefill = 1)
            {
                If (AmuletRefillHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run auto equip refill function.
                }Else{
                Run, %A_ScriptDir%/Scripts/Auto Equip Amulet.exe    
                }
           }
        GuiControlGet, SoftBootsRefill
        If (SoftBootsRefill = 1)
            {
                If (SoftBootsRefillHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run soft boots refill function.
                }Else{
                Run, %A_ScriptDir%/Scripts/Auto refill charged Soft Boots.exe    
                }
           }
        GuiControlGet, RenewHasteSpell
        If (RenewHasteSpell = 1)
            {
                If (HasteSpellHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run renew haste spell function.
                } 
            Run, %A_ScriptDir%/Scripts/Renew Haste Spell.exe       
            }
        GuiControlGet, RenewUtamoVita
        If (RenewUtamoVita = 1)
            {
                If (UtamoVitaHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run renew utamo vita function.
                }
            Run, %A_ScriptDir%/Scripts/Renew Utamo Vita.exe       
            }
        GuiControlGet, RenewBuffSpell
        If (RenewBuffSpell = 1)
            {
                If (BuffSpellHotkey = %A_Space%)
                {
                    MsgBox, Please select a hotkey to run renew buff spell function.
                }
            Run, %A_ScriptDir%/Scripts/Renew Buff Spell.exe       
            }
        GuiControlGet, RefillArrowSlotWithMouse
        If (RefillArrowSlotWithMouse = 1)
            {
            
            Run, %A_ScriptDir%/Scripts/Refill arrow slot with mouse.exe       
            }
        GuiControlGet, RemoveParalyze
        If (RemoveParalyze = 1)
            {
            
            Run, %A_ScriptDir%/Scripts/Remove Paralyze.exe       
            }
    ; Tab 4
        GuiControlGet, ReopenClient
        If (ReopenClient = 1)
            {
            
            Run, %A_ScriptDir%/Scripts/Reopen Client.exe   
            }
    ; Tab 5
    ; Tab 6
        GuiControlGet, CronometerApp
        If (CronometerApp = 1)
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
            Run, %A_ScriptDir%/Scripts/CronometerApp.exe      
            }
    Return
} ; StartScripts