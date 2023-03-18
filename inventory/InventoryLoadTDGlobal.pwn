    for(new x; x < 2; x++)
    {
        InventoryColors[x][icColor_Main_Fon]           = RGB(16, 16, 16, 245); //цвет главного заднего фона 0x101010AA
        InventoryColors[x][icColor_BorderBox]          = 0x202020FF; //цвет фона наложения
        InventoryColors[x][icColor_Text]               = 0xFFFFFFFF; //цвет текста
        InventoryColors[x][icColor_Slot_Fon_MarginBox] = 0x000000FF; //цвет заднего фона слотов
        InventoryColors[x][icColor_Slot_Fon_BorderBox] = 0x303030FF; //цвет переднего фона слотов
        InventoryColors[x][icColor_Slot_Fon_Selected]  = 0x48D1CCFF; //цвет заднего фона выбранного слота
        InventoryColors[x][icColor_Cursor]             = 0xFFFFFF88; //цвет курсора
        InventoryColors[x][icColor_SmallStriped]       = 0x101010FF; //цвет маленьких разделительных полосок

        GlobalInventory[x][giMain_Fon] = TextDrawCreate(-5.00, -5.00, "_");//основной фон
        TextDrawBackgroundColor(GlobalInventory[x][giMain_Fon], InventoryColors[x][icColor_Main_Fon]);
        TextDrawFont(GlobalInventory[x][giMain_Fon], 5);
        TextDrawLetterSize(GlobalInventory[x][giMain_Fon], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giMain_Fon], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giMain_Fon], 1);
        TextDrawBoxColor(GlobalInventory[x][giMain_Fon], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giMain_Fon], 650.0000, 455.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giMain_Fon], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giMain_Fon], 0.00, 0.00, 0.00, 0.00);

//большой фон слотов    
        GlobalInventory[x][giBackpack_TopStrip][0] = TextDrawCreate(5.00, 38.00, "_");//верх полоска
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_TopStrip][0], InventoryColors[x][icColor_BorderBox]);
        TextDrawFont(GlobalInventory[x][giBackpack_TopStrip][0], 5);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_TopStrip][0], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_TopStrip][0], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_TopStrip][0], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_TopStrip][0], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_TopStrip][0], 629.0000, 20.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giBackpack_TopStrip][0], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giBackpack_TopStrip][0], 0.00, 0.00, 0.00, 0.00);

        GlobalInventory[x][giBackpack_TopStrip][1] = TextDrawCreate(20.00, 42.00, InventoryTextTD[4][x]); //Рюкзак
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_TopStrip][1], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giBackpack_TopStrip][1], 2);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_TopStrip][1], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giBackpack_TopStrip][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giBackpack_TopStrip][1], 1);
        TextDrawSetShadow(GlobalInventory[x][giBackpack_TopStrip][1], 0);

//load item
        GlobalInventory[x][giBackpack_Fon] = TextDrawCreate(5.00, 60.00, "_");//фон слотов
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_Fon], InventoryColors[x][icColor_BorderBox]);
        TextDrawFont(GlobalInventory[x][giBackpack_Fon], 5);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_Fon], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_Fon], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_Fon], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_Fon], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_Fon], 331.0000, 202.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giBackpack_Fon], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giBackpack_Fon], 0.00, 0.00, 0.00, 0.00);

