
stock ShowInventory(playerid) {

    if(PlayerInv[playerid][i_Show]) {
        return 0;
    }

	PlayerInv[playerid][i_Show] = true;

	SelectTextDraw(playerid, InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Cursor]);
	TextDrawShowForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_MainBackground]);

	#include "../source/inventory/player/interface/LoadTD.pwn"
    return 1;
}

/*
CMD:inv(playerid) {
    
    PlayerInv[playerid][i_Language] = 0;
    PlayerInv[playerid][i_Theme] = 0;

    ShowInventory(playerid);
    return 1;
}
*/