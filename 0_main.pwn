

enum INV_COLORS_NEWS
{
	icColor_Main_Fon,           //цвет главного заднего фона
    icColor_BorderBox,          //цвет фона наложения
    icColor_Text,               //цвет текста
    icColor_Slot_Fon_MarginBox, //цвет заднего фона слотов
    icColor_Slot_Fon_BorderBox, //цвет переднего фона слотов
    icColor_Slot_Fon_Selected,  //цвет заднего фона выбранного слота
    icColor_Cursor,             //цвет курсора
    icColor_SmallStriped        //цвет маленьких разделительных полосок
}
new InventoryColors[2][INV_COLORS_NEWS];

new InventoryTextTD[15][2][] = 
{
    {"weight", 		        "вес"},                 // 0
	{"trunk", 		        "багажник"},            // 1
	{"Item", 		        "Предмет"},             // 2
	{"Item Description",    "Описание предмета."},  // 3
	{"backpack",            "рюкзак"},              // 4
	{"head",                "голова"},              // 5
	{"body",                "тело"},                // 6
	{"armor",               "Броня"},               // 7
	{"other",               "прочие"},              // 8
	{"Weapon", 		        "Оружие"},              // 9
	{"kg", 		            "кг"},                  // 10
	{"Health", 		        "Здоровье"},            // 11
	{"Food", 		        "Еда"},                 // 12
	{"Water", 		        "Вода"},                // 13
	{"Inventory", 		    "Инвентарь"}            // 14
};

stock RGB(red, green, blue, alpha = 0) return (red*16777216) + (green*65536) + (blue*256) + alpha;
stock PlayerTextDrawDestroyEx(playerid, &PlayerText:text)
{
	if(text != PlayerText:INVALID_TEXT_DRAW) PlayerTextDrawDestroy(playerid, text);
	text = PlayerText:INVALID_TEXT_DRAW;
}

#define MAX_SLOT_INV_PLAYER					120
#define MAX_SLOT_INV_VEHICLE				90

#include "../scripts/new_inventory/1_news.pwn"
#include "../scripts/new_inventory/1_newsTD.pwn"
#include "../scripts/new_inventory/1_newsTDGlobal.pwn"


#include "../scripts/new_inventory/ShowInventory.pwn"
#include "../scripts/new_inventory/HideInventory.pwn"
#include "../scripts/new_inventory/inventory/InventoryLoadItems.pwn"
#include "../scripts/new_inventory/inventory/InventoryLoadAccessories.pwn"


#include "../scripts/new_inventory/trunk/InventoryTrunkLoadItems.pwn"


#include "../scripts/new_inventory/public/On_ClickTD.pwn"
#include "../scripts/new_inventory/public/On_Connect.pwn"
#include "../scripts/new_inventory/public/On_Disconnect.pwn"
#include "../scripts/new_inventory/public/On_GameMode.pwn"