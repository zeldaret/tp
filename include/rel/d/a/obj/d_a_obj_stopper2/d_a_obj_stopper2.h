#ifndef D_A_OBJ_STOPPER2_H
#define D_A_OBJ_STOPPER2_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjStopper2_c
 * @brief Door Stop
 *
 * @details
 *
 */
class daObjStopper2_c : public fopAc_ac_c {
public:
    /* 80CEF368 */ J3DModelData* getStopModelData();
    /* 80CEF38C */ void initBaseMtx();
    /* 80CEF3C8 */ void setBaseMtx();
    /* 80CEF434 */ float getMaxOffsetY();
    /* 80CEF44C */ int Create();
    /* 80CEF57C */ int CreateHeap();
    /* 80CEF5C8 */ int create();
    /* 80CEF66C */ int execute();
    /* 80CEF6A4 */ void event_proc_call();
    /* 80CEF760 */ void actionWait();
    /* 80CEF98C */ void actionOrderEvent();
    /* 80CEFA60 */ void actionEvent();
    /* 80CEFAD4 */ void actionDead();
    /* 80CEFAD8 */ void demoProc();
    /* 80CEFD40 */ int draw();
    /* 80CEFDB8 */ int _delete();

    u32 getEvId() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    void setAction(u8 i_action) { mAction = i_action; }

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ f32 field_0x574;
    /* 0x578 */ s32 field_0x578;
    /* 0x57C */ u16 field_0x57c[4];
    /* 0x584 */ u8 field_0x584;
    /* 0x585 */ u8 field_0x585;
    /* 0x586 */ u8 mAction;
    /* 0x587 */ u8 field_0x587;
    /* 0x588 */ u8 field_0x588;
};

STATIC_ASSERT(sizeof(daObjStopper2_c) == 0x58C);


#endif /* D_A_OBJ_STOPPER2_H */
