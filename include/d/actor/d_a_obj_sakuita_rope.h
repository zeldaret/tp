#ifndef D_A_OBJ_SAKUITA_ROPE_H
#define D_A_OBJ_SAKUITA_ROPE_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

struct daObjItaRope_Attr_c {
    /* 0x00 */ f32 mGravity;
    /* 0x04 */ f32 mWindRate;
    /* 0x08 */ f32 mSpeedRate;
    /* 0x0C */ f32 mOffsetRate;
    /* 0x10 */ u8 mStringWeight;
};

class Sakuita_c {
public:
    /* 80CC5238 */ int setModelData(J3DModelData*);
    /* 80CC527C */ void create(cXyz*, s16, s8);
    /* 80CC5314 */ void execute(cXyz*, s16);
    /* 80CC5354 */ void draw();
    /* 80CC5390 */ void initBaseMtx();
    /* 80CC53B0 */ void setBaseMtx();
    /* 80CC5444 */ void setPlatePos(cXyz*);
    /* 80CC5720 */ void calcAngle();
    /* 80CC63E4 */ ~Sakuita_c();
    /* 80CC6420 */ Sakuita_c();

    /* 0x00 */ J3DModel* mModel;
    /* 0x04 */ cXyz* field_0x04;
    /* 0x08 */ cXyz field_0x08;
    /* 0x14 */ cXyz field_0x14;
    /* 0x20 */ cXyz field_0x20;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ csXyz mRotation;
    /* 0x36 */ s16 field_0x36;
    /* 0x38 */ s16 field_0x38;
    /* 0x3A */ s8 field_0x3a;
};

class RopeWork_c {
public:
    /* 80CC6424 */ ~RopeWork_c();
    /* 80CC6460 */ RopeWork_c();

    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ cXyz field_0x0c;
    /* 0x18 */ int field_0x18;
};

/**
 * @ingroup actors-objects
 * @class daObjItaRope_c
 * @brief Rope Banner Fence
 *
 * @details
 *
 */
class daObjItaRope_c : public fopAc_ac_c {
public:
    /* 80CC57E4 */ void create_init();
    /* 80CC5E48 */ void initBaseMtx();
    /* 80CC5E7C */ void setBaseMtx();
    /* 80CC5ECC */ void setNormalRopePos();

    inline ~daObjItaRope_c();
    inline int createHeap();
    inline int draw();
    inline int execute();
    inline int create();

    daObjItaRope_Attr_c const& attr() const { return M_attr; }
    u8 getJointNum() { return fopAcM_GetParam(this) & 0xff; }
    int getPathID() { return (fopAcM_GetParam(this) >> 8) & 0xff; }
    cXyz* getRopeStartPos() { return mLineMat.getPos(0);}

    f32 getStartRate(const cXyz* pos) {
        if (field_0x634 != 0) {
            return field_0x62c * (pos->x - getRopeStartPos()->x);
        }
        return field_0x62c * (pos->z - getRopeStartPos()->z);
    }

    static daObjItaRope_Attr_c const M_attr;

private:
    /* 0x570 */ mDoExt_3DlineMat1_c mLineMat;
    /* 0x5A4 */ request_of_phase_process_class mPhase;
    /* 0x5AC */ Mtx mMtx;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x618 */ RopeWork_c* mRopes;
    /* 0x61C */ Sakuita_c* mSakuitas;
    /* 0x620 */ cXyz field_0x620;
    /* 0x62C */ f32 field_0x62c;
    /* 0x630 */ f32 field_0x630;
    /* 0x634 */ u8 field_0x634;
    /* 0x635 */ u8 field_0x635;
    /* 0x636 */ u8 field_0x636;
};

STATIC_ASSERT(sizeof(daObjItaRope_c) == 0x638);

#endif /* D_A_OBJ_SAKUITA_ROPE_H */
