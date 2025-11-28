#ifndef D_A_OBJ_SS_DRINK_H
#define D_A_OBJ_SS_DRINK_H

#include "d/actor/d_a_obj_ss_item.h"

/**
 * @ingroup actors-objects
 * @class daObj_SSDrink_c
 * @brief ???
 *
 * @details
 *
 */
class daObj_SSDrink_c : public daObj_SSBase_c {
public:
    typedef int (daObj_SSDrink_c::*ProcessFunc)(void*);

    /* 80CE51C8 */ int create();
    /* 80CE53EC */ int CreateHeap();
    /* 80CE55F0 */ int Delete();
    /* 80CE5624 */ int Execute();
    /* 80CE5858 */ int Draw();
    /* 80CE59DC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CE5A50 */ char* getResName();
    /* 80CE5A60 */ u8 getTypeFromParam();
    /* 80CE5B0C */ u8 getSwitchFromParam();
    /* 80CE5B18 */ u8 getCapacityFromParam();
    /* 80CE5B3C */ u16 getFlowNodeNum();
    /* 80CE5B74 */ u16 getValue();
    /* 80CE5B80 */ void restart();
    /* 80CE5BF0 */ void initialize();
    /* 80CE5DB0 */ int checkProcess(ProcessFunc);
    /* 80CE5DDC */ int setProcess(ProcessFunc);
    /* 80CE5EC8 */ void setParam();
    /* 80CE5FE4 */ void setEnvTevColor();
    /* 80CE6040 */ void setRoomNo();
    /* 80CE6084 */ void setMtx();
    /* 80CE60E8 */ void setAttnPos();
    /* 80CE6170 */ void animeEntry();
    /* 80CE61E4 */ void animePlay();
    /* 80CE622C */ int chkEvent();
    /* 80CE63AC */ int orderEvent();
    /* 80CE644C */ int wait(void*);
    /* 80CE6454 */ int talk(void*);
    /* 80CE6514 */ int drink(void*);

    /* 80CE4F78 */ virtual ~daObj_SSDrink_c();
    /* 80CE59FC */ virtual void setSoldOut();

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x578 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x57C */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x580 */ u8 field_0x580;
    /* 0x584 */ request_of_phase_process_class mPhase;
    /* 0x58C */ J3DModel* mpModel;
    /* 0x590 */ dBgS_ObjAcch mAcch;
    /* 0x768 */ dCcD_Stts mStts;
    /* 0x7A4 */ dBgS_AcchCir mAcchCir;
    /* 0x7E4 */ dCcD_Cyl mCyl1;
    /* 0x920 */ dCcD_Cyl mCyl2;
    /* 0xA5C */ cBgS_GndChk mGndChk;
    /* 0xA98 */ cXyz field_0xa98;
    /* 0xAA4 */ dMsgFlow_c mFlow;
    /* 0xAF0 */ ProcessFunc field_0xaf0;
    /* 0xAFC */ f32 field_0xafc;
    /* 0xB00 */ f32 mLeftHandPosY;
    /* 0xB04 */ u8 field_0xb04[4];
    /* 0xB08 */ u16 field_0xb08;
    /* 0xB0A */ u8 field_0xb0a;
    /* 0xB0B */ u8 field_0xb0b;
    /* 0xB0C */ u8 field_0xb0c;
};

STATIC_ASSERT(sizeof(daObj_SSDrink_c) == 0xb10);

#endif /* D_A_OBJ_SS_DRINK_H */
