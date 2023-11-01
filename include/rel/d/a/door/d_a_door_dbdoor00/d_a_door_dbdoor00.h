#ifndef D_A_DOOR_DBDOOR00_H
#define D_A_DOOR_DBDOOR00_H

#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daDbDoor00_c : public fopAc_ac_c {
public:
    /* 8045D470 */ char* getAlwaysArcName();
    /* 8045D480 */ char* getDzb();
    /* 8045D490 */ char* getDummyBmdName();
    /* 8045D4A0 */ char* getBmdArcName();
    /* 8045D4B0 */ char* getBmdName();
    /* 8045D504 */ J3DModelData* getDoorModelData();
    /* 8045D594 */ int CreateHeap();
    /* 8045D744 */ void calcMtx();
    /* 8045D8F4 */ int CreateInit();
    /* 8045D9A8 */ int create();
    /* 8045DA68 */ int getDemoAction();
    /* 8045DAB0 */ void demoProc();
    /* 8045DE44 */ int checkArea();
    /* 8045DF70 */ int checkUnlock();
    /* 8045DF78 */ int actionWait();
    /* 8045DF9C */ int actionLockWait();
    /* 8045E000 */ int actionLockOff();
    /* 8045E094 */ int actionLockDemo();
    /* 8045E108 */ int actionCloseWait();
    /* 8045E1C8 */ int actionOpen();
    /* 8045E1EC */ int execute();
    /* 8045E2DC */ int checkDraw();
    /* 8045E31C */ int draw();
    /* 8045E428 */ int Delete();

    void setAction(u8 i_action) { mAction = i_action; }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ request_of_phase_process_class mPhaseReq2;
    /* 0x578 */ J3DModel* mpModel;
    /* 0x57C */ J3DModel* mpModel2;
    /* 0x580 */ dBgW* mpBgW;
    /* 0x584 */ u8 field_0x584;
    /* 0x585 */ u8 field_0x585;
    /* 0x586 */ u8 mAction;
    /* 0x587 */ u8 field_0x587[0x58A - 0x587];
    /* 0x58A */ s16 field_0x58a;
    /* 0x58C */ s16 field_0x58c;
    /* 0x58E */ u8 field_0x58E[0x590 - 0x58E];
    /* 0x590 */ s16 field_0x590;
    /* 0x594 */ s32 field_0x594;
    /* 0x598 */ s32 field_0x598;
    /* 0x59C */ cXyz field_0x59c;
    /* 0x5A8 */ cXyz field_0x5a8;
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ s8 field_0x5c0;
    /* 0x5C1 */ s8 field_0x5c1;
    /* 0x5C2 */ s16 field_0x5c2;
};

#endif /* D_A_DOOR_DBDOOR00_H */
