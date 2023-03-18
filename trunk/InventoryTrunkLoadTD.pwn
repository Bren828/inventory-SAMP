    
    
    //new string[50];
    new vehicleid = PlayerInv[playerid][iTrunkShow];

    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_TopStrip]);

    format(string, sizeof string, "%s - %s", InventoryTextTD[1][PlayerInv[playerid][iLanguage]], "Buffalo");
    PlayerInvTD[playerid][tiTrunk_TopStrip][0] = CreatePlayerTextDraw(playerid, 20.00, 269.00, string);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][0]);

    new Float:KgTrunkWeight;
    format(string, sizeof string, "%s %.1f / %d.0 %s", InventoryTextTD[0][PlayerInv[playerid][iLanguage]], KgTrunkWeight, 1000, InventoryTextTD[10][PlayerInv[playerid][iLanguage]]);

    PlayerInvTD[playerid][tiTrunk_TopStrip][1] = CreatePlayerTextDraw(playerid, 288.00, 269.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 3);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 0.2099, 1.2199);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][1]);

//кнопки
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Button_Left]);
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Button_Right]);

    format(string, sizeof string, "%d/%d", PlayerInv[playerid][iTrunkList]+1, 3);
    PlayerInvTD[playerid][tiTrunk_PageID] = CreatePlayerTextDraw(playerid, 310.00, 270.00, string);
    PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 2);
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 0x000000FF);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 2);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 0.1597, 0.9799);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_PageID], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
    PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 1);
    PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiTrunk_PageID], 0);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_PageID]);

//load item 
    TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Fon]);

    InventoryTrunkLoadItems(playerid, vehicleid);
