#ifndef D_ITEM_H_
#define D_ITEM_H_

int checkItemGet(u8,int);

extern int (*item_func_ptr[256])(void);
extern int (*item_getcheck_func_ptr[256])(void);

#endif