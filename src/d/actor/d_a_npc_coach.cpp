/**
 * @file d_a_npc_coach.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_coach.h"
#include "d/actor/d_a_coach_2D.h"
#include "d/actor/d_a_coach_fire.h"
#include "d/actor/d_a_e_kr.h"
#include "d/actor/d_a_npc_theB.h"
#include "d/d_bg_w.h"
#include "d/d_meter2_info.h"
#include "d/d_tresure.h"

enum Coach_RES_File_ID {
    /* BCK */
    /* 0x09 */ BCK_HU_JUMP_END = 0x9,
    /* 0x0A */ BCK_HU_JUMP_MIDDLE,
    /* 0x0B */ BCK_HU_JUMP_START,
    /* 0x0C */ BCK_HU_LASH,
    /* 0x0D */ BCK_HU_RUN_FAST,
    /* 0x0E */ BCK_HU_RUN_SLOW,
    /* 0x0F */ BCK_HU_WAIT_01,
    /* 0x10 */ BCK_HU_WALK_FAST,
    /* 0x11 */ BCK_HU_WALK_SLOW,
    /* 0x12 */ BCK_THEB_BEND_TURN,
    /* 0x13 */ BCK_THEB_BEND_WAIT,
    /* 0x14 */ BCK_THEB_F_BEND_TURN,
    /* 0x15 */ BCK_THEB_F_TALK_A,
    /* 0x16 */ BCK_THEB_F_TALK_B,
    /* 0x17 */ BCK_THEB_F_TALK_C,
    /* 0x18 */ BCK_THEB_FH_BEND_WAIT,
    /* 0x19 */ BCK_THEB_FH_TALK_B,
    /* 0x1A */ BCK_THEB_FH_TALK_C,
    /* 0x1B */ BCK_THEB_SIT,
    /* 0x1C */ BCK_THEB_SIT_B,
    /* 0x1D */ BCK_THEB_WHIP,
    /* 0x1E */ BCK_THEB_WHIP_B,
    /* 0x1F */ BCK_YELIA_BEND,
    /* 0x20 */ BCK_YELIA_WAIT,

    /* BMDR */
    /* 0x23 */ BMDR_COACH = 0x23,
    /* 0x24 */ BMDR_HARNESS,
    /* 0x25 */ BMDR_HORSE,
    /* 0x26 */ BMDR_THEB,
    /* 0x27 */ BMDR_YELIA,

    /* BTK */
    /* 0x2A */ BTK_THEB = 0x2A,

    /* BTP */
    /* 0x2D */ BTP_HU_EYE = 0x2D,
    /* 0x2E */ BTP_THEB,
    /* 0x2F */ BTP_THEB_F_TALK_A,

    /* DZB */
    /* 0x32 */ DZB_COACH = 0x32,
    /* 0x33 */ DZB_HARNESS,

    /* EVT */
    /* 0x36 */ EVT_EVENT_LIST = 0x36,

    /* TEX */
    /* 0x39 */ TEX_TAZUNA = 0x39,
};

enum Coach_Joint {
    /* 0x0 */ JNT_COACH_CENTER,
    /* 0x1 */ JNT_COACH_B_L_WHEEL,
    /* 0x2 */ JNT_COACH_B_R_WHEEL,
    /* 0x3 */ JNT_COACH_COACH_BG_LOC,
    /* 0x4 */ JNT_COACH_BODY,
    /* 0x5 */ JNT_COACH_TERUMA_LOC,
    /* 0x6 */ JNT_COACH_YELIA_LOC,
};

enum Harness_Joint {
    /* 0x0 */ JNT_HARNESS_CENTER,
    /* 0x1 */ JNT_HARNESS_AXLE,
    /* 0x2 */ JNT_HARNESS_F_L_WHEEL,
    /* 0x3 */ JNT_HARNESS_F_R_WHEEL,
    /* 0x4 */ JNT_HARNESS_BS_LOC,
    /* 0x5 */ JNT_HARNESS_HU_LOC,
};

enum Horse_Joint {
    /* 0x00 */ JNT_HORSE_CENTER,
    /* 0x01 */ JNT_HORSE_BACKBONE2,
    /* 0x02 */ JNT_HORSE_BACKBONE1,
    /* 0x03 */ JNT_HORSE_F_L_LEG1,
    /* 0x04 */ JNT_HORSE_F_L_LEG2,
    /* 0x05 */ JNT_HORSE_F_L_LEG3,
    /* 0x06 */ JNT_HORSE_F_L_LEG4,
    /* 0x07 */ JNT_HORSE_F_R_LEG1,
    /* 0x08 */ JNT_HORSE_F_R_LEG2,
    /* 0x09 */ JNT_HORSE_F_R_LEG3,
    /* 0x0A */ JNT_HORSE_R_R_LEG4,
    /* 0x0B */ JNT_HORSE_BG_LOC,
    /* 0x0C */ JNT_HORSE_NECK1,
    /* 0x0D */ JNT_HORSE_NECK2,
    /* 0x0E */ JNT_HORSE_HEAD,
    /* 0x0F */ JNT_HORSE_MOUTH1,
    /* 0x10 */ JNT_HORSE_MOUTH2,
    /* 0x11 */ JNT_HORSE_WAIST,
    /* 0x12 */ JNT_HORSE_B_L_LEG1,
    /* 0x13 */ JNT_HORSE_B_L_LEG2,
    /* 0x14 */ JNT_HORSE_B_L_LEG3,
    /* 0x15 */ JNT_HORSE_B_L_LEG4,
    /* 0x16 */ JNT_HORSE_B_R_LEG1,
    /* 0x17 */ JNT_HORSE_B_R_LEG2,
    /* 0x18 */ JNT_HORSE_B_R_LEG3,
    /* 0x19 */ JNT_HORSE_B_R_LEG4,
    /* 0x1A */ JNT_HORSE_TAIL1,
    /* 0x1B */ JNT_HORSE_TAIL2,
    /* 0x1C */ JNT_HORSE_TAIL3,
};

enum Telma_Joint {
    /* 0x00 */ JNT_TELMA_CENTER,
    /* 0x01 */ JNT_TELMA_BACKBONE1,
    /* 0x02 */ JNT_TELMA_BACKBONE2,
    /* 0x03 */ JNT_TELMA_ARML1,
    /* 0x04 */ JNT_TELMA_ARML2,
    /* 0x05 */ JNT_TELMA_HANDL,
    /* 0x06 */ JNT_TELMA_ARMR1,
    /* 0x07 */ JNT_TELMA_ARMR2,
    /* 0x08 */ JNT_TELMA_HANDR,
    /* 0x09 */ JNT_TELMA_NECK,
    /* 0x0A */ JNT_TELMA_HEAD,
    /* 0x0B */ JNT_TELMA_CHIN,
    /* 0x0C */ JNT_TELMA_HAIR,
    /* 0x0D */ JNT_TELMA_MOUTH,
    /* 0x0E */ JNT_TELMA_WAIST,
    /* 0x0F */ JNT_TELMA_LEGL2,
    /* 0x10 */ JNT_TELMA_LEGR2,
};

enum Ilia_Joint {
    /* 0x0 */ JNT_ILIA_CENTER,
    /* 0x1 */ JNT_ILIA_WAIST,
    /* 0x2 */ JNT_ILIA_BACKBONE,
    /* 0x3 */ JNT_ILIA_NECK,
    /* 0x4 */ JNT_ILIA_HEAD,
};

/* 8099D6D8-8099D72C 000078 0054+00 1/1 0/0 0/0 .text            jointHorseCallBack__FP8J3DJointi */
static int jointHorseCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 != 0) {
        return 1;
    }

    J3DModel* model = j3dSys.getModel();
    daNpcCoach_c* i_this = (daNpcCoach_c*)model->getUserArea();
    if (i_this != NULL) {
        i_this->ctrlJointHorse(i_joint, model);
    }
    return 1;
}

