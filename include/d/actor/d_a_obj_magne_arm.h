#ifndef D_A_OBJ_MAGNE_ARM_H
#define D_A_OBJ_MAGNE_ARM_H

#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjMarm_c
 * @brief Magnetic Arm
 *
 * @details Magnetic Arm Cranes in Goron Mines.
 * The model is split into 6 parts labeled A through F.
 * A Parts is the unmoving crane base.
 * B Parts is the vertical gear moving the crane.
 * C Parts is the main crane body.
 * D Parts are the vertical gears at the top where the crane bends.
 * E Parts is the wheel at the end of the crane.
 * F Parts is the magnetic crane head accessible to Link.
 * The ropes connecting the crane head are identified separately.
 */

class daObjMarm_c : public dBgS_MoveBgActor {
public:
    enum MOVETYPE_e {
        MOVETYPE_A_e,
        MOVETYPE_B_e,
        MOVETYPE_C_e,
        MOVETYPE_D_e
    };

    enum MODE_e {
        MODE_WAIT_e,
        MODE_MHOLE_ON_e,
        MODE_LIFT_UP_e,
        MODE_LIFT_DOWN_e,
        MODE_ROTATE_e,
        MODE_END_e
    };

    /* 8058F358 */ void getBpartsOffset(cXyz*);
    /* 8058F3D4 */ void getDpartsOffset(cXyz*);
    /* 8058F46C */ void getEpartsOffset(cXyz*);
    /* 8058F504 */ void getFpartsOffset(cXyz*);
    /* 8058F610 */ void getRopeStartPos(cXyz*);
    /* 8058F6B4 */ void initBaseMtx();
    /* 8058F77C */ void setBaseMtx();
    /* 8058FA50 */ int Create();
    /* 8058FCF8 */ int CreateHeap();
    /* 80590244 */ cPhs__Step phase_0();
    /* 805902D8 */ cPhs__Step phase_1();
    /* 80590364 */ cPhs__Step phase_2();
    /* 80590460 */ int create1st();
    /* 80590504 */ int Execute(Mtx**);
    /* 80590818 */ void action();
    /* 80590B7C */ void init_typeA_modeWait();
    /* 80590B8C */ void typeA_modeWait();
    /* 80590BE0 */ void init_typeA_modeMholeOn();
    /* 80590C48 */ void typeA_modeMholeOn();
    /* 80590C68 */ void typeA_modeLiftUp();
    /* 80590C6C */ void typeA_modeLiftDown();
    /* 80590C70 */ void init_typeA_modeRotate();
    /* 80590CE4 */ void typeA_modeRotate();
    /* 80590E24 */ void typeA_modeEnd();
    /* 80590E28 */ void init_typeB_modeWait();
    /* 80590E38 */ void typeB_modeWait();
    /* 80590E8C */ void init_typeB_modeMholeOn();
    /* 80590EF4 */ void typeB_modeMholeOn();
    /* 80590F14 */ void init_typeB_modeLiftUp();
    /* 80590F30 */ void typeB_modeLiftUp();
    /* 80591004 */ void typeB_modeLiftDown();
    /* 805910E8 */ void init_typeB_modeRotate();
    /* 80591160 */ void typeB_modeRotate();
    /* 805912AC */ void typeB_modeEnd();
    /* 805912B0 */ void init_typeC_modeWait();
    /* 805912C0 */ void typeC_modeWait();
    /* 80591314 */ void init_typeC_modeMholeOn();
    /* 8059137C */ void typeC_modeMholeOn();
    /* 8059139C */ void init_typeC_modeLiftUp();
    /* 805913B8 */ void typeC_modeLiftUp();
    /* 8059148C */ void init_typeC_modeLiftDown();
    /* 805914A8 */ void typeC_modeLiftDown();
    /* 8059158C */ void init_typeC_modeRotate();
    /* 80591604 */ void typeC_modeRotate();
    /* 80591750 */ void typeC_modeEnd();
    /* 80591754 */ void init_typeD_modeWait();
    /* 80591764 */ void typeD_modeWait();
    /* 805917B8 */ void init_typeD_modeMholeOn();
    /* 80591820 */ void typeD_modeMholeOn();
    /* 80591840 */ void init_typeD_modeLiftUp();
    /* 8059185C */ void typeD_modeLiftUp();
    /* 80591930 */ void init_typeD_modeLiftDown();
    /* 8059194C */ void typeD_modeLiftDown();
    /* 80591A30 */ void init_typeD_modeRotate();
    /* 80591AA8 */ void typeD_modeRotate();
    /* 80591BF4 */ void typeD_modeEnd();
    /* 80591BF8 */ void setMagneHoleEffect();
    /* 80591BFC */ void endMagneHoleEffect();
    /* 80591C38 */ void calcHimo();
    /* 80591E18 */ void seStart_MOVESTART();
    /* 80591E80 */ void seStartLevel_MOVE();
    /* 80591EE8 */ void seStart_STOP();
    /* 80591F50 */ void seStartLevel_UP();
    /* 80591FB8 */ void seStartLevel_DOWN();
    /* 80592020 */ void seStart_SWING();
    /* 80592088 */ int Draw();
    /* 805923C4 */ void debugDraw();
    /* 805923C8 */ int Delete();

