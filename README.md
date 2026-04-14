# inventory-SAMP

Inventory by game type Grounded for samp

[**Second version**](https://github.com/Bren828/inventory-rpg-SAMP)

**TextDraw only**


![Crosshair](https://raw.githubusercontent.com/Bren828/inventory-SAMP/main/preview.png)

## Dependencies
* [progress2](https://github.com/Southclaws/progress2)

## Installation

Include in your code:
```pawn
#include "../source/inventory/_main.pwn"
```

## Example
```pawn
CMD:inv(playerid) {
    PlayerInv[playerid][i_Language] = 0;
    PlayerInv[playerid][i_Theme] = 0;

    ShowInventory(playerid);
    return 1;
}
```
