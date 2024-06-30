#ifndef D_A_OBJ_RGATE_H
#define D_A_OBJ_RGATE_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjRgate_c
 * @brief Rider Gate
 *
 * @details
 *
 */
class daObjRgate_c : public dBgS_MoveBgActor {
public:
    /* 80CB9DF8 */ void initBaseMtx();
    /* 80CB9F4C */ void setBaseMtx();
    /* 80CBA828 */ int create1st();
    /* 80CBA8A8 */ int checkAreaL(cXyz const*, cXyz const*);
    /* 80CBAC38 */ int checkAreaR(cXyz const*, cXyz const*);
    /* 80CBAFC4 */ BOOL checkOpen();
    /* 80CBB0F0 */ BOOL checkDirL(fopAc_ac_c*);
    /* 80CBB180 */ BOOL checkDirR(fopAc_ac_c*);
    /* 80CBB210 */ void setAtkSE();
    /* 80CBB28C */ void setCrkSE();
    /* 80CBB308 */ void action();
    /* 80CBB370 */ void action_typeA();
    /* 80CBBA10 */ void actionWaitEvent();
    /* 80CBBAF4 */ void actionEvent();
    /* 80CBBB5C */ void actionDead();
    /* 80CBBB60 */ void event_proc_call();
    /* 80CBBC04 */ void demoProc();
    /* 80CBBD68 */ int getDemoAction();

    /* 80CBA654 */ virtual int CreateHeap();
    /* 80CBA468 */ virtual int Create();
    /* 80CBBDB0 */ virtual int Execute(Mtx**);
    /* 80CBBE18 */ virtual int Draw();
    /* 80CBBF34 */ virtual int Delete();

    void setAction(u8 i_action) { mAction = i_action; }

    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getEventID() { return fopAcM_GetParamBit(this, 0x14, 8); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpGateModel;
    /* 0x5AC */ J3DModel* mpKeyModel;
    /* 0x5B0 */ J3DModel* mpHookModel;
    /* 0x5B4 */ dCcD_Stts mCcStatus;
    /* 0x5F0 */ dCcD_Cyl mCyls[4];
    /* 0xAE0 */ dBgW* mpBgW;
    /* 0xAE4 */ Mtx field_0xae4;
    /* 0xB14 */ Mtx field_0xb14;
    /* 0xB44 */ u8 field_0xB44[0xB74 - 0xB44];
    /* 0xB74 */ s16 mGateRAngle;
    /* 0xB76 */ s16 mGateLAngle;
    /* 0xB78 */ u8 field_0xB78[0xB90 - 0xB78];
    /* 0xB90 */ f32 field_0xb90;
    /* 0xB94 */ f32 field_0xb94;
    /* 0xB98 */ int mCounter;
    /* 0xB9C */ s16 mGateLMove;
    /* 0xB9E */ s16 mGateRMove;
    /* 0xBA0 */ u8 mAction;
    /* 0xBA1 */ u8 mMapToolID;
    /* 0xBA2 */ s16 mEventID;
    /* 0xBA4 */ int mStaffID;
    /* 0xBA8 */ u8 mTimer;
    /* 0xBA9 */ bool mCreatedSmokeEff;
    /* 0xBAA */ s16 field_0xbaa;
    /* 0xBAC */ s16 field_0xbac;
    /* 0xBAE */ s16 field_0xbae;
    /* 0xBB0 */ f32 field_0xbb0;
    /* 0xBB4 */ cXyz field_0xbb4;
    /* 0xBC0 */ cXyz field_0xbc0;
    /* 0xBCC */ s16 field_0xbcc;
    /* 0xBD0 */ cXyz mEffPos;
    /* 0xBDC */ csXyz mKeyRot;
    /* 0xBE4 */ f32 field_0xbe4;
    /* 0xBE8 */ cXyz field_0xbe8;
    /* 0xBF4 */ cXyz field_0xbf4;
    /* 0xC00 */ Mtx field_0xc00;
    /* 0xC30 */ Mtx field_0xc30;
};

STATIC_ASSERT(sizeof(daObjRgate_c) == 0xC60);

#endif /* D_A_OBJ_RGATE_H */
