#ifndef D_A_TAG_SS_DRINK_H
#define D_A_TAG_SS_DRINK_H

#include "d/a/d_a_obj_ss_base.h"
#include "d/msg/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

class daTag_SSDrink_c;
typedef int (daTag_SSDrink_c::*ProcessFunc)(void*);

class daTag_SSDrink_c : public daObj_SSBase_c {
public:
    /* 80D62DB8 */ int create();
    /* 80D62E5C */ int Delete();
    /* 80D62E64 */ int Execute();
    /* 80D62ED0 */ int Draw();
    /* 80D62ED8 */ int getTypeFromParam();
    /* 80D62F80 */ u8 getSwitchFromParam();
    /* 80D62F8C */ u16 getFlowNodeNum();
    /* 80D62FC8 */ u16 getValue();
    /* 80D62FD4 */ void restart();
    /* 80D63044 */ void initialize();
    /* 80D630BC */ int checkProcess(ProcessFunc);
    /* 80D630E8 */ int setProcess(ProcessFunc);
    /* 80D631D4 */ void setAttnPos();
    /* 80D63208 */ int chkEvent();
    /* 80D63384 */ int orderEvent();
    /* 80D63490 */ int wait(void*);
    /* 80D635C8 */ int talk(void*);
    /* 80D63724 */ ~daTag_SSDrink_c();

    s32 fopAcM_seenPlayerAngleY() { return fopAcM_seenActorAngleY(this, dComIfGp_getPlayer(0)); }
    bool checkShopOil() const { return field_0x5D2 == 4; }

    /* 0x578 */ dMsgFlow_c field_0x578;
    /* 0x5C4 */ ProcessFunc mProcessFunc;
    /* 0x5D0 */ u16 mEventType;
    /* 0x5D2 */ u8 field_0x5D2;
    /* 0x5D3 */ u8 field_0x5D3;
    /* 0x5D4 */ u8 field_0x5D4;
    /* 0x5D5 */ u8 field_0x5D5;
};  // Size: 0x5D8
STATIC_ASSERT(sizeof(daTag_SSDrink_c) == 0x5D8);

#endif /* D_A_TAG_SS_DRINK_H */
