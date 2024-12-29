#ifndef D_A_OBJ_CWALL_H
#define D_A_OBJ_CWALL_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjCwall_c
 * @brief Chain Wall
 *
 * @details
 *
 */
class daObjCwall_c : public dBgS_MoveBgActor {
public:
    struct chain_s {
    public:
        /* 80BD6E94 */ ~chain_s();
        /* 80BD6ED0 */ chain_s();

        J3DModel* mModel;
        cXyz mPos;
    };

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    typedef void (daObjCwall_c::*modeFunc)();

    /* 80BD6A4C */ void initBaseMtx();
    /* 80BD6A88 */ void setBaseMtx();
    /* 80BD6AEC */ int Create();
    /* 80BD6D08 */ int CreateHeap();
    /* 80BD6ED4 */ int create1st();
    /* 80BD6F80 */ int Execute(Mtx**);
    /* 80BD7288 */ void setTension();
    /* 80BD7718 */ void calcSePos();
    /* 80BD7788 */ void getChainBasePos(cXyz*);
    /* 80BD7804 */ void setChainMtx();
    /* 80BD7AD4 */ void chain_control();
    /* 80BD7ED8 */ void chain_control2();
    /* 80BD84C0 */ void block_mode_proc_call();
    /* 80BD8594 */ void initWait();
    /* 80BD85C0 */ void modeWait();
    /* 80BD8748 */ void initWalk();
    /* 80BD8778 */ void modeWalk();
    /* 80BD8BC8 */ void initClose();
    /* 80BD8BF0 */ void modeClose();
    /* 80BD935C */ void setPower(f32, s16*);
    /* 80BD9414 */ BOOL checkWall();
    /* 80BD95A0 */ BOOL checkPullNow();
    /* 80BD977C */ BOOL checkPull();
    /* 80BD9848 */ int Draw();
    /* 80BD9948 */ int Delete();

    u8 getArg0() { return fopAcM_GetParamBit(this, 0, 4); }
    u8 getType() { return fopAcM_GetParamBit(this, 4, 4); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mWallModel;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x5E8 */ dCcD_Cyl mCyl;
    /* 0x724 */ dCcD_Sph mSph;
    /* 0x85C */ dCcD_Cyl mCyls[4];
    /* 0xD4C */ dCcD_Cyl mCyl2;
    /* 0xE88 */ J3DModel* mHandleModel;
    /* 0xE8C */ chain_s* mChains;
    /* 0xE90 */ u8 field_0xe90;
    /* 0xE91 */ u8 field_0xe91;
    /* 0xE92 */ u8 field_0xe92;
    /* 0xE93 */ u8 field_0xe93;
    /* 0xE94 */ cXyz field_0xe94[7];
    /* 0xEE8*/ f32 field_0xee8[7];
    /* 0xF04 */ u8 field_0xf04[7];
    /* 0xF0B */ u8 field_0xf0b;
    /* 0xF0C */ u8 field_0xf0c;
    /* 0xF0D */ u8 field_0xf0d;
    /* 0xF0E */ u8 field_0xf0e;
    /* 0xF0F */ u8 field_0xf0f;
    /* 0xF10 */ u8 field_0xf10;
    /* 0xF11 */ u8 mType;
    /* 0xF12 */ u8 field_0xf12;
    /* 0xF14 */ s16 field_0xf14;
    /* 0xF16 */ s16 field_0xf16;
    /* 0xF18 */ s16 field_0xf18;
    /* 0xF1A */ s16 field_0xf1a;
    /* 0xF1C */ s16 field_0xf1c;
    /* 0xF20 */ cXyz field_0xf20;
    /* 0xF2C */ cXyz field_0xf2c;
    /* 0xF38 */ cXyz field_0xf38;
    /* 0xF44 */ cXyz field_0xf44;
    /* 0xF50 */ f32 field_0xf50;
    /* 0xF54 */ f32 field_0xf54;
    /* 0xF58 */ u8 field_0xf58;
    /* 0xF58 */ u8 field_0xf59;
};

STATIC_ASSERT(sizeof(daObjCwall_c) == 0xf5c);


#endif /* D_A_OBJ_CWALL_H */
