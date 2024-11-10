#ifndef D_A_OBJ_SM_DOOR_H
#define D_A_OBJ_SM_DOOR_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-objects
 * @class daObjSM_DOOR_c
 * @brief Sacred Meadow Door
 *
 * @details
 *
 */
class daObjSM_DOOR_c : public dBgS_MoveBgActor {
public:
    /* 80CD8784 */ void ChangeModel();
    /* 80CD8790 */ void Action();
    /* 80CD8A40 */ int SetDzb();
    /* 80CD8A90 */ int ReleaceDzb();
    /* 80CD8AF8 */ void DrawChk1();
    /* 80CD8BBC */ void DrawChk2();
    /* 80CD8C80 */ void setBaseMtx();
    /* 80CD8D4C */ cPhs__Step create();
    /* 80CD90A4 */ int CreateHeap();
    /* 80CD9258 */ int Create();
    /* 80CD929C */ int Execute(Mtx**);
    /* 80CD930C */ int Draw();
    /* 80CD9544 */ int Delete();

private:
    /* 0x5A0 */ bool mUseAlphaModel;
    /* 0x5A1 */ u8 field_0x5a1[0x5AC - 0x5A1];
    /* 0x5AC */ s16 mMode;
    /* 0x5AE */ u8 field_0x5ae[0x5B8 - 0x5AE];
    /* 0x5B8 */ u8 mAlpha;
    /* 0x5B9 */ u8 mType;
    /* 0x5BA */ u8 mSwType;
    /* 0x5BB */ u8 mSwBit;
    /* 0x5BC */ bool mActive;
    /* 0x5BD */ u8 field_0x5bd[0x5CC - 0x5BD];
    /* 0x5CC */ J3DModel* mpModel;
    /* 0x5D0 */ J3DModel* mpAlphaModel;
    /* 0x5D4 */ request_of_phase_process_class mPhase;
    /* 0x5DC */ dBgS_AcchCir mAcchCir;
    /* 0x61C */ dBgS_ObjAcch mAcch;
    /* 0x7F4 */ dCcD_Stts mCcStts;
    /* 0x830 */ dCcU_AtInfo mAtInfo;
    /* 0x854 */ u8 field_0x854[0x858 - 0x854];
};

STATIC_ASSERT(sizeof(daObjSM_DOOR_c) == 0x858);


#endif /* D_A_OBJ_SM_DOOR_H */