/* 8099D72C-8099D80C 0000CC 00E0+00 1/1 0/0 0/0 .text jointFrontWheelCallBack__FP8J3DJointi */
static int jointFrontWheelCallBack(J3DJoint* i_joint, int param_2) {
    // NONMATCHING
    if (param_2 != 0) {
        return 1;
    }

    int jointNo = i_joint->getJntNo();
    J3DModel* model = j3dSys.getModel();
    daNpcCoach_c* i_this = (daNpcCoach_c*)model->getUserArea();
    csXyz* front_wheel_rot = i_this->getFrontWheelRot(jointNo);
    MTXCopy(model->getAnmMtx(jointNo), mDoMtx_stack_c::get());
    mDoMtx_stack_c::YrotM(front_wheel_rot->y);
    mDoMtx_stack_c::ZrotM(front_wheel_rot->z);
    mDoMtx_stack_c::XrotM(front_wheel_rot->x);
    model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 8099D80C-8099D8EC 0001AC 00E0+00 1/1 0/0 0/0 .text jointRearWheelCallBack__FP8J3DJointi */
static int jointRearWheelCallBack(J3DJoint* i_joint, int param_2) {
    // NONMATCHING
    if (param_2 != 0) {
        return 1;
    }

    int jointNo = i_joint->getJntNo();
    J3DModel* model = j3dSys.getModel();
    daNpcCoach_c* i_this = (daNpcCoach_c*)model->getUserArea();
    csXyz* rear_wheel_rot = i_this->getRearWheelRot(jointNo);
    MTXCopy(model->getAnmMtx(jointNo), mDoMtx_stack_c::get());
    mDoMtx_stack_c::YrotM(rear_wheel_rot->y);
    mDoMtx_stack_c::ZrotM(rear_wheel_rot->z);
    mDoMtx_stack_c::XrotM(rear_wheel_rot->x);
    model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 809A4ED0-809A4F70 000000 00A0+00 19/19 0/0 0/0 .rodata          M_attr__12daNpcCoach_c */
daNpcCoach_Attr_c const daNpcCoach_c::M_attr = {
    -3.0f,
    -200.0f,
    -0.25f,
    -387.0f,
    -190.0f,
    82.0f,
    96.0f,
    80.0f,
    0.5f,
    0.85f,
    6.0f,
    22.0f,
    30.0f,
    40.0f,
    4.0f,
    400.0f,
    1500.0f,
    16.0f,
    62.0f,
    -58.837898f,
    67.627f,
    0.0f,
    0.6f,
    20.0f,
    13,
    0x1800,
    0x100,
    0x400,
    0x400,
    0,
    0,
    0,
    0,
    0,
    1,
    0x5DC,
    7,
    0,
    0,
    0,
    1000.0f,
    0xE000,
    0x4000,
    0,
    0xFF,
    0x50,
    0,
    3,
    0,
    6000.0f,
    10.0f,
    20.0f,
    0.0f,
    0x19,
};

/* 8099D8EC-8099D9AC 00028C 00C0+00 1/1 0/0 0/0 .text            jointCoachCallBack__FP8J3DJointi */
static int jointCoachCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 != 0) {
        return 1;
    }

    int jointNo = i_joint->getJntNo();
    J3DModel* model = j3dSys.getModel();
    daNpcCoach_c* i_this = (daNpcCoach_c*)model->getUserArea();
    MTXCopy(model->getAnmMtx(jointNo), mDoMtx_stack_c::get());
    mDoMtx_stack_c::XrotM(i_this->getCoachRotate());
    mDoMtx_stack_c::transM(0.0f, i_this->getCoachTrans(), 0.0f);
    model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 8099D9AC-8099DA24 00034C 0078+00 1/1 0/0 0/0 .text            arrowStickCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_cR4cXyz */
static void arrowStickCallBack(dBgW* i_bgw, fopAc_ac_c* a_this, fopAc_ac_c* i_actor, cXyz& i_pos) {
    if (fopAcM_GetName(i_actor) == PROC_E_ARROW) {
        if (!daPy_getPlayerActorClass()->checkBoarSingleBattleSecond()) {
            ((daNpcCoach_c*)a_this)->hitFireArrow(i_pos);
            fopAcM_delete(i_actor);
        }
    }
}

/* 8099DA60-8099DBA4 000400 0144+00 1/1 0/0 0/0 .text            hitFireArrow__12daNpcCoach_cF4cXyz */
void daNpcCoach_c::hitFireArrow(cXyz i_pos) {
    if (field_0x24c0 == 0) {
        mChYelia.mSound.startCreatureVoice(Z2SE_YELIA_V_KYAAA_TRIG, -1);
    }

    if (field_0x24c0 < 5) {
        for (int i = 0; i < 5; i++) {
            if (field_0x247c[i] == fpcM_ERROR_PROCESS_ID_e) {
                cXyz work;
                mDoMtx_stack_c::copy(mChCoach.field_0x598);
                mDoMtx_stack_c::multVec(&i_pos, &work);
                field_0x247c[i] = fopAcM_createChild(PROC_COACH_FIRE, fopAcM_GetID(this),
                                                     0, &work, fopAcM_GetRoomNo(this),
                                                     NULL, NULL, -1, NULL);
                mChCoach.mSound.startSound(Z2SE_COACH_HIT_ARROW, 0, -1);
                field_0x24c0++;
                return;
            }
        }
    }
}

/* 8099DBA4-8099DCE8 000544 0144+00 0/0 0/0 1/1 .text            deleteFireArrow__12daNpcCoach_cFUi */
void daNpcCoach_c::deleteFireArrow(fpc_ProcID param_1) {
    // NONMATCHING
    for (int i = 0; i < 5; i++) {
        if (param_1 == field_0x247c[i]) break;
    }
    
    field_0x2559 = 1;
    mChCoach.mSound.startSound(Z2SE_COACH_HIT_WIND, 0, -1);

    field_0x24c4 = (field_0x24c4 / attr().damage_durability - attr().damage_extinguish_level) * attr().damage_durability;

    if (field_0x24c4 <= 0) {
        field_0x24c4 = 0;
        field_0x24c0 = 0;

        for (int i = 0; i < 5; i++) {
            if (field_0x247c[i] != fpcM_ERROR_PROCESS_ID_e) {
                fopAcM_delete(field_0x247c[i]);
                field_0x247c[i] = fpcM_ERROR_PROCESS_ID_e;
            }
        }
    } else {
        for (int i = 0; i < 5; i++) {
            if (field_0x247c[i] != fpcM_ERROR_PROCESS_ID_e) {
                ((daCoachFire_c*)fpcM_SearchByID(field_0x247c[i]))->setNoHitTimer();
            }
        }

        mChCoach.field_0x77c = 20;
    }
}

/* 8099DCE8-8099DD28 000688 0040+00 0/0 0/0 1/1 .text            deleteFireArrowFromList__12daNpcCoach_cFUi */
bool daNpcCoach_c::deleteFireArrowFromList(unsigned int i_actorID) {
    for (int i = 0; i < 5; i++) {
        if (field_0x247c[i] == i_actorID) {
            field_0x247c[i] = -1;
            return true;
        }
    }
    return false;
}

/* 8099DD28-8099DD7C 0006C8 0054+00 0/0 0/0 3/3 .text            setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz */
void daNpcCoach_c::setPosAngle(cXyz& param_1, csXyz& param_2) {
    initCoachPosition(param_1, param_2);
    changeAtherPath(getRailID(), param_1, param_2);
}

/* 8099DD7C-8099DE18 00071C 009C+00 1/1 0/0 0/0 .text            ctrlJointHorse__12daNpcCoach_cFP8J3DJointP8J3DModel */
int daNpcCoach_c::ctrlJointHorse(J3DJoint* i_joint, J3DModel* i_model) {
    int jointNo = i_joint->getJntNo();

    if ((jointNo == JNT_HORSE_BG_LOC || jointNo == JNT_HORSE_MOUTH2) && mChHorse.field_0x78c != 0) {
        J3DAnmTransform* morfAnm = mChHorse.mpBckAnm->getBckAnm();
        J3DAnmTransform* bckAnm = mChHorse.mpModelMorf->getAnm();
        mChHorse.mpBckAnm->changeBckOnly(bckAnm);
        mChHorse.mpModelMorf->changeAnm(morfAnm, NULL);
        f32 anmRate = mChHorse.mpModelMorf->getAnmRate();
        mChHorse.mpModelMorf->setAnmRate(mChHorse.mAnmRate);
        mChHorse.mAnmRate = anmRate;
    }

    return 1;
}

/* 8099DE18-8099E0E0 0007B8 02C8+00 2/2 0/0 0/0 .text            initCoachPosition__12daNpcCoach_cFR3VecR4SVec */
void daNpcCoach_c::initCoachPosition(Vec& i_pos, SVec& i_angle) {
    current.pos = i_pos;
    shape_angle.set(i_angle.x, i_angle.y, i_angle.z);
    old.pos = current.pos;

    mDoMtx_stack_c::transS(i_pos);
    mDoMtx_stack_c::ZXYrotM(i_angle.x, i_angle.y, i_angle.z);
    mDoMtx_stack_c::transM(0.0f, 0.0f, attr().field_0xc);
    mDoMtx_stack_c::multVecZero(&mChHarness.field_0x6e0);
    mChHarness.field_0x6ec = mChHarness.field_0x6e0;
    mChHarness.field_0x700.y = shape_angle.y;
    mChHarness.field_0x706 = mChHarness.field_0x700;
    mChHarness.field_0x70c.field_0x0.set(attr().field_0x14, 0.0f, 0.0f);
    mChHarness.field_0x730.field_0x0.set(-attr().field_0x14, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&mChHarness.field_0x70c.field_0x0, &mChHarness.field_0x70c.field_0x0);
    mDoMtx_stack_c::multVec(&mChHarness.field_0x730.field_0x0, &mChHarness.field_0x730.field_0x0);

    mDoMtx_stack_c::transM(0.0f, 0.0f, attr().field_0x10);
    mDoMtx_stack_c::multVecZero(&mChCoach.field_0x5e0);
    mChCoach.field_0x5ec = mChCoach.field_0x5e0;
    mChCoach.field_0x79a.y = shape_angle.y;
    mChCoach.field_0x7a0 = mChCoach.field_0x79a;
    mChCoach.field_0x788 = attr().shake_dist + cM_rndF(attr().shake_dist);
    mChCoach.field_0x7a8.field_0x0.set(attr().field_0x18, 0.0f, 0.0f);
    mChCoach.field_0x7cc.field_0x0.set(-attr().field_0x18, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&mChCoach.field_0x7a8.field_0x0, &mChCoach.field_0x7a8.field_0x0);
    mDoMtx_stack_c::multVec(&mChCoach.field_0x7cc.field_0x0, &mChCoach.field_0x7cc.field_0x0);

    cXyz work(mChHarness.field_0x6e0.x, mChHarness.field_0x6e0.y + 500.0f, mChHarness.field_0x6e0.z);
    field_0x255c = work;

    if (fopAcM_gc_c::gndCheck(&work)) {
        mChHarness.field_0x6e0.y = fopAcM_gc_c::getGroundY();
    }

    work.set(mChCoach.field_0x5e0.x, mChCoach.field_0x5e0.y + 500.0f, mChCoach.field_0x5e0.z);

    if (fopAcM_gc_c::gndCheck(&work)) {
        mChCoach.field_0x5e0.y = fopAcM_gc_c::getGroundY(); 
    }
}

/* 8099E0E0-8099E138 000A80 0058+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_KR && ((e_kr_class*)i_actor)->getId() >= 0) {
        return i_actor;
    }

    return NULL;
}

/* 809A4F78-809A4FBC 0000A8 0044+00 1/1 0/0 0/0 .rodata              ccCylSrc$localstatic3$initCollision__12daNpcCoach_cFv */
static dCcD_SrcCyl const ccCylSrc = {
    {
        {0, {{0, 0, 0}, {0x2420, 0x11}, 0x79}},
        {dCcD_SE_NONE, 0, 0, 0, 0},
        {dCcD_SE_NONE, 0, 0, 0, 4},
        0,
    },
    {
        0.0f, 0.0f
    }
};

/* 809A4FBC-809A4FFC 0000EC 0040+00 1/1 0/0 0/0 .rodata              ccSphSrc$localstatic4$initCollision__12daNpcCoach_cFv */
static dCcD_SrcSph const ccSphSrc = {
    {
        {0, {{0, 0, 0}, {0x10000, 0x11}, 0}},
        {dCcD_SE_NONE, 0, 0, 0, 0},
        {dCcD_SE_NONE, 0, 0, 0, 4},
        0,
    },
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f},
    }
};


inline BOOL daNpcChPath_c::setPath(int path_index, int room_no, cXyz* param_3, bool param_4) {
    mpPath = dPath_GetRoomPath(path_index, room_no);

    if (mpPath == NULL) {
        return FALSE;
    }

    mCurrentID = path_index;
    mPntIndex = 0;

    if (param_4 && param_3 != NULL) {
        f32 fVar1 = 1000000000.0f;
        for (int pnt_index = 0; pnt_index < mpPath->m_num; pnt_index++) {
            f32 fVar2 = param_3->abs2(dPath_GetPnt(mpPath, pnt_index)->m_position);
            if (fVar2 < fVar1) {
                mPntIndex = pnt_index;
                fVar1 = fVar2;
            }
        }

        setNextPoint();
    }

    field_0x8 = 1000000000.0f;

    if (param_3 != NULL) {
        field_0x4 = param_3;
        cXyz targetPoint;
        getTargetPoint(targetPoint);
        field_0x8 = field_0x4->abs(targetPoint);
    }

    return TRUE;
}

/* 8099E138-8099E4A0 000AD8 0368+00 2/2 0/0 0/0 .text            changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz */
void daNpcCoach_c::changeAtherPath(s8 path_index, cXyz& param_2, csXyz& param_3) {
    // NONMATCHING
    mChPath.setPath(path_index, fopAcM_GetRoomNo(this), &param_2, true);

    if (mChPath.isPath()) {
        mPathID = path_index;

        cXyz targetPoint;
        mChPath.getTargetPoint(targetPoint);

        if (cLib_distanceAngleS(param_3.y, cLib_targetAngleY(&param_2, &targetPoint)) >= 0x4000) {
            mChPath.setNextPoint();
            mChPath.getTargetPoint(targetPoint);
            
            if (cLib_distanceAngleS(shape_angle.y, cLib_targetAngleY(&param_2, &targetPoint)) >= 0x4000) {
                mChPath.setPrevPoint();
            }
        }
    }
}

/* 8099E4A0-8099E4C0 000E40 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* a_this) {
    daNpcCoach_c* i_this = (daNpcCoach_c*)a_this;
    return i_this->createHeap();
}

/* 809A5130-809A5134 -00001 0004+00 7/7 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Coach";

/* 809A5134-809A51AC 000004 0078+00 2/2 0/0 0/0 .data            l_horseAnmParam */
static struct {
    int field_0x0;
    f32 field_0x4;
    f32 field_0x8;
    int field_0xc;
    f32 field_0x10;
    f32 field_0x14;
} l_horseAnmParam[5] = {
    {BCK_HU_WAIT_01, 0.0f, 1.0f, BCK_HU_WALK_SLOW, 6.0f, 2.0f},
    {BCK_HU_WALK_SLOW, 6.0f, 2.0f, BCK_HU_WALK_FAST, 22.0f, 2.0f},
    {BCK_HU_WALK_FAST, 22.0f, 2.0f, BCK_HU_RUN_SLOW, 30.0f, 3.0f},
    {BCK_HU_RUN_SLOW, 30.0f, 3.0f, BCK_HU_RUN_FAST, 40.0f, 2.8f},
    {BCK_HU_RUN_FAST, 40.0f, 2.8f, -1, 40.0f, 2.8f},
};

static u16 const ParticleName[10] = {
    0x85F0, 0x85EF, 0x85E7, 0x85E8, 0x85E9,
    0x85EA, 0x85EB, 0x85EC, 0x85ED, 0x85EE,
};

