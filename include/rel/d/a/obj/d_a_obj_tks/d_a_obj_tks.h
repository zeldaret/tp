#ifndef D_A_OBJ_TKS_H
#define D_A_OBJ_TKS_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjTks_c : public fopAc_ac_c {
public:
    /* 80D0F28C */ daObjTks_c();
    /* 80D0F480 */ ~daObjTks_c();
    /* 80D0F640 */ void Create();
    /* 80D0F904 */ void CreateHeap();
    /* 80D0FD34 */ void Delete();
    /* 80D0FD68 */ void Execute();
    /* 80D0FE60 */ void Draw();
    /* 80D0FED0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80D10094 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D100B4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80D10100 */ void setMtx();
    /* 80D10184 */ void setExpressionAnm(int, bool);
    /* 80D102D0 */ void setExpressionBtp(int);
    /* 80D103A4 */ void setMotion(int, f32, int);
    /* 80D103E8 */ void reset();
    /* 80D10578 */ void setAction(void (daObjTks_c::*)());
    /* 80D10618 */ void wait();
    /* 80D106C8 */ void setExpression(int, f32);
    /* 80D106F4 */ void talk();
    /* 80D10A80 */ void demo();
    /* 80D11104 */ void setMotionAnm(int, f32);
    /* 80D11228 */ void warp();
    /* 80D11670 */ void setParam();
    /* 80D116C8 */ void main();
    /* 80D118E8 */ void ctrlBtk();
    /* 80D119BC */ void setAttnPos();
    /* 80D11CB4 */ void lookat();
    /* 80D11E94 */ bool drawDbgInfo();
    /* 80D11E9C */ void drawOtherMdls();

private:
    /* 0x568 */ u8 field_0x568[0xDE4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjTks_c) == 0xDE4);

class daObjTks_Param_c {
public:
    /* 80D126D0 */ ~daObjTks_Param_c();

    static u8 const m[128];
};

#endif /* D_A_OBJ_TKS_H */
