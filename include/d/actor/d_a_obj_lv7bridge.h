#ifndef D_A_OBJ_LV7BRIDGE_H
#define D_A_OBJ_LV7BRIDGE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

class daObjSwSpinner_c;

/**
 * @ingroup actors-objects
 * @class daObjLv7Brg_c
 * @brief City in the Sky Bridge
 *
 * @details
 *
 */
class daObjLv7Brg_c : public dBgS_MoveBgActor {
public:
    /* 80C863EC */ daObjSwSpinner_c* search_swspinner();
    /* 80C86454 */ void initBaseMtx();
    /* 80C864B4 */ void setBaseMtx();
    /* 80C86A44 */ int create1st();
    /* 80C86E68 */ void action();
    /* 80C86F44 */ void mode_action();
    /* 80C87210 */ void mode_end();
    /* 80C87214 */ void calcCoPos();

    /* 80C867CC */ virtual int CreateHeap();
    /* 80C865B8 */ virtual int Create();
    /* 80C86B40 */ virtual int Execute(Mtx**);
    /* 80C87304 */ virtual int Draw();
    /* 80C87458 */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwbit3() { return field_0xa80 & 0xFF; }

    u8 getType() { return fopAcM_GetParamBit(this, 16, 4); }
    u8 getKind() { return fopAcM_GetParamBit(this, 24, 1); }

    void setMode(u8 i_mode) { mMode = i_mode; }

    void setDestroyAnmA() { field_0xa94 = 0; }
    void setDestroyAnmB() { field_0xa94 = 1; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mAcch;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
    /* 0x7C4 */ dCcD_Stts mCcStts;
    /* 0x800 */ dCcD_Cyl mCcCyl[2];
    /* 0xA78 */ f32 field_0xa78;
    /* 0xA7C */ u8 mType;
    /* 0xA7D */ u8 mMode;
    /* 0xA7E */ u8 mKind;
    /* 0xA7F */ u8 mInitParams;
    /* 0xA80 */ u16 field_0xa80;
    /* 0xA82 */ u16 field_0xa82;
    /* 0xA84 */ J3DModel* mpBrokenModel;
    /* 0xA88 */ mDoExt_bckAnm* mpBck[2];
    /* 0xA90 */ dBgW* mpBgw2;
    /* 0xA94 */ s8 field_0xa94;
    /* 0xA95 */ s8 field_0xa95;
    /* 0xA96 */ u8 field_0xa96;
    /* 0xA98 */ cXyz field_0xa98;
};

STATIC_ASSERT(sizeof(daObjLv7Brg_c) == 0xaa4);


#endif /* D_A_OBJ_LV7BRIDGE_H */
