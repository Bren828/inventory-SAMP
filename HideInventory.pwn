stock HideInventory(playerid)
{
    if(PlayerInv[playerid][iShow] == 0) return 1;
	PlayerInv[playerid][iShow] = 0;

    CancelSelectTextDraw(playerid);

    #include "../scripts/new_inventory/inventory/InventoryUnLoadTD.pwn"
    
    if(PlayerInv[playerid][iTrunkShow] != 0)
    {
        #include "../scripts/new_inventory/trunk/InventoryTrunkUnLoadTD.pwn" 
    }

    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giMain_Fon]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiPageStripe]);
    for(new x; x < 1; x++) PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiPageText][x]);


    new page = PlayerInv[playerid][iList];
    PlayerInv[playerid] = NULL_PlayerInv;
    PlayerInv[playerid][iList] = page;
    return 1;
}