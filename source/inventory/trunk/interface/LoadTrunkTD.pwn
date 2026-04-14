    
    
    //new string[50];
    new vehicleid = PlayerInv[playerid][i_TrunkVehicleID];

    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkStrip]);

    format(string, sizeof string, "%s - %s", InventoryTextTD[1][PlayerInv[playerid][i_Language]], "Buffalo");
    PlayerInvTD[playerid][itd_TrunkStrip][0] = CreatePlayerTextDraw(playerid, 20.00, 269.00, string);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkStrip][0]);

    new Float:KgTrunkWeight;
    format(string, sizeof string, "%s %.1f / %d.0 %s", 
        InventoryTextTD[0][PlayerInv[playerid][i_Language]], 
        KgTrunkWeight, 1000, 
        InventoryTextTD[10][PlayerInv[playerid][i_Language]]);

    PlayerInvTD[playerid][itd_TrunkStrip][1] = CreatePlayerTextDraw(playerid, 288.00, 269.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 3);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkStrip][1]);

//кнопки
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkLeftButton]);
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkRightButton]);

    format(string, sizeof string, "%d/%d", PlayerInv[playerid][i_TrunkPage] + 1, 3);
    PlayerInvTD[playerid][itd_TrunkPageText] = CreatePlayerTextDraw(playerid, 310.00, 270.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 2);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkPageText], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_TrunkPageText], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkPageText]);

//load item 
    TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkBackground]);

    LoadTrunkItems(playerid, vehicleid);
