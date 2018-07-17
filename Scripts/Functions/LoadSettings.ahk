#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


LoadSettings:   ; initial read from settings.ini
    {
        IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage, English
        IniRead, TransparencyLevel, settings.ini, settings, TransparencyLevel, 180
        IniRead, LastDetectedClientClass, settings.ini, clientclass, LastDetectedClientClass, %A_Space%
        ; Tab 1
            ; Auto Reconnect / Login
                IniRead, LoginHotkey1, settings.ini, accountsettings, LoginHotkey1, 0
                IniRead, LoginHotkey2, settings.ini, accountsettings, LoginHotkey2, 0
                IniRead, AutoReconnect, settings.ini, accountsettings, AutoReconnect, 0
                IniRead, AccountNameReconnect, settings.ini, accountsettings, AccountNameReconnect, %A_Space%
                IniRead, CharlistWaitDelay, settings.ini, accountsettings, CharlistWaitDelay, %A_Space%
                IniRead, CharlistWaitDelay2, settings.ini, accountsettings, CharlistWaitDelay2, %A_Space%
                IniRead, PasswordReconnect, settings.ini, accountsettings, PasswordReconnect, %A_Space%
                IniRead, AccountNameReconnect2, settings.ini, accountsettings, AccountNameReconnect2, %A_Space%
                IniRead, PasswordReconnect2, settings.ini, accountsettings, PasswordReconnect2, %A_Space%
                IniRead, TimesToPressDown, settings.ini, accountsettings, TimesToPressDown, 1
                IniRead, TimesToPressDown2, settings.ini, accountsettings, TimesToPressDown2, 1
            ; Misc Tools
                IniRead, PressHotkeyWhenFullMana, settings.ini, settings, PressHotkeyWhenFullMana, 0
                IniRead, ShiftFullMana, settings.ini, settings, ShiftFullMana, %A_Space%
                IniRead, PressHotkeyWhenFullManaHotkey, settings.ini, settings, PressHotkeyWhenFullManaHotkey, %A_Space%
                IniRead, LogoffIfBattleChanges, settings.ini, settings, LogoffIfBattleChanges, 0
                IniRead, EatFood, settings.ini, settings, EatFood, 0
                IniRead, EatFoodHotkey, settings.ini, settings, EatFoodHotkey, %A_Space%
                IniRead, ShiftEatFood, settings.ini, settings, ShiftEatFood, %A_Space%
                IniRead, RightClickHold, settings.ini, settings, RightClickHold, 0
                IniRead, RightClickHoldDelay, settings.ini, settings, RightClickHoldDelay, 90
            ; Auto Fishing
                IniRead, AutoFishing, settings.ini, settings, AutoFishing, 0
                IniRead, FishingRodHotkey, settings.ini, settings, FishingRodHotkey, %A_Space%
                IniRead, SQM1PosXAutoFishing, settings.ini, settings, SQM1PosXAutoFishing, %A_Space%
                IniRead, SQM1PosYAutoFishing, settings.ini, settings, SQM1PosYAutoFishing, %A_Space%
                IniRead, SQM2PosXAutoFishing, settings.ini, settings, SQM2PosXAutoFishing, %A_Space%
                IniRead, SQM2PosYAutoFishing, settings.ini, settings, SQM2PosYAutoFishing, %A_Space%
                IniRead, SQM3PosXAutoFishing, settings.ini, settings, SQM3PosXAutoFishing, %A_Space%
                IniRead, SQM3PosYAutoFishing, settings.ini, settings, SQM3PosYAutoFishing, %A_Space%
                IniRead, SQM4PosXAutoFishing, settings.ini, settings, SQM4PosXAutoFishing, %A_Space%
                IniRead, SQM4PosYAutoFishing, settings.ini, settings, SQM4PosYAutoFishing, %A_Space%
                IniRead, SQM5PosXAutoFishing, settings.ini, settings, SQM5PosXAutoFishing, %A_Space%
                IniRead, SQM5PosYAutoFishing, settings.ini, settings, SQM5PosYAutoFishing, %A_Space%
                IniRead, SQM6PosXAutoFishing, settings.ini, settings, SQM6PosXAutoFishing, %A_Space%
                IniRead, SQM6PosYAutoFishing, settings.ini, settings, SQM6PosYAutoFishing, %A_Space%
                IniRead, SQM7PosXAutoFishing, settings.ini, settings, SQM7PosXAutoFishing, %A_Space%
                IniRead, SQM7PosYAutoFishing, settings.ini, settings, SQM7PosYAutoFishing, %A_Space%
                IniRead, SQM8PosXAutoFishing, settings.ini, settings, SQM8PosXAutoFishing, %A_Space%
                IniRead, SQM8PosYAutoFishing, settings.ini, settings, SQM8PosYAutoFishing, %A_Space%
            ; AFK Tools
                IniRead, AntiIdle, settings.ini, settings, AntiIdle, 0
                IniRead, AntiIdleDelay, settings.ini, settings, AntiIdleDelay, 160000
                IniRead, AntiIdleBackground, settings.ini, settings, AntiIdleBackground, 0
                IniRead, KeepClientActive, settings.ini, settings, KeepClientActive, 0
            ; Press Hotkey Every X ms
                IniRead, PressFXEveryXms1, settings.ini, settings, PressFXEveryXms1, 0
                IniRead, PressFXEveryXms2, settings.ini, settings, PressFXEveryXms2, 0
                IniRead, PressFXEveryXms3, settings.ini, settings, PressFXEveryXms3, 0
                IniRead, PressFXEveryXms1Delay, settings.ini, settings, PressFXEveryXms1Delay, 10000
                IniRead, PressFXEveryXms2Delay, settings.ini, settings, PressFXEveryXms2Delay, 30000
                IniRead, PressFXEveryXms3Delay, settings.ini, settings, PressFXEveryXms3Delay, 60000
                IniRead, PressFXEveryXms1Hotkey, settings.ini, settings, PressFXEveryXms1Hotkey, %A_Space%
                IniRead, PressFXEveryXms2Hotkey, settings.ini, settings, PressFXEveryXms2Hotkey, %A_Space%
                IniRead, PressFXEveryXms3Hotkey, settings.ini, settings, PressFXEveryXms3Hotkey, %A_Space%
            ; Healer
                IniRead, LifeHealer, settings.ini, settings, LifeHealer, 0
                IniRead, Heal80Hotkey, settings.ini, settings, Heal80Hotkey, %A_Space% 
                IniRead, Heal50Hotkey, settings.ini, settings, Heal50Hotkey, %A_Space%
                IniRead, Heal25Hotkey, settings.ini, settings, Heal25Hotkey, %A_Space%
                IniRead, ManaHealer, settings.ini, settings, ManaHealer, 0
                IniRead, Mana80Hotkey, settings.ini, settings, Mana80Hotkey, %A_Space%
                IniRead, Mana50Hotkey, settings.ini, settings, Mana50Hotkey, %A_Space%
                IniRead, Mana25Hotkey, settings.ini, settings, Mana25Hotkey, %A_Space%
        ; Tab 2
            IniRead, MoveItemToGround, settings.ini, settings, MoveItemToGround, 0
            IniRead, MoveItemToBackpack, settings.ini, settings, MoveItemToBackpack, 0
            IniRead, MoveItemToBackpackHotkey, settings.ini, settings, MoveItemToBackpackHotkey, %A_Space%
            IniRead, MoveItemToGroundHotkey, settings.ini, settings, MoveItemToGroundHotkey, %A_Space%
            IniRead, BPPosX, settings.ini, settings, BPPosX, %A_Space%
            IniRead, BPPosY, settings.ini, settings, BPPosY, %A_Space%
            IniRead, GroundPosX, settings.ini, settings, GroundPosX, %A_Space%
            IniRead, GroundPosY, settings.ini, settings, GroundPosY, %A_Space%
            ; Gaming Mode
                IniRead, GamingMode, settings.ini, settings, GamingMode, 0
                IniRead, RemapKey1, settings.ini, settings, RemapKey1, %A_Space%
                IniRead, RemapKey2, settings.ini, settings, RemapKey2, %A_Space%
                IniRead, RemapKey3, settings.ini, settings, RemapKey3, %A_Space%
                IniRead, RemapKey4, settings.ini, settings, RemapKey4, %A_Space%
                IniRead, RemapKey5, settings.ini, settings, RemapKey5, %A_Space%
                IniRead, RemapKey6, settings.ini, settings, RemapKey6, %A_Space%
                IniRead, RemapKey7, settings.ini, settings, RemapKey7, %A_Space%
                IniRead, RemapKey8, settings.ini, settings, RemapKey8, %A_Space%
                IniRead, RemapKey9, settings.ini, settings, RemapKey9, %A_Space%
                IniRead, RemapKey10, settings.ini, settings, RemapKey10, %A_Space%
                IniRead, RemapKey1Remap, settings.ini, settings, RemapKey1Remap, %A_Space%
                IniRead, RemapKey2Remap, settings.ini, settings, RemapKey2Remap, %A_Space%
                IniRead, RemapKey3Remap, settings.ini, settings, RemapKey3Remap, %A_Space%
                IniRead, RemapKey4Remap, settings.ini, settings, RemapKey4Remap, %A_Space%
                IniRead, RemapKey5Remap, settings.ini, settings, RemapKey5Remap, %A_Space%
                IniRead, RemapKey6Remap, settings.ini, settings, RemapKey6Remap, %A_Space%
                IniRead, RemapKey7Remap, settings.ini, settings, RemapKey7Remap, %A_Space%
                IniRead, RemapKey8Remap, settings.ini, settings, RemapKey8Remap, %A_Space%
                IniRead, RemapKey9Remap, settings.ini, settings, RemapKey9Remap, %A_Space%
                IniRead, RemapKey10Remap, settings.ini, settings, RemapKey10Remap, %A_Space%
            ; Hotkey Combo    
                IniRead, HotkeyCombo, settings.ini, settings, HotkeyCombo, 0
                IniRead, HotkeyComboHotkey1, settings.ini, settings, HotkeyComboHotkey1, %A_Space%
                IniRead, HotkeyComboHotkey2, settings.ini, settings, HotkeyComboHotkey2, %A_Space%
                IniRead, HotkeyComboHotkey3, settings.ini, settings, HotkeyComboHotkey3, %A_Space%
                IniRead, ClickOnPosX, settings.ini, settings, ClickOnPosX, %A_Space%
                IniRead, ClickOnPosY, settings.ini, settings, ClickOnPosY, %A_Space%
                IniRead, Sleep1, settings.ini, settings, Sleep1, 25
                IniRead, Sleep2, settings.ini, settings, Sleep2, 25
        ; Tab 3
            ; Items Refill
                IniRead, RingRefill, settings.ini, settings, RingRefill, 0
                IniRead, RingToRefill, settings.ini, settings, RingToRefill, %A_Space%
                IniRead, RingRefillHotkey, settings.ini, settings, RingRefillHotkey, %A_Space%
                IniRead, ShiftRingRefill, settings.ini, settings, ShiftRingRefill, %A_Space%
                IniRead, AmuletRefill, settings.ini, settings, AmuletRefill, 0
                IniRead, AmuletToRefill, settings.ini, settings, AmuletToRefill, %A_Space%
                IniRead, AmuletRefillHotkey, settings.ini, settings, AmuletRefillHotkey, %A_Space%
                IniRead, ShiftAmuletRefill, settings.ini, settings, ShiftAmuletRefill, %A_Space%
                IniRead, SoftBootsRefill, settings.ini, settings, SoftBootsRefill, 0
                IniRead, SoftBootsRefillHotkey, settings.ini, settings, SoftBootsRefillHotkey, %A_Space%
                IniRead, ShiftSoftBootsRefill, settings.ini, settings, ShiftSoftBootsRefill, %A_Space%
            ; Renew Spells
                IniRead, RenewUtamoVita, settings.ini, settings, RenewUtamoVita, 0
                IniRead, UtamoVitaHotkey, settings.ini, settings, UtamoVitaHotkey, %A_Space%
                IniRead, ShiftUtamoVita, settings.ini, settings, ShiftUtamoVita, %A_Space%
                IniRead, RenewHasteSpell, settings.ini, settings, RenewHasteSpell, 0
                IniRead, HasteSpellHotkey, settings.ini, settings, HasteSpellHotkey, %A_Space%
                IniRead, ShiftHasteSpell, settings.ini, settings, ShiftHasteSpell, %A_Space%
                IniRead, RenewBuffSpell, settings.ini, settings, RenewBuffSpell, 0
                IniRead, ShiftBuffSpell, settings.ini, settings, ShiftBuffSpell, %A_Space%
                IniRead, BuffSpellHotkey, settings.ini, settings, BuffSpellHotkey, %A_Space%
            ; Refill Arrow Slot
                IniRead, RefillArrowSlotWithMouse, settings.ini, settings, RefillArrowSlotWithMouse, 0
                IniRead, ArrowSlotPosX, settings.ini, settings, ArrowSlotPosX, %A_Space%
                IniRead, ArrowSlotPosY, settings.ini, settings, ArrowSlotPosY, %A_Space%
                IniRead, RefillArrowSlotDelay, settings.ini, settings, RefillArrowSlotDelay, 60000
                IniRead, AmmoPosX, settings.ini, settings, AmmoPosX, %A_Space%
                IniRead, AmmoPosY, settings.ini, settings, AmmoPosY, %A_Space%
                IniRead, AmmoPosY, settings.ini, settings, AmmoPosY, %A_Space%
            ; Remove Paralyze
                IniRead, RemoveParalyze, settings.ini, settings, RemoveParalyze, 0
                IniRead, RemoveParalyzeHotkey, settings.ini, settings, RemoveParalyzeHotkey, %A_Space%
                IniRead, ShiftRemoveParalyze, settings.ini, settings, ShiftRemoveParalyze, %A_Space%
        ; Tab 4
            IniRead, TibiaDirectory, settings.ini, settings, TibiaDirectory, %A_Space%
            IniRead, ReopenClient, settings.ini, settings, ReopenClient, 0
        ; Tab 5
            ; Cavebot Configs
                IniRead, CharPosXCavebot, Cavebot\cavebotsettings.ini, settings, CharPosXCavebot, %A_Space%
                IniRead, CharPosYCavebot, Cavebot\cavebotsettings.ini, settings, CharPosYCavebot, %A_Space%
                IniRead, BattleWindow1stPosXCavebot, Cavebot\cavebotsettings.ini, settings, BattleWindow1stPosXCavebot, %A_Space%
                IniRead, BattleWindow1stPosYCavebot, Cavebot\cavebotsettings.ini, settings, BattleWindow1stPosYCavebot, %A_Space%
                IniRead, BattleWindowClickDelay, Cavebot\cavebotsettings.ini, settings, BattleWindowClickDelay, 2000

            ; Cavebot Waypoints
                IniRead, Action1WP1, Cavebot\cavebotsettings.ini, settings, Action1WP1, Nothing
                IniRead, Action2WP1, Cavebot\cavebotsettings.ini, settings, Action2WP1, %A_Space%
                IniRead, SleepWP1, Cavebot\cavebotsettings.ini, settings, SleepWP1, %A_Space%
                IniRead, CheckBattleWP1, Cavebot\cavebotsettings.ini, settings, CheckBattleWP1, 0
                IniRead, EnableWP1, Cavebot\cavebotsettings.ini, settings, EnableWP1,
                    

                IniRead, Action1WP2, Cavebot\cavebotsettings.ini, settings, Action1WP2, Nothing
                IniRead, Action2WP2, Cavebot\cavebotsettings.ini, settings, Action2WP2, %A_Space%
                IniRead, SleepWP2, Cavebot\cavebotsettings.ini, settings, SleepWP2, %A_Space%
                IniRead, CheckBattleWP2, Cavebot\cavebotsettings.ini, settings, CheckBattleWP2, 0
                IniRead, EnableWP2, Cavebot\cavebotsettings.ini, settings, EnableWP2, 0

                IniRead, Action1WP3, Cavebot\cavebotsettings.ini, settings, Action1WP3, Nothing
                IniRead, Action2WP3, Cavebot\cavebotsettings.ini, settings, Action2WP3, %A_Space%
                IniRead, SleepWP3, Cavebot\cavebotsettings.ini, settings, SleepWP3, %A_Space%
                IniRead, CheckBattleWP3, Cavebot\cavebotsettings.ini, settings, CheckBattleWP3, 0
                IniRead, EnableWP3, Cavebot\cavebotsettings.ini, settings, EnableWP3, 0

                IniRead, Action1WP4, Cavebot\cavebotsettings.ini, settings, Action1WP4, Nothing
                IniRead, Action2WP4, Cavebot\cavebotsettings.ini, settings, Action2WP4, %A_Space%
                IniRead, SleepWP4, Cavebot\cavebotsettings.ini, settings, SleepWP4, %A_Space%
                IniRead, CheckBattleWP4, Cavebot\cavebotsettings.ini, settings, CheckBattleWP4, 0
                IniRead, EnableWP4, Cavebot\cavebotsettings.ini, settings, EnableWP4, 0

                IniRead, Action1WP5, Cavebot\cavebotsettings.ini, settings, Action1WP5, Nothing
                IniRead, Action2WP5, Cavebot\cavebotsettings.ini, settings, Action2WP5, %A_Space%
                IniRead, SleepWP5, Cavebot\cavebotsettings.ini, settings, SleepWP5, %A_Space%
                IniRead, CheckBattleWP5, Cavebot\cavebotsettings.ini, settings, CheckBattleWP5, 0
                IniRead, EnableWP5, Cavebot\cavebotsettings.ini, settings, EnableWP5, 0

                IniRead, Action1WP6, Cavebot\cavebotsettings.ini, settings, Action1WP6, Nothing
                IniRead, Action2WP6, Cavebot\cavebotsettings.ini, settings, Action2WP6, %A_Space%
                IniRead, SleepWP6, Cavebot\cavebotsettings.ini, settings, SleepWP6, %A_Space%
                IniRead, CheckBattleWP6, Cavebot\cavebotsettings.ini, settings, CheckBattleWP6, 0
                IniRead, EnableWP6, Cavebot\cavebotsettings.ini, settings, EnableWP6, 0

                IniRead, Action1WP7, Cavebot\cavebotsettings.ini, settings, Action1WP7, Nothing
                IniRead, Action2WP7, Cavebot\cavebotsettings.ini, settings, Action2WP7, %A_Space%
                IniRead, SleepWP7, Cavebot\cavebotsettings.ini, settings, SleepWP7, %A_Space%
                IniRead, CheckBattleWP7, Cavebot\cavebotsettings.ini, settings, CheckBattleWP7, 0
                IniRead, EnableWP7, Cavebot\cavebotsettings.ini, settings, EnableWP7, 0

                IniRead, Action1WP8, Cavebot\cavebotsettings.ini, settings, Action1WP8, Nothing
                IniRead, Action2WP8, Cavebot\cavebotsettings.ini, settings, Action2WP8, %A_Space%
                IniRead, SleepWP8, Cavebot\cavebotsettings.ini, settings, SleepWP8, %A_Space%
                IniRead, CheckBattleWP8, Cavebot\cavebotsettings.ini, settings, CheckBattleWP8, 0
                IniRead, EnableWP8, Cavebot\cavebotsettings.ini, settings, EnableWP8, 0

                IniRead, Action1WP9, Cavebot\cavebotsettings.ini, settings, Action1WP9, Nothing
                IniRead, Action2WP9, Cavebot\cavebotsettings.ini, settings, Action2WP9, %A_Space%
                IniRead, SleepWP9, Cavebot\cavebotsettings.ini, settings, SleepWP9, %A_Space%
                IniRead, CheckBattleWP9, Cavebot\cavebotsettings.ini, settings, CheckBattleWP9, 0
                IniRead, EnableWP9, Cavebot\cavebotsettings.ini, settings, EnableWP9, 0
        ; Tab 6
            IniRead, TransparentOldBot, settings.ini, settings, TransparentOldBot, 0
            IniRead, TransparentOldBot, settings.ini, settings, TransparentOldBot, 0

            IniRead, AccountNameMC1, settings.ini, settings, AccountNameMC1, %A_Space%
            IniRead, PasswordMC1, settings.ini, settings, PasswordMC1, %A_Space%
            IniRead, TimesToPressDownMC1, settings.ini, settings, TimesToPressDownMC1, 1
            IniRead, AccountNameMC2, settings.ini, settings, AccountNameMC2, %A_Space%
            IniRead, PasswordMC2, settings.ini, settings, PasswordMC2, %A_Space%
            IniRead, TimesToPressDownMC2, settings.ini, settings, TimesToPressDownMC2,1
            IniRead, AccountNameMC3, settings.ini, settings, AccountNameMC3, %A_Space%
            IniRead, PasswordMC3, settings.ini, settings, PasswordMC3, %A_Space%
            IniRead, TimesToPressDownMC3, settings.ini, settings, TimesToPressDownMC3, 1
            IniRead, AccountNameMC4, settings.ini, settings, AccountNameMC4, %A_Space%
            IniRead, PasswordMC4, settings.ini, settings, PasswordMC4, %A_Space%
            IniRead, TimesToPressDownMC4, settings.ini, settings, TimesToPressDownMC4, 1
            IniRead, AccountNameMC5, settings.ini, settings, AccountNameMC5, %A_Space%
            IniRead, PasswordMC5, settings.ini, settings, PasswordMC5, %A_Space%
            IniRead, TimesToPressDownMC5, settings.ini, settings, TimesToPressDownMC5, 1
        ; Tab 7
           ; Cronometer
                IniRead, CronometerApp, settings.ini, settings, CronometerApp, 0
                IniRead, CronometerHotkey1, settings.ini, settings, CronometerHotkey1, %A_Space%
                IniRead, CronometerHotkey2, settings.ini, settings, CronometerHotkey2, %A_Space%
                IniRead, CronometerHotkey3, settings.ini, settings, CronometerHotkey3, %A_Space%
                IniRead, CronometerHotkey4, settings.ini, settings, CronometerHotkey4, %A_Space%
                IniRead, CronometerHotkey5, settings.ini, settings, CronometerHotkey5, %A_Space%
                IniRead, CronometerHotkey6, settings.ini, settings, CronometerHotkey6, %A_Space%
                IniRead, CronometerSeconds, settings.ini, settings, CronometerSeconds, 2
                IniRead, CronometerMessage, settings.ini, settings, CronometerMessage, Done
                IniRead, CronometerMessageDelay, settings.ini, settings, CronometerMessageDelay, 200
                IniRead, CronometerMessageColor1, settings.ini, settings, CronometerMessageColor1, Lime
                IniRead, CronometerMessageColor2, settings.ini, settings, CronometerMessageColor2, Red

    }
