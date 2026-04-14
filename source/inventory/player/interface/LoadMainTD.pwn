    
    for(new x; x < 2; x++) {

        MainTDInv[x][itdm_MainBackground] = TextDrawCreate(-5.00, -5.00, "_");//основной фон
        TextDrawBackgroundColor(MainTDInv[x][itdm_MainBackground], InventoryColors[x][icColor_Main_Background]);
        TextDrawFont(MainTDInv[x][itdm_MainBackground], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_MainBackground], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_MainBackground], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_MainBackground], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_MainBackground], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_MainBackground], 650.0000, 455.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_MainBackground], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_MainBackground], 0.00, 0.00, 0.00, 0.00);

//большой фон слотов    
        MainTDInv[x][itdm_Strip][0] = TextDrawCreate(5.00, 38.00, "_");//верх полоска
        TextDrawBackgroundColor(MainTDInv[x][itdm_Strip][0], InventoryColors[x][icColor_Main_Foreground]);
        TextDrawFont(MainTDInv[x][itdm_Strip][0], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_Strip][0], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_Strip][0], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_Strip][0], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_Strip][0], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_Strip][0], 629.0000, 20.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_Strip][0], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_Strip][0], 0.00, 0.00, 0.00, 0.00);

        MainTDInv[x][itdm_Strip][1] = TextDrawCreate(20.00, 42.00, InventoryTextTD[4][x]); //–юкзак
        TextDrawBackgroundColor(MainTDInv[x][itdm_Strip][1], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_Strip][1], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_Strip][1], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_Strip][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_Strip][1], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_Strip][1], 0);

//load item
        MainTDInv[x][itdm_Background] = TextDrawCreate(5.00, 60.00, "_");//фон слотов
        TextDrawBackgroundColor(MainTDInv[x][itdm_Background], InventoryColors[x][icColor_Main_Foreground]);
        TextDrawFont(MainTDInv[x][itdm_Background], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_Background], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_Background], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_Background], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_Background], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_Background], 331.0000, 202.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_Background], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_Background], 0.00, 0.00, 0.00, 0.00);

//ObjectInfo
        MainTDInv[x][itdm_Stats_Background][0] = TextDrawCreate(24.00, 178.00, "_");//фон название предмета
        TextDrawBackgroundColor(MainTDInv[x][itdm_Stats_Background][0], 0x101010FF);
        TextDrawFont(MainTDInv[x][itdm_Stats_Background][0], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_Stats_Background][0], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_Stats_Background][0], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_Stats_Background][0], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_Stats_Background][0], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_Stats_Background][0], 309.0000, 18.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_Stats_Background][0], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_Stats_Background][0], 0.00, 0.00, 0.00, 0.00);

        MainTDInv[x][itdm_Stats_Background][1] = TextDrawCreate(28.00, 182.00, "LD_CHAT:badchat");//LD_CHAT:badchat
        TextDrawBackgroundColor(MainTDInv[x][itdm_Stats_Background][1], 0x00000000);
        TextDrawFont(MainTDInv[x][itdm_Stats_Background][1], 4);
        TextDrawLetterSize(MainTDInv[x][itdm_Stats_Background][1], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_Stats_Background][1], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_Stats_Background][1], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_Stats_Background][1], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_Stats_Background][1], 10.0000, 10.0000);

        new Float:PosY = 203.0, Float:PosX;
        for(new x_s; x_s < 5; x_s++) {

            MainTDInv[x][itdm_Stats_Strip][x_s] = TextDrawCreate(244.0, PosY - 3.0, "_");//разделительна€ полоса инфо
            TextDrawBackgroundColor(MainTDInv[x][itdm_Stats_Strip][x_s], InventoryColors[x][icColor_SmallStriped]);
            TextDrawFont(MainTDInv[x][itdm_Stats_Strip][x_s], 5);
            TextDrawLetterSize(MainTDInv[x][itdm_Stats_Strip][x_s], 0.5000, 1.0000);
            TextDrawColor(MainTDInv[x][itdm_Stats_Strip][x_s], 0xFFFFFFFF);
            TextDrawUseBox(MainTDInv[x][itdm_Stats_Strip][x_s], 1);
            TextDrawBoxColor(MainTDInv[x][itdm_Stats_Strip][x_s], 0x00000000);
            TextDrawTextSize(MainTDInv[x][itdm_Stats_Strip][x_s], 71.0000 + 18.0, 2.0000);
            TextDrawSetPreviewModel(MainTDInv[x][itdm_Stats_Strip][x_s], 18691);
            TextDrawSetPreviewRot(MainTDInv[x][itdm_Stats_Strip][x_s], 0.00, 0.00, 0.00, 0.00);

            PosY += 14.0;
        }

        MainTDInv[x][itdm_Stats_Strip][5] = TextDrawCreate(256.00-17.0, 196.00, "_");//разделительна€ полоса инфо
        TextDrawBackgroundColor(MainTDInv[x][itdm_Stats_Strip][5], InventoryColors[x][icColor_SmallStriped]);
        TextDrawFont(MainTDInv[x][itdm_Stats_Strip][5], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_Stats_Strip][5], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_Stats_Strip][5], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_Stats_Strip][5], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_Stats_Strip][5], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_Stats_Strip][5], 2.0000, 66.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_Stats_Strip][5], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_Stats_Strip][5], 0.00, 0.00, 0.00, 0.00);

