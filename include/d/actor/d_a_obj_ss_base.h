#ifndef A_OBJ_D_A_OBJ_SS_BASE_H
#define A_OBJ_D_A_OBJ_SS_BASE_H

#include "f_op/f_op_actor.h"

class daObj_SSBase_c : public fopAc_ac_c {
public:
    /* 8015E3F8 */ daObj_SSBase_c();

    /* 8015E450 */ virtual ~daObj_SSBase_c();
    /* 8015E4C8 */ virtual void setSoldOut();
    /* 8015E4B0 */ virtual u32 getProcessID();

    void* getParentPtr() { return mpParentPtr; }
    void setParentPtr(void* parentPtr) { mpParentPtr = parentPtr; }
    u16 getFlowNodeNumber() { return mFlowNodeNum; }
    void setFlowNodeNumber(u16 flowNodeNum) { mFlowNodeNum = flowNodeNum; }
    u16 getValueNumber() { return mValueNum; }
    void setValueNumber(u16 valueNum) { mValueNum = valueNum; }

private:
    /* 0x56C */ void* mpParentPtr;
    /* 0x570 */ u16 field_0x570;
    /* 0x572 */ u16 mFlowNodeNum;
    /* 0x574 */ u16 mValueNum;
};

#endif /* A_OBJ_D_A_OBJ_SS_BASE_H */
