
public OnGameModeInit() {

    for(new PLAYER_INV_TD_EN:x; x < PLAYER_INV_TD_EN; x ++) {
        NULL_PlayerInvTD[x] = PlayerText:INVALID_TEXT_DRAW;
    }

    #include "../source/inventory/function/InventoryLoadTDGlobal.pwn"

    #if defined OnGameModeInit_Inv
        return OnGameModeInit_Inv();
    #else 
        return 1;
    #endif
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
