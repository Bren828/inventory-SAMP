
        
    PlayerInv[playerid][i_TrunkShow] = false;
    PlayerInv[playerid][i_TrunkVehicleID] = 0;

    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkBackground]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkStrip]);

    for(new x; x < INV_MAX_TRUNK_ITEMS; x++) {

        if(x < 2) {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkStrip][x]);
        }
        
        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotBackground][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotIcon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkSlotQuantity][x]);
    }

    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkLeftButton]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_TrunkRightButton]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_TrunkPageText]);