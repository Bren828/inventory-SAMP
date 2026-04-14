
    MainTDInv[x][itdm_TrunkStrip] = TextDrawCreate(5.00, 265.00, "_");//верх полоска
    TextDrawBackgroundColor(MainTDInv[x][itdm_TrunkStrip], InventoryColors[x][icColor_Main_Foreground]);
    TextDrawFont(MainTDInv[x][itdm_TrunkStrip], 5);
    TextDrawLetterSize(MainTDInv[x][itdm_TrunkStrip], 0.5000, 1.0000);
    TextDrawColor(MainTDInv[x][itdm_TrunkStrip], 0xFFFFFFFF);
    TextDrawUseBox(MainTDInv[x][itdm_TrunkStrip], 1);
    TextDrawBoxColor(MainTDInv[x][itdm_TrunkStrip], 0x00000077);
    TextDrawTextSize(MainTDInv[x][itdm_TrunkStrip], 331.0000, 20.0000);
    TextDrawSetPreviewModel(MainTDInv[x][itdm_TrunkStrip], 18691);
    TextDrawSetPreviewRot(MainTDInv[x][itdm_TrunkStrip], 0.00, 0.00, 0.00, 0.00);

//кнопки
    MainTDInv[x][itdm_TrunkLeftButton] = TextDrawCreate(292.00, 270.00, "ld_beat:left");
    TextDrawBackgroundColor(MainTDInv[x][itdm_TrunkLeftButton], 0x00000000);
    TextDrawFont(MainTDInv[x][itdm_TrunkLeftButton], 4);
    TextDrawLetterSize(MainTDInv[x][itdm_TrunkLeftButton], 0.5000, 1.0000);
    TextDrawColor(MainTDInv[x][itdm_TrunkLeftButton], 0xFFFFFFFF);
    TextDrawUseBox(MainTDInv[x][itdm_TrunkLeftButton], 1);
    TextDrawBoxColor(MainTDInv[x][itdm_TrunkLeftButton], 0x00000077);
    TextDrawTextSize(MainTDInv[x][itdm_TrunkLeftButton], 10.0000, 10.0000);
    TextDrawSetSelectable(MainTDInv[x][itdm_TrunkLeftButton], 1);

    MainTDInv[x][itdm_TrunkRightButton] = TextDrawCreate(318.00, 270.00, "ld_beat:right");
    TextDrawBackgroundColor(MainTDInv[x][itdm_TrunkRightButton], 0x00000000);
    TextDrawFont(MainTDInv[x][itdm_TrunkRightButton], 4);
    TextDrawLetterSize(MainTDInv[x][itdm_TrunkRightButton], 0.5000, 1.0000);
    TextDrawColor(MainTDInv[x][itdm_TrunkRightButton], 0xFFFFFFFF);
    TextDrawUseBox(MainTDInv[x][itdm_TrunkRightButton], 1);
    TextDrawBoxColor(MainTDInv[x][itdm_TrunkRightButton], 0x00000077);
    TextDrawTextSize(MainTDInv[x][itdm_TrunkRightButton], 10.0000, 10.0000);
    TextDrawSetSelectable(MainTDInv[x][itdm_TrunkRightButton], 1);

//load item 
    MainTDInv[x][itdm_TrunkBackground] = TextDrawCreate(5.00, 287.00, "_");//фон слотов
    TextDrawBackgroundColor(MainTDInv[x][itdm_TrunkBackground], InventoryColors[x][icColor_Main_Foreground]);
    TextDrawFont(MainTDInv[x][itdm_TrunkBackground], 5);
    TextDrawLetterSize(MainTDInv[x][itdm_TrunkBackground], 0.5000, 1.0000);
    TextDrawColor(MainTDInv[x][itdm_TrunkBackground], 0xFFFFFFFF);
    TextDrawUseBox(MainTDInv[x][itdm_TrunkBackground], 1);
    TextDrawBoxColor(MainTDInv[x][itdm_TrunkBackground], 0x00000077);
    TextDrawTextSize(MainTDInv[x][itdm_TrunkBackground], 331.0000, 119.0000);
    TextDrawSetPreviewModel(MainTDInv[x][itdm_TrunkBackground], 18691);
    TextDrawSetPreviewRot(MainTDInv[x][itdm_TrunkBackground], 0.00, 0.00, 0.00, 0.00);