//ObjectInfo
        GlobalInventory[x][giBackpack_ObjectInfo][0] = TextDrawCreate(24.00, 178.00, "_");//фон название предмета
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_ObjectInfo][0], 0x101010FF);
        TextDrawFont(GlobalInventory[x][giBackpack_ObjectInfo][0], 5);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_ObjectInfo][0], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_ObjectInfo][0], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_ObjectInfo][0], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_ObjectInfo][0], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_ObjectInfo][0], 309.0000, 18.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giBackpack_ObjectInfo][0], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giBackpack_ObjectInfo][0], 0.00, 0.00, 0.00, 0.00);

        GlobalInventory[x][giBackpack_ObjectInfo][1] = TextDrawCreate(28.00, 182.00, "LD_CHAT:badchat");//LD_CHAT:badchat
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_ObjectInfo][1], 0x00000000);
        TextDrawFont(GlobalInventory[x][giBackpack_ObjectInfo][1], 4);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_ObjectInfo][1], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_ObjectInfo][1], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_ObjectInfo][1], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_ObjectInfo][1], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_ObjectInfo][1], 10.0000, 10.0000);

        new Float:PosY = 203.0, Float:PosX;
        for(new x_s; x_s < 5; x_s++)
        {
            GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s] = TextDrawCreate(244.0, PosY - 3.0, "_");//разделительная полоса инфо
            TextDrawBackgroundColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], InventoryColors[x][icColor_SmallStriped]);
            TextDrawFont(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 5);
            TextDrawLetterSize(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 0.5000, 1.0000);
            TextDrawColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 0xFFFFFFFF);
            TextDrawUseBox(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 1);
            TextDrawBoxColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 0x00000000);
            TextDrawTextSize(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 71.0000 + 18.0, 2.0000);
            TextDrawSetPreviewModel(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 18691);
            TextDrawSetPreviewRot(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][x_s], 0.00, 0.00, 0.00, 0.00);

            PosY += 14.0;
        }
        GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5] = TextDrawCreate(256.00-17.0, 196.00, "_");//разделительная полоса инфо
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], InventoryColors[x][icColor_SmallStriped]);
        TextDrawFont(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 5);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 2.0000, 66.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giBackpack_ObjInfoDetail_Strip][5], 0.00, 0.00, 0.00, 0.00);

//кнопки
        GlobalInventory[x][giBackpack_Button_Left] = TextDrawCreate(292.00, 182.00, "ld_beat:left");
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_Button_Left], 0x00000000);
        TextDrawFont(GlobalInventory[x][giBackpack_Button_Left], 4);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_Button_Left], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_Button_Left], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_Button_Left], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_Button_Left], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_Button_Left], 10.0000, 10.0000);
        TextDrawSetSelectable(GlobalInventory[x][giBackpack_Button_Left], 1);

        GlobalInventory[x][giBackpack_Button_Right] = TextDrawCreate(318.00, 182.00, "ld_beat:right");
        TextDrawBackgroundColor(GlobalInventory[x][giBackpack_Button_Right], 0x00000000);
        TextDrawFont(GlobalInventory[x][giBackpack_Button_Right], 4);
        TextDrawLetterSize(GlobalInventory[x][giBackpack_Button_Right], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giBackpack_Button_Right], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giBackpack_Button_Right], 1);
        TextDrawBoxColor(GlobalInventory[x][giBackpack_Button_Right], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giBackpack_Button_Right], 10.0000, 10.0000);
        TextDrawSetSelectable(GlobalInventory[x][giBackpack_Button_Right], 1);
    
