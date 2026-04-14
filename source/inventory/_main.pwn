

#define INV_MAX_ITEM_SLOTS 		30
#define INV_MAX_PAGES_ITEMS		4

#define INV_MAX_TRUNK_ITEMS 	30
#define INV_MAX_TRUNK_PAGES 	4

#define INV_MAX_ACCESSORY_SLOTS		10


enum E_PLAYER_INV {
	bool:i_Show,
    i_Language,
    i_Theme,
	i_Page,

//backpack
    i_Item[INV_MAX_ITEM_SLOTS * INV_MAX_PAGES_ITEMS], 
    i_ItemQty[INV_MAX_ITEM_SLOTS * INV_MAX_PAGES_ITEMS],

// Accessories
	i_Accessories[INV_MAX_ACCESSORY_SLOTS],

    //weapon
    i_Weapon[2], 
    i_WeaponQty[2],

//Indicators
    PlayerBar:i_Indicators[3],

//Trunk
    bool:i_TrunkShow,
    i_TrunkVehicleID,
    i_TrunkPage
}

new PlayerInv[MAX_PLAYERS][E_PLAYER_INV]; 
new const NULL_PlayerInv[E_PLAYER_INV];


/*
enum E_TRUNK_INVENTORY_ITEMS {

	it_Item[INV_MAX_TRUNK_ITEMS * INV_MAX_TRUNK_PAGES], 
    it_ItemQty[INV_MAX_TRUNK_ITEMS * INV_MAX_TRUNK_PAGES]
}

new TrunkInventoryItems[MAX_VEHICLES][E_TRUNK_INVENTORY_ITEMS];
*/


stock PlayerTextDrawDestroyEx(playerid, &PlayerText:text) {

	if(text != PlayerText:INVALID_TEXT_DRAW) {
		PlayerTextDrawDestroy(playerid, text);
	}
	text = PlayerText:INVALID_TEXT_DRAW;
}


#include "../source/inventory/_newsTD.pwn"

#include "../source/inventory/Language.pwn"
#include "../source/inventory/Colors.pwn"

#include "../source/inventory/ShowInventory.pwn"
#include "../source/inventory/HideInventory.pwn"


//player
#include "../source/inventory/player/LoadInvItems.pwn"
#include "../source/inventory/player/accessories/LoadAccessoriesItems.pwn"

//trunk
#include "../source/inventory/trunk/LoadTrunkItems.pwn"

//public
#include "../source/inventory/public/On_ClickTD.pwn"
#include "../source/inventory/public/On_Connect.pwn"
#include "../source/inventory/public/On_Disconnect.pwn"
#include "../source/inventory/public/On_GameMode.pwn"


stock RGB(red, green, blue, alpha = 0) {
	return (red * 16777216) + (green * 65536) + (blue * 256) + alpha;
}
