

enum INV_COLORS_NEWS
{
	icColor_Main_Fon,           //���� �������� ������� ����
    icColor_BorderBox,          //���� ���� ���������
    icColor_Text,               //���� ������
    icColor_Slot_Fon_MarginBox, //���� ������� ���� ������
    icColor_Slot_Fon_BorderBox, //���� ��������� ���� ������
    icColor_Slot_Fon_Selected,  //���� ������� ���� ���������� �����
    icColor_Cursor,             //���� �������
    icColor_SmallStriped        //���� ��������� �������������� �������
}
new InventoryColors[2][INV_COLORS_NEWS];

new InventoryTextTD[15][2][] = 
{
    {"weight", 		        "���"},                 // 0
	{"trunk", 		        "��������"},            // 1
	{"Item", 		        "�������"},             // 2
	{"Item Description",    "�������� ��������."},  // 3
	{"backpack",            "������"},              // 4
	{"head",                "������"},              // 5
	{"body",                "����"},                // 6
	{"armor",               "�����"},               // 7
	{"other",               "������"},              // 8
	{"Weapon", 		        "������"},              // 9
	{"kg", 		            "��"},                  // 10
	{"Health", 		        "��������"},            // 11
	{"Food", 		        "���"},                 // 12
	{"Water", 		        "����"},                // 13
	{"Inventory", 		    "���������"}            // 14
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