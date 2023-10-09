# inventory-SAMP

Inventory by game type Grounded for samp

**TextDraw only**


![Crosshair](https://raw.githubusercontent.com/Bren828/inventory-SAMP/main/preview.png)

## Dependencies
* [progress2](https://github.com/Southclaws/progress2)

## Installation

Include in your code:
```pawn
#include "../scripts/new_inventory/0_main.pwn"
```

## Example
```pawn
CMD:inv(playerid)
{
    PlayerInv[playerid][iLanguage] = 0;
    PlayerInv[playerid][iTheme] = 0;

    ShowInventory(playerid);
    return 1;
}
```
