
stock HideInventory(playerid) {

    if(!PlayerInv[playerid][i_Show]) {
        return 0;
    }
    
    PlayerInv[playerid][i_Show] = false;

    CancelSelectTextDraw(playerid);

    #include "../source/inventory/player/interface/UnLoadTD.pwn"
    
    if(PlayerInv[playerid][i_TrunkShow]) {
        #include "../source/inventory/trunk/interface/UnLoadTrunkTD.pwn" 
    }

    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_MainBackground]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_PageStripe]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_PagesDescription]);

    new page = PlayerInv[playerid][i_Page];

    PlayerInv[playerid] = NULL_PlayerInv;
    PlayerInv[playerid][i_Page] = page;
    return 1;
}