public OnGameModeInit()
{
    for(new PLAYER_INV_TD_EN:x; x < PLAYER_INV_TD_EN; x ++) NULL_PlayerInvTD[x] = INVALID_TEXT_DRAW;

    #include "../scripts/new_inventory/inventory/InventoryLoadTDGlobal.pwn"

    #if defined OnGameModeInit_Inv
        OnGameModeInit_Inv();
    #endif
    return 1;
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit OnGameModeInit_Inv
#if defined OnGameModeInit_Inv
    forward OnGameModeInit_Inv();
#endif
