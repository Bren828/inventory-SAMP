
stock ShowInventory(playerid) {

    if(PlayerInv[playerid][iShow] == 1) {
        return 0;
    }

	PlayerInv[playerid][iShow] = 1;

	SelectTextDraw(playerid, InventoryColors[PlayerInv[playerid][iTheme]][icColor_Cursor]);
	TextDrawShowForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giMain_Fon]);

	#include "../source/inventory/function/InventoryLoadTD.pwn"
    return 1;
}

/*
CMD:inv(playerid)
{
    PlayerInv[playerid][iLanguage] = 0;
    PlayerInv[playerid][iTheme] = 0;

    ShowInventory(playerid);
    return 1;
}
*/