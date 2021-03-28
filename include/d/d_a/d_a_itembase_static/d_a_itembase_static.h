#ifndef D_A_ITEMBASE_STATIC_H_
#define D_A_ITEMBASE_STATIC_H_

#include "global.h"

class daItemBase_c {
public:
    u8 getItemNo(void);
    void hide(void);
    void show(void);
    void changeDraw(void);
    u8 chkDraw(void);
    void dead(void);
    u8 chkDead(void);

private:
    u8 unk0[0x92a];
    u8 mItemNo;
    u8 unk2347;
};

#endif