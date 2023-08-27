#ifndef D_A_BG_OBJ_H
#define D_A_BG_OBJ_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/bg/d_bg_w.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class daBgObj_c;
typedef int (daBgObj_c::*createHeapFunc)();
typedef int (daBgObj_c::*createInitFunc)();
typedef int (daBgObj_c::*executeFunc)();
typedef void (daBgObj_c::*tgSetFunc)();
typedef int (daBgObj_c::*actionFunc)();

class daBgObj_c : public dBgS_MoveBgActor {
public:
    class spec_data_c {
    public:
        /* 804597E8 */ u8* initParticleBlock(u8*);
        /* 80459814 */ u8* initSoundBlock(u8*);
        /* 80459840 */ u8* initTexShareBlock(u8*);
        /* 804598F4 */ u8* initFarInfoBlock(u8*);
        /* 80459904 */ bool Set(void*);

        /* 0x00 */ u16 mSpecType;
        /* 0x02 */ u8 field_0x02;
        /* 0x03 */ u8 field_0x03;
        /* 0x04 */ u32 mParticleNum;
        /* 0x08 */ u8* mpParticleBlock;
        /* 0x0C */ u32 mSoundNum;
        /* 0x10 */ u8* mpSoundBlock;
        /* 0x14 */ u8 field_0x14;
        /* 0x15 */ u8 field_0x15;
        /* 0x16 */ u8 field_0x16;
        /* 0x18 */ u8* mpTexShareBlock;
        /* 0x1C */ u8 mTexShareNum;
        /* 0x20 */ f32 mpFarInfoBlock;
    };

    /* 80459B64 */ void release(dBgW*);
    /* 80459BB4 */ void regist(dBgW*);
    /* 80459BEC */ void initAtt();
    /* 80459D0C */ void setAttentionInfo(fopAc_ac_c*);
    /* 80459D3C */ void initBaseMtx();
    /* 80459D94 */ void setBaseMtx();
    /* 80459E04 */ void settingCullSizeBoxForCo(int);
    /* 80459F14 */ void settingCullSizeBoxForCull(int);
    /* 8045A0EC */ int CreateInitType0();
    /* 8045A160 */ int CreateInitType1();
    /* 8045A2F0 */ int CreateHeapType0();
    /* 8045A574 */ int CreateHeapType1();
    /* 8045A83C */ void doShareTexture();
    /* 8045A9E8 */ int create1st();
    /* 8045AAF0 */ void setColCommon();
    /* 8045AB80 */ void set_tri_0();
    /* 8045ACC0 */ void set_tri_1();
    /* 8045AE00 */ void set_cyl_0();
    /* 8045AE98 */ void set_tri_2();
    /* 8045AFD4 */ void set_tri_3();
    /* 8045B17C */ void setParticle();
    /* 8045B3A0 */ void setSe();
    /* 8045B44C */ BOOL checkDestroy();
    /* 8045B534 */ BOOL checkHitAt(cCcD_Obj*);
    /* 8045B5E0 */ void orderWait_tri();
    /* 8045B7FC */ void orderWait_cyl();
    /* 8045B9C4 */ void orderWait_spec();
    /* 8045BB38 */ int actionOrderWait();
    /* 8045BBE0 */ int actionOrder();
    /* 8045BD50 */ int actionEvent();
    /* 8045BDB0 */ int actionWait();
    /* 8045BDB8 */ int ExecuteType0();
    /* 8045BED0 */ int ExecuteType1();
    /* 8045C25C */ void indirectProc(J3DModel*);

    /* 8045A940 */ virtual int CreateHeap();
    /* 8045A2B8 */ virtual int Create();
    /* 8045BFBC */ virtual int Execute(f32 (**)[3][4]);
    /* 8045C078 */ virtual int Draw();
    /* 8045C2E8 */ virtual int Delete();

    void setAction(u8 i_action) { mAction = i_action; }

    static createHeapFunc mCreateHeapFunc[];
    static createInitFunc mCreateInitFunc[];
    static executeFunc mExecuteFunc[];
    static tgSetFunc mTgSetFunc[];

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* field_0x5a8[2][2];
    /* 0x5B8 */ mDoExt_btkAnm* field_0x5b8[2][2];
    /* 0x5C8 */ mDoExt_brkAnm* field_0x5c8[2][2];
    /* 0x5D8 */ dBgW* mpBgW2;
    /* 0x5DC */ dCcD_Stts mStts;
    /* 0x618 */ dCcD_Tri mTris[4];
    /* 0xB88 */ dCcD_Cyl mCyl;
    /* 0xCC4 */ u8 field_0xcc4;
    /* 0xCC5 */ u8 mAction;
    /* 0xCC6 */ s16 mEventIdx;
    /* 0xCC8 */ u8 field_0xcc8;
    /* 0xCC9 */ u8 field_0xcc9;
    /* 0xCCA */ u16 field_0xcca;
    /* 0xCCC */ u16 field_0xccc;
    /* 0xCD0 */ spec_data_c mSpecData;
    /* 0xCF4 */ csXyz field_0xcf4;
    /* 0xCFC */ u32 mAttnActorID;
    /* 0xD00 */ u8 field_0xd00;
    /* 0xD01 */ u8 field_0xd01;
    /* 0xD02 */ u8 field_0xd02;
};

namespace daBgObj_prm {
inline u8 getEvId(daBgObj_c* i_this) {
    return (fopAcM_GetParam(i_this) >> 0x15) & 0xFF;
}

inline u8 getSwBit(daBgObj_c* i_this) {
    return i_this->field_0xccc & 0xFF;
}

inline u8 getSwBit2(daBgObj_c* i_this) {
    return (i_this->field_0xccc >> 8) & 0xFF;
}

inline u8 getObjArg0(daBgObj_c* i_this) {
    return i_this->field_0xcca & 0xFF;
}
};     // namespace daBgObj_prm

#endif /* D_A_BG_OBJ_H */
