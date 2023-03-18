enum PLAYER_INV_EN
{
	iShow,
    iLanguage,
    iTheme,
	iList,

    //backpack
    iItem[30], iItemQty[30],

	// Accessories
	iAccessories[10],

    //weapon
    iWeapon[2], iWeaponQty[2],

    //Indicators
    PlayerBar:iIndicators_Bar[3],

    //Trunk
    iTrunkShow,
    iTrunkList
}
new PlayerInv[MAX_PLAYERS][PLAYER_INV_EN]; 
new const NULL_PlayerInv[PLAYER_INV_EN];


