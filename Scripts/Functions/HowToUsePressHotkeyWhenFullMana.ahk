#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage
HowToUsePressHotkeyWhenFullMana:

if (TooltipLanguage = "English")
        {
            HowToUsePressHotkeyWhenFullManaENUS:
            {
                Gui, HowToUse_PressHotkeyWhenFullMana:Font, s10
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Groupbox, x10 y+5 w480 r25, Tutorial

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+10 yp+20 w460 Left, Due to the background of Tibia(the gray background), the images are not the same in every screen resolution because the background pixels changes to adapt to the computer's resolution, so if it isn't working follow the steps below.
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+70 w460 Left,  This fuction will search for the mana bar image on the screen:
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+160 yp+25, Images\FullManaBarTibia11.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp-160 yp+30 w460 Left, Step 1 - Take a screenshot of your Tibia Client.
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+20 w460 Left, Step 2 - Open Paint, paste and crop the image of your full mana bar.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+140 yp+25, Images\Tutorial_FullManaBarTibia11.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp-140 yp+220 w460 Left, Step 3 - Save the image in the "Images" folder of OldBot directory as "FullManaBarTibia11" or "FullManaBarTibia10" for Tibia 10, in png format.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+0 yp+35, Images\Tutorial_FullManaBarTibia11_2.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+110 w460 Left, Step 4 - It's done, everytime the mana bar image appears on screen the selected hotkey will be pressed.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_PressHotkeyWhenFullMana: Show, w500 h615, How to Use
                Return
            }
        }

if (TooltipLanguage = "Portuguese")
        {
            HowToUsePressHotkeyWhenFullManaPTBR:
            {
                Gui, HowToUse_PressHotkeyWhenFullMana:Font, s10
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Groupbox, x10 y+5 w480 r25, Tutorial

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+10 yp+20 w460 Left, Devido background do Tibia(o background cinza), as imagens não são as mesmas em todas as resoluções de tela porque os pixels do background mudam para se adaptar a resolução do computador, então se não estiver funcionando siga os passos abaixo.
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+70 w460 Left, Essa função irá procurar pela imagem da barra de mana na tela:
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+160 yp+25, Images\FullManaBarTibia11.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp-160 yp+30 w460 Left, Passo 1 - Tire uma screenshot do seu cliente do Tibia.
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+20 w460 Left, Passo 2 - Abra o Paint, copie e recorte a imagem timer do food em 00:00.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+140 yp+25, Images\Tutorial_FullManaBarTibia11.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp-140 yp+220 w460 Left, Passo 3 - Salve a imagem na pasta "Images" do diretório do OldBot como "FullManaBarTibia11" ou "FullManaBarTibia10" para o Tibia 10, em formato png.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Picture, xp+0 yp+35, Images\Tutorial_FullManaBarTibia11_2.png

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+110 w460 Left, Step 4 - Está feito, sempre que a imagem da barra de mana cheia aparecer na tela a hotkey selecionada será pressionada.

                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_PressHotkeyWhenFullMana:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_PressHotkeyWhenFullMana: Show, w500 h615, How to Use
                Return
            }
            Return
        }