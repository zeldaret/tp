#ifndef D_A_OBJ_SWLIGHT_H
#define D_A_OBJ_SWLIGHT_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"

/**
 * @ingroup actors-objects
 * @class daObjSwLight_c
 * @brief Light Switch
 *
 * @details
 *
 */
class daObjSwLight_c : public dBgS_MoveBgActor {
public:
    /* 80CF6F98 */ void initBaseMtx();
    /* 80CF6FD4 */ void setBaseMtx();
    /* 80CF7260 */ int create1st();
    /* 80CF73E0 */ void action();
    /* 80CF761C */ void init_modeSwOnWait();
    /* 80CF766C */ void modeSwOnWait();
    /* 80CF777C */ void init_modeOnLight();
    /* 80CF7788 */ void modeOnLight();
    /* 80CF77D8 */ void init_modeSwOffWait();
    /* 80CF7838 */ void modeSwOffWait();
    /* 80CF7974 */ void modeDead();
    /* 80CF7978 */ void checkHit();
    /* 80CF7A6C */ void setOnTimer();

    /* 80CF7038 */ virtual int Create();
    /* 80CF71F0 */ virtual int CreateHeap();
    /* 80CF7320 */ virtual int Execute(Mtx**);
    /* 80CF7A98 */ virtual int Draw();
    /* 80CF7BA8 */ virtual int Delete();
    /* 80CF8124 */ virtual ~daObjSwLight_c() {};

    u8 getSwbit() { return fopAcM_GetParamBit(this,0,8); }

private:
    /* 0x5A0 */ dEvLib_callback_c field_0x5a0;
    /* 0x5B0 */ u8 field_0x5b0[0x8];
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ u8 field_0x5bc[0x6f4 - 0x5bc];
    /* 0x6F4 */ dCcD_Stts mStts;
    /* 0x614 */ dCcD_Sph mAtSph;
    /* 0x730 */ dCcD_Sph mTgSph[2];
    /* 0x9BC */ dCcD_Cyl mCyl;
    /* 0xAF8 */ DALKMIST_INFLUENCE mInfluence;
    /* 0xAf0 */ u8 field_0xaf0[0x10];
    /* 0xB00 */ Z2SoundObjSimple mSound;
    /* 0xB20 */ u8 field_0x00[0x8];
};

// STATIC_ASSERT(sizeof(daObjSwLight_c) == 0xb28);


#endif /* D_A_OBJ_SWLIGHT_H */
