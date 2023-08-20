#ifndef D_D_NPC_LIB_H
#define D_D_NPC_LIB_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

struct dNpcLib_lookat_c {
    /* 80251314 */ dNpcLib_lookat_c();
    /* 8025140C */ void init(J3DModel*, int*, csXyz*, csXyz*);
    /* 80251534 */ void action(cXyz, cXyz, fopAc_ac_c*, f32 (*)[4], int);
    /* 80251B60 */ void dbView();
    /* 80251B64 */ void setPrm();
    /* 80251EF8 */ void update();
    /* 80252018 */ int limitter(s16*, s16, s16, s16);
    /* 80252094 */ virtual ~dNpcLib_lookat_c();

    /* 0x04 */ cXyz field_0x04[4];
    /* 0x34 */ csXyz field_0x34[4];
    /* 0x4C */ csXyz field_0x4c[4];
    /* 0x64 */ csXyz field_0x64[4];
    /* 0x7C */ csXyz field_0x7c[4];
    /* 0x94 */ csXyz field_0x94[4];
    /* 0xAC */ f32 field_0xac[4];
    /* 0xBC */ s32 field_0xbc[4];
    /* 0xCC */ s32 mCount;
};

#endif /* D_D_NPC_LIB_H */
