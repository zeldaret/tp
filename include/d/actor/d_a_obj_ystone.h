#ifndef D_A_OBJ_YSTONE_H
#define D_A_OBJ_YSTONE_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-objects
 * @class obj_ystone_class
 * @brief ??? (Shadow Stone?)
 *
 * @details
 *
 */
class obj_ystone_class : public fopAc_ac_c {
public:
    void setCurrentPos(cXyz i_pos) {
        current.pos = i_pos;
    }

    void setShapeAngle(csXyz i_angle) {
        shape_angle = i_angle;
    }

    void setScale(f32 i_scale) {
        mScaleF = i_scale;
    }

    void setBaseMtx(MtxP i_mtx) {
        field_0x598 = 1;
        if (mLevel < 3) {
            if (mpModel != NULL) {
                mpModel->setBaseTRMtx(i_mtx);
            }
        } else {
            if (mpMorf != NULL) {
                mpMorf->getModel()->setBaseTRMtx(i_mtx);
            }
        }
    }

    int getMirrorMode() {
        return mMirrorMode;
    }

    void setMirrorMode(int i_mode) {
        mMirrorMode = i_mode;
    }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x578 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x57C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x580 */ f32 mScaleF;
    /* 0x584 */ u8 field_0x584[2];
    /* 0x586 */ s16 mShadowMode;
    /* 0x588 */ u8 field_0x588[4];
    /* 0x58C */ int mMirrorMode;
    /* 0x590 */ int mTimer;
    /* 0x594 */ u32 mParticleKey;
    /* 0x598 */ s8 field_0x598;
    /* 0x599 */ u8 mLevel;
    /* 0x59A */ bool field_0x59a;
    /* 0x59B */ bool field_0x59b;
    /* 0x59C */ u8 field_0x59c[4];
};

STATIC_ASSERT(sizeof(obj_ystone_class) == 0x5A0);

#endif /* D_A_OBJ_YSTONE_H */
