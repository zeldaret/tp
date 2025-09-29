#ifndef D_A_OBJ_PUMPKIN_H
#define D_A_OBJ_PUMPKIN_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

#if DEBUG
class daObj_Pumpkin_HIO_c;
#else
class daObj_Pumpkin_Param_c;
#endif

/**
 * @ingroup actors-objects
 * @class daObj_Pumpkin_c
 * @brief Ordon Village Pumpkin
 *
 * @details
 *
 */
class daObj_Pumpkin_c : public fopAc_ac_c {
private:
#if DEBUG
    /* 0x568 */ daObj_Pumpkin_HIO_c* mpHIO;
#else
    /* 0x568 */ daObj_Pumpkin_Param_c* mpHIO;
#endif
    /* 0x56C */ request_of_phase_process_class mPhaseReq;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dBgS_ObjAcch mObjAcch;
    /* 0x750 */ dCcD_Stts mStts;
    /* 0x78C */ dBgS_AcchCir mAcchCir;
    /* 0x7CC */ cBgS_GndChk mGndChk;
    /* 0x808 */ dCcD_Cyl mCyl0;
    /* 0x944 */ dCcD_Cyl mCyl1;
    /* 0xA80 */ u8 field_0xA80[0xA8C - 0xA80];
    /* 0xA8C */ cM3dGLin mLin;
    /* 0xAA8 */ dBgS_LinChk mLinChk;
    /* 0xB18 */ u8 field_0xB18[0xB1C - 0xB18];
    /* 0xB1C */ u8 mType;
    /* 0xB1D */ u8 field_0xB1D[0xB20 - 0xB1D];
    /* 0xB20 */ cXyz field_0xB20;
    /* 0xB2C */ cXyz field_0xB2C;
    /* 0xB38 */ csXyz field_0xB38;
    /* 0xB3E */ u8 field_0xB3E[0xB60 - 0xB3E];
    /* 0xB60 */ f32 field_0xB60;
    /* 0xB64 */ u8 field_0xB64[0xBB3 - 0xB64];
    /* 0xBB3 */ u8 field_0xbb3;
    /* 0xBB4 */ u8 field_0xbb4[0xBB8 - 0xBB4];

public:
    /* 80CB578C */ virtual ~daObj_Pumpkin_c();
    /* 80CB5A04 */ int create();
    /* 80CB5F88 */ int CreateHeap();
    /* 80CB6018 */ int Delete();
    /* 80CB604C */ int Execute();
    /* 80CB7638 */ int Draw();
    /* 80CB7824 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CB7844 */ int isDelete();
    /* 80CB78C8 */ void setEnvTevColor();
    /* 80CB7924 */ void setRoomNo();
    /* 80CB7968 */ void reset();
    /* 80CB79DC */ void setMtx();
    /* 80CB7AE4 */ s16 calcRollAngle(s16, int);
    /* 80CB7B84 */ s16 getWallAngle(s16, s16*);
    /* 80CB7D14 */ void setSmokePrtcl();
    /* 80CB7D98 */ void setWaterPrtcl();
    /* 80CB7E98 */ void setHamonPrtcl();
    /* 80CB7EF4 */ void crash();

    void setMtx(MtxP mtx) {
        cXyz newPos;
        field_0xbb3 = 1;
        mDoMtx_stack_c::copy(mtx);
        mDoMtx_stack_c::multVecZero(&newPos);
        current.pos = newPos;
        old.pos = current.pos;
        mpModel->setBaseTRMtx(mtx);
    }

    int getItemTableNo() {
        u8 prm = fopAcM_GetParam(this) & 0xFF;
        if (prm == 0xFF) {
            return -1;
        }

        return prm;
    }

    u8 getType() {
        u8 prm = (fopAcM_GetParam(this) & 0xFF00) >> 8; 
        switch (prm) {
        case 0:
            return 0;
        case 1:
            return 1;
        case 2:
            return 2;
        case 3:
            return 3;
        default:
            return 0;
        }
    }

    u8 getProcType() {
        u8 prm = (fopAcM_GetParam(this) & 0xF0000000) >> 0x1C;
        if (prm == 0xF) {
            return 0;
        }

        return prm;
    }
};

STATIC_ASSERT(sizeof(daObj_Pumpkin_c) == 0xbbc);

struct daObj_Pumpkin_HIOParam {
    /* 0x00 */ f32 featured_offset;
    /* 0x04 */ f32 gravity;
    /* 0x08 */ f32 scale;
    /* 0x0C */ f32 real_shadow_size;
    /* 0x10 */ f32 weight;
    /* 0x14 */ f32 height;
    /* 0x18 */ f32 knee_length;
    /* 0x1C */ f32 width;
    /* 0x20 */ f32 fire_rate;
    /* 0x24 */ f32 launch_angle;
    /* 0x28 */ f32 floating_offset;
    /* 0x2C */ s16 hold_on;
    /* 0x2E */ s16 pull_sound_delay;
    /* 0x30 */ s16 growth_time_1;
    /* 0x32 */ s16 growth_time_2;
};

class daObj_Pumpkin_Param_c {
public:
    /* 80CB8304 */ virtual ~daObj_Pumpkin_Param_c() {}

    static const daObj_Pumpkin_HIOParam m;
};

#if DEBUG
class daObj_Pumpkin_HIO_c : public mDoHIO_entry_c {
public:
    daObj_Pumpkin_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daObj_Pumpkin_HIOParam m;
};
#endif


#endif /* D_A_OBJ_PUMPKIN_H */
