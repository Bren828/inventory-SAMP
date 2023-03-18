    new string[50], Float:PosX, Float:PosY;

    PlayerInvTD[playerid][tiSkin3D] = CreatePlayerTextDraw(playerid, 379.00, 64.00, "_");//3D скин
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiSkin3D], 0x00000000);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiSkin3D], 5);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiSkin3D], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiSkin3D], 0xFFFFFFFF);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiSkin3D], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiSkin3D], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiSkin3D], 130.0000, 170.0000);
    PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiSkin3D], 1 /* ID skin */);
    PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiSkin3D], -5.00, 0.00, 0.00, 1.00);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiSkin3D], true);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiSkin3D]);


    PlayerInvTD[playerid][tiPageText][0] = CreatePlayerTextDraw(playerid, 19.0, 4.50, InventoryTextTD[14][PlayerInv[playerid][iLanguage]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiPageText][0], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiPageText][0], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiPageText][0], 0.3598, 2.2899);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiPageText][0], 0xFFFFFFFF);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiPageText][0], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiPageText][0], 0);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiPageText][0], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiPageText][0], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiPageText][0], 90.0, 17.0);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiPageText][0], 1);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiPageText][0]);

    PlayerInvTD[playerid][tiPageStripe] = CreatePlayerTextDraw(playerid, 16.0, 26.00, "_");//верх полоска
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiPageStripe], 0x373737FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiPageStripe], 5);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiPageStripe], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiPageStripe], 0xFFFFFFFF);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiPageStripe], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiPageStripe], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiPageStripe], 90.0, 2.0);
    PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiPageStripe], 18691);
    PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiPageStripe], 0.00, 0.00, 0.00, 0.00);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiPageStripe]);


//большой фон слотов
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_TopStrip][0]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giBackpack_TopStrip][1]);

    new backpack = 50, Float:KgBackpack = 0.0;
    format(string, sizeof string, "%s %.1f / %d.0 kg", InventoryTextTD[0][PlayerInv[playerid][iLanguage]], KgBackpack, backpack, InventoryTextTD[10][PlayerInv[playerid][iLanguage]]);

    PlayerInvTD[playerid][tiBackpack_WeightText] = CreatePlayerTextDraw(playerid, 336.0, 42.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 3);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_WeightText], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_WeightText]);

//load item
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Fon]);
    
    InventoryLoadItems(playerid);

//ObjectInfo
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_ObjectInfo][0]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_ObjectInfo][1]);

    PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name] = CreatePlayerTextDraw(playerid, 41.00, 181.00, InventoryTextTD[2][PlayerInv[playerid][iLanguage]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name]);

    PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction] = CreatePlayerTextDraw(playerid, 27.00, 200.00, InventoryTextTD[3][PlayerInv[playerid][iLanguage]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction]);

//  подробная информация о предмете
    new textObjInfo[4][2][8] = 
    {
        {"Тип",     "Еда"},
        {"Сытость", "10%"},
        {"Вес",     "0.1 kg"},
        {"Цена",    "$100"}
    };

    PosY = 203.0;
    for(new x; x < 6; x++)
    {
        if(x < 4)
        {
            PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x] = CreatePlayerTextDraw(playerid, 244.0, PosY, textObjInfo[x][0]);
            PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], 0x000000FF);
            PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], 2);
            PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], 0.1597, 0.9799);
            PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
            PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], 1);
            PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x], 0);
            PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x]);

            PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x] = CreatePlayerTextDraw(playerid, 332.00, PosY, textObjInfo[x][1]);
            PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 3);
            PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 0x000000FF);
            PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 2);
            PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 0.1597, 0.9799);
            PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
            PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 1);
            PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x], 0);
            PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x]);
        }
        TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_ObjInfoDetail_Strip][x]);
        PosY += 14.0;
    }

//кнопки
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Button_Left]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Button_Right]);
   
    format(string, sizeof string, "%d/%d", PlayerInv[playerid][iList]+1, 3);
    PlayerInvTD[playerid][tiBackpack_PageID] = CreatePlayerTextDraw(playerid, 310.00, 182.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 2);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_PageID], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_PageID], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_PageID]);

//Accessories
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giAccessories_BoxStrips][0]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giAccessories_BoxStrips][1]);

    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giAccessories_TextStrips][0]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giAccessories_TextStrips][1]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giAccessories_TextStrips][2]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giAccessories_TextStrips][3]);
    
    InventoryLoadAccessories(playerid);

//IN_Hands
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_TopStrip][0]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giIN_Hands_TopStrip][1]);

    PosX = 352.0, PosY = 265.0;
    for(new x; x < 2; x++)
    {
        TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_Slot_Fon][x]);
        TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_Slot_Icon][x]);

        PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x] = CreatePlayerTextDraw(playerid, PosX + float((x == 0) ? (97):(27)), PosY + 26.0, "_");//кол-во
        PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 3);
        PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 0x000000FF);
        PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 2);
        PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 0.1400, 0.6499);
        PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
        PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 1);
        PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], 0);
    
        if(PlayerInv[playerid][iWeapon][x] >= 1)
        {
            new idWeapon = PlayerInv[playerid][iWeapon][x]-1;
            // PlayerInvTD[playerid][tiIN_Hands_Slot_Icon2][x] = CreatePlayerTextDraw(playerid, Float:x, Float:y, text[])

            if(idWeapon >= 16 && idWeapon <= 33)
            {
                format(string, sizeof(string), "%d", PlayerInv[playerid][iWeaponQty][x]); 
                PlayerTextDrawSetString(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x], string);
                PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x]);
            }
        }
        if(x == 0) PosX += 101.0;
        else PosX += 31.0;
    }

    
// === индикаторы здоровья, сытости
    new Float:health;
    GetPlayerHealth(playerid, health);
    PosY = 307.0;
    for(new x; x < 4; x++)
    {
        if(x < 3)
        {
            TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giIndicators_Name][x]);
            switch(x)
            {
                case 0: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0xFF0000FF); 
                case 1: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0xFFFF00FF);
                case 2: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0x0075FFFF);
            }
            PosY += 14.0;
            ShowPlayerProgressBar(playerid, PlayerInv[playerid][iIndicators_Bar][x]);
        }
        TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIndicators_Strip][x]);
    }

    PlayerInv[playerid][iTrunkShow] = 1 /*GetPlayerVehicleID(playerid)*/;
    #include "../scripts/new_inventory/trunk/InventoryTrunkLoadTD.pwn"
    