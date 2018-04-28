#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage

HowToUseLogoffBattleChanges:

if (TooltipLanguage = "English")
        {
            HowToUseLogoffBattleChangesENUS:
            {
                Gui, HowToUse_LogoffBattleChanges:Font, s10
                Gui, HowToUse_LogoffBattleChanges:Add, Groupbox, x10 y+5 w480 r27, Tutorial

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+10 yp+20 w460 Left, Due to the background of Tibia(the gray background), the images are not the same in every screen resolution because the background pixels changes to adapt to the computer's resolution, so if it isn't working follow the steps below.
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+70 w460 Left, This fuction will search for the Battle Window image on the screen:
                
                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+150 yp+25, Images\BattleWindow.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp-150 yp+60 w460 Left, Step 1 - Take a screenshot of your Tibia Client.
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+20 w460 Left, Step 2 - Open Paint, paste and crop the image of the Battle Window.

                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+90 yp+25, Images\Tutorial_LogoffBattleWindow.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp-90 yp+220 w460 Left, Step 3 - Save the image in the "Images" folder of OldBot directory as "BattleWindow" or "BattleWindowTibia10" for Tibia 10, in png format.

                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+0 yp+35, Images\Tutorial_LogoffBattleWindow_2.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+110 w460 Left, Step 4 - It's done, everytime someone appears on the screen, the battle window will change, the image of the "empty" battle window will not be found and Ctrl + Q will be pressed to logoff.

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_LogoffBattleChanges: Show, w500 h660, How to Use - Logoff if Battle Changes
                Return
            }
        }

if (TooltipLanguage = "Portuguese")
        {
            HowToUseLogoffBattleChangesPTBR:
            {
                Gui, HowToUse_LogoffBattleChanges:Font, s10
                Gui, HowToUse_LogoffBattleChanges:Add, Groupbox, x10 y+5 w500 r27, Tutorial

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+10 yp+20 w460 Left, Devido background do Tibia(o background cinza), as imagens não são as mesmas em todas as resoluções de tela porque os pixels do background mudam para se adaptar a resolução do computador, então se não estiver funcionando siga os passos abaixo.
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+70 w460 Left, Essa função irá procurar pela imagem da Battle Window na tela:
                
                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+150 yp+25, Images\BattleWindow.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp-150 yp+60 w460 Left, Passo 1 - Tire uma screenshot do seu cliente do Tibia.
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+20 w460 Left, Passo 2 - Abra o Paint, copie e recorte a imagem da Battle Window.

                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+90 yp+25, Images\Tutorial_LogoffBattleWindow.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp-90 yp+220 w460 Left, Passo 3 - Salve a imagem na pasta "Images" do diretório do OldBot como "BattleWindow" ou "BattleWindowTibia10" para o Tibia 10, em formato png.

                Gui, HowToUse_LogoffBattleChanges:Add, Picture, xp+0 yp+35, Images\Tutorial_LogoffBattleWindow_2.png

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+110 w460 Left, Passo 4 - Está pronto, sempre que alguém aparecer na tela, a battle window irá mudar, a imagem da battle window "vazia" não será achada e então Ctrl + Q será pressionado para deslogar.

                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_LogoffBattleChanges:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_LogoffBattleChanges: Show, w530 h660, Como Usar - Logoff if Battle Changes
                Return
            }
            Return
        }