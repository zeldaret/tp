#ifndef D_ITEM_H_
#define D_ITEM_H_

#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

int checkItemGet(u8, int);

extern int (*item_func_ptr[256])(void);
extern int (*item_getcheck_func_ptr[256])(void);

#endif