stock InventoryLoadAccessories(playerid)
{
    new Float:PosX = 552.0, Float:PosY = 65.0;

	for(new x = 0; x < 10; x++)
	{
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);

        PlayerInvTD[playerid][tiAccessories_Fon][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Slot_Fon_MarginBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);

		PlayerInvTD[playerid][tiAccessories_Icon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], InventoryColors[PlayerInv[playerid][iTheme]][icColor_Slot_Fon_BorderBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 28.7000, 33.8997);
        
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0.0, 0.0, 0.0, 0.0);
       
	    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);

        PosX += 31.0;
		if(x == 1 || x == 3 || x == 5 || x == 7)
		{
			PosX = 552.0;
			PosY += 37.0;
            if(x == 3 || x == 7 || x == 9) PosY += 26.0;
		}
	}
	return 1;
}