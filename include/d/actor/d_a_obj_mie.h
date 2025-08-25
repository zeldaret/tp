#ifndef D_A_OBJ_MIE_H
#define D_A_OBJ_MIE_H

#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

struct daObj_Mie_HIOParam {
    /* 0x00 */ f32 focus_offset;
    /* 0x04 */ f32 gravity;
    /* 0x08 */ f32 scale;
    /* 0x0C */ f32 real_shadow_size;
    /* 0x10 */ f32 weight;
    /* 0x14 */ f32 height;
    /* 0x18 */ f32 knee_length;
    /* 0x1C */ f32 width;
    /* 0x20 */ f32 firing_rate;
    /* 0x24 */ f32 launch_angle;
    /* 0x28 */ f32 floating_offset;
};

struct daObj_Mie_Param_c {
    virtual ~daObj_Mie_Param_c() {}
    static const daObj_Mie_HIOParam m;
};

class daObj_Mie_HIO_c 
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
public:
    daObj_Mie_HIO_c() {
        mParams = daObj_Mie_Param_c::m;
    }

    void genMessage(JORMContext*);
    /* 80C95A40 */ virtual ~daObj_Mie_HIO_c() {}

    daObj_Mie_HIOParam mParams;
};

/**
 * @ingroup actors-objects
 * @class daObj_Mie_c
 * @brief Gengle (Cat)
 *
 * @details
 *
 */
class daObj_Mie_c : public fopAc_ac_c {
private:
    /* 0x568 */ daObj_Mie_HIO_c* mHIO;
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mModel;
    /* 0x578 */ dBgS_ObjAcch mAcch;
    /* 0x750 */ dCcD_Stts mStts;
    /* 0x78C */ dBgS_AcchCir mAcchCir;
    /* 0x7CC */ cBgS_GndChk mGndChk;
    /* 0x808 */ dCcD_Cyl mCyl;
    /* 0x944 */ cM3dGLin mLine;
    /* 0x960 */ dBgS_LinChk mLinChk;
    /* 0x9D0 */ u8 mType;
    /* 0x9D4 */ cXyz field_0x9d4;
    /* 0x9E0 */ cXyz field_0x9e0;
    /* 0x9EC */ csXyz field_0x9ec;
    /* 0x9F4 */ int field_0x9f4;
    /* 0x9F8 */ int field_0x9f8;
    /* 0x9FC */ f32 field_0x9fc;
    /* 0xA00 */ f32 field_0xa00;
    /* 0xA04 */ f32 field_0xa04;
    /* 0xA08 */ f32 field_0xa08;
    /* 0xA0C */ f32 field_0xa0c;
    /* 0xA10 */ s16 field_0xa10;
    /* 0xA12 */ s16 field_0xa12;
    /* 0xA14 */ s16 field_0xa14;
    /* 0xA16 */ s16 field_0xa16;
    /* 0xA18 */ s16 field_0xa18;
    /* 0xA18 */ int field_0xa1c;
    /* 0xA18 */ u32 field_0xa20[4];
    /* 0xA38 */ u32 field_0xa30;
    /* 0xA38 */ u32 field_0xa34;
    /* 0xA38 */ u32 field_0xa38;
    /* 0xA3C */ u32 field_0xa3c;
    /* 0xA40 */ u8 field_0xa40;
    /* 0xA41 */ u8 field_0xa41;
    /* 0xA42 */ u8 field_0xa42;
    /* 0xA43 */ u8 field_0xa43;
    /* 0xA44 */ u8 field_0xa44;
    /* 0xA45 */ u8 field_0xa45;
    /* 0xA46 */ u8 field_0xa46;
    /* 0xA47 */ u8 field_0xa47;
    /* 0xA48 */ int field_0xa48;
public:
    enum Type {
        TYPE_0,
    };

    /* 80C93FCC */ virtual ~daObj_Mie_c();
    /* 80C941C8 */ int create();
    /* 80C945E8 */ int CreateHeap();
    /* 80C94674 */ int Delete();
    /* 80C946A8 */ int Execute();
    /* 80C95140 */ int Draw();
    /* 80C952D8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80C952F8 */ static void* srchPouyaa(void*, void*);
    /* 80C9536C */ void setEnvTevColor();
    /* 80C953C8 */ void setRoomNo();
    /* 80C9540C */ void setMtx();
    /* 80C954BC */ s16 calcRollAngle(s16, int);
    /* 80C9555C */ int getWallAngle(s16, s16*);
    /* 80C956EC */ void setSmokePrtcl();
    /* 80C95768 */ void setWaterPrtcl();
    /* 80C95890 */ void setHamonPrtcl();

    u8 getType() { return TYPE_0; }
    void popup(f32 param_1, f32 param_2, cXyz* param_3) {
        if (param_3 != NULL) {
            current.pos = *param_3;
            home.pos = current.pos;
        }
        s16 sVar3 = cM_deg2s(param_2);
        speed.setall(0.0f);
        speed.y = param_1 * cM_ssin(sVar3);
        speedF = param_1 * cM_scos(sVar3);
        field_0xa14 = 0x4000;
        field_0xa44 = 1;
    }
};

STATIC_ASSERT(sizeof(daObj_Mie_c) == 0xa50);

#endif /* D_A_OBJ_MIE_H */