//Accessories 
       //столб 1
        GlobalInventory[x][giAccessories_TextStrips][0] = TextDrawCreate(553.00, 42.00, InventoryTextTD[5][x]);//"head"
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_TextStrips][0], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giAccessories_TextStrips][0], 2);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_TextStrips][0], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giAccessories_TextStrips][0], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giAccessories_TextStrips][0], 1);
        TextDrawSetShadow(GlobalInventory[x][giAccessories_TextStrips][0], 0);

        //столб 2
        GlobalInventory[x][giAccessories_BoxStrips][0] = TextDrawCreate(552.00, 141.0, "_");//верх полоска
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_BoxStrips][0], InventoryColors[x][icColor_BorderBox]);
        TextDrawFont(GlobalInventory[x][giAccessories_BoxStrips][0], 5);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_BoxStrips][0], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giAccessories_BoxStrips][0], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giAccessories_BoxStrips][0], 1);
        TextDrawBoxColor(GlobalInventory[x][giAccessories_BoxStrips][0], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giAccessories_BoxStrips][0], 82.0000, 20.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giAccessories_BoxStrips][0], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giAccessories_BoxStrips][0], 0.00, 0.00, 0.00, 0.00);

        GlobalInventory[x][giAccessories_TextStrips][1] = TextDrawCreate(553.00, 145.00, InventoryTextTD[6][x] );// тело
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_TextStrips][1], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giAccessories_TextStrips][1], 2);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_TextStrips][1], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giAccessories_TextStrips][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giAccessories_TextStrips][1], 1);
        TextDrawSetShadow(GlobalInventory[x][giAccessories_TextStrips][1], 0);

        //столб 3
        GlobalInventory[x][giAccessories_BoxStrips][1] = TextDrawCreate(552.00, 241.0, "_");//верх полоска
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_BoxStrips][1], InventoryColors[x][icColor_BorderBox]);
        TextDrawFont(GlobalInventory[x][giAccessories_BoxStrips][1], 5);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_BoxStrips][1], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giAccessories_BoxStrips][1], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giAccessories_BoxStrips][1], 1);
        TextDrawBoxColor(GlobalInventory[x][giAccessories_BoxStrips][1], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giAccessories_BoxStrips][1], 82.0000, 20.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giAccessories_BoxStrips][1], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giAccessories_BoxStrips][1], 0.00, 0.00, 0.00, 0.00);

        GlobalInventory[x][giAccessories_TextStrips][2] = TextDrawCreate(553.00, 245.0, InventoryTextTD[7][x] ); //"armor");
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_TextStrips][2], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giAccessories_TextStrips][2], 2);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_TextStrips][2], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giAccessories_TextStrips][2], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giAccessories_TextStrips][2], 1);
        TextDrawSetShadow(GlobalInventory[x][giAccessories_TextStrips][2], 0);

        GlobalInventory[x][giAccessories_TextStrips][3] = TextDrawCreate(585.00, 245.0, InventoryTextTD[8][x]); //"backpack");
        TextDrawBackgroundColor(GlobalInventory[x][giAccessories_TextStrips][3], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giAccessories_TextStrips][3], 2);
        TextDrawLetterSize(GlobalInventory[x][giAccessories_TextStrips][3], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giAccessories_TextStrips][3], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giAccessories_TextStrips][3], 1);
        TextDrawSetShadow(GlobalInventory[x][giAccessories_TextStrips][3], 0);
    
//IN_Hands
        GlobalInventory[x][giIN_Hands_TopStrip][0] = TextDrawCreate(352.50, 241.00, "_");//верх полоска
        TextDrawBackgroundColor(GlobalInventory[x][giIN_Hands_TopStrip][0], InventoryColors[x][icColor_BorderBox]);
        TextDrawFont(GlobalInventory[x][giIN_Hands_TopStrip][0], 5);
        TextDrawLetterSize(GlobalInventory[x][giIN_Hands_TopStrip][0], 0.5000, 1.0000);
        TextDrawColor(GlobalInventory[x][giIN_Hands_TopStrip][0], 0xFFFFFFFF);
        TextDrawUseBox(GlobalInventory[x][giIN_Hands_TopStrip][0], 1);
        TextDrawBoxColor(GlobalInventory[x][giIN_Hands_TopStrip][0], 0x00000000);
        TextDrawTextSize(GlobalInventory[x][giIN_Hands_TopStrip][0], 183.0000, 20.0000);
        TextDrawSetPreviewModel(GlobalInventory[x][giIN_Hands_TopStrip][0], 18691);
        TextDrawSetPreviewRot(GlobalInventory[x][giIN_Hands_TopStrip][0], 0.00, 0.00, 0.00, 0.00);

        GlobalInventory[x][giIN_Hands_TopStrip][1] = TextDrawCreate(353.00, 244.50, InventoryTextTD[9][x]);
        TextDrawBackgroundColor(GlobalInventory[x][giIN_Hands_TopStrip][1], 0x000000FF);
        TextDrawFont(GlobalInventory[x][giIN_Hands_TopStrip][1], 2);
        TextDrawLetterSize(GlobalInventory[x][giIN_Hands_TopStrip][1], 0.2099, 1.2199);
        TextDrawColor(GlobalInventory[x][giIN_Hands_TopStrip][1], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(GlobalInventory[x][giIN_Hands_TopStrip][1], 1);
        TextDrawSetShadow(GlobalInventory[x][giIN_Hands_TopStrip][1], 0);

        PosX = 378.0, PosY = 265.0;
        for(new x_w; x_w < 2; x_w++)
        {
            GlobalInventory[x][giIN_Hands_Slot_Fon][x_w] = TextDrawCreate(PosX, PosY, "_");//задний фон
            TextDrawBackgroundColor(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], InventoryColors[x][icColor_Slot_Fon_MarginBox]);
            TextDrawFont(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 5);
            TextDrawLetterSize(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 0.5000, 1.0000);
            TextDrawColor(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 0xFFFFFFFF);
            TextDrawUseBox(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 1);
            TextDrawBoxColor(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 0x00000000);
            if(x_w == 0) TextDrawTextSize(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 99.7000, 34.9000);   
            else TextDrawTextSize(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 29.7000, 34.9000);   
            TextDrawSetPreviewModel(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 18691);
            TextDrawSetPreviewRot(GlobalInventory[x][giIN_Hands_Slot_Fon][x_w], 0.00, 0.00, 0.00, 0.00);

            GlobalInventory[x][giIN_Hands_Slot_Icon][x_w] = TextDrawCreate(PosX + 0.5, PosY + 0.5, "_");//передний фон
            TextDrawBackgroundColor(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], InventoryColors[x][icColor_Slot_Fon_BorderBox]);
            TextDrawFont(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 5);
            TextDrawLetterSize(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 0.5000, 1.0000);
            TextDrawColor(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 0xFFFFFFFF);
            TextDrawUseBox(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 1);
            TextDrawBoxColor(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 0x00000000);
            if(x_w == 0) TextDrawTextSize(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 98.7000, 33.8997);
            else TextDrawTextSize(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 28.7000, 33.8997);
            TextDrawSetPreviewModel(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 18691);
            TextDrawSetPreviewRot(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], 0.0, 0.0, 0.0, 0.0);
            TextDrawSetSelectable(GlobalInventory[x][giIN_Hands_Slot_Icon][x_w], true);

            if(x_w == 0) PosX += 101.0;
            else PosX += 31.0;
        }

