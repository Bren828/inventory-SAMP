stock InventoryTrunkLoadItems(playerid, vehicleid)
{
	new /*listID = PlayerInv[playerid][iTrunkList],*/ string[5], Float:PosX = 24.0, Float:PosY = 292.0;

	for(new x = 0; x < 30; x++)
	{

		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x]);

		PlayerInvTD[playerid][tiTrunk_Slot_Fon][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Slot_Fon_MarginBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x]);

		PlayerInvTD[playerid][tiTrunk_Slot_Icon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Slot_Fon_BorderBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 28.7000, 33.8997);
		
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], 0.0, 0.0, 0.0, 0.0);
		
		PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x]);


		if(vehicleid != 0) {
			
		}
		format(string, sizeof(string), "_");

		PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x] = CreatePlayerTextDraw(playerid, PosX + 27.0, PosY + 26.0, string);//кол-во
		PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 3);
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 0x000000FF);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 2);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 0.1400, 0.6499);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Text]);
		PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 1);
		PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x], 0);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x]);


		PosX += 31.0;
		if(x == 9 || x == 19)
		{
			PosX = 24.0;
			PosY += 37.0;
		}
	}
	return 1;
}