/* 8099E4C0-8099EAD8 000E60 0618+00 1/1 0/0 0/0 .text            createHeap__12daNpcCoach_cFv */
int daNpcCoach_c::createHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_HORSE);

    JUT_ASSERT(2702, modelData != 0);

    mChHorse.mpModelMorf = new mDoExt_McaMorf2(modelData, NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_HU_WAIT_01), NULL,
                                               2, 1.0f, 0, -1, &mChHorse.mSound, 0x80000, 0x11020084);
    if (mChHorse.mpModelMorf != NULL && mChHorse.mpModelMorf->getModel() == NULL) {
        mChHorse.mpModelMorf->stopZelAnime();
        mChHorse.mpModelMorf = NULL;
    }

    if (mChHorse.mpModelMorf == NULL) {
        return 0;
    }

    modelData = mChHorse.mpModelMorf->getModel()->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(jointHorseCallBack);
    }
    mChHorse.mpModelMorf->getModel()->setUserArea((u32)this);

    mChHorse.mpBtpAnm = new mDoExt_btpAnm();
    J3DAnmTexPattern* i_btk = (J3DAnmTexPattern*)dComIfG_getObjectRes(l_arcName, BTP_HU_EYE);
    if (mChHorse.mpBtpAnm == NULL || mChHorse.mpBtpAnm->init(modelData, i_btk, 1, 0,
                                                             1.0f, 0, -1) == 0) {
        return 0;
    }

    mChHorse.mpBckAnm = new mDoExt_bckAnm();
    J3DAnmTransform* i_bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_HU_LASH);
    if (mChHorse.mpBckAnm == NULL || mChHorse.mpBckAnm->init(i_bck, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    mChHorse.mAnmRate = 0.0f;
    mChHorse.field_0x78c = 0;

    if (mChHorse.mChReins.field_0x0.init(2, 7, (ResTIMG*)dComIfG_getObjectRes(l_arcName, TEX_TAZUNA), 1) == 0) {
        return 0;
    }

    if (mChHorse.mChReins.field_0x3c.init(1, 2, (ResTIMG*)dComIfG_getObjectRes(l_arcName, TEX_TAZUNA), 1) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_HARNESS);
    
    JUT_ASSERT(2762, modelData != 0);

    mChHarness.mHarnessModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mChHarness.mHarnessModel == NULL) {
        return 0;
    }

    modelData = mChHarness.mHarnessModel->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        if (i == 2 || i == 3) {
            modelData->getJointNodePointer(i)->setCallBack(jointFrontWheelCallBack);
        }
    }
    mChHarness.mHarnessModel->setUserArea((u32)this);

    mChHarness.field_0x6a0 = new dBgW();
    if (mChHarness.field_0x6a0 == NULL) {
        return 0;
    }

    if (mChHarness.field_0x6a0->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, DZB_HARNESS), 1, &mChHarness.mMtx)) {
        mChHarness.field_0x6a0 = NULL;

        JUT_ASSERT(2782, 0);
    }
   
    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_COACH);
    
    JUT_ASSERT(2787, modelData != 0);

    mChCoach.mCoachModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mChCoach.mCoachModel == NULL) {
        return 0;
    }

    modelData = mChCoach.mCoachModel->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        if (i == 1 || i == 2) {
            modelData->getJointNodePointer(i)->setCallBack(jointRearWheelCallBack);
        } else if (i == 4) {
            modelData->getJointNodePointer(i)->setCallBack(jointCoachCallBack);
        }
    }
    mChCoach.mCoachModel->setUserArea((u32)this);

    mChCoach.field_0x564 = new dBgW();
    if (mChCoach.field_0x564 == NULL) {
        return 0;
    }

    if (mChCoach.field_0x564->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, DZB_COACH), 1, &mChCoach.field_0x568) != 0) {
        mChCoach.field_0x564 = NULL;

        JUT_ASSERT(2811, 0);
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_YELIA);
    
    JUT_ASSERT(2816, modelData != 0);

    mChYelia.mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_YELIA_WAIT),
                                                -1, 1.0f, 0, -1, &mChYelia.mSound, 0x80000, 0x11000084);
    if (mChYelia.mpModelMorf != NULL && mChYelia.mpModelMorf->getModel() == NULL) {
        mChYelia.mpModelMorf->stopZelAnime();
        mChYelia.mpModelMorf = NULL;
    }

    if (mChYelia.mpModelMorf == NULL) {
        return 0;
    }

    return 1;
}

/* 8099EB20-8099EB40 0014C0 0020+00 1/0 0/0 0/0 .text daNpcCoach_Execute__FP12daNpcCoach_c */
static int daNpcCoach_Execute(daNpcCoach_c* i_this) {
    return i_this->execute();
}

inline void daNpcCoach_c::setDriverMtx() {
    daNpcTheB_c* telmaB_p = (daNpcTheB_c*)fpcM_SearchByID(parentActorID);
    if (telmaB_p != NULL) {
        telmaB_p->setTRMtx(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_TERUMA_LOC));
    }
}

inline void daNpcCoach_c::calcYeliaMotion() {
    J3DAnmTransform* i_bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_YELIA_WAIT);
    J3DAnmTransform* i_bck2 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_YELIA_BEND);

    if (mChYelia.mpModelMorf->getAnm() == i_bck) {
        if (dComIfGs_isSaveDunSwitch(0x37)) {
            mChYelia.mpModelMorf->setAnm(i_bck2, J3DFrameCtrl::EMode_LOOP, 15.0f, 1.0f, 0.0f, -1.0f);
        }
    } else {
        if (mChYelia.mpModelMorf->getAnm() == i_bck2 && !dComIfGs_isSaveDunSwitch(0x37)) {
            mChYelia.mpModelMorf->setAnm(i_bck, J3DFrameCtrl::EMode_LOOP, 20.0f, 1.0f, 0.0f, -1.0f);
        }
    }

    setYeliaMtx();

    mChYelia.mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mChYelia.mpModelMorf->modelCalc();
}

/* 8099EB40-8099EEA0 0014E0 0360+00 1/1 0/0 0/0 .text            execute__12daNpcCoach_cFv */
int daNpcCoach_c::execute() {
    calcHorseMotion();
    calcHarnessMotion();
    calcCoachMotion();
    calcDriverMotion();
    calcYeliaMotion();
    reinsExecute();

    dTres_c::setCoachPosition(1, &mChHarness.field_0x6e0, dComIfG_Bgsp().GetRoomId(mChCoach.mBgc.m_gnd));
    checkCoachDamage();

    cXyz work(0.0f, 0.0f, 0.0f);
    int iVar1 = 0;

    for (int i = 0; i < 5; i++) {
        if (field_0x247c[i] != fpcM_ERROR_PROCESS_ID_e) {
            fopAc_ac_c* actor_p = (fopAc_ac_c*)fpcM_SearchByID(field_0x247c[i]);
            if (actor_p != NULL) {
                work += fopAcM_GetPosition(actor_p);
                iVar1++;
            }
        }
    }

    if (field_0x24c4 > 0) {
        if (iVar1 == 0) {
            work = eyePos;
        } else {
            work /= iVar1;
        }

        work.y += attr().field_0x8c;

        GXColor color = {attr().field_0x86, attr().field_0x87, attr().field_0x88, 0xFF};

        f32 fVar1 = attr().field_0x90;
        f32 fVar2 = field_0x24c8;

        dKy_BossSpotLight_set(&work, -90.0f, 0.0f, attr().field_0x94, &color,
                              fVar2 * fVar1, 2, attr().field_0x89);

        if (field_0x24c8 < 1.0f) {
            field_0x24c8 += 0.0022222223f;
        } else {
            field_0x24c8 = 1.0f;
        }
    } else {
        field_0x24c8 = 0.0f;
    }

    return 1;
}

/* 8099EEA0-8099F1B8 001840 0318+00 1/2 0/0 0/0 .text            checkCoachDamage__12daNpcCoach_cFv */
void daNpcCoach_c::checkCoachDamage() {
    if (field_0x24c0 > 0) {
        if (!dComIfGp_event_runCheck() && getRailID() != 8) {
            field_0x24c4 += attr().damage_reduction;

            if (field_0x24c4 > attr().damage_durability) {
                field_0x24c4 = attr().damage_durability;
            }
        }

        mChCoach.mSound.startFireSound(field_0x24c4);
        mChYelia.mSound.startCreatureVoiceLevel(Z2SE_YELIA_V_KYAAA_LOOP, -1);
        dComIfGs_onSaveDunSwitch(0x37);
    } else {
        field_0x24c4 = 0;
        dComIfGs_offSaveDunSwitch(0x37);
    }

    u8 uVar1 = field_0x24c4 * 0xFF / attr().damage_durability;

    if (field_0x1dc0 < field_0x24c4) {
        field_0x1dc0 = field_0x24c4;

        if (field_0x1dc0 < attr().damage_durability / 2) {
            field_0x1dc5 = 0xFF - ((field_0x1dc0 * 0xFF) / attr().damage_durability << 1);
            field_0x1dc6 = 125;
        } else {
            field_0x1dc5 = 0;
            int iVar2 = attr().damage_durability / 2;
            int iVar1 = (field_0x1dc0 - attr().damage_durability / 2) * 20;
            field_0x1dc6 = (int)((f32)iVar1 / (f32)iVar2 + 125.0f);
        }

        field_0x1dc7 = 0xFF - uVar1;
    }

    setCoachBlazing(uVar1);
    ((daCoach2D_c*)fpcM_SearchByID(field_0x2554))->setHitCount((field_0x24c4 / (attr().damage_durability / 20)));

    if (field_0x24c4 >= attr().damage_durability) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
        mChHorse.field_0x784 = 0.0f;
        
        daNpcTheB_c* telmaB_p = (daNpcTheB_c*)fpcM_SearchByID(parentActorID);
        if (telmaB_p != NULL) {
            mChCoach.field_0x5f8[0]->setParticleCallBackPtr(NULL);
            mChCoach.field_0x5f8[1]->setParticleCallBackPtr(NULL);
            telmaB_p->setGameOver();
        }
    }

    daCoach2D_c* coach2D_p;
    if (field_0x2558 != 0) {
        if (dComIfGs_isSaveDunSwitch(0x28)) {
            coach2D_p = (daCoach2D_c*)fpcM_SearchByID(field_0x2554);
            if (coach2D_p != NULL) {
                coach2D_p->hide();
                field_0x2558 = 0;
            }
        }
    } else if (field_0x24c4 > 0 && !dComIfGs_isSaveDunSwitch(0x28)) {
        coach2D_p = (daCoach2D_c*)fpcM_SearchByID(field_0x2554);
        if (coach2D_p != NULL) {
            coach2D_p->setMaxHitCount(20);
            coach2D_p->show();
            field_0x2558 = 1;
        }
    }

    if (field_0x2559 == 0) {
        if (field_0x24c4 > attr().damage_durability / 4) {
            dMeter2Info_setFloatingMessage(0x13EB, 150, false);
            field_0x2559 = 1;
        }
    }
}

