#ifndef D_A_OBJ_SWBALLB_H
#define D_A_OBJ_SWBALLB_H

#include "f_op/f_op_actor_mng.h"

class daObjSwBallB_c : public fopAc_ac_c { //, public dEvLib_callback_c {
public:
    //daObjSwBallB_c() : dEvLib_callback_c(this) {}
    /* 80CF466C */ int checkArea_sub(fopAc_ac_c*);
    /* 80CF47BC */ void search_ball();
    /* 80CF496C */ void initBaseMtx();
    /* 80CF498C */ void setBaseMtx();
    /* 80CF49F0 */ int Create();
    /* 80CF4B74 */ int CreateHeap();
    /* 80CF4CE8 */ int create();
    /* 80CF4E08 */ int execute();
    /* 80CF4EB8 */ void actionRun();
    /* 80CF5384 */ void actionStop();
    /* 80CF5388 */ void PutCrrPos();
    /* 80CF56A4 */ int draw();
    /* 80CF582C */ int _delete();
    /* 80CF5940 */ ~daObjSwBallB_c();

    s32 getID() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 16, 8); }
    u32 getType() { return fopAcM_GetParamBit(this, 24, 4); }
    u32 getArg1() { return fopAcM_GetParamBit(this, 28, 4); }
    u8 getEvent() { return field_0x5a2; }
    void clrFlag(u8 idx) { field_0x597[idx] = 0; }
    void onFlag(u8 idx, u8 val) { field_0x597[idx] |= val; }
    u8 checkFlag(u8 idx, u8 val) { return field_0x597[idx] & val; }
    void setLightOn() { field_0x5ac = 1; }
    void setLightOff() { field_0x5ad = 1; }

    u8 dEvLib_callback_c_filler[0x14];
    /* 0x57C */ request_of_phase_process_class field_0x57c;
    /* 0x584 */ J3DModel* mModel;
    /* 0x588 */ mDoExt_btkAnm* field_0x588;
    /* 0x58C */ u32 field_0x58c[2];
    /* 0x594 */ u8 field_0x594;
    /* 0x595 */ u8 field_0x595;
    /* 0x596 */ u8 field_0x596;
    /* 0x597 */ u8 field_0x597[2];
    /* 0x598 */ u8 field_0x599[2];
    /* 0x59C */ u32 field_0x59c;
    /* 0x5A0 */ u8 field_0x5a0;
    /* 0x5A1 */ u8 field_0x5a1;
    /* 0x5A2 */ u16 field_0x5a2;
    /* 0x5A4 */ u16 field_0x5a4;
    /* 0x5A6 */ u16 field_0x5a6;
    /* 0x5A8 */ int field_0x5a8;
    /* 0x5AC */ u8 field_0x5ac;
    /* 0x5AD */ u8 field_0x5ad;
};

#endif /* D_A_OBJ_SWBALLB_H */
