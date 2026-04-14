

stock LoadInvItems(playerid) {

	new /*page = PlayerInv[playerid][i_Page],*/ 
		string[5], 
		Float:PosX = 24.0, 
		Float:PosY = 65.0, 
		line; 

	for(new x = 0; x < INV_MAX_ITEM_SLOTS; x++) {

		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotBackground][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotIcon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x]);

		PlayerInvTD[playerid][itd_SlotBackground][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Background]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_SlotBackground][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_SlotBackground][x]);

		PlayerInvTD[playerid][itd_SlotIcon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Slot_Foreground]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 28.7000, 33.8997);
		
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], 0.0, 0.0, 0.0, 0.0);

		PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][itd_SlotIcon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_SlotIcon][x]);


		format(string, sizeof(string), "_");
		PlayerInvTD[playerid][itd_SlotQuantity][x] = CreatePlayerTextDraw(playerid, PosX + 27.0, PosY + 26.0, string);//кол-во
		PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 3);
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 0x000000FF);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 2);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 0.1400, 0.6499);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], InventoryColors[PlayerInv[playerid][i_Theme]][icColor_Text]);
		PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 1);
		PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x], 0);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x]);

		PosX += 31.0;
		line++;
		if(line >= 10) {
			PosX = 24.0;
			PosY += 37.0;
			line = 0;
		}
	}
	return 1;
}