//кнопки
        MainTDInv[x][itdm_LeftButton] = TextDrawCreate(292.00, 182.00, "ld_beat:left");
        TextDrawBackgroundColor(MainTDInv[x][itdm_LeftButton], 0x00000000);
        TextDrawFont(MainTDInv[x][itdm_LeftButton], 4);
        TextDrawLetterSize(MainTDInv[x][itdm_LeftButton], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_LeftButton], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_LeftButton], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_LeftButton], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_LeftButton], 10.0000, 10.0000);
        TextDrawSetSelectable(MainTDInv[x][itdm_LeftButton], 1);

        MainTDInv[x][itdm_RightButton] = TextDrawCreate(318.00, 182.00, "ld_beat:right");
        TextDrawBackgroundColor(MainTDInv[x][itdm_RightButton], 0x00000000);
        TextDrawFont(MainTDInv[x][itdm_RightButton], 4);
        TextDrawLetterSize(MainTDInv[x][itdm_RightButton], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_RightButton], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_RightButton], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_RightButton], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_RightButton], 10.0000, 10.0000);
        TextDrawSetSelectable(MainTDInv[x][itdm_RightButton], 1);
    
//Accessories 
       //столб 1
        MainTDInv[x][itdm_AccessoriesStripsText][0] = TextDrawCreate(553.00, 42.00, InventoryTextTD[5][x]);//"head"
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStripsText][0], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStripsText][0], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStripsText][0], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStripsText][0], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_AccessoriesStripsText][0], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_AccessoriesStripsText][0], 0);

        //столб 2
        MainTDInv[x][itdm_AccessoriesStrips][0] = TextDrawCreate(552.00, 141.0, "_");//верх полоска
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStrips][0], InventoryColors[x][icColor_Main_Foreground]);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStrips][0], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStrips][0], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStrips][0], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_AccessoriesStrips][0], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_AccessoriesStrips][0], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_AccessoriesStrips][0], 82.0000, 20.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_AccessoriesStrips][0], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_AccessoriesStrips][0], 0.00, 0.00, 0.00, 0.00);

        MainTDInv[x][itdm_AccessoriesStripsText][1] = TextDrawCreate(553.00, 145.00, InventoryTextTD[6][x] );// тело
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStripsText][1], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStripsText][1], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStripsText][1], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStripsText][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_AccessoriesStripsText][1], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_AccessoriesStripsText][1], 0);

        //столб 3
        MainTDInv[x][itdm_AccessoriesStrips][1] = TextDrawCreate(552.00, 241.0, "_");//верх полоска
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStrips][1], InventoryColors[x][icColor_Main_Foreground]);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStrips][1], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStrips][1], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStrips][1], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_AccessoriesStrips][1], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_AccessoriesStrips][1], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_AccessoriesStrips][1], 82.0000, 20.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_AccessoriesStrips][1], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_AccessoriesStrips][1], 0.00, 0.00, 0.00, 0.00);

        MainTDInv[x][itdm_AccessoriesStripsText][2] = TextDrawCreate(553.00, 245.0, InventoryTextTD[7][x] ); //"armor");
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStripsText][2], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStripsText][2], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStripsText][2], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStripsText][2], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_AccessoriesStripsText][2], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_AccessoriesStripsText][2], 0);

        MainTDInv[x][itdm_AccessoriesStripsText][3] = TextDrawCreate(585.00, 245.0, InventoryTextTD[8][x]); //"backpack");
        TextDrawBackgroundColor(MainTDInv[x][itdm_AccessoriesStripsText][3], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_AccessoriesStripsText][3], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_AccessoriesStripsText][3], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_AccessoriesStripsText][3], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_AccessoriesStripsText][3], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_AccessoriesStripsText][3], 0);
    
