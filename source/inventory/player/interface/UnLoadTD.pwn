    
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Background]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Strip][0]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_Strip][1]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsStrip][0]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_HandsStrip][1]);

    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_Skin]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_WeightText]);

    for(new x; x < INV_MAX_ITEM_SLOTS; x++) {

        if(x < 2) {
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Stats_Background][x]);
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_AccessoriesStrips][x]);

            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_HandsIcon][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_HandsQuantity][x]);
        }
        if(x < 3) {
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsBackground][x]);
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_HandsIcon][x]);
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_IndicatorName][x]);

            DestroyPlayerProgressBar(playerid, PlayerInv[playerid][i_Indicators][x]);
        }    
        if(x < 4) {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_Stats_DetailedName][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_Stats_DetailedData][x]);

            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_IndicatorStrip][x]);
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Language]][itdm_AccessoriesStripsText][x]);
        }

        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotBackground][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotIcon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_SlotQuantity][x]);

        if(x < 6) {
            TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_Stats_Strip][x]);
        }

        if(x < INV_MAX_ACCESSORY_SLOTS) {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_AccessoriesBackground][x]);
		    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_AccessoriesIcon][x]);
        }
    }

    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_Stats_Name]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_Stats_Depiction]);

    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_LeftButton]);
    TextDrawHideForPlayer(playerid, MainTDInv[PlayerInv[playerid][i_Theme]][itdm_RightButton]);
    
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][itd_PageText]);