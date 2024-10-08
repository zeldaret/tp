#ifndef D_A_OBJ_BOUMATO_H
#define D_A_OBJ_BOUMATO_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObj_BouMato_c
 * @brief Stick Target
 *
 * @details
 *
 */
class daObj_BouMato_c : public fopAc_ac_c {
public:
    /* 80BBAFEC */ ~daObj_BouMato_c();
    /* 80BBB230 */ void create();
    /* 80BBB770 */ void CreateHeap();
    /* 80BBB800 */ void Delete();
    /* 80BBB834 */ void Execute();
    /* 80BBBD80 */ void Draw();
    /* 80BBBE50 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80BBBE70 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80BBBEA0 */ void srchArrow(void*, void*);
    /* 80BBBF4C */ void deleteStuckArrow();
    /* 80BBBFF8 */ void getResName();
    /* 80BBC008 */ void setSwayParam(fopAc_ac_c*);
    /* 80BBC19C */ void setEnvTevColor();
    /* 80BBC1F8 */ void setRoomNo();
    /* 80BBC23C */ void setMtx();

private:
    /* 0x568 */ u8 field_0x568[0xa40 - 0x568];
};

STATIC_ASSERT(sizeof(daObj_BouMato_c) == 0xa40);

class daObj_BouMato_Param_c {
public:
    /* 80BBC404 */ ~daObj_BouMato_Param_c();

    static u8 const m[28];
};


#endif /* D_A_OBJ_BOUMATO_H */
