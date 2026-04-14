
public OnPlayerConnect(playerid) {

    PlayerInv[playerid] = NULL_PlayerInv;
	PlayerInvTD[playerid] = NULL_PlayerInvTD;

    #if defined OnPlayerConnect_Inv
        return OnPlayerConnect_Inv(playerid);
    #else 
        return 1;
    #endif
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
