#ifndef D_D_GAMEOVER_H
#define D_D_GAMEOVER_H

#include "d/msg/d_msg_class.h"
#include "dolphin/types.h"
#include "f_op/f_op_msg_mng.h"

struct dGameover_c : msg_class {
    /* 8019B044 */ void _create();
    /* 8019B2F4 */ void _execute();
    /* 8019B384 */ void playerAnmWait_init();
    /* 8019B388 */ void playerAnmWait_proc();
    /* 8019B3A0 */ void dispFadeOut_init();
    /* 8019B3E8 */ void dispFadeOut_proc();
    /* 8019B40C */ void dispWait_init();
    /* 8019B454 */ void dispWait_proc();
    /* 8019B478 */ void demoFadeIn_init();
    /* 8019B484 */ void demoFadeIn_proc();
    /* 8019B4D8 */ void demoFadeOut_init();
    /* 8019B4E4 */ void demoFadeOut_proc();
    /* 8019B560 */ void saveOpen_init();
    /* 8019B564 */ void saveOpen_proc();
    /* 8019B5A4 */ void saveMove_init();
    /* 8019B5A8 */ void saveMove_proc();
    /* 8019B5F0 */ void saveClose_init();
    /* 8019B5F4 */ void saveClose_proc();
    /* 8019B7BC */ void deleteWait_init();
    /* 8019B7C0 */ void deleteWait_proc();
    /* 8019B7C4 */ void _draw();
    /* 8019B864 */ void _delete();
    s32 deleteCheck() { return _0x108 == 8; }

    /* 0x100 */ u8 _0x100[0x118 - 0x100];
    /* 0x108 */ u8 _0x108;
};  // size unknown

s32 d_GameOver_Create(u8 param_0);
void d_GameOver_Delete(unsigned int& param_0);
inline s32 d_GameOver_CheckDelete(unsigned int& id) {
    if (id != UINT32_MAX) {
        dGameover_c* gameover = (dGameover_c*)fopMsgM_SearchByID(id);
        if (gameover != NULL) {
            return gameover->deleteCheck();
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

#endif /* D_D_GAMEOVER_H */
