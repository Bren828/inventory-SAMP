public OnPlayerConnect(playerid)
{
    PlayerInv[playerid] = NULL_PlayerInv;
	PlayerInvTD[playerid] = NULL_PlayerInvTD;

    #if defined OnPlayerConnect_Inv
        OnPlayerConnect_Inv(playerid);
    #endif
    return 1;
}
#if defined _ALS_OnPlayerConnect
    #undef OnPlayerConnect
#else
    #define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect OnPlayerConnect_Inv
#if defined OnPlayerConnect_Inv
    forward OnPlayerConnect_Inv(playerid);
#endif
