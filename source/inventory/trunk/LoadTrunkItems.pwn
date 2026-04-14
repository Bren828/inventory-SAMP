
stock LoadTrunkItems(playerid, vehicleid) {

	new /*page = PlayerInv[playerid][i_TrunkPage],*/ 
		string[5], 
		Float:PosX = 24.0, 
		Float:PosY = 292.0;

	for(new x = 0; x < INV_MAX_TRUNK_ITEMS; x++) {

		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x]);

		PlayerInvTD[playerid][itd_TrunkSlotBackground][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Background]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x]);

		PlayerInvTD[playerid][itd_TrunkSlotIcon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Foreground]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 28.7000, 33.8997);
		
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], 0.0, 0.0, 0.0, 0.0);
		
		PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x]);


		if(vehicleid != 0) {
			
		}
		format(string, sizeof(string), "_");

		PlayerInvTD[playerid][itd_TrunkSlotQuantity][x] = CreatePlayerTextDraw(playerid, PosX + 27.0, PosY + 26.0, string);//кол-во
		PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 3);
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 0x000000FF);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 2);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 0.1400, 0.6499);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
		PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 1);
		PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x], 0);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x]);


		PosX += 31.0;
		if(x == 9 || x == 19) {
			PosX = 24.0;
			PosY += 37.0;
		}
	}
	return 1;
}