/* 8099F1B8-8099F4BC 001B58 0304+00 1/1 0/0 0/0 .text            setCoachBlazing__12daNpcCoach_cFUc */
void daNpcCoach_c::setCoachBlazing(u8 param_1) {
    // NONMATCHING
    f32 fVar1 = 0.0f;
    f32 fVar2 = 0.0f;
    int uVar1 = param_1 / 63;
    u8 uVar2;

    if (param_1 == 0) {
        uVar1 = 2;
        mCoachBlazing = false;
        param_1 = 0;
        uVar2 = 0;
        attention_info.flags = 0;
    } else if (mCoachBlazing) {
        switch (uVar1) {
            case 0:
                uVar1 = 4;
                break;

            case 1:
                uVar1 = 5;
                fVar2 = 1.5f;
                break;

            case 2:
                uVar1 = 7;
                fVar1 = 0.4f;
                fVar2 = 1.5f;
                break;

            case 3:
            case 4:
                uVar1 = 10;
                fVar1 = 0.6f;
                fVar2 = 1.5f;
                break;

            default:
                JUT_ASSERT(2552, 0);
                break;
        }
    } else if (uVar1 == 1) {
        uVar1 = 5;
        mCoachBlazing = true;
        uVar2 = 0;
        attention_info.flags = 0x101;
    } else {
        uVar1 = 2;
        param_1 = 0;
        uVar2 = 0;
        attention_info.flags = 0;
    }

    cXyz work;

    mDoMtx_stack_c::copy(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_BODY));
    mDoMtx_stack_c::multVecZero(&work);

    for (int i = 2; i < uVar1; i++) {
        if (mChCoach.field_0x5f8[i] == NULL) {
            mChCoach.field_0x5f8[i] = dComIfGp_particle_set(ParticleName[i], &work,
                                                            &mChCoach.field_0x79a, NULL);
            if (mChCoach.field_0x5f8[i] != NULL) {
                mChCoach.field_0x5f8[i]->becomeImmortalEmitter();
            }
        }
    }

    for (; uVar1 < 10; uVar1++) {
        if (mChCoach.field_0x5f8[uVar1] != NULL) {
            mChCoach.field_0x5f8[uVar1]->becomeInvalidEmitter();
            mChCoach.field_0x5f8[uVar1] = NULL;
        }
    }

    for (int i = 0; i < 10; i++) {
        if (mChCoach.field_0x5f8[i] != NULL) {
            mChCoach.field_0x5f8[i]->setGlobalRTMatrix(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_BODY));
        }
    }

    mChCoach.field_0x5d4 = mChCoach.field_0x5c8 * 0.8f;
    mChCoach.field_0x5f8[0]->setGlobalAlpha(param_1);
    mChCoach.field_0x5f8[0]->setRate(fVar1);
    mChCoach.field_0x5f8[0]->setUserWork((u32)&mChCoach.field_0x5d4);
    mChCoach.field_0x5f8[1]->setGlobalAlpha(uVar2);
    mChCoach.field_0x5f8[1]->setRate(fVar2);
    mChCoach.field_0x5f8[1]->setUserWork((u32)&mChCoach.field_0x5d4);
}

/* 8099F4BC-8099F988 001E5C 04CC+00 1/1 0/0 0/0 .text            reinsExecute__12daNpcCoach_cFv */
void daNpcCoach_c::reinsExecute() {
    // NONMATCHING
    daNpcChReins_c* reins = &mChHorse.mChReins;
    if (mChHorse.mChReins.field_0x16c <= 1) {
        s8 sVar1 = mChHorse.mChReins.field_0x16c + 1;
        reins->field_0x16c = sVar1;

        if (sVar1 > 1) {
            reinsInit();
        }
    } else {
        daNpcTheB_c* telmaB_p = (daNpcTheB_c*)fpcM_SearchByID(parentActorID);
        cXyz sp24, sp30, sp3c;
        cXyz sp48(attr().field_0x4c, attr().field_0x50, attr().field_0x54);
        s16 sVar2 = attr().field_0x60;
        mDoMtx_stack_c::copy(mChHorse.mpModelMorf->getModel()->getAnmMtx(sVar2));
        mDoMtx_stack_c::multVec(&sp48, &sp48);
        reins->field_0x170 = sp48;
        reins->field_0x168 = attr().field_0x48;

        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                sp24.set(63.0f, 17.0f, 11.0f);
            } else {
                sp24.set(63.0f, 17.0f, -11.0f);
            }

            mDoMtx_stack_c::copy(mChHorse.mpModelMorf->getModel()->getAnmMtx(JNT_HORSE_HEAD));
            mDoMtx_stack_c::multVec(&sp24, &sp24);
            
            if (telmaB_p != NULL) {
                sp30 = telmaB_p->getHandPos2(i);
            }

            cXyz* pcVar1 = reins->field_0x0.getPos(i);
            cXyz* pcVar2 = reins->field_0xf0;
            cXyz sp54;
            *pcVar1 = sp24;

            cXyz* pcVar3;
            for (int j = 1; j < 6; j++, pcVar3 = pcVar1++, pcVar2++, pcVar1 = pcVar3) {
                sp3c = *pcVar3 - sp48;
                sp3c.normalizeZP();
                sp3c *= attr().field_0x5c;
                sp3c.y = 0.0f;
                sp54 = *pcVar3 - *pcVar1;
                sp54.y += gravity;
                sp54 += *pcVar2 + sp3c;
                sp54.normalizeZP();
                *pcVar3 = *pcVar1 + (sp54 * reins->field_0x168);
            }

            *pcVar3 = sp30;
            pcVar3 = reins->field_0x0.getPos(i);
            pcVar3 += 5;
            pcVar2 = &reins->field_0xf0[i * 5];

            for (int j = 5; j > 0; j--, pcVar3--, pcVar2--) {
                sp3c = *pcVar3 - sp48;
                sp3c.normalizeZP();
                sp3c *= attr().field_0x5c;
                sp3c.y = 0.0f;
                sp54 = *pcVar1 - *(pcVar1 + 1);
                sp54.y += gravity;
                sp54 += *pcVar2 + sp3c;
                sp54.normalizeZP();
                *pcVar3 = *(pcVar3 + 1) + (sp54 * reins->field_0x168);
            }

            pcVar3 = reins->field_0x0.getPos(i);
            cXyz* pcVar4;
            pcVar2 = &reins->field_0xf0[i * 5];

            for (int j = 1; j < 6; j++, pcVar4++, pcVar2++) {
                *pcVar2 = (*pcVar3 - *pcVar4) * attr().field_0x58;
                pcVar4 = pcVar3;
            }
        }

        cXyz* pcVar5 = reins->field_0x3c.getPos(0);

        for (int i = 0; i < 2; i++, pcVar5++) {
            if (telmaB_p != NULL) {
                *pcVar5 = telmaB_p->getHandPos1(i);
            }
        }
    }
}

/* 8099F988-8099FCF4 002328 036C+00 1/1 0/0 0/0 .text            reinsInit__12daNpcCoach_cFv */
void daNpcCoach_c::reinsInit() {
    // NONMATCHING
    daNpcChReins_c* reins = &mChHorse.mChReins;
    daNpcTheB_c* telmaB_p = (daNpcTheB_c*)fpcM_SearchByID(parentActorID);
    cXyz sp1c, sp28;

    for (int i = 0; i < 2; i++) {
        f32* pfVar1 = reins->field_0x0.getSize(i);

        for (int j = 0; j < 7; j++, pfVar1++) {
            *pfVar1 = 2.0f;
        }

        if (i == 0) {
            sp1c.set(63.0f, 17.0f, 11.0f);
        } else {
            sp1c.set(63.0f, 17.0f, -11.0f);
        }

        mDoMtx_stack_c::copy(mChHorse.mpModelMorf->getModel()->getAnmMtx(JNT_HORSE_HEAD));
        mDoMtx_stack_c::multVec(&sp1c, &sp1c);

        if (telmaB_p != NULL) {
            sp28 = telmaB_p->getHandPos2(i);
        }

        cXyz sp34 = (sp28 - sp1c) / 6.0f;
        reins->field_0x168 = sp34.abs();
        cXyz* pcVar1 = reins->field_0x0.getPos(i);
        cXyz* pcVar2 = &reins->field_0x78[i * 5];
        *pcVar1 = sp1c;

        cXyz* pcVar3;
        for (int j = 0; pcVar3 = pcVar1 + 1, j < 6; j++, pcVar2++, pcVar1 = pcVar3) {
            *pcVar3 = *pcVar1 + sp34;
            pcVar2 = pcVar3;
        }
        *pcVar3 = sp28;
    }

    cXyz* pcVar4 = reins->field_0x3c.getPos(0);
    f32* pfVar2 = reins->field_0x3c.getSize(0);

    for (int i = 0; i < 2; i++, pcVar4++, pfVar2++) {
        if (telmaB_p != NULL) {
            *pcVar4 = telmaB_p->getHandPos1(i);
        }
        
        *pfVar2 = 2.0f;
    }
}

inline void daNpcCoach_c::setCoachCollision() {
    mChCoach.mBgc.CrrPos(dComIfG_Bgsp());

    if (mChCoach.field_0x5e0.y - mChCoach.mBgc.GetGroundH() > 1500.0f) {
        mChCoach.field_0x784 = 0.0f;
    } else {
        mChCoach.field_0x784 = attr().max_fall_speed;
    }

    mChCoach.field_0x564->SetRoomId(dComIfG_Bgsp().GetRoomId(mChCoach.mBgc.m_gnd));

    if (attention_info.flags != 0 && mChCoach.field_0x77c == 0) {
        mChCoach.field_0x644.SetC(eyePos);
        dComIfG_Ccsp()->Set(&mChCoach.field_0x644);
    } else {
        mChCoach.field_0x644.ClrTgHit();
    }

    f32 fVar1 = cM_ssin(mChCoach.field_0x79a.y);
    f32 fVar2 = cM_scos(mChCoach.field_0x79a.y);
    cXyz sp58(35.0f, 0.0f, 15.0f);
    mDoMtx_stack_c::transS(mChYelia.field_0x694);
    mDoMtx_stack_c::YrotM(mChCoach.field_0x79a.y);
    mDoMtx_stack_c::multVec(&sp58, &sp58);
    fVar1 *= 65.0f;
    fVar2 *= 65.0f;

    for (int i = 0; i < 2; i++) {
        mChYelia.field_0x41c[i].SetC(sp58);
        dComIfG_Ccsp()->Set(&mChYelia.field_0x41c[i]);
        sp58.x -= fVar1;
        sp58.z -= fVar2;
    }
}

inline s16 daNpcCoach_c::getGroundSlope(dBgS_ObjAcch* i_bgc, s16 param_2) {
    cM3dGPla plane;

    if (dComIfG_Bgsp().GetTriPla(i_bgc->m_gnd, &plane)) {
        return fopAcM_getPolygonAngle(&plane, param_2);
    }

    return shape_angle.x;
}

inline void daNpcCoach_c::calcSpringF(f32* param_1, f32 param_2, f32* param_3) {
    *param_3 = (*param_3 + (param_2 - *param_1) * attr().spring_constant) * attr().damp_coeff[0];
    *param_1 += *param_3;
}

inline void daNpcCoach_c::calcSpringS(s16* param_1, s16 param_2, f32* param_3) {
    *param_3 = (*param_3 + (param_2 - *param_1) * attr().spring_constant) * attr().damp_coeff[0];
    *param_1 += *param_3;
}

inline void daNpcCoach_c::setCoachMtx() {
    cXyz sp18;
    mDoMtx_stack_c::copy(mChHarness.mHarnessModel->getAnmMtx(JNT_HARNESS_BS_LOC));
    mDoMtx_stack_c::multVecZero(&sp18);
    mDoMtx_stack_c::transS(sp18);
    mDoMtx_stack_c::YrotM(mChCoach.field_0x79a.y);
    mDoMtx_stack_c::XrotM(mChCoach.field_0x79a.x);
    mDoMtx_stack_c::ZrotM(mChCoach.field_0x79a.z);

    mChCoach.mCoachModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transM(0.0f, mChCoach.mCoachTrans, 0.0f);
    mDoMtx_stack_c::ZrotM(mChCoach.mCoachRot);
    MTXCopy(mDoMtx_stack_c::get(), mChCoach.field_0x568);

    mChCoach.field_0x564->Move();
    mChCoach.mCoachModel->calc();
    MTXCopy(mDoMtx_stack_c::get(), mCoachMtx);

    eyePos.set(108.0f, 108.0f, 0.0f);
    mDoMtx_stack_c::multVec(&eyePos, &eyePos);

    attention_info.position.set(-90.0f, 290.0f, 0.0f);
    mDoMtx_stack_c::multVec(&attention_info.position, &attention_info.position);

    mDoMtx_stack_c::inverse();
    MTXCopy(mDoMtx_stack_c::get(), mChCoach.field_0x598);
}

