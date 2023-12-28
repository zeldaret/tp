#ifndef D_A_OBJ_KGATE_H
#define D_A_OBJ_KGATE_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

class daObjKGate_c : public dBgS_MoveBgActor {
public:
    /* 805880C8 */ void initBaseMtx();
    /* 8058827C */ void setBaseMtx();
    /* 80588BF8 */ int create1st();
    /* 80588D00 */ int checkAreaL(cXyz const*, cXyz const*);
    /* 805890D4 */ int checkAreaR(cXyz const*, cXyz const*);
    /* 805894A4 */ BOOL checkOpen();
    /* 805895D0 */ BOOL checkDirL(fopAc_ac_c*);
    /* 80589664 */ BOOL checkDirR(fopAc_ac_c*);
    /* 805896F8 */ void setAtkSE();
    /* 80589774 */ void setCrkSE();
    /* 805897F0 */ void action();
    /* 805898A0 */ void action_typeA();
    /* 80589F40 */ void action_typeB();
    /* 8058A1B0 */ void actionWaitEvent();
    /* 8058A294 */ void actionEvent();
    /* 8058A2FC */ void actionDead();
    /* 8058A300 */ void event_proc_call();
    /* 8058A3A4 */ void demoProc();
    /* 8058A508 */ int getDemoAction();
    
    /* 805889A4 */ virtual int CreateHeap();
    /* 805887A0 */ virtual int Create();
    /* 8058A550 */ virtual int Execute(Mtx**);
    /* 8058A5B8 */ virtual int Draw();
    /* 8058A6F4 */ virtual int Delete();

    void setAction(u8 i_action) { mAction = i_action; }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getEventID() { return fopAcM_GetParamBit(this, 0x14, 8); }
    u8 getNameArg() { return fopAcM_GetParamBit(this, 0x10, 4); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpGateModel;
    /* 0x5AC */ J3DModel* mpGateModel2;
    /* 0x5B0 */ J3DModel* mpKeyModel;
    /* 0x5B4 */ J3DModel* mpHookModel;
    /* 0x5B8 */ dCcD_Stts field_0x5b8;
    /* 0x5F4 */ dCcD_Cyl field_0x5f4[4];
    /* 0xAE4 */ dBgW* mpBgW;
    /* 0xAE8 */ Mtx field_0xae8;
    /* 0xB18 */ Mtx field_0xb18;
    /* 0xB48 */ u8 field_0xB48[0xB78 - 0xB48];
    /* 0xB78 */ s16 mGateRAngle;
    /* 0xB7A */ s16 mGateLAngle;
    /* 0xB7C */ u8 field_0xB7C[0xB94 - 0xB7C];
    /* 0xB94 */ f32 field_0xb94;
    /* 0xB98 */ f32 field_0xb98;
    /* 0xB9C */ int mCounter;
    /* 0xBA0 */ s16 mGateLMove;
    /* 0xBA2 */ s16 mGateRMove;
    /* 0xBA4 */ u8 mAction;
    /* 0xBA5 */ u8 mMapToolID;
    /* 0xBA6 */ s16 mEventID;
    /* 0xBA8 */ int mStaffID;
    /* 0xBAC */ u8 mTimer;
    /* 0xBAD */ bool mCreatedSmokeEff;
    /* 0xBAE */ s16 field_0xbae;
    /* 0xBB0 */ s16 field_0xbb0;
    /* 0xBB2 */ s16 field_0xbb2;
    /* 0xBB4 */ f32 field_0xbb4;
    /* 0xBB8 */ cXyz field_0xbb8;
    /* 0xBC4 */ cXyz field_0xbc4;
    /* 0xBD0 */ s16 field_0xbd0;
    /* 0xBD2 */ u8 field_0xBD2[0xBD4 - 0xBD2];
    /* 0xBD4 */ cXyz mEffPos;
    /* 0xBE0 */ csXyz mKeyRot;
    /* 0xBE8 */ f32 field_0xbe8;
    /* 0xBEC */ u8 mNameArg;
    /* 0xBED */ u8 field_0xbed;
    /* 0xBEE */ u8 field_0xBEE[0xBF0 - 0xBEE];
    /* 0xBF0 */ cXyz field_0xbf0;
    /* 0xBFC */ cXyz field_0xbfc;
};

#endif /* D_A_OBJ_KGATE_H */
