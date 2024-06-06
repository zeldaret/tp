#ifndef D_A_TAG_BOTTLE_ITEM_H
#define D_A_TAG_BOTTLE_ITEM_H

#include "d/com/d_com_inf_game.h"


class daTag_BottleItem_c;
typedef int (daTag_BottleItem_c::*ProcessFunc)(void*);

class daTag_BottleItem_c : public fopAc_ac_c {
private:
    /* 0x0568 */ ProcessFunc mProcessFunc;
    /* 0x056C */ u16 mEventType;
    /* 0x0576 */ u8 mBottleItemType;

public:
    /* 80D55FD8 */ s32 create();
    /* 80D5605C */ s32 Delete();
    /* 80D56064 */ s32 Execute();
    /* 80D560D0 */ s32 Draw();
    /* 80D560D8 */ void setTypeFromParam();
    /* 80D56100 */ void restart();
    /* 80D56170 */ void initialize();
    /* 80D561E8 */ int checkProcess(ProcessFunc);
    /* 80D56214 */ int setProcess(ProcessFunc);
    /* 80D56300 */ void setAttnPos();
    /* 80D56334 */ s32 chkEvent();
    /* 80D56384 */ s32 orderEvent();
    /* 80D56418 */ void makeSoup();
    /* 80D564A0 */ int wait(void*);
    /* 80D565F0 */ virtual ~daTag_BottleItem_c();
};

STATIC_ASSERT(sizeof(daTag_BottleItem_c) == 0x57C);

#endif /* D_A_TAG_BOTTLE_ITEM_H */