/* 8099FCF4-809A0728 002694 0A34+00 1/1 0/0 0/0 .text            calcCoachMotion__12daNpcCoach_cFv */
void daNpcCoach_c::calcCoachMotion() {
    // NONMATCHING
    cXyz sp44 = mChCoach.field_0x5e0 - mChCoach.field_0x5ec;
    mChCoach.field_0x5ec = mChCoach.field_0x5e0;
    mChCoach.field_0x7a0 = mChCoach.field_0x79a;
    mChCoach.field_0x5c8.y += gravity;

    if (mChCoach.field_0x5c8.y < mChCoach.field_0x784) {
        mChCoach.field_0x5c8.y = mChCoach.field_0x784;
    }

    mChCoach.field_0x5e0.y += mChCoach.field_0x5c8.y;
    mChCoach.field_0x5c8.x = sp44.x;
    mChCoach.field_0x5c8.z = sp44.z;

    setCoachCollision();

    if (mChCoach.mBgc.ChkGroundLanding()) {
        if (mChCoach.field_0x5c8.y < -20.0f) {
            mChCoach.mSound.startSound(Z2SE_COACH_SHAKE, 0, -1);
        }

        if (cM_rnd() < 0.5f) {
            mChCoach.field_0x794 += attr().horiz_sway_range;
        } else {
            mChCoach.field_0x794 -= attr().horiz_sway_range;
        }

        mChCoach.field_0x790 += attr().vert_swing_width;
        mChCoach.field_0x5c8.y *= attr().jump_coeff;
    } else if (mChCoach.mBgc.ChkGroundHit()) {
        mChCoach.field_0x5c8.y = 0.0f;
    }

    cXyz sp50;
    mDoMtx_stack_c::copy(mChHarness.mHarnessModel->getAnmMtx(JNT_HARNESS_BS_LOC));
    mDoMtx_stack_c::multVecZero(&sp50);
    sp50.y = mChHarness.field_0x6e0.y;
    mChCoach.field_0x79a.x = cLib_targetAngleX(&sp50, &mChCoach.field_0x5e0);
    mChCoach.field_0x79a.y = cLib_targetAngleY(&mChCoach.field_0x5e0, &sp50);
    cLib_addCalcAngleS(&mChCoach.field_0x79a.z, getGroundSlope(&mChCoach.mBgc, mChCoach.field_0x79a.y - 0x4000),
                       15, 0x200, 0x40);

    if (speedF > 0.0f) {
        mDoMtx_stack_c::transS(sp50);
        mDoMtx_stack_c::YrotM(mChCoach.field_0x79a.y);
        mDoMtx_stack_c::XrotM(mChCoach.field_0x79a.x);
        mDoMtx_stack_c::ZrotM(mChCoach.field_0x79a.z);

        sp50.set(0.0f, 0.0f, attr().field_0x10);
        mDoMtx_stack_c::multVec(&sp50, &sp50);
        mChCoach.field_0x5e0.x = sp50.x;
        mChCoach.field_0x5e0.z = sp50.z;

        sp50.set(attr().field_0x18, 0.0f, attr().field_0x10);
        mDoMtx_stack_c::multVec(&sp50, &mChCoach.field_0x7a8.field_0x0);

        sp50.set(-attr().field_0x18, 0.0f, attr().field_0x10);
        mDoMtx_stack_c::multVec(&sp50, &mChCoach.field_0x7cc.field_0x0);
    }

    mChCoach.field_0x788 -= mChCoach.field_0x5c8.absXZ();
    if (mChCoach.field_0x788 <= 0.0f) {
        if (cM_rnd() < 0.5f) {
            mChCoach.field_0x794 += attr().horiz_sway_range;
        } else {
            mChCoach.field_0x794 -= attr().horiz_sway_range;
        }

        if (cM_rnd() < 0.5f) {
            mChCoach.field_0x790 += attr().vert_swing_width;
        } else {
            mChCoach.field_0x790 -= attr().vert_swing_width;
        }

        mChCoach.field_0x788 = attr().shake_dist + cM_rndF(attr().shake_dist);
    }

    calcSpringF(&mChCoach.mCoachTrans, 0.0f, &mChCoach.field_0x790);
    calcSpringS(&mChCoach.mCoachRot, 0, &mChCoach.field_0x794);
    setCoachMtx();
    mChCoach.mSound.framework(0, 0);
    calcRearWheelRotate();
    
    if (attention_info.flags != 0) {
        if (mChCoach.field_0x77c > 0) {
            mChCoach.field_0x77c--;
        }

        if (mChCoach.field_0x644.ChkTgHit() && mChCoach.field_0x77c == 0) {
            mChCoach.mSound.startSound(Z2SE_COACH_HIT_WIND, 0, -1);

            field_0x24c4 = (field_0x24c4 / (attr().damage_durability / 20) - attr().damage_extinguish_level) * (attr().damage_durability / 20);
            if (field_0x24c4 <= 0) {
                field_0x24c4 = 0;
                field_0x24c0 = 0;

                for (int i = 0; i < 5; i++) {
                    if (field_0x247c[i] != fpcM_ERROR_PROCESS_ID_e) {
                        fopAcM_delete(field_0x247c[i]);
                        field_0x247c[i] = fpcM_ERROR_PROCESS_ID_e;
                    }
                }
            } else {
                mChCoach.field_0x77c = 20;

                for (int i = 0; i < 5; i++) {
                    if (field_0x247c[i] != fpcM_ERROR_PROCESS_ID_e) {
                        ((daCoachFire_c*)fpcM_SearchByID(field_0x247c[i]))->setNoHitTimer();
                    }
                }
            }
        }
    }
}

inline void daNpcCoach_c::setWheelSmoke(daNpcChWheel_c* i_wheel, dBgS_ObjAcch* i_bgc, dKy_tevstr_c* i_tevStr, csXyz* i_angle) {
    f32 fVar1 = speedF / attr().max_speed;
    f32 fVar2 = fVar1 * 2.0f;
    s16 sVar1 = fVar1 * 15.0f;
    s16 sVar2 = fVar1 * 128.0f;

    if (sVar1 != 0 && (u8)sVar2 != 0 && fVar2 != 0.0f && fVar1 != 0.0f && i_bgc->ChkGroundHit()) {
        fopAcM_effSmokeSet2(i_wheel->field_0xc, i_wheel->field_0xc + 1, &i_wheel->field_0x0,
                            i_angle, 1.0f, i_tevStr);

        for (int i = 0; i < 2; i++) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_wheel->field_0xc[i]);
            if (emitter != NULL) {
                emitter->setRate(fVar1);
                emitter->setLifeTime(sVar1);
                emitter->setGlobalAlpha(sVar2);
                emitter->setGlobalParticleScale(fVar2, fVar2);
            }
        }
    }
}

/* 809A0728-809A0DB8 0030C8 0690+00 1/1 0/0 0/0 .text calcRearWheelRotate__12daNpcCoach_cFv */
void daNpcCoach_c::calcRearWheelRotate() {
    // NONMATCHING
    if (speedF != 0.0f) {
        f32 fVar1 = mChCoach.field_0x5ec.absXZ(mChCoach.field_0x5e0);
        f32 fVar2;
        if (cLib_distanceAngleS(mChCoach.field_0x79a.y, cLib_targetAngleY(&mChCoach.field_0x5ec, &mChCoach.field_0x5e0)) < 0x4000) {
            fVar2 = fVar1 / 439.823f;
        } else {
            fVar2 = -(fVar1 / 439.823f);
        }

        int iVar1 = fVar2 * 65535.0f;
        s16 sVar1 = (int)((mChHarness.field_0x706.y - mChHarness.field_0x700.y) / 65535.0f * 642.61536f / 439.823f * 65535.0f);
        s16 sVar2 = sVar1 + (s16)iVar1;
        sVar1 -= iVar1;

        if (sVar2 > 4500) {
            sVar2 = 4500;
        } else if (sVar2 < -4500) {
            sVar2 = -4500;
        }

        if (sVar1 > 4500) {
            sVar1 = 4500;
        } else if (sVar1 < -4500) {
            sVar1 = -4500;
        }

        mChCoach.field_0x7a8.mWheelRot.x += sVar2;
        mChCoach.field_0x7cc.mWheelRot.x += sVar1;

        if (cLib_chaseS(&mChCoach.field_0x7a8.field_0x1c, mChCoach.field_0x7a8.field_0x1a, 16) != 0) {
            mChCoach.field_0x7a8.field_0x1a = cM_rndF(attr().field_0x66);
        }

        if (cLib_chaseS(&mChCoach.field_0x7cc.field_0x1c, mChCoach.field_0x7cc.field_0x1a, 16) != 0) {
            mChCoach.field_0x7cc.field_0x1a = cM_rndF(attr().field_0x66);
        }

        if (cLib_chaseS(&mChCoach.field_0x7a8.field_0x20, mChCoach.field_0x7a8.field_0x1e, 16) != 0) {
            mChCoach.field_0x7a8.field_0x1e = cM_rndF(attr().field_0x68);
        }
        
        if (cLib_chaseS(&mChCoach.field_0x7cc.field_0x20, mChCoach.field_0x7cc.field_0x1e, 16) != 0) {
            mChCoach.field_0x7cc.field_0x1e = cM_rndF(attr().field_0x68);
        }

        mChCoach.field_0x7a8.mWheelRot.y = mChCoach.field_0x7a8.field_0x1c * cM_ssin(mChCoach.field_0x7a8.mWheelRot.x);
        mChCoach.field_0x7cc.mWheelRot.y = mChCoach.field_0x7cc.field_0x1c * cM_ssin(mChCoach.field_0x7cc.mWheelRot.x);
        mChCoach.field_0x7a8.mWheelRot.z = mChCoach.field_0x7a8.field_0x20 * cM_ssin(mChCoach.field_0x7a8.mWheelRot.x);
        mChCoach.field_0x7cc.mWheelRot.z = mChCoach.field_0x7cc.field_0x20 * cM_ssin(mChCoach.field_0x7cc.mWheelRot.x);

        setWheelSmoke(&mChCoach.field_0x7a8, &mChCoach.mBgc, &mChCoach.mTevStr, &mChCoach.field_0x79a);
        setWheelSmoke(&mChCoach.field_0x7cc, &mChCoach.mBgc, &mChCoach.mTevStr, &mChCoach.field_0x79a);
    }
}

inline void daNpcCoach_c::setHarnessCollision() {
    cXyz sp28(0.0f, 0.0f, 160.0f);
    mDoMtx_stack_c::transS(mChHarness.field_0x6e0);
    mDoMtx_stack_c::YrotM(mChHarness.field_0x700.y);
    mDoMtx_stack_c::multVec(&sp28, &sp28);
    mChHarness.field_0x564.SetC(sp28);
    dComIfG_Ccsp()->Set(&mChHarness.field_0x564);
    mChHarness.mBgc.CrrPos(dComIfG_Bgsp());

    if (mChHarness.field_0x6e0.y - mChHarness.mBgc.GetGroundH() > 1500.0f) {
        mChHarness.field_0x6fc = 0.0f;
    } else {
        mChHarness.field_0x6fc = attr().max_fall_speed;
    }

    mChHarness.field_0x6a0->SetRoomId(dComIfG_Bgsp().GetRoomId(mChHarness.mBgc.m_gnd));
}