//IN_Indicators
        PosY = 307.0;
        for(new x_i; x_i < 4; x_i++)
        {
            if(x_i < 3)
            {
                GlobalInventory[x][giIndicators_Name][x_i] = TextDrawCreate(552.0, PosY, InventoryTextTD[11+x_i][x]);
                TextDrawBackgroundColor(GlobalInventory[x][giIndicators_Name][x_i], 0x000000FF);
                TextDrawFont(GlobalInventory[x][giIndicators_Name][x_i], 2);
                TextDrawLetterSize(GlobalInventory[x][giIndicators_Name][x_i], 0.1597, 0.9799);
                TextDrawColor(GlobalInventory[x][giIndicators_Name][x_i], InventoryColors[x][icColor_Text]);
                TextDrawSetProportional(GlobalInventory[x][giIndicators_Name][x_i], 1);
                TextDrawSetShadow(GlobalInventory[x][giIndicators_Name][x_i], 0);
            }

            GlobalInventory[x][giIndicators_Strip][x_i] = TextDrawCreate(552.0, PosY - 3.0, "_");//разделительная полоса инфо
            TextDrawBackgroundColor(GlobalInventory[x][giIndicators_Strip][x_i], InventoryColors[x][icColor_BorderBox]);
            TextDrawFont(GlobalInventory[x][giIndicators_Strip][x_i], 5);
            TextDrawLetterSize(GlobalInventory[x][giIndicators_Strip][x_i], 0.5000, 1.0000);
            TextDrawColor(GlobalInventory[x][giIndicators_Strip][x_i], 0xFFFFFFFF);
            TextDrawUseBox(GlobalInventory[x][giIndicators_Strip][x_i], 1);
            TextDrawBoxColor(GlobalInventory[x][giIndicators_Strip][x_i], 0x00000000);
            TextDrawTextSize(GlobalInventory[x][giIndicators_Strip][x_i], 82.0, 2.0);
            TextDrawSetPreviewModel(GlobalInventory[x][giIndicators_Strip][x_i], 18691);
            TextDrawSetPreviewRot(GlobalInventory[x][giIndicators_Strip][x_i], 0.00, 0.00, 0.00, 0.00);

            PosY += 14.0;
        }

        #include "../scripts/new_inventory/trunk/InventoryTrunkLoadTDGlobal.pwn"
    }