//IN_Hands
        MainTDInv[x][itdm_HandsStrip][0] = TextDrawCreate(352.50, 241.00, "_");//верх полоска
        TextDrawBackgroundColor(MainTDInv[x][itdm_HandsStrip][0], InventoryColors[x][icColor_Main_Foreground]);
        TextDrawFont(MainTDInv[x][itdm_HandsStrip][0], 5);
        TextDrawLetterSize(MainTDInv[x][itdm_HandsStrip][0], 0.5000, 1.0000);
        TextDrawColor(MainTDInv[x][itdm_HandsStrip][0], 0xFFFFFFFF);
        TextDrawUseBox(MainTDInv[x][itdm_HandsStrip][0], 1);
        TextDrawBoxColor(MainTDInv[x][itdm_HandsStrip][0], 0x00000000);
        TextDrawTextSize(MainTDInv[x][itdm_HandsStrip][0], 183.0000, 20.0000);
        TextDrawSetPreviewModel(MainTDInv[x][itdm_HandsStrip][0], 18691);
        TextDrawSetPreviewRot(MainTDInv[x][itdm_HandsStrip][0], 0.00, 0.00, 0.00, 0.00);

        MainTDInv[x][itdm_HandsStrip][1] = TextDrawCreate(353.00, 244.50, InventoryTextTD[9][x]);
        TextDrawBackgroundColor(MainTDInv[x][itdm_HandsStrip][1], 0x000000FF);
        TextDrawFont(MainTDInv[x][itdm_HandsStrip][1], 2);
        TextDrawLetterSize(MainTDInv[x][itdm_HandsStrip][1], 0.2099, 1.2199);
        TextDrawColor(MainTDInv[x][itdm_HandsStrip][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(MainTDInv[x][itdm_HandsStrip][1], 1);
        TextDrawSetShadow(MainTDInv[x][itdm_HandsStrip][1], 0);

        PosX = 378.0;
        PosY = 265.0;
        for(new x_w; x_w < 2; x_w++) {

            MainTDInv[x][itdm_HandsBackground][x_w] = TextDrawCreate(PosX, PosY, "_");//задний фон
            TextDrawBackgroundColor(MainTDInv[x][itdm_HandsBackground][x_w], InventoryColors[x][icColor_Slot_Background]);
            TextDrawFont(MainTDInv[x][itdm_HandsBackground][x_w], 5);
            TextDrawLetterSize(MainTDInv[x][itdm_HandsBackground][x_w], 0.5000, 1.0000);
            TextDrawColor(MainTDInv[x][itdm_HandsBackground][x_w], 0xFFFFFFFF);
            TextDrawUseBox(MainTDInv[x][itdm_HandsBackground][x_w], 1);
            TextDrawBoxColor(MainTDInv[x][itdm_HandsBackground][x_w], 0x00000000);
            if(x_w == 0) {
                TextDrawTextSize(MainTDInv[x][itdm_HandsBackground][x_w], 99.7000, 34.9000);   
            }
            else {
                TextDrawTextSize(MainTDInv[x][itdm_HandsBackground][x_w], 29.7000, 34.9000);   
            }
            TextDrawSetPreviewModel(MainTDInv[x][itdm_HandsBackground][x_w], 18691);
            TextDrawSetPreviewRot(MainTDInv[x][itdm_HandsBackground][x_w], 0.00, 0.00, 0.00, 0.00);

            MainTDInv[x][itdm_HandsIcon][x_w] = TextDrawCreate(PosX + 0.5, PosY + 0.5, "_");//передний фон
            TextDrawBackgroundColor(MainTDInv[x][itdm_HandsIcon][x_w], InventoryColors[x][icColor_Slot_Foreground]);
            TextDrawFont(MainTDInv[x][itdm_HandsIcon][x_w], 5);
            TextDrawLetterSize(MainTDInv[x][itdm_HandsIcon][x_w], 0.5000, 1.0000);
            TextDrawColor(MainTDInv[x][itdm_HandsIcon][x_w], 0xFFFFFFFF);
            TextDrawUseBox(MainTDInv[x][itdm_HandsIcon][x_w], 1);
            TextDrawBoxColor(MainTDInv[x][itdm_HandsIcon][x_w], 0x00000000);
            if(x_w == 0) {
                TextDrawTextSize(MainTDInv[x][itdm_HandsIcon][x_w], 98.7000, 33.8997);
            }
            else {
                TextDrawTextSize(MainTDInv[x][itdm_HandsIcon][x_w], 28.7000, 33.8997);
            }
            TextDrawSetPreviewModel(MainTDInv[x][itdm_HandsIcon][x_w], 18691);
            TextDrawSetPreviewRot(MainTDInv[x][itdm_HandsIcon][x_w], 0.0, 0.0, 0.0, 0.0);
            TextDrawSetSelectable(MainTDInv[x][itdm_HandsIcon][x_w], true);

            if(x_w == 0) {
                PosX += 101.0;
            }
            else {
                PosX += 31.0;
            }
        }

//IN_Indicators
        PosY = 307.0;
        for(new x_i; x_i < 4; x_i++) {

            if(x_i < 3) {
                MainTDInv[x][itdm_IndicatorName][x_i] = TextDrawCreate(552.0, PosY, InventoryTextTD[11+x_i][x]);
                TextDrawBackgroundColor(MainTDInv[x][itdm_IndicatorName][x_i], 0x000000FF);
                TextDrawFont(MainTDInv[x][itdm_IndicatorName][x_i], 2);
                TextDrawLetterSize(MainTDInv[x][itdm_IndicatorName][x_i], 0.1597, 0.9799);
                TextDrawColor(MainTDInv[x][itdm_IndicatorName][x_i], InventoryColors[x][icColor_Text]);
                TextDrawSetProportional(MainTDInv[x][itdm_IndicatorName][x_i], 1);
                TextDrawSetShadow(MainTDInv[x][itdm_IndicatorName][x_i], 0);
            }

            MainTDInv[x][itdm_IndicatorStrip][x_i] = TextDrawCreate(552.0, PosY - 3.0, "_");//разделительна€ полоса инфо
            TextDrawBackgroundColor(MainTDInv[x][itdm_IndicatorStrip][x_i], InventoryColors[x][icColor_Main_Foreground]);
            TextDrawFont(MainTDInv[x][itdm_IndicatorStrip][x_i], 5);
            TextDrawLetterSize(MainTDInv[x][itdm_IndicatorStrip][x_i], 0.5000, 1.0000);
            TextDrawColor(MainTDInv[x][itdm_IndicatorStrip][x_i], 0xFFFFFFFF);
            TextDrawUseBox(MainTDInv[x][itdm_IndicatorStrip][x_i], 1);
            TextDrawBoxColor(MainTDInv[x][itdm_IndicatorStrip][x_i], 0x00000000);
            TextDrawTextSize(MainTDInv[x][itdm_IndicatorStrip][x_i], 82.0, 2.0);
            TextDrawSetPreviewModel(MainTDInv[x][itdm_IndicatorStrip][x_i], 18691);
            TextDrawSetPreviewRot(MainTDInv[x][itdm_IndicatorStrip][x_i], 0.00, 0.00, 0.00, 0.00);

            PosY += 14.0;
        }

        #include "../source/inventory/trunk/interface/LoadTrunkMainTD.pwn"
    }