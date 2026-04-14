

enum E_PLAYER_INV_TD {
    PlayerText:itd_Skin,

    //Backpack
    PlayerText:itd_WeightText,
    
    PlayerText:itd_SlotBackground[INV_MAX_ITEM_SLOTS],
    PlayerText:itd_SlotIcon[INV_MAX_ITEM_SLOTS],
    PlayerText:itd_SlotQuantity[INV_MAX_ITEM_SLOTS],

    PlayerText:itd_Stats_Name,
    PlayerText:itd_Stats_Depiction,
    PlayerText:itd_Stats_DetailedName[5],
    PlayerText:itd_Stats_DetailedData[5],

    PlayerText:itd_PageText,

//Accessories
    PlayerText:itd_AccessoriesBackground[INV_MAX_ACCESSORY_SLOTS],
    PlayerText:itd_AccessoriesIcon[INV_MAX_ACCESSORY_SLOTS],

//weapon    
    PlayerText:itd_HandsIcon[2],
    PlayerText:itd_HandsQuantity[2],

//Trunk
    PlayerText:itd_TrunkStrip[2],
    PlayerText:itd_TrunkSlotBackground[INV_MAX_TRUNK_ITEMS],
    PlayerText:itd_TrunkSlotIcon[INV_MAX_TRUNK_ITEMS],
    PlayerText:itd_TrunkSlotQuantity[INV_MAX_TRUNK_ITEMS],

    PlayerText:itd_TrunkPageText,

    //page type
    PlayerText:itd_PagesDescription,
    PlayerText:itd_PageStripe
};

new PlayerText:PlayerInvTD[MAX_PLAYERS][E_PLAYER_INV_TD];
new PlayerText:NULL_PlayerInvTD[E_PLAYER_INV_TD];



enum E_MAIN_TD_INV {
	Text:itdm_MainBackground,

//Backpack
	Text:itdm_Strip[2],
	Text:itdm_Background,

	Text:itdm_Stats_Background[2],
	Text:itdm_Stats_Strip[6],

	Text:itdm_LeftButton,
	Text:itdm_RightButton,

//Accessories
	Text:itdm_AccessoriesStrips[2],
	Text:itdm_AccessoriesStripsText[4],

//weapon
	Text:itdm_HandsStrip[2],
	Text:itdm_HandsBackground[3],
	Text:itdm_HandsIcon[3],

//Indicators
    Text:itdm_IndicatorName[3],
	Text:itdm_IndicatorStrip[4],

//trunk
	Text:itdm_TrunkBackground,
	Text:itdm_TrunkStrip,
	Text:itdm_TrunkLeftButton,
	Text:itdm_TrunkRightButton
}
new MainTDInv[2][E_MAIN_TD_INV];

