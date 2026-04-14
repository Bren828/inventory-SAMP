

stock LoadAccessoriesItems(playerid) {

    new Float:PosX = 552.0, 
		Float:PosY = 65.0;

	for(new x = 0; x < INV_MAX_ACCESSORY_SLOTS; x++) {

		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x]);

        PlayerInvTD[playerid][itd_AccessoriesBackground][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Background]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x]);

		PlayerInvTD[playerid][itd_AccessoriesIcon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Foreground]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 28.7000, 33.8997);
        
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], 0.0, 0.0, 0.0, 0.0);
       
	    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x]);

        PosX += 31.0;
		if(x == 1 || x == 3 || x == 5 || x == 7) {
			PosX = 552.0;
			PosY += 37.0;
            if(x == 3 || x == 7 || x == 9) {
				PosY += 26.0;
			}
		}
	}
	return 1;
}