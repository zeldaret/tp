#ifndef D_A_OBJ_FLAG3_H
#define D_A_OBJ_FLAG3_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

struct daObjFlag3_Attr_c {
    /* 0x00 */ f32 mGravity;
    /* 0x04 */ f32 mSpringCoeeficient;
    /* 0x08 */ f32 mDecayRate;
    /* 0x0C */ f32 mWindCoefficient;
    /* 0x10 */ f32 mTornado;
};

class FlagCloth2_c : public J3DPacket {
public:
    /* 80BEEDE4 */ void execute();
    /* 80BEEF74 */ inline void calcFlagNormal(cXyz*, int);
    /* 80BEF278 */ inline cXyz calcFlagFactor(cXyz*, cXyz*, cXyz*, int);
    /* 80BEF790 */ virtual ~FlagCloth2_c();
    /* 80BEFD08 */ void initFlagPos(cXyz*, fopAc_ac_c*);
    /* 80BF00A0 */ virtual void draw();
    /* 80BF0434 */ cXyz getTargetPos()  { return mPositions[4]; }

    inline void calcFlagNormalBack();
    cXyz* getPos() { return mPositions; }
    cXyz* getVec() { return mVecs; }
    cXyz* getNormal() { return mNormals; }
    cXyz* getNormalBack() { return mNormalBacks; }
    GXTexObj* getImageTexObj() { return &mTexObj; }
    void setSpringRate(f32 rate) { mSpringRate = rate; }
    void setWindRate(f32 rate) { mWindRate = rate; }
    void setDecayRate(f32 rate) { mDecayRate = rate; }
    void setGravity(f32 rate) { mGravity = rate; }
    void setTornado(f32 tornado) { mTornado = tornado; }

    void initTexCoord() {
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 6; j++) {
                mTexCoord[i* 6 + j][0] = j / 5.0f;
                mTexCoord[i* 6 + j][1] = (5 - i) / 5.0f;
            }
        }
    }

    void calcFlagFactorSub(cXyz* param_1, cXyz* param_2, cXyz* param_3, f32 param_4) {
        cXyz acStack_2c = *param_2 - *param_1;
        param_4 = acStack_2c.abs() - param_4;
        cXyz cStack_38 = acStack_2c.normZC();
        param_4 *= mSpringRate;
        cStack_38 *= param_4;
        *param_3 += cStack_38;
    }

    /* 0x010 */ GXTexObj mTexObj;
    /* 0x030 */ dKy_tevstr_c mTevStr;
    /* 0x3B8 */ dCcD_Stts mStts;
    /* 0x3F4 */ dCcD_Sph mSph;
    /* 0x52C */ u8 field_0x52c[0x540 - 0x52c];
    /* 0x540 */ cXyz mPositions[36];
    /* 0x6F0 */ u8 field_0x6f0[0x700 - 0x6f0];
    /* 0x700 */ cXyz mNormals[36];
    /* 0x8B0 */ u8 field_0x8b0[0x8c0 - 0x8b0];
    /* 0x8C0 */ cXyz mNormalBacks[36];
    /* 0xA70 */ u8 field_0xa70[0xa80 - 0xa70];
    /* 0xA70 */ f32 mTexCoord[36][2];
    /* 0xBA0 */ cXyz mVecs[36];
    /* 0xD50 */ cXyz* mpFlagPosition;
    /* 0xD54 */ Mtx mModelMtx;
    // /* 0xD8C */ void* mpTexCoord;
    /* 0xD84 */ f32 mSpringRate;
    /* 0xD88 */ f32 mWindRate;
    /* 0xD8C */ f32 mDecayRate;
    /* 0xD90 */ f32 mGravity;
    /* 0xD94 */ f32 mTornado;
};

/**
 * @ingroup actors-objects
 * @class daObjFlag3_c
 * @brief Flag 3
 *
 * @details
 *
 */
class daObjFlag3_c : public fopAc_ac_c {
public:
    /* 80BEEA78 */ int createHeap();
    /* 80BEED3C */ int execute();
    /* 80BEF700 */ ~daObjFlag3_c();
    /* 80BEF95C */ int create();
    /* 80BEFBC4 */ void create_init();
    inline int draw();
    inline void initBaseMtx();

    static daObjFlag3_Attr_c const M_attr;
    const daObjFlag3_Attr_c& attr() const { return M_attr; }

private:
    /* 0x0568 */ J3DModel* mModel;
    /* 0x056C */ request_of_phase_process_class mFlagPhase;
    /* 0x0574 */ request_of_phase_process_class mArcPhase;
    /* 0x057c */ int field_0x57c;
    /* 0x0580 */ FlagCloth2_c mFlagCloth;
    /* 0x1318 */ u8 field_0x1318[0x1320 - 0x1318];
    /* 0x1320 */ cXyz field_0x1320;
    /* 0x132C */ bool mFlagValid;
    /* 0x132D */ char mFlagName[19];
};

STATIC_ASSERT(sizeof(daObjFlag3_c) == 0x1340);

#endif /* D_A_OBJ_FLAG3_H */
