#ifndef D_A_OBJ_TURARA_H
#define D_A_OBJ_TURARA_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"
#include "d/d_event_lib.h"
#include "d/d_bg_w.h"

/**
 * @ingroup actors-objects
 * @class daTurara_c
 * @brief Icicle
 *
 * @details
 *
 */
struct fakeTuraraPadding {
    u8 a[8];
};

class daTurara_c : public dBgS_MoveBgActor, public fakeTuraraPadding, public dEvLib_callback_c {
public:
    daTurara_c() : dEvLib_callback_c(this) {}

    /* 80B9CC9C */ void setBaseMtx();
    /* 80B9CD74 */ int CreateHeap();
    /* 80B9CED8 */ int create();
    /* 80B9D468 */ void setFallStat();
    /* 80B9D4CC */ int Execute(Mtx**);
    /* 80B9D548 */ void move();
    /* 80B9D72C */ void init_modeWait();
    /* 80B9D738 */ void modeWait();
    /* 80B9D998 */ BOOL eventStart();
    /* 80B9D9BC */ void init_modeDropInit();
    /* 80B9DA00 */ void modeDropInit();
    /* 80B9DA44 */ void init_modeDrop();
    /* 80B9DB44 */ void modeDrop();
    /* 80B9DB90 */ void bgCheck();
    /* 80B9DBD0 */ void init_modeDropEnd();
    /* 80B9DE48 */ void modeDropEnd();
    /* 80B9E078 */ void init_modeDropEnd2();
    /* 80B9E338 */ void modeDropEnd2();
    /* 80B9E388 */ int Draw();
    /* 80B9E478 */ int Delete();
    /* 80B9E710 */ ~daTurara_c();

    u8 getSwBit3() { return fopAcM_GetParamBit(this, 8, 8); }

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x5b8 */ request_of_phase_process_class mPhaseReq;
    /* 0x5c0 */ J3DModel* mpModel;
    /* 0x5c4 */ int field_0x5c4;
    /* 0x5c8 */ u8 field_0x5c8;
    /* 0x5c9 */ u8 field_0x5c9;
    /* 0x5cc */ dCcD_Stts mColliderStts;
    /* 0x608 */ dCcD_Cyl mCylCollider;
    /* match_right */ u8 field_match_right[0x768 - 0x744];
    /* 0x768 */ dBgS_AcchCir mAcchCir;
    /* 0x7a8 */ dBgS_ObjAcch mAcch;
    /* 0x980 */ cBgW* field_0x980;
    /* 0x984 */ u8 field_0x984;
    /* 0x988 */ u32 field_0x988;
    /* 0x98c */ u8 field_0x98c;
    /* match_right */ u8 field_match_right2[0x998 - 0x98f];
};

STATIC_ASSERT(sizeof(daTurara_c) == 0x998);

class daTurara_HIO_c {
public:
    /* 80B9CB8C */ daTurara_HIO_c();
    /* 80B9E5B4 */ ~daTurara_HIO_c();
};

#endif /* D_A_OBJ_TURARA_H */
