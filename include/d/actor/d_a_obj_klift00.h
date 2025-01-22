#ifndef D_A_OBJ_KLIFT00_H
#define D_A_OBJ_KLIFT00_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_model.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjKLift00_c
 * @brief Water Wheel/Gear Lift
 *
 * @details Lakebed temple lifts connected to large water wheels/gears (see d_a_obj_kwheel01) by chains
 *
 */
class daObjKLift00_c : public dBgS_MoveBgActor, public request_of_phase_process_class {
public:
    /* 8058B02C */ cPhs__Step create1st();
    /* 8058B0D0 */ void setMtx();
    /* 8058B4B0 */ void rideActor(fopAc_ac_c*);
    /* 8058B5EC */ int CreateHeap();
    /* 8058B77C */ int Create();
    /* 8058B97C */ int Execute(Mtx**);
    /* 8058BEEC */ int Draw();
    /* 8058C014 */ int Delete();

    enum Param_e {
        LOCK_e = (1 << 6), NO_BASE_DISP = (1 << 7)
    };

private:
    struct ChainPos {
        cXyz mDeltaPosVector;
        cXyz mCurrentPos;
        cXyz mPrevPos;
    };

    /* 0x05A8 */ Mtx mNewBgMtx;
    /* 0x05D8 */ Mtx mCullMtx;
    /* 0x0608 */ J3DModel* mpLiftPlatform;
    /* 0x060C */ J3DModel* mpChainBase;
    /* 0x0610 */ J3DModelData* mChainModelData;     // JUT_ASSERT string shows this was called mChainModelData
    /* 0x0614 */ int mNumChains;                    // Foundation "chain" is the bottom-most "chain" (doesn't have an associated chain model), and is used to transform the platform itself; = 1 + mNumChainModels
    /* 0x0618 */ ChainPos* mChainPositions;
    /* 0x061C */ int mNumChainModels;
    /* 0x0620 */ dMdl_obj_c* mChainMdlObjs;
    /* 0x0624 */ dCcD_Stts mStts;
    /* 0x0660 */ dCcD_Sph mChainSphereColliders[8];
    /* 0x1020 */ dCcD_Cyl mCylinderCollider;
    /* 0x115C */ s32 mStopSwingingFrames;

    // Number of chain models
    u32 getArg0() {
        return fopAcM_GetParamBit(this, 0, 6);
    }

    // Determines whether lift swinging should be dampened upon creation
    u32 getLock() {
        return fopAcM_GetParamBit(this, 6, 1);
    }

    // Determines whether the metal base from which the chain hands should be drawn (Drawn if 0)
    u32 getNoBaseDisp() {
        return fopAcM_GetParamBit(this, 7, 1);
    }
};

STATIC_ASSERT(sizeof(daObjKLift00_c) == 0x1160);

struct daObjKLift00_HIO_c : public mDoHIO_entry_c {
    daObjKLift00_HIO_c();
    ~daObjKLift00_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ f32 mChainGravity;
    /* 0x08 */ f32 mRideParameters;
    /* 0x0C */ f32 mWindSwayOccuranceFactor;
    /* 0x10 */ f32 mWindMagnitudeChain;
    /* 0x14 */ f32 mWindMagnitudeFoundation;
    /* 0x18 */ f32 mChainHitSpeed;
    /* 0x1C */ f32 field_0x1C;
};

#endif /* D_A_OBJ_KLIFT00_H */