/* 809A0E00-809A1180 0037A0 0380+00 1/1 0/0 0/0 .text            calcHarnessMotion__12daNpcCoach_cFv */
void daNpcCoach_c::calcHarnessMotion() {
    cXyz sp1c = mChHarness.field_0x6e0 - mChHarness.field_0x6ec;
    mChHarness.field_0x6ec = mChHarness.field_0x6e0;
    mChHarness.field_0x706 = mChHarness.field_0x700;
    mChHarness.field_0x6d4.y += gravity;

    if (mChHarness.field_0x6d4.y < mChHarness.field_0x6fc) {
        mChHarness.field_0x6d4.y = mChHarness.field_0x6fc;
    }

    mChHarness.field_0x6e0.y += mChHarness.field_0x6d4.y;
    mChHarness.field_0x6d4.x = sp1c.x;
    mChHarness.field_0x6d4.z = sp1c.z;

    setHarnessCollision();

    if (mChHarness.mBgc.ChkGroundLanding()) {
        mChHarness.field_0x6d4.y *= attr().jump_coeff;
    } else if (mChHarness.mBgc.ChkGroundHit()) {
        mChHarness.field_0x6d4.y = 0.0f;
    }

    mChHarness.field_0x700.x = cLib_targetAngleX(&current.pos, &mChHarness.field_0x6e0);
    mChHarness.field_0x700.y = cLib_targetAngleY(&mChHarness.field_0x6e0, &current.pos);
    cLib_addCalcAngleS(&mChHarness.field_0x700.z, getGroundSlope(&mChHarness.mBgc, mChHarness.field_0x700.y - 0x4000),
                       15, 0x200, 0x40);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(mChHarness.field_0x700.y);
    mDoMtx_stack_c::XrotM(mChHarness.field_0x700.x);
    mDoMtx_stack_c::ZrotM(mChHarness.field_0x700.z);

    if (speedF > 0.0f) {
        cXyz sp28(0.0f, 0.0f, attr().field_0xc);
        mDoMtx_stack_c::multVec(&sp28, &sp28);
        mChHarness.field_0x6e0.x = sp28.x;
        mChHarness.field_0x6e0.z = sp28.z;

        sp28.set(attr().field_0x14, 0.0f, attr().field_0xc);
        mDoMtx_stack_c::multVec(&sp28, &mChHarness.field_0x70c.field_0x0);

        sp28.set(-attr().field_0x14, 0.0f, attr().field_0xc);
        mDoMtx_stack_c::multVec(&sp28, &mChHarness.field_0x730.field_0x0);
    }

    mChHarness.mHarnessModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mChHarness.mMtx);
    mChHarness.field_0x6a0->Move();
    mChHarness.mHarnessModel->calc();
    calcFrontWheelRotate();
}

/* 809A1180-809A1810 003B20 0690+00 1/1 0/0 0/0 .text calcFrontWheelRotate__12daNpcCoach_cFv */
void daNpcCoach_c::calcFrontWheelRotate() {
    // NONMATCHING
    if (speedF != 0.0f) {
        f32 fVar1 = mChHarness.field_0x6ec.absXZ(mChHarness.field_0x6e0);
        f32 fVar2;
        if (cLib_distanceAngleS(mChHarness.field_0x700.y, cLib_targetAngleY(&mChHarness.field_0x6ec, &mChHarness.field_0x6e0)) < 0x4000) {
            fVar2 = fVar1 / 345.5751953125f;
        } else {
            fVar2 = -(fVar1 / 345.5751953125f);
        }

        int iVar1 = fVar2 * 65535.0f;
        s16 sVar1 = (int)((mChHarness.field_0x706.y - mChHarness.field_0x700.y) / 65535.0f * 556.8225f / 345.5752f * 65535.0f);
        s16 sVar2 = (s16)sVar1 + (s16)iVar1;
        sVar1 -= iVar1;

        if (sVar2 > 4500) {
            sVar2 = 4500;
        } else if (sVar2 < -4500) {
            sVar2 = -4500;
        }

        if (sVar1 > 4500) {
            sVar1 = 4500;
        } else if (sVar1 < -4500) {
            sVar1 = -4500;
        }

        mChHarness.field_0x70c.mWheelRot.x += sVar2;
        mChHarness.field_0x730.mWheelRot.x += sVar1;

        if (cLib_chaseS(&mChHarness.field_0x70c.field_0x1c, mChHarness.field_0x70c.field_0x1a, 16) != 0) {
            mChHarness.field_0x70c.field_0x1a = cM_rndF(attr().field_0x66);
        }
        if (cLib_chaseS(&mChHarness.field_0x730.field_0x1c, mChHarness.field_0x730.field_0x1a, 16) != 0) {
            mChHarness.field_0x730.field_0x1a = cM_rndF(attr().field_0x66);
        }

        if (cLib_chaseS(&mChHarness.field_0x70c.field_0x20, mChHarness.field_0x70c.field_0x1e, 16) != 0) {
            mChHarness.field_0x70c.field_0x1e = cM_rndF(attr().field_0x68);
        }
        if (cLib_chaseS(&mChHarness.field_0x730.field_0x20, mChHarness.field_0x730.field_0x1e, 16) != 0) {
            mChHarness.field_0x730.field_0x1e = cM_rndF(attr().field_0x68);
        }

        mChHarness.field_0x70c.mWheelRot.y = mChHarness.field_0x70c.field_0x1c * cM_ssin(mChHarness.field_0x70c.mWheelRot.x);
        mChHarness.field_0x730.mWheelRot.y = mChHarness.field_0x730.field_0x1c * cM_ssin(mChHarness.field_0x730.mWheelRot.x);
        mChHarness.field_0x70c.mWheelRot.z = mChHarness.field_0x70c.field_0x20 * cM_ssin(mChHarness.field_0x70c.mWheelRot.x);
        mChHarness.field_0x730.mWheelRot.z = mChHarness.field_0x730.field_0x20 * cM_ssin(mChHarness.field_0x730.mWheelRot.x);

        setWheelSmoke(&mChHarness.field_0x70c, &mChHarness.mBgc, &mChHarness.mTevStr, &mChHarness.field_0x700);
        setWheelSmoke(&mChHarness.field_0x730, &mChHarness.mBgc, &mChHarness.mTevStr, &mChHarness.field_0x700);
    }
}

inline f32 daNpcCoach_c::calcMaxSpeed() {
    if (!mChPath.isPath()) {
        return mChHorse.mAimSpeed;
    }

    if (field_0x2550 > 0) {
        int iVar1 = field_0x2550 - 1;
        field_0x2550 = iVar1;
        if (iVar1 >= 0) {
            return attr().deceleration_speed;
        }
    }

    cXyz sp38;
    mChPath.getTargetPoint(sp38);
    f32 fVar1 = -cLib_distanceAngleS(current.angle.y, cLib_targetAngleY(&current.pos, &sp38)) / 16384.0f + 1.0f;
    if (fVar1 < 0.0f) {
        fVar1 = 0.0f;
    }

    return fVar1 * mChHorse.mAimSpeed;
}

inline void daNpcCoach_c::setHorseCollision() {
    f32 fVar1 = cM_ssin(shape_angle.y);
    f32 fVar2 = cM_scos(shape_angle.y);
    cXyz sp58(current.pos.x + (fVar1 * 135.0f), current.pos.y, current.pos.z + (fVar2 * 135.0f));
    fVar1 *= 83.0f;
    fVar2 *= 83.0f;

    for (int i = 0; i < 4; i++) {
        mChHorse.field_0x1f0[i].SetC(sp58);
        dComIfG_Ccsp()->Set(&mChHorse.field_0x1f0[i]);
        sp58.x -= fVar1;
        sp58.z -= fVar2;
    }

    mChHorse.mBgc.CrrPos(dComIfG_Bgsp());

    if (current.pos.y - mChHorse.mBgc.GetGroundH() > 1500.0f) {
        maxFallSpeed = 0.0f;
    } else {
        maxFallSpeed = attr().max_fall_speed;
    }
}

inline void daNpcCoach_c::setHorseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mChHorse.mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::copy(mChHorse.mpModelMorf->getModel()->getAnmMtx(JNT_HORSE_MOUTH2));
    mDoMtx_stack_c::multVecZero(&mChHorse.field_0x770);
}

/* 809A1810-809A1BE0 0041B0 03D0+00 1/1 0/0 0/0 .text            calcHorseMotion__12daNpcCoach_cFv */
void daNpcCoach_c::calcHorseMotion() {
    // NONMATCHING
    f32 fVar1 = calcMaxSpeed();
    if (mChHorse.field_0x784 < fVar1) {
        cLib_addCalc(&mChHorse.field_0x784, fVar1, 0.07f, 0.2f, 0.01f);
    } else {
        cLib_addCalc(&mChHorse.field_0x784, fVar1, 0.1f, 0.8f, 0.01f);
    }

    if (maxFallSpeed == 0.0f) {
        mChHorse.field_0x784 = 0.0f;
    } else {
        mChCoach.mSound.startWheelSound(mChHorse.field_0x784);
    }

    shape_angle.y = current.angle.y;
    s16 sVar1 = shape_angle.y - mChHarness.field_0x700.y;
    if (abs(sVar1) > attr().horse_rot_limit) {
        if (sVar1 > 0) {
            shape_angle.y = mChHarness.field_0x700.y + attr().horse_rot_limit;
        } else {
            shape_angle.y = mChHarness.field_0x700.y - attr().horse_rot_limit;
        }
    }

    cLib_addCalcAngleS(&shape_angle.x, getGroundSlope(&mChHorse.mBgc, shape_angle.y), 15, 0x200, 0x40);
    speedF = mChHorse.field_0x784 * cM_scos(shape_angle.x);
    calcHorsePath();
    fopAcM_posMoveF(this, NULL);
    setHorseCollision();
    setHorseMtx();
    calcHorseAnm();
}

inline void daNpcCoach_c::setHorseAnm(int i_index) {
    if (mChHorse.field_0x788 != i_index) {
        mChHorse.field_0x788 = i_index;

        J3DAnmTransform* anm = l_horseAnmParam[i_index].field_0x0 >= 0 ? 
                                 (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, l_horseAnmParam[i_index].field_0x0) : NULL;
        J3DAnmTransform* anm_2 = l_horseAnmParam[i_index].field_0xc >= 0 ? 
                                 (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, l_horseAnmParam[i_index].field_0xc) : NULL;

        f32 frame = mChHorse.mpModelMorf->getFrame();
        f32 playSpeed = mChHorse.mpModelMorf->getPlaySpeed();
        mChHorse.mpModelMorf->setAnm(anm, anm_2, 0.0f, 2, 8.0f, 1.0f, 0.0f, -1.0f);
        mChHorse.mpModelMorf->setFrame(frame + playSpeed);
    }
}

inline void daNpcCoach_c::eyeWink() {
    mChHorse.field_0x790--;

    if (mChHorse.field_0x790 < 0) {
        mChHorse.mpBtpAnm->init(mChHorse.mpModelMorf->getModel()->getModelData(), (J3DAnmTexPattern*)dComIfG_getObjectRes(l_arcName, BTP_HU_EYE),
                                1, J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1);
        mChHorse.field_0x790 = cM_rnd() * 90.0f + 15.0f;
    }
}

/* 809A1BE0-809A2740 004580 0B60+00 1/1 0/0 0/0 .text            calcHorseAnm__12daNpcCoach_cFv */
void daNpcCoach_c::calcHorseAnm() {
    // NONMATCHING
    if (mChPath.isPath()) {
        cXyz target_point;
        mChPath.getTargetPoint(target_point);
        cLib_distanceAngleS(shape_angle.y, mChHarness.field_0x700.y);
        cLib_distanceAngleS(current.angle.y, cLib_targetAngleY(&current.pos, &target_point));
    }

    f32 fVar1 = 0.0f;
    f32 fVar2 = attr().max_speed;

    switch (mChHorse.field_0x788) {
        case 0:
            fVar1 = attr().field_0x28[mChHorse.field_0x788];

            if (speedF > fVar1) {
                setHorseAnm(1);
            }
            break;

        case 1:
            fVar1 = attr().damp_coeff[mChHorse.field_0x788];
            fVar2 = attr().field_0x28[mChHorse.field_0x788];

            if (speedF <= fVar1) {
                setHorseAnm(0);
            } else if (speedF > fVar2) {
                setHorseAnm(2);
            }
            break;

        case 2:
            fVar1 = attr().damp_coeff[mChHorse.field_0x788];
            fVar2 = attr().field_0x28[mChHorse.field_0x788];

            if (speedF <= fVar1) {
                setHorseAnm(1);
            } else if (speedF > fVar2) {
                setHorseAnm(3);
            }
            break;

        case 3:
            fVar1 = attr().damp_coeff[mChHorse.field_0x788];
            fVar2 = attr().field_0x28[mChHorse.field_0x788];

            if (speedF <= fVar1) {
                setHorseAnm(2);
            } else if (speedF > fVar2) {
                setHorseAnm(4);
            }
            break;

        case 4:
            fVar1 = attr().damp_coeff[mChHorse.field_0x788];

            if (speedF <= fVar1) {
                setHorseAnm(3);
            }
            break;

        default:
            JUT_ASSERT(1521, 0);
            break;
    }

    if (mChHorse.field_0x788 < 4) {
        fVar2 = speedF / fVar2;
        if (fVar2 > 1.0f) {
            fVar2 = 1.0f;
        }

        mChHorse.mpModelMorf->setAnmRate(fVar2);
        mChHorse.mpModelMorf->setPlaySpeed(fVar2 * (l_horseAnmParam[mChHorse.field_0x788].field_0x14 - l_horseAnmParam[mChHorse.field_0x788].field_0x8) + 
                                           l_horseAnmParam[mChHorse.field_0x788].field_0x8);
    } else {
        mChHorse.mpModelMorf->setAnmRate(0.0f);
        mChHorse.mpModelMorf->setPlaySpeed(l_horseAnmParam[mChHorse.field_0x788].field_0x8 * (speedF / fVar1));
    }

    mChHorse.mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mChHorse.mpBtpAnm->play();

    if (mChHorse.field_0x78c != 0) {
        mChHorse.mpBckAnm->play();

        if (mChHorse.mpBckAnm->isStop()) {
            mChHorse.field_0x78c = 0;
        } else {
            mChHorse.mpBckAnm->getBckAnm()->setFrame(mChHorse.mpBckAnm->getFrame());
        }
    }

    mChHorse.mpModelMorf->modelCalc();
    eyeWink();
}

