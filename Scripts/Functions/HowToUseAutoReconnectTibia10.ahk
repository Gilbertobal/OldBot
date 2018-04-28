#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.


IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage

HowToUseAutoReconnectTibia10:

if (TooltipLanguage = "English")
        {
            HowToUseAutoReconnectTibia10ENUS:
            {
                Gui, HowToUse_AutoReconnectTibia10:Font, s10
                Gui, HowToUse_AutoReconnectTibia10:Add, Groupbox, x10 y+5 w480 r25.5, Tutorial

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+10 yp+20 w460 Left, Due to the background of Tibia(the gray background), the images are not the same in every screen resolution because the background pixels changes to adapt to the computer's resolution, so if it isn't working follow the steps below.
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+70 w460 Left, This fuction will search for the "enter game" button on the screen
                
                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+180 yp+25, Images\EnterGameButton_Tibia10.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp-160 yp+30 w460 Left, Step 1 - Take a screenshot of your Tibia Client.
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+20 w460 Left, Step 2 - Open Paint, paste and crop the image of the button.

                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+120 yp+25, Images\Tutorial_AutoReconnectTibia10.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp-140 yp+220 w460 Left, Step 3 - Save the image in the "Images" folder of OldBot directory as "EnterGameButton_Tibia10", in png format.

                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+0 yp+35, Images\Tutorial_AutoReconnectTibia10_2.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+110 w460 Left, Step 4 - It's done, everytime the button image appears on the screen auto reconnect script will start the login process. 

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_AutoReconnectTibia10: Show, w500 h630, How to Use - Auto Reconnect Tibia 11
                Return
            }
        }

if (TooltipLanguage = "Portuguese")
        {
            HowToUseAutoReconnectTibia10PTBR:
            {
                Gui, HowToUse_AutoReconnectTibia10:Font, s10
                Gui, HowToUse_AutoReconnectTibia10:Add, Groupbox, x10 y+5 w480 r25.5, Tutorial

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+10 yp+20 w460 Left, Devido background do Tibia(o background cinza), as imagens não são as mesmas em todas as resoluções de tela porque os pixels do background mudam para se adaptar a resolução do computador, então se não estiver funcionando siga os passos abaixo.
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+70 w460 Left, Essa função irá procurar pelo botão do "enter game" na tela:
                
                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+180 yp+25, Images\EnterGameButton_Tibia10.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp-160 yp+30 w460 Left, Passo 1 - Tire uma screenshot do seu cliente do Tibia.
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+20 w460 Left, Passo 2 - Abra o Paint, copie e recorte a imagem do botão.

                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+120 yp+25, Images\Tutorial_AutoReconnectTibia10.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp-140 yp+220 w460 Left, Passo 3 - Salve a imagem na pasta "Images" do diretório do OldBot como "EnterGameButton_Tibia10", no formato png.

                Gui, HowToUse_AutoReconnectTibia10:Add, Picture, xp+0 yp+35, Images\Tutorial_AutoReconnectTibia10_2.png

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+110 w460 Left, Passo 4 - Está feito, sempre que a imagem do botão aparecer na tela o script do auto reconnect irá começar o processo de login.

                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_AutoReconnectTibia10:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_AutoReconnectTibia10: Show, w500 h630, Como Usar - Auto Reconnect Tibia 11
                Return
            }
        }