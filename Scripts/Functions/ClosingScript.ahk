﻿#NoTrayIcon
#NoEnv

Text = Closing...

Start := A_TickCount



loop

{

   mousegetpos, x, y

   tooltip, %Text%, (x + 10), (y + 10), 1
   BlockInput, On

   If ((A_TickCount - Start) > 500) {
   	BlockInput, Off
      Break

   }

}

tooltip