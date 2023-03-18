
    GlobalInventory[x][giTrunk_TopStrip] = TextDrawCreate(5.00, 265.00, "_");//верх полоска
    TextDrawBackgroundColor(GlobalInventory[x][giTrunk_TopStrip], InventoryColors[x][icColor_BorderBox]);
    TextDrawFont(GlobalInventory[x][giTrunk_TopStrip], 5);
    TextDrawLetterSize(GlobalInventory[x][giTrunk_TopStrip], 0.5000, 1.0000);
    TextDrawColor(GlobalInventory[x][giTrunk_TopStrip], 0xFFFFFFFF);
    TextDrawUseBox(GlobalInventory[x][giTrunk_TopStrip], 1);
    TextDrawBoxColor(GlobalInventory[x][giTrunk_TopStrip], 0x00000077);
    TextDrawTextSize(GlobalInventory[x][giTrunk_TopStrip], 331.0000, 20.0000);
    TextDrawSetPreviewModel(GlobalInventory[x][giTrunk_TopStrip], 18691);
    TextDrawSetPreviewRot(GlobalInventory[x][giTrunk_TopStrip], 0.00, 0.00, 0.00, 0.00);

//кнопки
    GlobalInventory[x][giTrunk_Button_Left] = TextDrawCreate(292.00, 270.00, "ld_beat:left");
    TextDrawBackgroundColor(GlobalInventory[x][giTrunk_Button_Left], 0x00000000);
    TextDrawFont(GlobalInventory[x][giTrunk_Button_Left], 4);
    TextDrawLetterSize(GlobalInventory[x][giTrunk_Button_Left], 0.5000, 1.0000);
    TextDrawColor(GlobalInventory[x][giTrunk_Button_Left], 0xFFFFFFFF);
    TextDrawUseBox(GlobalInventory[x][giTrunk_Button_Left], 1);
    TextDrawBoxColor(GlobalInventory[x][giTrunk_Button_Left], 0x00000077);
    TextDrawTextSize(GlobalInventory[x][giTrunk_Button_Left], 10.0000, 10.0000);
    TextDrawSetSelectable(GlobalInventory[x][giTrunk_Button_Left], 1);

    GlobalInventory[x][giTrunk_Button_Right] = TextDrawCreate(318.00, 270.00, "ld_beat:right");
    TextDrawBackgroundColor(GlobalInventory[x][giTrunk_Button_Right], 0x00000000);
    TextDrawFont(GlobalInventory[x][giTrunk_Button_Right], 4);
    TextDrawLetterSize(GlobalInventory[x][giTrunk_Button_Right], 0.5000, 1.0000);
    TextDrawColor(GlobalInventory[x][giTrunk_Button_Right], 0xFFFFFFFF);
    TextDrawUseBox(GlobalInventory[x][giTrunk_Button_Right], 1);
    TextDrawBoxColor(GlobalInventory[x][giTrunk_Button_Right], 0x00000077);
    TextDrawTextSize(GlobalInventory[x][giTrunk_Button_Right], 10.0000, 10.0000);
    TextDrawSetSelectable(GlobalInventory[x][giTrunk_Button_Right], 1);

//load item 
    GlobalInventory[x][giTrunk_Fon] = TextDrawCreate(5.00, 287.00, "_");//фон слотов
    TextDrawBackgroundColor(GlobalInventory[x][giTrunk_Fon], InventoryColors[x][icColor_BorderBox]);
    TextDrawFont(GlobalInventory[x][giTrunk_Fon], 5);
    TextDrawLetterSize(GlobalInventory[x][giTrunk_Fon], 0.5000, 1.0000);
    TextDrawColor(GlobalInventory[x][giTrunk_Fon], 0xFFFFFFFF);
    TextDrawUseBox(GlobalInventory[x][giTrunk_Fon], 1);
    TextDrawBoxColor(GlobalInventory[x][giTrunk_Fon], 0x00000077);
    TextDrawTextSize(GlobalInventory[x][giTrunk_Fon], 331.0000, 119.0000);
    TextDrawSetPreviewModel(GlobalInventory[x][giTrunk_Fon], 18691);
    TextDrawSetPreviewRot(GlobalInventory[x][giTrunk_Fon], 0.00, 0.00, 0.00, 0.00);
