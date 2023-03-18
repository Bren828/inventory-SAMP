

public OnPlayerDisconnect(playerid, reason)
{
    if(PlayerInv[playerid][iShow] == 1) HideInventory(playerid);

    #if defined OnPlayerDisconnect_Inv
        OnPlayerDisconnect_Inv(playerid, reason);
    #endif
    return 1;
}
#if defined _ALS_OnPlayerDisconnect
    #undef OnPlayerDisconnect
#else
    #define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect OnPlayerDisconnect_Inv
#if defined OnPlayerDisconnect_Inv
    forward OnPlayerDisconnect_Inv(playerid, reason);
#endif
