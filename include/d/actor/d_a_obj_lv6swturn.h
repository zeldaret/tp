#ifndef D_A_OBJ_LV6SWTURN_H
#define D_A_OBJ_LV6SWTURN_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjLv6SwTurn_c
 * @brief Temple of Time Turn Switch
 *
 * @details
 *
 */
class daObjLv6SwTurn_c : public dBgS_MoveBgActor {
public:
    /* 80C83A98 */ void initBaseMtx();
    /* 80C83AD4 */ void setBaseMtx();
    /* 80C83B38 */ int Create();
    /* 80C83C10 */ int CreateHeap();
    /* 80C83C80 */ int create1st();
    /* 80C83D04 */ int Execute(Mtx**);
    /* 80C83D94 */ void mode_proc_call();
    /* 80C83E20 */ void init_modeWait();
    /* 80C83E58 */ void modeWait();
    /* 80C84238 */ void init_modeRotate();
    /* 80C8425C */ void modeRotate();
    /* 80C844F8 */ int Draw();
    /* 80C8459C */ int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit((void*)this, 0, 8); };
    u8 getSwbit2() { return fopAcM_GetParamBit((void*)this, 8, 8); };

    /* 0x5A0 */ request_of_phase_process_class unk5A0;
    /* 0x5A8 */ J3DModel* unk5A8;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 unk5AD;
    /* 0x5AE */ u8 unk5AE[2];
    /* 0x5B0 */ s16 unk5B0;
    /* 0x5B2 */ s16 unk5B2;
    /* 0x5B4 */ s16 unk5B4;
    /* 0x5B6 */ s16 unk5B6;
    /* 0x5B8 */ int unk5B8;
    /* 0x5BC */ s8 unk5BC;
    /* 0x5BD */ u8 unk5BD;
    /* 0x5C0 */ u32 unk5C0;
    /* 0x5C4 */ dBgW_Base::PushPullLabel unk5C4;
    /* 0x5C8 */ s16 unk5C8;
    /* 0x5CA */ s16 unk5CA;
};

STATIC_ASSERT(sizeof(daObjLv6SwTurn_c) == 0x5cc);

#ifdef DEBUG
class daObjLv6SwTurn_HIO_c : public mDoHIO_entry_c {
public:
    daObjLv6SwTurn_HIO_c();
    void genMessage(JORMContext*);
    
    /* 0x6 */ u8 mWaitTime;
    /* 0x7 */ u8 mChargeTime;
    /* 0x8 */ s16 mRotationTime;
    /* 0xA */ u8 unkA;
    /* 0xB */ u8 mDrawFlag;
};
#endif

#endif /* D_A_OBJ_LV6SWTURN_H */
