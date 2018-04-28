#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage
HowToUseEatFoodTibia11:

if (TooltipLanguage = "English")
        {
            HowToUseEatFoodTibia11ENUS:
            {
                Gui, HowToUse_EatFoodTibia11:Font, s10
                Gui, HowToUse_EatFoodTibia11:Add, Groupbox, x10 y+5 w480 r25.5, Tutorial

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+10 yp+20 w460 Left, Due to the background of Tibia(the gray background), the images are not the same in every screen resolution because the background pixels changes to adapt to the computer's resolution, so if it isn't working follow the steps below.
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+70 w460 Left, This fuction will search for the food timer image on the screen:
                
                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+160 yp+25, Images\FoodZeroMin.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp-160 yp+30 w460 Left, Step 1 - Take a screenshot of your Tibia Client.
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w460 Left, Step 2 - Open Paint, paste and crop the image of the food timer in 00:00.

                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+140 yp+25, Images\Tutorial_EatFoodTibia11.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp-140 yp+220 w460 Left, Step 3 - Save the image in the "Images" folder of OldBot directory as "FoodZeroMin", in png format.

                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+0 yp+35, Images\Tutorial_EatFoodTibia11_2.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+110 w460 Left, Step 4 - It's done, everytime the food timer image appears with 00:00 on screen the selected hotkey will be pressed(3 times), remember to keep the food timer visible(skill window opened).

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_EatFoodTibia11: Show, w500 h630, How to Use - Auto eat food
                Return
            }
        }


if (TooltipLanguage = "Portuguese")
        {
            HowToUseEatFoodTibia11PTBR:
            {
                Gui, HowToUse_EatFoodTibia11:Font, s10
                Gui, HowToUse_EatFoodTibia11:Add, Groupbox, x10 y+5 w480 r25.5, Tutorial

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+10 yp+20 w460 Left, Devido background do Tibia(o background cinza), as imagens não são as mesmas em todas as resoluções de tela porque os pixels do background mudam para se adaptar a resolução do computador, então se não estiver funcionando siga os passos abaixo.
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+70 w460 Left, Essa função irá procurar pela imagem do timer de food na tela:
                
                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+160 yp+25, Images\FoodZeroMin.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp-160 yp+30 w460 Left, Passo 1 - Tire uma screenshot do seu cliente do Tibia.
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w460 Left, Passo 2 - Abra o Paint, copie e recorte a imagem timer do food em 00:00.

                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+140 yp+25, Images\Tutorial_EatFoodTibia11.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp-140 yp+220 w460 Left, Passo 3 - Salve a imagem na pasta "Images" do diretório do OldBot como "FoodZeroMin", no formato png.

                Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+0 yp+35, Images\Tutorial_EatFoodTibia11_2.png

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+110 w460 Left, Passo 4 - Está feito, sempre que a imagem do timer do food aparecer com 00:00 na tela a hotkey selecionada será pressionada(3 vezes), lembre-se de manter o timer do food visível(janela de skills aberta).

                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+60 w400 Left,
                Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w400 Left,

                Gui, HowToUse_EatFoodTibia11: Show, w500 h630, Como Usar - Auto eat food
                Return
            }
            Return
        }