    u32 getMoveType() { return fopAcM_GetParamBit(this, 8, 4); }
    u32 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel[6];
    /* 0x5C0 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x5C4 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x5C8 */ JPABaseEmitter* mpEmitter;
    /* 0x5CC */ dBgW* mpBgW1;
    /* 0x5D0 */ Mtx mBgMtx1;
    /* 0x600 */ Mtx mBgMtx2;
    /* 0x630 */ dBgW* mpBgW2;
    /* 0x634 */ Mtx mBgMtx3;
    /* 0x664 */ dBgS_ObjAcch mAcch;
    /* 0x83C */ dBgS_AcchCir mAcchCir;
    /* 0x87C */ dCcD_Stts unused_0x87C;         // Declaration needed to generate vtables
    /* 0x8B8 */ dCcD_Cyl unused_0x8B8;          // Declaration needed to generate vtables
    /* 0x9F4 */ s32 mRotOffsetSwing;            // Stop animation swing rotation
    /* 0x9F8 */ u8 unused_0x9F8[0x4];
    /* 0x9FC */ s16 mBPartsXRot;
    /* 0x9FE */ s16 mCPartsYRot;
    /* 0xA00 */ s16 mDPartsXRot;
    /* 0xA02 */ s16 mEPartsXRot;
    /* 0xA04 */ f32 mLiftTotal;
    /* 0xA08 */ u8 mIsYRotForward;
    /* 0xA09 */ s8 mYRotDirection;
    /* 0xA0A */ s16 mRotationAngle;
    /* 0xA0C */ s16 mLiftRotation;
    /* 0xA10 */ s32 mRotationTotal;
    /* 0xA14 */ u8 mMode;
    /* 0xA15 */ u8 mMoveType;
    /* 0xA16 */ u8 unused_0xA16;
    /* 0xA17 */ u8 mStopTimer;
    /* 0xA18 */ fpc_ProcID mID;
    /* 0xA1C */ u8 mPhaseIndex;
    /* 0xA1D */ u8 mPlayerRide;
    /* 0xA20 */ mDoExt_3DlineMat1_c* mpRope1;
    /* 0xA24 */ mDoExt_3DlineMat1_c* mpRope2; 
    /* 0xA28 */ u8 field_0xA28;                 // mpRope1 Segment Count?
    /* 0xA29 */ u8 field_0xA29;                 // mpRope2 Segment Count?
    /* 0xA2C */ f32 mRotOffsetForce;            // Swing Force applied during stop animation
    /* 0xA30 */ s16 mYRotOffset;                // Y rot Offset  on stop animation
    /* 0xA32 */ s16 mFPartsZRot;                // F Parts Z rot on stop animation
    /* 0xA34 */ u8 unused_0xA34[0x4];
    /* 0xA38 */ s16 mZRotOffset;
    /* 0xA3C */ f32 mZRotForce;                 // Swing Force applied during stop animation
    /* 0xA40 */ s16 mZRotSwing;                 // Stop animation swing rotation
    /* 0xA44 */ Vec mSeMarmPos;
    /* 0xA50 */ Vec mSeMarmLiftPos;
    /* 0xA5C */ Vec mSeMarmSwingPos;
    /* 0xA68 */ u32 mShadowKey;
};

STATIC_ASSERT(sizeof(daObjMarm_c) == 0xa6c);


#endif /* D_A_OBJ_MAGNE_ARM_H */
