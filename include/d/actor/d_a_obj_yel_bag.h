#ifndef D_A_OBJ_YEL_BAG_H
#define D_A_OBJ_YEL_BAG_H

#include "SSystem/SComponent/c_cc_d.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_YBag_c
 * @brief Ilia's Bag
 *
 * @details
 *
 */
class daObj_YBag_c : public fopAc_ac_c {
private:
    /* 0x568 */ request_of_phase_process_class mPhases[3];
    /* 0x580 */ J3DModel* mModel;
    /* 0x584 */ int field_0x584;
    /* 0x588 */ dBgS_ObjAcch mAcch;
    /* 0x760 */ dCcD_Stts mStts;
    /* 0x79C */ dBgS_AcchCir mAcchCir;
    /* 0x7DC */ dCcD_Cyl mCyl;
    /* 0x918 */ cBgS_GndChk mGndChk;
    /* 0x954 */ dBgS_LinChk mLinChk;
    /* 0x9C4 */ cXyz field_0x9c4;
    /* 0x9C4 */ cXyz field_0x9d0;
    /* 0x9DC */ csXyz field_0x9dc;
    /* 0x9E4 */ int field_0x9e4;
    /* 0x9E8 */ int field_0x9e8;
    /* 0x9EC */ f32 field_0x9ec;
    /* 0x9F0 */ f32 field_0x9f0;
    /* 0x9F4 */ f32 field_0x9f4;
    /* 0x9F8 */ f32 field_0x9f8;
    /* 0x9FC */ f32 field_0x9fc;
    /* 0xA00 */ s16 field_0xa00;
    /* 0xA02 */ s16 field_0xa02;
    /* 0xA04 */ s16 field_0xa04;
    /* 0xA06 */ s16 field_0xa06;
    /* 0xA08 */ s16 field_0xa08;
    /* 0xA0C */ int mShadowId;
    /* 0xA10 */ u32 field_0xa10;
    /* 0xA14 */ u32 field_0xa14;
    /* 0xA14 */ int mWaterParticles[4];
    /* 0xA14 */ u32 field_0xa28[2];
    /* 0xA30 */ u8 mType;
    /* 0xA31 */ u8 field_0xa31;
    /* 0xA32 */ u8 field_0xa32;
    /* 0xA33 */ u8 field_0xa33;
    /* 0xA34 */ u8 field_0xa34;
public:
    /* 80D3C0EC */ daObj_YBag_c();
    /* 80D3C408 */ virtual ~daObj_YBag_c();
    /* 80D3C610 */ int create();
    /* 80D3C898 */ int CreateHeap();
    /* 80D3C93C */ int Delete();
    /* 80D3C970 */ int Execute();
    /* 80D3D32C */ int Draw();
    /* 80D3D438 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D3D458 */ int getTypeFromParam();
    /* 80D3D460 */ int isDelete();
    /* 80D3D468 */ void setEnvTevColor();
    /* 80D3D4C4 */ void setRoomNo();
    /* 80D3D508 */ void reset();
    /* 80D3D5C8 */ void setMtx();
    /* 80D3D69C */ s16 calcRollAngle(s16, int);
    /* 80D3D73C */ int getWallAngle(s16, s16*);
    /* 80D3D8CC */ void setSmokePrtcl();
    /* 80D3D948 */ void setWaterPrtcl();
    /* 80D3DA70 */ void setHamonPrtcl();

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

STATIC_ASSERT(sizeof(daObj_YBag_c) == 0xa3c);

class daObj_YBag_Param_c {
public:
    /* 80D3DC20 */ virtual ~daObj_YBag_Param_c() {}

    static f32 const m[11];
};


#endif /* D_A_OBJ_YEL_BAG_H */
