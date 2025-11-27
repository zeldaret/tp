#ifndef D_A_OBJ_TKS_H
#define D_A_OBJ_TKS_H

#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_npc4.h"

struct daObjTks_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 offset_x;
    /* 0x70 */ f32 offset_y;
    /* 0x74 */ f32 offset_z;
    /* 0x78 */ f32 spring_factor;
    /* 0x7C */ f32 spring_atten;
};

class daObjTks_Param_c {
public:
    /* 80D126D0 */ virtual ~daObjTks_Param_c() {}

    static const daObjTks_HIOParam m;
};

/**
 * @ingroup actors-objects
 * @class daObjTks_c
 * @brief Ooccoo Jr. (small)
 *
 * @details
 *
*/

class daObjTks_c : public daNpcF_c {
public:
    /* 80D0F28C */ daObjTks_c();
    /* 80D0F480 */ virtual ~daObjTks_c();

    /* 80D0F640 */ int Create();
    /* 80D0F904 */ int CreateHeap();
    /* 80D0FD34 */ int Delete();
    /* 80D0FD68 */ int Execute();
    /* 80D0FE60 */ int Draw();
    /* 80D0FED0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80D10094 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D100B4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80D103E8 */ void reset();
    /* 80D10578 */ inline int setAction(void (daObjTks_c::*)());
    /* 80D10618 */ void wait();
    /* 80D106F4 */ void talk();
    /* 80D10A80 */ void demo();
    /* 80D11228 */ void warp();
    /* 80D11CB4 */ inline void lookat();

    /* 80D11670 */ virtual inline void setParam();
    /* 80D116C8 */ virtual inline BOOL main();
    /* 80D118E8 */ virtual inline BOOL ctrlBtk();
    /* 80D10100 */ virtual inline void setMtx();
    /* 80D119BC */ virtual inline void setAttnPos();
    /* 80D10184 */ virtual inline bool setExpressionAnm(int, bool);
    /* 80D102D0 */ virtual inline bool setExpressionBtp(int);
    /* 80D106C8 */ virtual inline void setExpression(int, f32);
    /* 80D11104 */ virtual inline void setMotionAnm(int, f32);
    /* 80D103A4 */ virtual inline void setMotion(int, f32, int);
    /* 80D11E94 */ virtual inline BOOL drawDbgInfo();
    /* 80D11E9C */ virtual inline void drawOtherMdls();

    void calcSpringF(f32* param_0, f32 param_1, f32* param_2) {
        *param_2 = daObjTks_Param_c::m.spring_atten * (*param_2 + (daObjTks_Param_c::m.spring_factor * (*param_0 - param_1)));
        *param_0 += *param_2;
    }

    inline void playExpression();
    inline void playMotion();

    bool chkAction(void (daObjTks_c::*i_action)()) { return i_action == mAction; }

    void setStart() { field_0xde0 = 1; }

    void setLookMode(int i_mode) {
        if (i_mode >= 0 && i_mode < 6 && i_mode != mLookMode) {
            mLookMode = i_mode;
        }
    }

    void setExpressionTalkAfter() {
        (void)mExpression;
        setExpression(1, -1.0f);
    }

    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ u8 field_0xC78[0xC7C - 0xC78];
    /* 0xC7C */ dCcD_Cyl mCcCyl;
    /* 0xDB8 */ void (daObjTks_c::*mAction)();
    /* 0xDC4 */ request_of_phase_process_class mPhase;
    /* 0xDCC */ f32 field_0xdcc;
    /* 0xDD0 */ f32 field_0xdd0;
    /* 0xDD4 */ u8 field_0xDD4[0xDDC - 0xDD4];
    /* 0xDDC */ s16 mLookMode;
    /* 0xDDE */ u16 field_0xdde;
    /* 0xDE0 */ u8 field_0xde0;
    /* 0xDE1 */ u8 field_0xde1;
};

STATIC_ASSERT(sizeof(daObjTks_c) == 0xDE4);

#endif /* D_A_OBJ_TKS_H */
