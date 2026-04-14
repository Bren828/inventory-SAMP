    
    new string[50], 
        Float:PosX, 
        Float:PosY;

    PlayerInvTD[playerid][itd_Skin] = CreatePlayerTextDraw(playerid, 379.00, 64.00, "_");//3D скин
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_Skin], 0x00000000);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_Skin], 5);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_Skin], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_Skin], 0xFFFFFFFF);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_Skin], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_Skin], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_Skin], 130.0000, 170.0000);
    PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_Skin], 1 /* ID skin */);
    PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_Skin], -5.00, 0.00, 0.00, 1.00);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][itd_Skin], true);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_Skin]);


    PlayerInvTD[playerid][itd_PagesDescription] = CreatePlayerTextDraw(playerid, 19.0, 4.50, InventoryTextTD[14][PlayerInv[playerid][i_Language]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_PagesDescription], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_PagesDescription], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_PagesDescription], 0.3598, 2.2899);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_PagesDescription], 0xFFFFFFFF);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_PagesDescription], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_PagesDescription], 0);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_PagesDescription], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_PagesDescription], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_PagesDescription], 90.0, 17.0);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][itd_PagesDescription], 1);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_PagesDescription]);

    PlayerInvTD[playerid][itd_PageStripe] = CreatePlayerTextDraw(playerid, 16.0, 26.00, "_");//верх полоска
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_PageStripe], 0x373737FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_PageStripe], 5);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_PageStripe], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_PageStripe], 0xFFFFFFFF);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_PageStripe], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_PageStripe], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_PageStripe], 90.0, 2.0);
    PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_PageStripe], 18691);
    PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_PageStripe], 0.00, 0.00, 0.00, 0.00);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_PageStripe]);


//большой фон слотов
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Strip][0]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_Strip][1]);

    new backpack = 50, 
        Float:KgBackpack = 0.0;

    format(string, sizeof string, "%s %.1f / %d.0 kg", 
        InventoryTextTD[0][PlayerInv[playerid][i_Language]], 
        KgBackpack, 
        backpack, 
        InventoryTextTD[10][PlayerInv[playerid][i_Language]]);

    PlayerInvTD[playerid][itd_WeightText] = CreatePlayerTextDraw(playerid, 336.0, 42.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_WeightText], 3);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_WeightText], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_WeightText], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_WeightText], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_WeightText], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_WeightText], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_WeightText], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_WeightText]);

//load item
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Background]);
    
    LoadInvItems(playerid);

//ObjectInfo
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Stats_Background][0]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Stats_Background][1]);

    PlayerInvTD[playerid][itd_Stats_Name] = CreatePlayerTextDraw(playerid, 41.00, 181.00, InventoryTextTD[2][PlayerInv[playerid][i_Language]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_Stats_Name], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_Stats_Name], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_Stats_Name], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_Stats_Name], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_Stats_Name], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_Stats_Name], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_Stats_Name]);

    PlayerInvTD[playerid][itd_Stats_Depiction] = CreatePlayerTextDraw(playerid, 27.00, 200.00, InventoryTextTD[3][PlayerInv[playerid][i_Language]]);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_Stats_Depiction], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_Stats_Depiction]);

//  подробная информация о предмете

    new textObjInfo[4][2][8] = {
        {"Тип",         "Еда"},
        {"Сытость",     "10%"},
        {"Вес",         "0.1 kg"},
        {"Цена",        "$100"}
    };

    PosY = 203.0;
    for(new x; x < 6; x++) {

        if(x < 4) {
            PlayerInvTD[playerid][itd_Stats_DetailedName][x] = CreatePlayerTextDraw(playerid, 244.0, PosY, textObjInfo[x][0]);
            PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], 0x000000FF);
            PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], 2);
            PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], 0.1597, 0.9799);
            PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
            PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], 1);
            PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x], 0);
            PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x]);

            PlayerInvTD[playerid][itd_Stats_DetailedData][x] = CreatePlayerTextDraw(playerid, 332.00, PosY, textObjInfo[x][1]);
            PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 3);
            PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 0x000000FF);
            PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 2);
            PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 0.1597, 0.9799);
            PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
            PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 1);
            PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x], 0);
            PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x]);
        }

        TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Stats_Strip][x]);
        PosY += 14.0;
    }

//кнопки
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_LeftButton]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_RightButton]);
   
    format(string, sizeof string, "%d/%d", PlayerInv[playerid][i_Page] + 1, 3);

    PlayerInvTD[playerid][itd_PageText] = CreatePlayerTextDraw(playerid, 310.00, 182.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_PageText], 2);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_PageText], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_PageText], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_PageText], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_PageText], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_PageText], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_PageText], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_PageText]);

//Accessories
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_AccessoriesStrips][0]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_AccessoriesStrips][1]);

    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_AccessoriesStripsText][0]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_AccessoriesStripsText][1]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_AccessoriesStripsText][2]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_AccessoriesStripsText][3]);
    
    LoadAccessoriesItems(playerid);

//IN_Hands
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsStrip][0]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_HandsStrip][1]);

    PosX = 352.0; 
    PosY = 265.0;

    for(new x; x < 2; x++) {

        TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsBackground][x]);
        TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsIcon][x]);

        PlayerInvTD[playerid][itd_HandsQuantity][x] = CreatePlayerTextDraw(playerid, PosX + float((x == 0) ? (97):(27)), PosY + 26.0, "_");//кол-во
        PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 3);
        PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 0x000000FF);
        PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 2);
        PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 0.1400, 0.6499);
        PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
        PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 1);
        PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], 0);
    
        if(PlayerInv[playerid][i_Weapon][x] >= 1) {

            new idWeapon = PlayerInv[playerid][i_Weapon][x]-1;
            // PlayerInvTD[playerid][itd_HandsIcon][x] = CreatePlayerTextDraw(playerid, Float:x, Float:y, text[])

            if(idWeapon >= 16 && idWeapon <= 33) {
                format(string, sizeof(string), "%d", PlayerInv[playerid][i_WeaponQty][x]); 
                PlayerTextDrawSetString(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x], string);
                PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x]);
            }
        }

        if(x == 0) {
            PosX += 101.0;
        }
        else {
            PosX += 31.0;
        }
    }

    
// === индикаторы здоровья, сытости
    new Float:health;
    GetPlayerHealth(playerid, health);

    PosY = 307.0;

    for(new x; x < 4; x++) {

        if(x < 3) {
            TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_IndicatorName][x]);

            switch(x) {
                case 0: {
                    PlayerInv[playerid][i_Indicators][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0xFF0000FF); 
                }
                case 1: {
                    PlayerInv[playerid][i_Indicators][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0xFFFF00FF);
                }
                case 2: {
                    PlayerInv[playerid][i_Indicators][x] = CreatePlayerProgressBar(playerid, 602.00, PosY + 4.0, 34.00, 1.69, 0x0075FFFF);
                }
            }

            PosY += 14.0;
            ShowPlayerProgressBar(playerid, PlayerInv[playerid][i_Indicators][x]);
        }

        TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_IndicatorStrip][x]);
    }

    PlayerInv[playerid][i_TrunkShow] = true;
    PlayerInv[playerid][i_TrunkVehicleID] = 0;

    #include "../source/inventory/trunk/interface/LoadTrunkTD.pwn"
    