inline int daNpcChPath_c::checkNearAttackPoint() {
    int iVar1 = 5;
    int iVar2 = mPntIndex;
    int iVar3 = iVar2 - 2;

    if (iVar3 < 0) {
        if (isClose()) {
            iVar3 = mpPath->m_num + iVar3;
        } else {
            iVar1 = iVar2 + 5;
            iVar3 = 0;
        }
    }

    do {
        if (mpPath->m_points[iVar3].mArg2 == 1) break;

        iVar3++;
        if (iVar3 >= mpPath->m_num) {
            if (isClose()) {
                iVar3 = 0;
            } else {
                return -1;
            }
        }
        iVar1--;
    } while (iVar1 >= 1);

    return mpPath->m_points[iVar3].mArg1;
}

inline BOOL daNpcCoach_c::checkKargoAttack() {
    e_kr_class* kargo_p = (e_kr_class*)fpcM_Search(s_sub, this);
    if (kargo_p != NULL && kargo_p->checkBombDrop() != 0) {
        return TRUE;
    }

    return FALSE;
}

inline BOOL daNpcCoach_c::setExpressionAnm(int param_1, bool param_2) {
    if (!param_2 && mChHorse.field_0x78c != 0) {
        return FALSE;
    }

    int bckIdx, i_attr;
    if ((param_1 == 2 || param_1 > 1) || param_1 < 1) {
        JUT_ASSERT(2635, 0);
    } else {
        bckIdx = BCK_HU_LASH;
        i_attr = J3DFrameCtrl::EMode_NONE;
    }

    if (mChHorse.mpBckAnm->init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, bckIdx), 1, i_attr, 1.0f, 0, -1, true)) {
        mChHorse.field_0x78c = param_1;
        return TRUE;
    }

    return FALSE;
}

inline bool daNpcChPath_c::checkPoint(cXyz* param_1, f32 param_2) {
    f32 fVar1 = param_1->absXZ(dPath_GetPnt(mpPath, mPntIndex)->m_position);

    if (field_0x4 != NULL) {
        field_0x8 -= param_2;
    }

    if ((fVar1 < param_2 || fVar1 < 10.0f) || field_0x8 <= 0.0f) {
        return TRUE;
    }

    return FALSE;
}

inline bool daNpcChPath_c::setNextTarget() {
    bool rv = setNextPoint();
    if (rv && field_0x4 != NULL) {
        cXyz target_point;
        getTargetPoint(target_point);
        field_0x8 = field_0x4->abs(target_point);
    }

    return rv;
}

inline void daNpcCoach_c::resetOverAngle() {
    if (shape_angle.y != current.angle.y && mChPath.isPath()) {
        cXyz target_point;
        mChPath.getTargetPoint(target_point);
        s16 sVar1 = cLib_targetAngleY(&current.pos, &target_point);
        s16 sVar2 = current.angle.y - shape_angle.y;
        s16 sVar3 = sVar1 - shape_angle.y;

        if (sVar2 > 0 && sVar3 <= 0) {
            current.angle.y = shape_angle.y;
        } else if (sVar2 < 0 && sVar3 >= 0) {
            current.angle.y = shape_angle.y;
        }
    }
}

/* 809A2740-809A2E98 0050E0 0758+00 1/1 0/0 0/0 .text            calcHorsePath__12daNpcCoach_cFv */
void daNpcCoach_c::calcHorsePath() {
    // NONMATCHING
    if (!mChPath.isPath() || field_0x24c4 >= attr().damage_durability) {
        return;
    }

    s8 arg0 = mChPath.getArg0();
    if (arg0 >= 0) {
        mChHorse.mAimSpeed = arg0;
    }

    if (mChHorse.mAimSpeed > attr().max_speed) {
        mChHorse.mAimSpeed = attr().max_speed;
    }

    cXyz target_point;
    mChPath.getTargetPoint(target_point);
    cLib_addCalcAngleS(&current.angle.y, cLib_targetAngleY(&current.pos, &target_point), 15, 0x200, 0x40);

    s8 arg1 = mChPath.getArg1();
    s8 arg2 = mChPath.getArg2();
    switch (arg2) {
        case -1:
            if (arg1 != -1) {
                changeAtherPath(arg1, current.pos, shape_angle);
            }
            break;

        case 0:
            if (!dComIfGs_isSaveDunSwitch(mChPath.getArg3()) || field_0x24c4 >= attr().damage_durability) {
                mChHorse.mAimSpeed = 0.0f;
            } else {
                changeAtherPath(arg1, current.pos, shape_angle);
            }
            break;

        case 2:
            dComIfGs_onSaveDunSwitch(mChPath.getArg3());
            break;
    }

    arg1 = mChPath.checkNearAttackPoint();
    if (arg1 != -1 && checkKargoAttack()) {
        changeAtherPath(arg1, current.pos, shape_angle);
        setExpressionAnm(1, true);

        mChHorse.mSound.startCreatureVoice(Z2SE_HS_V_COACH_CRY, -1);
        mChCoach.mSound.startSound(Z2SE_COACH_SHAKE, 0, -1);

        f32 fVar1 = cM_rnd() < 0.5f ? 4096.0f : -4096.0f;
        mChCoach.field_0x794 += fVar1;
        mChCoach.field_0x790 -= 30.0f;
        field_0x2550 = attr().deceleration_time;
    }

    if (mChPath.checkPoint(&current.pos, speedF)) {
        mChPath.setNextTarget();
        resetOverAngle();
    }
}

/* 809A2E98-809A2EB8 005838 0020+00 1/0 0/0 0/0 .text            daNpcCoach_Draw__FP12daNpcCoach_c */
static int daNpcCoach_Draw(daNpcCoach_c* i_this) {
    return i_this->draw();
}

inline void daNpcCoach_c::reinsDraw() {
    daNpcChReins_c* reins = &mChHorse.mChReins;

    static GXColor l_color = {
        0x14,
        0x0F,
        0x00,
        0xFF,
    };
    if (reins->field_0x16c > 1) {
        reins->field_0x0.update(7, l_color, &tevStr);
        dComIfGd_set3DlineMat(&reins->field_0x0);
        reins->field_0x3c.update(2, l_color, &tevStr);
        dComIfGd_set3DlineMat(&reins->field_0x3c);
    }
}

