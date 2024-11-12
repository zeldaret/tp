#ifndef D_D_ERROR_MSG_H
#define D_D_ERROR_MSG_H

#include "d/d_com_inf_game.h"

struct dShutdownErrorMsg_c {
    /* 8009D790 */ static bool execute();
};

struct dDvdErrorMsg_c {
    /* 8009D194 */ static void draw(s32);
    /* 8009D354 */ static u8 execute();
};

#endif /* D_D_ERROR_MSG_H */
