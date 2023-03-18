    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Fon]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_TopStrip][0]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giBackpack_TopStrip][1]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_TopStrip][0]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giIN_Hands_TopStrip][1]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiSkin3D]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_WeightText]);
    for(new x; x < 30; x++) 
    {
        if(x < 2) 
        {
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_ObjectInfo][x]);
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giAccessories_BoxStrips][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Icon2][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiIN_Hands_Slot_Quantity][x]);
        }
        if(x < 3)
        {
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_Slot_Fon][x]);
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIN_Hands_Slot_Icon][x]);
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giIndicators_Name][x]);
            DestroyPlayerProgressBar(playerid, PlayerInv[playerid][iIndicators_Bar][x]);
        }    
        if(x < 4) 
        {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Name][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ObjInfoDetail_Data][x]);
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giIndicators_Strip][x]);
            TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iLanguage]][giAccessories_TextStrips][x]);
        }

        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x]);

        if(x < 6) TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_ObjInfoDetail_Strip][x]);
        if(x < 10)
        {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);
		    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);
        }
    }
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Name]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ObjectInfo_Depiction]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Button_Left]);
    TextDrawHideForPlayer(playerid, GlobalInventory[PlayerInv[playerid][iTheme]][giBackpack_Button_Right]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_PageID]);