/* 809A2EB8-809A3300 005858 0448+00 1/1 0/0 0/0 .text            draw__12daNpcCoach_cFv */
int daNpcCoach_c::draw() {
    cXyz sp48;

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mChHorse.mpModelMorf->getModel(), &tevStr);
    mChHorse.mpBtpAnm->entry(mChHorse.mpModelMorf->getModel()->getModelData());
    mChHorse.mpModelMorf->entryDL();
    mChHorse.mpBtpAnm->remove(mChHorse.mpModelMorf->getModel()->getModelData());
    sp48.set(current.pos.x, current.pos.y + 150.0f, current.pos.z);
    tevStr.mLightPosWorld = current.pos;
    tevStr.mLightPosWorld.y += 1000.0f;
    mChHorse.mShadowKey = dComIfGd_setShadow(mChHorse.mShadowKey, 0, mChHorse.mpModelMorf->getModel(), &sp48, 1000.0f, 100.0f,
                                             current.pos.y, mChHorse.mBgc.GetGroundH(), mChHorse.mBgc.m_gnd, &tevStr, 0,
                                             1.0f, dDlst_shadowControl_c::getSimpleTex());

    g_env_light.settingTevStruct(0, &mChHarness.field_0x6e0, &mChHarness.mTevStr);
    g_env_light.setLightTevColorType_MAJI(mChHarness.mHarnessModel, &mChHarness.mTevStr);
    mDoExt_modelUpdateDL(mChHarness.mHarnessModel);
    sp48.set(mChHarness.field_0x6e0.x, mChHarness.field_0x6e0.y + 100.0f, mChHarness.field_0x6e0.z);
    mChHarness.mTevStr.mLightPosWorld = mChHarness.field_0x6e0;
    mChHarness.mTevStr.mLightPosWorld.y += 1000.0f;
    mChHarness.mShadowKey = dComIfGd_setShadow(mChHarness.mShadowKey, 0, mChHarness.mHarnessModel, &sp48, 1400.0f, 100.0f,
                                               mChHarness.field_0x6e0.y, mChHarness.mBgc.GetGroundH(), mChHarness.mBgc.m_gnd,
                                               &mChHarness.mTevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    g_env_light.settingTevStruct(0, &mChCoach.field_0x5e0, &mChCoach.mTevStr);
    g_env_light.setLightTevColorType_MAJI(mChCoach.mCoachModel, &mChCoach.mTevStr);

    J3DModelData* modelData = mChCoach.mCoachModel->getModelData();
    for (u16 i = 0; i < 2; i++) {
        J3DMaterial* matNodeP = modelData->getMaterialNodePointer(i);

        if (i == 0) {
            matNodeP->getTevKColor(1)->a = field_0x1dc7;
        } else if (i == 1) {
            matNodeP->getTevKColor(1)->a = field_0x1dc5;
            matNodeP->getTevKColor(2)->a = field_0x1dc6;
        }
    }
    mDoExt_modelUpdateDL(mChCoach.mCoachModel);

    sp48.set(mChCoach.field_0x5e0.x, mChCoach.field_0x5e0.y + 100.0f, mChCoach.field_0x5e0.z);
    mChHarness.mTevStr.mLightPosWorld = mChCoach.field_0x5e0;
    mChHarness.mTevStr.mLightPosWorld.y += 1000.0f;
    mChCoach.mShadowKey = dComIfGd_setShadow(mChCoach.mShadowKey, 0, mChCoach.mCoachModel, &sp48, 1400.0f, 100.0f,
                                             mChCoach.field_0x5e0.y, mChCoach.mBgc.GetGroundH(), mChCoach.mBgc.m_gnd,
                                             &mChHarness.mTevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    g_env_light.settingTevStruct(0, &mChYelia.field_0x694, &mChYelia.mTevStr);
    g_env_light.setLightTevColorType_MAJI(mChYelia.mpModelMorf->getModel(), &mChYelia.mTevStr);
    mDoExt_modelUpdateDL(mChYelia.mpModelMorf->getModel());

    reinsDraw();

    return 1;
}

/* 809A3300-809A3308 005CA0 0008+00 1/0 0/0 0/0 .text daNpcCoach_IsDelete__FP12daNpcCoach_c */
static int daNpcCoach_IsDelete(daNpcCoach_c* i_this) {
    return 1;
}

/* 809A3308-809A3330 005CA8 0028+00 1/0 0/0 0/0 .text            daNpcCoach_Delete__FP12daNpcCoach_c */
static int daNpcCoach_Delete(daNpcCoach_c* i_this) {
    i_this->~daNpcCoach_c();
    return 1;
}

/* 809A3330-809A3570 005CD0 0240+00 1/1 0/0 0/0 .text            __dt__12daNpcCoach_cFv */
daNpcCoach_c::~daNpcCoach_c() {
    if (mChHarness.field_0x6a0 != NULL && mChHarness.field_0x6a0->ChkUsed()) {
        dComIfG_Bgsp().Release(mChHarness.field_0x6a0);
    }

    if (mChCoach.field_0x564 != NULL && mChCoach.field_0x564->ChkUsed()) {
        dComIfG_Bgsp().Release(mChCoach.field_0x564);
    }

    fopAcM_delete(parentActorID);
    fopAcM_delete(field_0x2554);
    dComIfG_resDelete(&mPhase, l_arcName);
    dComIfGs_offTbox(1);
}

/* 809A3570-809A3674 005F10 0104+00 1/1 0/0 0/0 .text            __dt__16daNpcChHarness_cFv */
daNpcChHarness_c::~daNpcChHarness_c() {}

/* 809A3674-809A3798 006014 0124+00 1/1 0/0 0/0 .text            __dt__14daNpcChCoach_cFv */
daNpcChCoach_c::~daNpcChCoach_c() {}

/* 809A3864-809A3884 006204 0020+00 1/0 0/0 0/0 .text            daNpcCoach_Create__FP10fopAc_ac_c */
static int daNpcCoach_Create(fopAc_ac_c* a_this) {
    daNpcCoach_c* i_this = (daNpcCoach_c*)a_this;
    return i_this->create();
}

/* 809A3884-809A3928 006224 00A4+00 1/1 0/0 0/0 .text            create__12daNpcCoach_cFv */
cPhs__Step daNpcCoach_c::create() {
    fopAcM_SetupActor(this, daNpcCoach_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x7D60)) {
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase;
}

/* 809A3928-809A4078 0062C8 0750+00 1/1 0/0 0/0 .text            create_init__12daNpcCoach_cFv */
void daNpcCoach_c::create_init() {
    // NONMATCHING
    if (strcmp(dComIfGp_getStartStageName(), "F_SP123") == 0) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
    }

    fopAcM_setStageLayer(this);
    fopAcM_setCullSizeBox(this, -180.0f, 0.0f, -750.0f, 180.0f, 450.0f, 200.0f);
    attention_info.flags = 0;
    attention_info.distances[fopAc_attn_LOCK_e] = 72;
    attention_info.distances[fopAc_attn_CHECK_e] = 34;
    gravity = attr().gravity;
    maxFallSpeed = attr().max_fall_speed;
    mChHarness.field_0x6fc = attr().max_fall_speed;
    mChCoach.field_0x784 = attr().max_fall_speed;

    mChHorse.field_0x788 = -1;
    setHorseAnm(0);
    mChHorse.mSound.init(&current.pos, &mChHorse.field_0x770, 6, 1);
    mChCoach.mSound.init(&mChCoach.field_0x5e0, 3);
    mChYelia.mSound.init(&mChYelia.field_0x694, &mChYelia.field_0x694, 3, 1);

    dKy_tevstr_init(&mChHarness.mTevStr, fopAcM_GetRoomNo(this), 0xFF);
    dKy_tevstr_init(&mChCoach.mTevStr, fopAcM_GetRoomNo(this), 0xFF);
    dKy_tevstr_init(&mChYelia.mTevStr, fopAcM_GetRoomNo(this), 0xFF);
    field_0x1dc5 = 0xFF;
    field_0x1dc6 = 0x7D;

    initCoachBlazing();
    initCoachPosition(current.pos, shape_angle);
    initBaseMtx();
    initCollision();

    if (getPathID() != 0xFF) {
        mPathID = getPathID();
        mChPath.setPath(getPathID(), fopAcM_GetRoomNo(this), &current.pos, true);

        if (!mChPath.isPath()) {
            return;
        }

        if (mChPath.getArg0() >= 0) {
            mChHorse.mAimSpeed = mChPath.getArg0();
        }

        if (mChHorse.mAimSpeed > attr().max_speed) {
            mChHorse.mAimSpeed = attr().max_speed;
        }

        cXyz target_point;
        mChPath.getTargetPoint(target_point);
        if (cLib_distanceAngleS(shape_angle.y, cLib_targetAngleY(&current.pos, &target_point)) >= 0x4000) {
            mChPath.setNextPoint();
            mChPath.getTargetPoint(target_point);

            if (cLib_distanceAngleS(shape_angle.y, cLib_targetAngleY(&current.pos, &target_point)) >= 0x4000) {
                mChPath.setPrevPoint();
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        field_0x247c[i] = fpcM_ERROR_PROCESS_ID_e;
    }

    cXyz i_pos;
    csXyz i_angle;

    mDoMtx_stack_c::copy(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_TERUMA_LOC));
    mDoMtx_stack_c::multVecZero(&i_pos);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &i_angle);
    parentActorID = fopAcM_createChild(PROC_NPC_THEB, fopAcM_GetID(this), getMessageNo(), &i_pos, fopAcM_GetRoomNo(this), &i_angle, NULL, -1, NULL);
    field_0x2554 = fopAcM_createChild(PROC_COACH2D, fopAcM_GetID(this), 0, &current.pos, fopAcM_GetRoomNo(this), NULL, NULL, -1, NULL);
    field_0x2558 = 0;
    field_0x2559 = 0;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP123") != 0) {
        dComIfGs_onTbox(1);
    }
}

/* 809A4078-809A43A0 006A18 0328+00 1/1 0/0 0/0 .text            initCollision__12daNpcCoach_cFv */
void daNpcCoach_c::initCollision() {
    // NONMATCHING
    mAcchCir.SetWall(45.0f, 50.0f);
    mChHorse.mBgc.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                      fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mChHorse.mBgc.SetRoofNone();
    mChHorse.mBgc.SetWaterNone();
    mChHorse.mBgc.SetWallNone();
    mChHorse.mBgc.OnLineCheckNone();
    mChHorse.mBgc.CrrPos(dComIfG_Bgsp());
    mStts.Init(0xFF, 0xFF, this);

    for (int i = 0; i < 4; i++) {
        mChHorse.field_0x1f0[i].Set(ccCylSrc);
        mChHorse.field_0x1f0[i].SetStts(&mStts);
        mChHorse.field_0x1f0[i].SetR(45.0f);
        mChHorse.field_0x1f0[i].SetH(250.0f);
    }

    mChHarness.mBgc.Set(&mChHarness.field_0x6e0, &mChHarness.field_0x6ec, this, 1, &mAcchCir, &mChHarness.field_0x6d4, &mChHarness.field_0x700, &mChHarness.field_0x700);
    mChHarness.mBgc.SetRoofNone();
    mChHarness.mBgc.SetWaterNone();
    mChHarness.mBgc.SetWallNone();
    mChHarness.mBgc.OnLineCheckNone();
    mChHarness.mBgc.OffClrSpeedY();
    mChHarness.mBgc.SetGroundCheckOffset(150.0f);
    mChHarness.mBgc.CrrPos(dComIfG_Bgsp());
    mChHarness.field_0x564.Set(ccCylSrc);
    mChHarness.field_0x564.SetStts(&mStts);
    mChHarness.field_0x564.SetR(85.0f);
    mChHarness.field_0x564.SetH(120.0f);
    mChHarness.field_0x6a0->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
    dComIfG_Bgsp().Regist(mChHarness.field_0x6a0, this);

    mChCoach.mBgc.Set(&mChCoach.field_0x5e0, &mChCoach.field_0x5ec, this, 1, &mAcchCir, &mChCoach.field_0x5c8, &mChCoach.field_0x79a, &mChCoach.field_0x79a);
    mChCoach.mBgc.SetRoofNone();
    mChCoach.mBgc.SetWaterNone();
    mChCoach.mBgc.SetWallNone();
    mChCoach.mBgc.OnLineCheckNone();
    mChCoach.mBgc.OffClrSpeedY();
    mChCoach.mBgc.SetGroundCheckOffset(150.0f);
    mChCoach.mBgc.CrrPos(dComIfG_Bgsp());
    mChCoach.field_0x564->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
    mChCoach.field_0x564->SetArrowStickCallback(arrowStickCallBack);
    dComIfG_Bgsp().Regist(mChCoach.field_0x564, this);
    mChCoach.field_0x644.Set(ccSphSrc);
    mChCoach.field_0x644.SetStts(&mStts);
    mChCoach.field_0x644.SetC(eyePos);
    mChCoach.field_0x644.SetR(50.0f);

    for (int i = 0; i < 2; i++) {
        mChYelia.field_0x41c[i].Set(ccCylSrc);
        mChYelia.field_0x41c[i].SetStts(&mStts);
        mChYelia.field_0x41c[i].SetR(45.0f);

        f32 h = i == 0 ? 100.0f : 50.0f;
        mChYelia.field_0x41c[i].SetH(h);
    }
}

/* 809A43A0-809A43DC 006D40 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daNpcCoach_cFv */
void daNpcCoach_c::initBaseMtx() {
    setBaseMtx();
    fopAcM_SetMtx(this, mChHorse.mpModelMorf->getModel()->getBaseTRMtx());
}

inline void daNpcCoach_c::setHarnessMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(mChHarness.field_0x700.y);
    mDoMtx_stack_c::XrotM(mChHarness.field_0x700.x);
    mDoMtx_stack_c::ZrotM(mChHarness.field_0x700.z);
    mChHarness.mHarnessModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mChHarness.mMtx);
    mChHarness.field_0x6a0->Move();
    mChHarness.mHarnessModel->calc();
}

/* 809A43DC-809A46C4 006D7C 02E8+00 1/1 0/0 0/0 .text            setBaseMtx__12daNpcCoach_cFv */
void daNpcCoach_c::setBaseMtx() {
    setHorseMtx();
    setHarnessMtx();
    setCoachMtx();
    setDriverMtx();
    setYeliaMtx();
}

/* 809A46C4-809A48A8 007064 01E4+00 1/1 0/0 0/0 .text            initCoachBlazing__12daNpcCoach_cFv */
void daNpcCoach_c::initCoachBlazing() {
    cXyz sp28;

    mDoMtx_stack_c::copy(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_BODY));
    mDoMtx_stack_c::multVecZero(&sp28);

    mChCoach.field_0x5f8[0] = dComIfGp_particle_set(0x85F0, &sp28, &mChCoach.field_0x79a, NULL);
    if (mChCoach.field_0x5f8[0] != NULL) {
        mChCoach.field_0x5f8[0]->setGlobalRTMatrix(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_BODY));
        mChCoach.field_0x5f8[0]->setGlobalAlpha(0);
        mChCoach.field_0x5f8[0]->setRate(0.0f);
        mChCoach.field_0x5f8[0]->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
    }

    mChCoach.field_0x5f8[1] = dComIfGp_particle_set(0x85EF, &sp28, &mChCoach.field_0x79a, NULL);
    if (mChCoach.field_0x5f8[1] != NULL) {
        mChCoach.field_0x5f8[1]->setGlobalRTMatrix(mChCoach.mCoachModel->getAnmMtx(JNT_COACH_BODY));
        mChCoach.field_0x5f8[1]->setGlobalAlpha(0);
        mChCoach.field_0x5f8[1]->setRate(0.0f);
        mChCoach.field_0x5f8[1]->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
    }

    for (int i = 2; i < 10; i++) {
        mChCoach.field_0x5f8[i] = NULL;
    }

    mCoachBlazing = false;
}

/* 809A48A8-809A4B9C 007248 02F4+00 1/1 0/0 0/0 .text            __ct__12daNpcCoach_cFv */
daNpcCoach_c::daNpcCoach_c() {}

/* 809A51B0-809A51D0 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpcCoach_Method */
static actor_method_class l_daNpcCoach_Method = {
    (process_method_func)daNpcCoach_Create,
    (process_method_func)daNpcCoach_Delete,
    (process_method_func)daNpcCoach_Execute,
    (process_method_func)daNpcCoach_IsDelete,
    (process_method_func)daNpcCoach_Draw,
};

/* 809A51D0-809A5200 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_COACH */
extern actor_process_profile_definition g_profile_NPC_COACH = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_COACH,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcCoach_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  330,                    // mPriority
  &l_daNpcCoach_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
