
public OnPlayerClickTextDraw(playerid, Text:clickedid) {

    if(PlayerInv[playerid][iShow] == 1) {

        if(clickedid == Text:INVALID_TEXT_DRAW) {
            HideInventory(playerid);
            return 1;
        }

        return 1;
    }

    #if defined OnPlayerClickTextDraw_Inv
        return OnPlayerClickTextDraw_Inv(playerid, clickedid);
    #else 
        return 1;
    #endif
}
#if defined _ALS_OnPlayerClickTextDraw
    #undef OnPlayerClickTextDraw
#else
    #define _ALS_OnPlayerClickTextDraw
#endif

#define OnPlayerClickTextDraw OnPlayerClickTextDraw_Inv
#if defined OnPlayerClickTextDraw_Inv
    forward OnPlayerClickTextDraw_Inv(playerid, Text:clickedid);
#endif
