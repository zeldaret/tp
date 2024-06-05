#ifndef D_A_DOOR_BOSSL5_H
#define D_A_DOOR_BOSSL5_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_w.h"
#include "d/bg/d_bg_s_acch.h"
#include "f_pc/f_pc_manager.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-doors
 * @class daBdoorL5_c
 * @brief Snowpeak Ruins Boss Door
 *
 * @details
 *
 */
class daBdoorL5_c : public fopAc_ac_c {
public:
    enum ActionType {
        ACTION_WAIT,
        ACTION_CLOSE_WAIT,
        ACTION_OPEN,
        ACTION_END,
    };

    typedef int (daBdoorL5_c::*actionFunc)();

    /* 80670C38 */ const char* getArcName();
    /* 80670C44 */ const char* getAlwaysArcName();
    /* 80670C54 */ const char* getBmd();
    /* 80670C64 */ const char* getDzb();
    /* 80670C74 */ const char* getAnmArcName();
    /* 80670C84 */ s32 getOpenAnm();
    /* 80670C8C */ s32 getCloseAnm();
    /* 80670C94 */ J3DModelData* getDoorModelData();
    /* 80670D10 */ int CreateHeap();
    /* 80670F08 */ void calcMtx();
    /* 80670F5C */ int CreateInit();
    /* 8067106C */ int create();
    /* 806712DC */ int getDemoAction();
    /* 80671324 */ void demoProc();
    /* 806715D0 */ int openInit();
    /* 80671670 */ int openProc();
    /* 80671718 */ int openEnd();
    /* 80671720 */ int closeInit();
    /* 806717FC */ int closeProc();
    /* 80671820 */ int closeEnd();
    /* 80671878 */ int unlockInit();
    /* 80671954 */ void calcGoal(cXyz*, int);
    /* 80671A7C */ void smokeInit();
    /* 80671B14 */ int createKey();
    /* 80671C14 */ int checkArea();
    /* 80671D44 */ int checkFront();
    /* 80671DE4 */ int checkOpen();
    /* 80671E70 */ int actionWait();
    /* 80671E78 */ int actionCloseWait();
    /* 80671F58 */ int actionOpen();
    /* 80672004 */ int actionEnd();
    /* 80672164 */ int execute();
    /* 8067228C */ int draw();
    /* 80672374 */ int Delete();

    void setAction(u8 action) { mAction = action; }
    int deleteKey() {
        if (mKeyHoleId != -1 && fpcM_IsCreating(mKeyHoleId) == 0) {
            fopAcM_delete(mKeyHoleId);
            mKeyHoleId = -1;
        }
        return 1;
    }

private:
    /* 0x568 */ request_of_phase_process_class mPhase1;
    /* 0x570 */ request_of_phase_process_class mPhase2;
    /* 0x578 */ request_of_phase_process_class mPhase3;
    /* 0x580 */ J3DModel* field_0x580;
    /* 0x584 */ mDoExt_bckAnm* field_0x584;
    /* 0x588 */ dBgW* field_0x588;
    /* 0x58C */ u32 mKeyHoleId;
    /* 0x590 */ u8 field_0x590;
    /* 0x591 */ u8 mAction;
    /* 0x592 */ u8 field_0x592;
    /* 0x593 */ u8 field_0x593;
    /* 0x594 */ u8 field_0x594;
    /* 0x596 */ s16 field_0x596;
    /* 0x598 */ s16 field_0x598;
    /* 0x59A */ s16 field_0x59a;
    /* 0x59C */ int field_0x59c;
    /* 0x5A0 */ int field_0x5a0;
    /* 0x5A4 */ cXyz field_0x5a4;
    /* 0x5B0 */ csXyz field_0x5b0;
    /* 0x5B6 */ u16 field_0x5b6;
    /* 0x5B8 */ dBgS_ObjAcch field_0x5b8;
    /* 0x790 */ dBgS_AcchCir field_0x790;
};

STATIC_ASSERT(sizeof(daBdoorL5_c) == 0x7D0);

#endif /* D_A_DOOR_BOSSL5_H */
