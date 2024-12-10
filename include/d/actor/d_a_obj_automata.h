#ifndef D_A_OBJ_AUTOMATA_H
#define D_A_OBJ_AUTOMATA_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-objects
 * @class daObj_AutoMata_c
 * @brief Falbi's Music Box
 *
 * @details
 *
 */
class daObj_AutoMata_c : public fopAc_ac_c {
private:
    /* 0x568 */ int field_0x568;
    /* 0x56C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x570 */ Z2Creature mCreature;
    /* 0x600 */ mDoExt_btkAnm mBtk;
    /* 0x618 */ request_of_phase_process_class mPhase;
    /* 0x630 */ dBgS_ObjAcch mAcch;
    /* 0x7F8 */ dCcD_Stts mStts;
    /* 0x834 */ dBgS_AcchCir field_0x834;
    /* 0x874 */ cBgS_GndChk mGndChk;
    /* 0x8B0 */ dCcD_Cyl mCyl;
    /* 0x9EC */ dCcD_Sph mSph;
    /* 0xB24 */ int mShadowId;
    /* 0xB28 */ f32 mGroundH;
    /* 0xB2C */ f32 mAnmPlaySpeed;
    /* 0xB30 */ u8 field_0xb30;
    /* 0xB31 */ u8 field_0xb31;

public:
    /* 80BA56EC */ virtual ~daObj_AutoMata_c();
    /* 80BA5990 */ int create();
    /* 80BA5F88 */ int CreateHeap();
    /* 80BA60A0 */ int Delete();
    /* 80BA60D4 */ int Execute();
    /* 80BA639C */ int Draw();
    /* 80BA6480 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80BA64A0 */ static void* srchTHouse(fopAc_ac_c*, void*);
    /* 80BA6500 */ int setAnm(int, bool);
    /* 80BA6634 */ void setEnvTevColor();
    /* 80BA6690 */ void setRoomNo();
    /* 80BA66D4 */ void setMtx();
    /* 80BA674C */ void setSe();
};

STATIC_ASSERT(sizeof(daObj_AutoMata_c) == 0xb38);

class daObj_AutoMata_Param_c {
public:
    /* 80BA6BA4 */ virtual ~daObj_AutoMata_Param_c() {}

    static f32 const m[3];
};

#endif /* D_A_OBJ_AUTOMATA_H */
