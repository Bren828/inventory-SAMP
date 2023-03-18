
        
    PlayerInv[playerid][iTrunkShow] = 0;

    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Fon]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_TopStrip]);
    for(new x; x < 30; x++)
    {
        if(x < 2) PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_TopStrip][x]);

        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x]);
    }
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Button_Left]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giTrunk_Button_Right]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_PageID]);