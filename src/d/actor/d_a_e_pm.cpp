/**
 * @file d_a_e_pm.cpp
 * Enemy - Skull Kid
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_pm.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Instances.h"
#include "c/c_damagereaction.h"
#include "d/d_camera.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/actor/d_a_e_fs.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_obj_smw_stone.h"
#include "f_op/f_op_actor_enemy.h"

class daE_PM_HIO_c {
public:
    /* 80741EEC */ daE_PM_HIO_c();
    /* 8074BA68 */ virtual ~daE_PM_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mLampParticleScale;
    /* 0x0C */ f32 mGlowEffectScale;
    /* 0x10 */ f32 mEscapeRange;
    /* 0x14 */ s16 mGlowColor1R;
    /* 0x16 */ s16 mGlowColor1G;
    /* 0x18 */ s16 mGlowColor1B;
    /* 0x1A */ s16 mGlowColor2R;
    /* 0x1C */ s16 mGlowColor2G;
    /* 0x1E */ s16 mGlowColor2B;
    /* 0x20 */ s16 mGlowColor1A;
    /* 0x22 */ s16 mBossEscapeTimer;
    /* 0x24 */ s16 field_0x24;
    /* 0x26 */ s16 mAdditionalPuppetNum;
    /* 0x28 */ f32 mCreateTimer;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 mBossLightR;
    /* 0x3C */ f32 mBossLightG;
    /* 0x40 */ f32 mBossLightB;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
};

STATIC_ASSERT(sizeof(daE_PM_HIO_c) == 0x4C);

enum Action {
    /* 0x0 */ ACT_START,
    /* 0x1 */ ACT_WAIT,
    /* 0x2 */ ACT_ESCAPE,
    /* 0x3 */ ACT_CREATE,
    /* 0x4 */ ACT_DAMAGE,
    /* 0x5 */ ACT_DEATH,
    /* 0x6 */ ACT_DEMO,
};

enum Animation {
    /* 0x06 */ ANM_APPEAR01 = 6,
    /* 0x07 */ ANM_APPEAR02,
    /* 0x08 */ ANM_DAMAGE,
    /* 0x09 */ ANM_DIEA,
    /* 0x0A */ ANM_DIEB,
    /* 0x0B */ ANM_END,
    /* 0x0C */ ANM_FOGBLOW,
    /* 0x0D */ ANM_FOGBLOW_EN,
    /* 0x0E */ ANM_FOGBLOW_LP,
    /* 0x0F */ ANM_FOGBLOW_ST,
    /* 0x10 */ ANM_GLAD,
    /* 0x11 */ ANM_HIDE,
    /* 0x12 */ ANM_KYORO2,
    /* 0x13 */ ANM_MOVE,
    /* 0x14 */ ANM_OP,
    /* 0x15 */ ANM_RUN,
    /* 0x16 */ ANM_WAIT01,
    /* 0x17 */ ANM_WAIT02,
    /* 0x18 */ ANM_WALK,
};

enum Joint {
    /* 0x00 */ JNT_CENTER,
    /* 0x01 */ JNT_BACKBONE,
    /* 0x02 */ JNT_CLOAK1,
    /* 0x03 */ JNT_CLOAK2,
    /* 0x04 */ JNT_HEAD,
    /* 0x05 */ JNT_HAT1,
    /* 0x06 */ JNT_HAT2,
    /* 0x07 */ JNT_HAT3,
    /* 0x08 */ JNT_HAT4,
    /* 0x09 */ JNT_NECKLACE1,
    /* 0x0A */ JNT_NECKLACE2,
    /* 0x0B */ JNT_SHOULDER_L,
    /* 0x0C */ JNT_ARM_L1,
    /* 0x0D */ JNT_ARM_L2,
    /* 0x0E */ JNT_HAND_L,
    /* 0x0F */ JNT_SHOULDER_R,
    /* 0x10 */ JNT_ARM_R1,
    /* 0x11 */ JNT_ARM_R2,
    /* 0x12 */ JNT_HAND_R,
    /* 0x13 */ JNT_WAIST,
    /* 0x14 */ JNT_LEG_L1,
    /* 0x15 */ JNT_LEG_L2,
    /* 0x16 */ JNT_FOOT_L,
    /* 0x17 */ JNT_LEG_R1,
    /* 0x18 */ JNT_LEG_R2,
    /* 0x19 */ JNT_FOOT_R,
    /* 0x1A */ JNT_SKIRT,
};

/* 8074C384-8074C388 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8074C385 0003+00 data_8074C385 None */
static bool hioInit;

/* 8074C394-8074C3E0 000054 004C+00 11/13 0/0 0/0 .bss             l_HIO */
static daE_PM_HIO_c l_HIO;

/* 80741EEC-80741FB4 0000EC 00C8+00 1/1 0/0 0/0 .text            __ct__12daE_PM_HIO_cFv */
daE_PM_HIO_c::daE_PM_HIO_c() {
    field_0x4 = -1;
    mLampParticleScale = 1.3f;
    mGlowEffectScale = 1.0f;
    mEscapeRange = 400.0f;
    mGlowColor1R = 250;
    mGlowColor1G = 85;
    mGlowColor1B = 0;
    mGlowColor1A = 100;
    mGlowColor2R = 0;
    mGlowColor2G = 60;
    mGlowColor2B = 101;
    field_0x24 = 4;
    mAdditionalPuppetNum = 2;
    mBossEscapeTimer = 450;
    field_0x30 = 20.0f;
    mCreateTimer = 300.0f;
    field_0x2c = 180.0f;
    field_0x34 = 90.0f;
    mBossLightR = 255.0f;
    mBossLightG = 85.0f;
    mBossLightB = 0.0f;
    field_0x44 = 0.0f;
    field_0x48 = 4.0f;
}

/* 80741FB4-80742004 0001B4 0050+00 1/1 0/0 0/0 .text            DemoSkip__8daE_PM_cFi */
void daE_PM_c::DemoSkip(int param_0) {
    cDmr_SkipInfo = 1;
    dComIfGp_getVibration().StopQuake(0x1f);
    SkipChk();
}

/* 80742004-80742038 000204 0034+00 2/2 0/0 0/0 .text            DemoSkipCallBack__8daE_PM_cFPvi */
int daE_PM_c::DemoSkipCallBack(void* i_this, int param_1) {
    if (i_this != NULL) {
        static_cast<daE_PM_c*>(i_this)->DemoSkip(param_1);
        return 1;
    }
    return 0;
}

/* 80742038-80742388 000238 0350+00 1/1 0/0 0/0 .text            CreateHeap__8daE_PM_cFv */
int daE_PM_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("E_PM", 0x1d);
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL,
                                  (J3DAnmTransform*)dComIfG_getObjectRes("E_PM", 0x10),
                                  J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1,
                                  &mCreatureSound, 0x80000, 0x11020084);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }

    mpEyeAnm = new mDoExt_btpAnm();
    if (mpEyeAnm == NULL) {
        return 5;
    }
    if (!mpEyeAnm->init(mpMorf->getModel()->getModelData(),
                        (J3DAnmTexPattern*)dComIfG_getObjectRes("E_PM", 0x23),
                        TRUE, J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1)) {
        return 5;
    }

    model_data = (J3DModelData*)dComIfG_getObjectRes("E_PM", 0x1e);
    mpLampModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpLampModel == NULL) {
        return 0;
    }

    mpTrumpetMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_PM", 0x1f), NULL,
                                       NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_PM", 0x19),
                                       J3DFrameCtrl::EMode_NONE, 0.0f, 0, -1, 1, NULL,
                                       0x80000, 0x11000084);
    if (mpTrumpetMorf == NULL || mpTrumpetMorf->getModel() == NULL) {
        return 0;
    }

    mpGlowEffectMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_PM", 0x1c), NULL,
                                          NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_PM", 5),
                                          J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1, 1, NULL,
                                          0x80000, 0x11000084);
    if (mpGlowEffectMorf == NULL || mpGlowEffectMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 807423D0-807423F0 0005D0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daE_PM_c*>(i_this)->CreateHeap();
}

/* 807423F0-80742448 0005F0 0058+00 2/2 0/0 0/0 .text            s_pm_sub__FPvPv */
static void* s_pm_sub(void* i_proc, void* i_data) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_PM
                              && static_cast<daE_PM_c*>(i_proc)->SwitchChk() == 1) {
        return i_proc;
    }
    return NULL;
}

/* 80742448-807424C0 000648 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_PM_cFv */
void daE_PM_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x51}, 0x75}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            40.0f, // mRadius
            130.0f // mHeight
        } // mCyl
    };

    mCcStts.Init(0xff, 0xff, this);
    mCcCyl.Set(ccCylSrc);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetC(current.pos);
    mCcCyl.OffAtSetBit();
    mCcCyl.OnTgSetBit();
}

/* 807424C0-80742508 0006C0 0048+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_PM_cFv */
void daE_PM_c::setCcCylinder() {
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 80742508-807425B4 000708 00AC+00 1/1 0/0 0/0 .text ctrlJoint__8daE_PM_cFP8J3DJointP8J3DModel */
int daE_PM_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));
    if (jntNo == JNT_HEAD) {
        mDoMtx_stack_c::XrotM(mHeadAngleX);
        mDoMtx_stack_c::ZrotM(mHeadAngleZ);
    }
    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 807425B4-80742600 0007B4 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static int JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daE_PM_c* _this = (daE_PM_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80742600-80742674 000800 0074+00 6/6 0/0 0/0 .text            Particle_Set__8daE_PM_cFUs4cXyz */
void daE_PM_c::Particle_Set(u16 i_id, cXyz i_pos) {
    dComIfGp_particle_set(i_id, &i_pos, &tevStr, &shape_angle, NULL);
}

/* 80742674-80742720 000874 00AC+00 20/20 0/0 0/0 .text            SetAnm__8daE_PM_cFiiff */
void daE_PM_c::SetAnm(int i_anm, int i_attr, f32 i_morf, f32 i_rate) {
    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes("E_PM", i_anm);
    mpMorf->setAnm(bck, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    mAnm = i_anm;
}

static void dummy() {
    delete (cM3dGPla*)NULL;
}

/* 80742768-80742810 000968 00A8+00 2/2 0/0 0/0 .text way_bg_check2__FP8daE_PM_c4cXyz4cXyz */
static BOOL way_bg_check2(daE_PM_c* i_this, cXyz i_start, cXyz i_end) {
    dBgS_LinChk lin_chk;
    i_start.y += 30.0f;
    lin_chk.Set(&i_start, &i_end, i_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 80742810-807428A8 000A10 0098+00 1/1 0/0 0/0 .text            Yazirushi__8daE_PM_cFv */
void daE_PM_c::Yazirushi() {
    cXyz zero;
    MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_HEAD), *calc_mtx);
    zero.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&zero, &eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 40.0f;
}

/* 807428A8-80742958 000AA8 00B0+00 1/1 0/0 0/0 .text            SearchRndP__8daE_PM_cFv */
void daE_PM_c::SearchRndP() {
    int index;
    do {
        index = cM_rndF(mpPath->m_num - 1);
    } while (mPointIndex == index);
    mPointIndex = index;
    mPoint = dPath_GetPnt(mpPath, mPointIndex)->m_position;
}

namespace {

/* 8074C3E0-8074C3E4 0000A0 0004+00 2/5 0/0 0/0 .bss             s_dis__22@unnamed@d_a_e_pm_cpp@ */
static f32 s_dis;

/* 8074C3E4-8074C3E8 0000A4 0004+00 10/11 0/0 0/0 .bss s_LinkPos__22@unnamed@d_a_e_pm_cpp@ */
static cXyz* s_LinkPos;

/* 8074C3E8-8074C3EC 0000A8 0002+02 13/16 0/0 0/0 .bss s_TargetAngle__22@unnamed@d_a_e_pm_cpp@ */
static s16 s_TargetAngle;

}  // namespace

/* 80742958-80742C94 000B58 033C+00 1/1 0/0 0/0 .text            SearchFarP__8daE_PM_cFv */
// NONMATCHING regalloc, instruction order
void daE_PM_c::SearchFarP() {
    //! @bug best_distance is not initialized
    f32 best_distance;
    int best_index;
    dPnt* pnt = dPath_GetPnt(mpPath, 0);
    Vec pos;
    pos = pnt->m_position;
    cXyz point(pos.x, pos.y, pos.z);
    for (int i = 0; i < mpPath->m_num; i++) {
        pnt = dPath_GetPnt(mpPath, i);
        pos = pnt->m_position;
        point.set(pos.x, pos.y, pos.z);
        if (s_LinkPos->absXZ(point) > best_distance && mPointIndex != i) {
            best_index = i;
            best_distance = s_LinkPos->absXZ(point);
        }
    }
    pnt = dPath_GetPnt(mpPath, best_index);
    mPointIndex = best_index;
    mPoint = pnt->m_position;
}

/* 80742C94-80742E1C 000E94 0188+00 3/3 0/0 0/0 .text            SearchNearP__8daE_PM_cFv */
void daE_PM_c::SearchNearP() {
    //! @bug Whatever this function is supposed to do is almost certainly not what it actually does.
    dPnt* pnt = dPath_GetPnt(mpPath, 0);
    if (current.pos.absXZ(pnt->m_position) < 1.0e9f) {
        mPoint = pnt->m_position;
    }
}

/* 80742E1C-80742FB4 00101C 0198+00 2/2 0/0 0/0 .text            SearchNextPos__8daE_PM_cFv */
BOOL daE_PM_c::SearchNextPos() {
    cXyz point(mPoint.x, mPoint.y, mPoint.z);
    if (current.pos.abs(point) < 100.0f) {
        int index = mPointIndex + 1;
        if (index >= mpPath->m_num) {
            return TRUE;
        }
        mPointIndex = index;
        mPoint = dPath_GetPnt(mpPath, mPointIndex)->m_position;
    }
    return FALSE;
}

/* 80742FB4-807430C4 0011B4 0110+00 1/1 0/0 0/0 .text            SetGakkiEffect__8daE_PM_cFv */
void daE_PM_c::SetGakkiEffect() {
    static u16 gakki_eff_id[3] = {0x8201, 0x8202, 0x8203};
    for (int i = 0; i < 3; i++) {
        mGakkiParticleKey[i] = dComIfGp_particle_set(mGakkiParticleKey[i], gakki_eff_id[i],
                                                     &current.pos, NULL, NULL);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mGakkiParticleKey[i]);
        if (emitter != NULL) {
            MTXCopy(mpTrumpetMorf->getModel()->getAnmMtx(2), *calc_mtx);
            emitter->setGlobalRTMatrix(*calc_mtx);
        }
    }
}

/* 807430C4-80743210 0012C4 014C+00 4/4 0/0 0/0 .text            CameraSet__8daE_PM_cFv */
bool daE_PM_c::CameraSet() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camera_body = dCam_getBody();

    if (!eventInfo.checkCommandDemoAccrpt()) {
        fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
        return false;
    }

    camera->mCamera.Stop();
    mCamFovY = 65.0f;
    mCamCenter = camera_body->Center();
    mCamCenterTarget = mCamCenter;
    mCamCenterTarget2 = mCamCenter;
    mCamEye = camera_body->Eye();
    mCamEyeTarget = mCamEye;
    mCamEyeTarget2 = mCamEye;
    camera->mCamera.SetTrimSize(1);

    return true;
}

/* 80743210-80743294 001410 0084+00 5/5 0/0 0/0 .text            SetStopingCam__8daE_PM_cFv */
void daE_PM_c::SetStopingCam() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 80743294-807433E8 001494 0154+00 6/6 0/0 0/0 .text            SetStopCam__8daE_PM_cF4cXyzffs */
void daE_PM_c::SetStopCam(cXyz i_center, f32 i_offsetXZ, f32 i_offsetY, s16 i_angle) {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz offset(0.0f, i_offsetY, i_offsetXZ);
    cXyz eye(0.0f, 0.0f, 0.0f);
    mCamCenter.set(i_center.x, i_center.y, i_center.z);
    mCamCenterTarget = mCamCenter;
    mCamCenterTarget2 = mCamCenter;
    cLib_offsetPos(&eye, &mCamCenter, i_angle, &offset);
    mCamEye = eye;
    mCamEyeTarget = eye;
    mCamEyeTarget2 = eye;
    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 807433E8-80743524 0015E8 013C+00 1/1 0/0 0/0 .text            SetMoveCam2__8daE_PM_cFff */
void daE_PM_c::SetMoveCam2(f32 i_scale, f32 i_step) {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cLib_addCalcPos(&mCamCenterTarget2, mCamCenterTarget, i_scale * 2.0f, i_step * 2.0f, 0.0f);
    cLib_addCalcPos(&mCamCenter, mCamCenterTarget2, i_scale, i_step, 0.0f);
    cLib_addCalcPos(&mCamEyeTarget2, mCamEyeTarget, i_scale * 2.0f, 160.0f, 0.0f);
    cLib_addCalcPos(&mCamEye, mCamEyeTarget2, i_scale, 80.0f, 0.0f);
    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 80743524-80743600 001724 00DC+00 9/9 0/0 0/0 .text            SetMoveCam__8daE_PM_cFff */
void daE_PM_c::SetMoveCam(f32 i_scale, f32 i_step) {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cLib_addCalcPos(&mCamCenter, mCamCenterTarget, i_scale, i_step, 0.0f);
    cLib_addCalcPos(&mCamEye, mCamEyeTarget, i_scale, 100.0f, 0.0f);
    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 80743600-807436A4 001800 00A4+00 7/7 0/0 0/0 .text            SetReleaseCam__8daE_PM_cFv */
void daE_PM_c::SetReleaseCam() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera->mCamera.Reset(mCamCenter, mCamEye);
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);
    dComIfGp_event_reset();
}

/* 807436A4-80743D10 0018A4 066C+00 1/1 0/0 0/0 .text            Ap_StartAction__8daE_PM_cFv */
void daE_PM_c::Ap_StartAction() {
    cXyz offset;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz player_pos(-10728.0f, s_LinkPos->y, 17052.0f);
    cXyz player_offset(0.0f, 0.0f, 0.0f);
    daPy_py_c* player = daPy_getPlayerActorClass();
    daSmWStone_c* stone;
    bool bVar3 = false;

    switch (mMode) {
    case 0:
        if (mAppear) {
            bVar3 = true;
        } else if (mSecondEncounter && fopAcM_searchPlayerDistanceXZ(this) < 800.0f) {
            bVar3 = true;
        }

        if (bVar3 && CameraSet()) {
            if (dComIfG_play_c::getLayerNo(0) == 2) {
                player_pos.set(-10477.0f, mAcch.GetGroundH(), 17710.0f);
            } else {
                player_offset.set(0.0f, 0.0f, 1500.0f);
                cLib_offsetPos(&player_pos, &current.pos, shape_angle.y, &player_offset);
                player_pos.y = mAcch.GetGroundH() + 100.0f;
            }
            mMode++;
            mTimer[0] = 1;
            player->changeOriginalDemo();
            player->changeDemoMode(4, 0, 0, 0);
            player->setPlayerPosAndAngle(&player_pos, shape_angle.y + 0x8000, 0);
            field_0x6ff = true;
        }
        break;

    case 1:
        if (fopAcM_SearchByName(PROC_Obj_SmWStone, (fopAc_ac_c**)&stone) && stone != NULL) {
            stone->deleteStone();
        }

        if (mTimer[0] == 0) {
            current.pos.y -= 8500.0f;
            mMode++;
            mTimer[0] = 110;
            offset.set(0.0f, 100.0f, 600.0f);
            cLib_offsetPos(&mCamEyeTarget, &current.pos, shape_angle.y, &offset);
            mCamEyeTarget.y = mAcch.GetGroundH() + 100.0f;
            mCamEye = mCamEyeTarget;
            mCamEyeTarget2 = mCamEyeTarget;
            offset.set(0.0f, 200.0f, 0.0f);
            cLib_offsetPos(&mCamCenterTarget, &current.pos, shape_angle.y, &offset);
            mCamCenterTarget.y = mAcch.GetGroundH() + 200.0f;
            mCamCenter = mCamCenterTarget;
            mCamCenterTarget2 = mCamCenterTarget;
            camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
        }
        break;

    case 2:
        if (mTimer[0] == 0) {
            mTargetAngleY = shape_angle.y;
            mMode++;
            gravity = -5.0f;
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            Particle_Set(0x880D, current.pos);
        }

        if (mTimer[0] < 90) {
            mCamCenterTarget.y = current.pos.y - 900.0f;
            SetMoveCam2(0.025f, 50.0f);
        } else {
            SetStopingCam();
        }
        break;

    case 3:
        mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &current.pos, &tevStr,
                                             &current.angle, &scale, 0xff, NULL, -1,
                                             NULL, NULL, NULL);
        
        if (mAnm == ANM_APPEAR02 && mpMorf->isStop()) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_LAUGH, -1);
        }
        
        if (mCamCenter.y >= current.pos.y) {
            mCamCenterTarget.y = current.pos.y;
        }
        
        if (mAcch.ChkGroundHit() && mTimer[0] == 0) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mTargetHeadAngleX = 0x2000;
            mTimer[0] = 40;
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        } else if (mTimer[0] == 1) {
            mTargetHeadAngleX = 0;
            mMode++;
            mTimer[0] = 30;
            offset.set(0.0f, 0.0f, -300.0f);
            cXyz eye = mCamEyeTarget;
            cLib_offsetPos(&mCamEyeTarget, &eye, shape_angle.y, &offset);
            mCamCenterTarget.y = current.pos.y + 100.0f;
        }
        
        if (mCamCenterTarget.y <= mAcch.GetGroundH() + 100.0f) {
            mCamCenterTarget.y = mAcch.GetGroundH() + 100.0f;
        }
        mCamEyeTarget.y = mAcch.GetGroundH() + 100.0f;
        SetMoveCam2(0.15f, 50.0f);
        break;

    case 4:
        if (mTimer[0] == 0) {
            mAction = ACT_CREATE;
            mMode = 0;
        }
        SetMoveCam2(0.1f, 50.0f);
        break;
    }
}

/* 80743D10-80743D8C 001F10 007C+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_proc, void* i_data) {
    for (int i = 0; i < 5; i++) {
        if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_PM && i_proc != NULL
                                  && static_cast<daE_PM_c*>(i_proc)->SwitchChk() == 0) {
            return i_proc;
        }
    }
    return NULL;
}

/* 80743D8C-807444F0 001F8C 0764+00 1/2 0/0 0/0 .text            Ap_CreateAction__8daE_PM_cFv */
void daE_PM_c::Ap_CreateAction() {
    cXyz vec1;
    cXyz vec2(500.0f, 150.0f, 0.0f);
    cXyz vec3(500.0f, 150.0f, 300.0f);
    cXyz vec4(0.0f, 0.0f, 0.0f);
    cXyz vec5(0.0f, 0.0f, 0.0f);

    switch (mMode) {
    case 0:
        if (mAnm != ANM_FOGBLOW_ST) {
            SetAnm(ANM_FOGBLOW_ST, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_FOGBLOW, -1);
        } else if (mpMorf->isStop() && mAnm == ANM_FOGBLOW_ST) {
            SetAnm(ANM_FOGBLOW_LP, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mTimer[0] = 80;
            mMode++;
            mpTrumpetMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_PM", 0x19),
                                    J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f, 0.0f, -1.0f, NULL);
            vec2.set(0.0f, 0.0f, 150.0f);
            vec5 = mCamEyeTarget;
            cLib_offsetPos(&mCamEyeTarget, &vec5, shape_angle.y, &vec2);
        }
        break;

    case 1:
        mCreatureSound.startCreatureSoundLevel(Z2SE_EN_PM_TRUMPET, 0, -1);
        
        if (mTimer[0] == 2 && mAnm == ANM_FOGBLOW_LP) {
            vec2.set(500.0f, 150.0f, 0.0f);
            mCamCenter.set(-11239.0f, 1850.0f, 16932.0f);
            mCamCenterTarget = vec2;
            mCamEye.set(-10954.0f, 1900.0f, 17025.0f);
            mCamEyeTarget = mCamEye;
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::multVec(&vec2, &vec2);
            SetStopCam(vec2, 300.0f, 50.0f, shape_angle.y);
            mTimer[1] = 10;
            mPoint = dPath_GetPnt(mpPath, 0)->m_position;
            mDoorAction = 0;
        } else if (mTimer[1] == 1) {
            for (int i = 0; i < 2; i++) {
                vec5.set(i * 100.0f + 500.0f, 150.0f, -(i * 100.0f));
                cLib_offsetPos(&vec2, &current.pos, shape_angle.y, &vec5);
                mPuppetID[i] = fopAcM_createChild(PROC_E_FS, fopAcM_GetID(this), 0, &vec2,
                                                  fopAcM_GetRoomNo(this), &shape_angle,
                                                  NULL, -1, NULL);
            }

            mTimer[0] = 100;
            mMode++;
        }

        SetGakkiEffect();
        break;

    case 2:
        mCreatureSound.startCreatureSoundLevel(Z2SE_EN_PM_TRUMPET, 0, -1);

        if (mTimer[0] == 1) {
            vec3.set(-300.0f, 150.0f, 300.0f);
            vec2.set(-300.0f, 150.0f, 0.0f);
            vec4.set(200.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::multVec(&vec2, &vec2);
            mDoMtx_stack_c::multVec(&vec4, &vec4);
            SetStopCam(vec2, 300.0f, 50.0f, shape_angle.y);
            current.pos = vec4;
            mTimer[1] = 10;
        } else if (mTimer[1] == 1) {
            for (int i = 2; i < 4; i++) {
                vec5.set(-500.0f - (i - 2) * 100.0f, 150.0f, -((i - 2) * 100.0f));
                cLib_offsetPos(&vec2, &current.pos, shape_angle.y, &vec5);
                mPuppetID[i] = fopAcM_createChild(PROC_E_FS, fopAcM_GetID(this), 0, &vec2,
                                                  fopAcM_GetRoomNo(this), &shape_angle,
                                                  NULL, -1, NULL);
            }

            mDoorAction = 2;
            current.pos.set(mPoint.x, mPoint.y, mPoint.z);
            old.pos = current.pos;
            mTimer[0] = 100;
            mMode++;
        }

        mpTrumpetMorf->setPlaySpeed(0.0f);
        break;

    case 3:
        if (mTimer[0] == 0) {
            field_0x618 = 1;
            mAction = ACT_ESCAPE;
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 1.0f, 1.0f);
            current.pos.set(mPoint.x, mPoint.y, mPoint.z);
            old.pos = current.pos;
            vec1.set(mPoint.x, mPoint.y + 120.0f, mPoint.z);
            SetStopCam(vec1, 300.0f, -70.0f, shape_angle.y + 0x1000);
            shape_angle.y += -0x4000;
            current.angle.y += -0x4000;
            mTargetAngleY = shape_angle.y;
            mTimer[0] = 50;
            mMode = 0;
            mDoorAction = 2;
        }
        break;
    }

    SetMoveCam(0.1f, 50.0f);
}

/* 807444F0-80744790 0026F0 02A0+00 1/1 0/0 0/0 .text            Ap_EscapeAction__8daE_PM_cFv */
void daE_PM_c::Ap_EscapeAction() {
    cXyz point;
    SetMoveCam(0.1f, 50.0f);

    switch (mMode) {
    case 0:
        mBossLightOn = true;
        mTargetHeadAngleX = s_TargetAngle;
        cLib_addCalcAngleS2(&mHeadAngleZ, -0x500, 4, 0x600);
        
        if (mTimer[0] == 0) {
            SetAnm(ANM_RUN, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mMode++;
            mTargetSpeed = 13.0f;
        }
        
        mDoorAction = 0;
        break;

    case 1:
        if (mpMorf->getFrame() > 5.0f) {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
        } else {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        }
        
        point.set(mPoint.x, mPoint.y, mPoint.z);
        mTargetAngleY = cLib_targetAngleY(&current.pos, &point);
        cLib_addCalc2(&speedF, mTargetSpeed, 0.05f, 10.0f);
        
        if (mPointIndex == 7 && mDoorAction == 0) {
            mCamCenter = *s_LinkPos;
            mCamCenter.y += 200.0f;
            mCamEye.set(-9881.0f, 1892.0f, 17971.0f);
            SetReleaseCam();
            mDoorAction = 1;
        }

        if (SearchNextPos()) {
            fopAcM_delete(this);
            if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
            }
        }
        break;

    case 2:
        if (mTimer[0] == 0) {
            daE_PM_c* other = (daE_PM_c*)fpcM_Search(s_pm_sub, this);
            if (other != NULL) {
                for (int i = 0; i < 4; i++) {
                    other->mPuppetID[i] = mPuppetID[i];
                }
            }
            fopAcM_delete(this);
        }
        break;
    }
}

/* 80744790-80744878 002990 00E8+00 1/1 0/0 0/0 .text            AppearAction__8daE_PM_cFv */
void daE_PM_c::AppearAction() {
    mTargetHeadAngleX = 0;

    switch (mAction) {
    case ACT_START:
        Ap_StartAction();
        break;
    case ACT_CREATE:
        Ap_CreateAction();
        break;
    case ACT_ESCAPE:
        Ap_EscapeAction();
        shape_angle.y = current.angle.y;
        break;
    }

    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 5, 0x1000);
    cLib_addCalcAngleS2(&mHeadAngleX, mTargetHeadAngleX, 4, 0x1000);
    if (mAction != ACT_START || mMode != 0) {
        dComIfGp_getEvent().onSkipFade();
        dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
    }
}

/* 80744878-80744DA0 002A78 0528+00 1/1 0/0 0/0 .text            DemoBeforeEscape__8daE_PM_cFv */
void daE_PM_c::DemoBeforeEscape() {
    cXyz vec1, vec2;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mDemoMode) {
    case 0:
        if (CameraSet()) {
            mDemoMode++;
            mDoorAction = 2;
            player->onPlayerNoDraw();
            player->onPlayerShadowNoDraw();
        }

        if (mStage == 1) {
            for (int i = 0; i < 4; i++) {
                e_fs_class* puppet;
                if (fopAcM_SearchByID(mPuppetID[i], (fopAc_ac_c**)&puppet)) {
                    puppet->mAction = e_fs_class::ACT_END;
                    puppet->mMode = 0;
                }
            }
        }
        break;

    case 1: {
        fopAcM_OffStatus(this, 0);
        mPuppetDelete = 1;
        attention_info.flags = 0;
        speedF = 0.0f;
        SetAnm(ANM_DAMAGE, J3DFrameCtrl::EMode_NONE, 5.0f, 0.5f);
        mDemoMode++;
        vec1.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        s16 angle = cLib_targetAngleY(&current.pos, s_LinkPos);
        SetStopCam(vec1, 300.0f, 50.0f, angle);
        vec2.set(0.0f, 0.0f, 0.0f);

        if (way_bg_check2(this, mCamCenter, mCamEye)) {
            for (int i = 0; i < 4; i++) {
                //! @bug probably supposed to be angle += 0x4000, though this ends up more or less working
                angle += 0x4000 * i;
                SetStopCam(vec1, 300.0f, 50.0f, angle);
                if (!way_bg_check2(this, mCamCenter, mCamEye)) {
                    break;
                }
            }
        }
        break;
    }

    case 2:
        if (mpMorf->isStop()) {
            mDemoMode++;
            SetAnm(ANM_HIDE, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_FADEOUT, -1);
        }
        SetStopingCam();
        break;

    case 3:
        SetMoveCam(0.1f, 50.0f);
        MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
        vec2.set(0.0f, -30.0f, 0.0f);
        MtxPosition(&vec2, &vec2);
        mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec2, &tevStr, &current.angle,
                                             &scale, 0xff, NULL, -1, NULL, NULL, NULL);
        
        if (mpMorf->isStop()) {
            if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
            }
            Particle_Set(0x880D, vec2);
            mMode++;
            mDemoMode = 0;
            mTimer[0] = 20;
            SearchNearP();
            current.pos.set(mPoint.x, mPoint.y + 15000.0f, mPoint.z);
            old.pos = current.pos;
            gravity = 0.0f;
            mDoorAction = 2;
            return;
        }

        mCamCenterTarget.y = vec2.y;
        break;
    }

    mTargetAngleY = cLib_targetAngleY(&current.pos, &mCamEye);
}

/* 80744DA0-807453F4 002FA0 0654+00 1/1 0/0 0/0 .text            DemoAfterEscape__8daE_PM_cFv */
void daE_PM_c::DemoAfterEscape() {
    cXyz vec1, vec2;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mDemoMode) {
    case 0:
        SetMoveCam(0.1f, 50.0f);
        mDoorAction = 2;
        if (mTimer[0] == 0) {
            SearchNearP();
            mDemoMode++;
            mTimer[0] = 10;
            Vec pnt = dPath_GetPnt(mpPath, mPointIndex + 1)->m_position;
            vec2.set(pnt.x, pnt.y, pnt.z);
            vec1.set(mPoint.x, mPoint.y + 150.0f, mPoint.z);
            s16 angle = cLib_targetAngleY(&vec2, &vec1);
            SetStopCam(vec1, 400.0f, -100.0f, angle);
        }
        break;

    case 1:
        if (mTimer[0] == 0) {
            Vec pnt = dPath_GetPnt(mpPath, mPointIndex + 1)->m_position;
            vec2.set(pnt.x, pnt.y, pnt.z);
            s16 angle = cLib_targetAngleY(&current.pos, &vec2);
            shape_angle.y = angle + 0x4000;
            current.angle.y = shape_angle.y;
            mTargetAngleY = shape_angle.y;
            current.pos.set(mPoint.x, mPoint.y + 200.0f, mPoint.z);
            old.pos = current.pos;
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mDemoMode++;
            gravity = -3.0f;
            speed.y = 0.0f;
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FADEIN, 0, -1);
        }
        SetStopingCam();
        break;

    case 2:
        mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &current.pos, &tevStr,
                                             &current.angle, &scale, 0xff, NULL,
                                             -1, NULL, NULL, NULL);
        mCamCenterTarget.y = current.pos.y + 50.0f;
        if (mAcch.ChkGroundHit()) {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mDemoMode++;
            mTimer[0] = 50;
            mBossLightOn = true;
        }
        mTargetAngleY = s_TargetAngle + 0x4000;
        SetStopingCam();
        break;

    case 3: {
        Vec pnt = dPath_GetPnt(mpPath, mPointIndex + 1)->m_position;
        vec1.set(pnt.x, pnt.y, pnt.z);
        vec2 = *s_LinkPos - vec1;

        if (mpMorf->isStop() && mAnm == ANM_APPEAR02) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            player->offPlayerNoDraw();
            player->offPlayerShadowNoDraw();
        }

        s16 angle = -cM_atan2s(vec2.y, JMAFastSqrt(vec2.x * vec2.x + vec2.z * vec2.z));
        cLib_addCalcAngleS2(&mHeadAngleZ, angle, 2, 0x600);

        if (mTimer[0] < 35) {
            mTargetHeadAngleX = s_TargetAngle - shape_angle.y;
            if (mTargetHeadAngleX > 0x4000) {
                mTargetHeadAngleX = 0x4000;
            } else if (mTargetHeadAngleX < -0x4000) {
                mTargetHeadAngleX = -0x4000;
            }
        }

        if (mTimer[0] == 0) {
            mDemoMode++;
            mTargetSpeed = 13.0f;
            SetAnm(ANM_RUN, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        }

        SetStopingCam();
        break;
    }

    case 4:
        if (mpMorf->getFrame() > 5.0f) {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
        } else {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        }

        vec1.set(mPoint.x, mPoint.y, mPoint.z);
        if (SearchNextPos()) {
            fopAcM_delete(this);
        }
        mTargetAngleY = cLib_targetAngleY(&current.pos, &vec1);
        cLib_addCalcAngleS2(&mHeadAngleZ, 0, 4, 0x600);
        cLib_addCalc2(&speedF, mTargetSpeed, 0.05f, 10.0f);

        if (mPointIndex != 4) {
            SetStopingCam();
            mDoorAction = 0;
        } else if (mDoorAction == 0) {
            SetReleaseCam();
            mDoorAction = 1;
        }
        break;
    }

    attention_info.position.y += 10000.0f;
}

/* 807453F4-80745438 0035F4 0044+00 1/1 0/0 0/0 .text            DemoMoveAction__8daE_PM_cFv */
void daE_PM_c::DemoMoveAction() {
    switch (mMode) {
    case 0:
        DemoBeforeEscape();
        break;
    case 1:
        DemoAfterEscape();
        break;
    }
}

/* 80745438-807455F4 003638 01BC+00 1/1 0/0 0/0 .text            WaitAction__8daE_PM_cFv */
void daE_PM_c::WaitAction() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        mTimer[0] = (u8)(cM_rndFX(50.0f) + 200.0f);
        mMode++;
        break;

    case 1: {
        s16 angle = shape_angle.y - s_TargetAngle;
        if (s_dis < l_HIO.mEscapeRange && angle > -0x4000 && angle < 0x4000) {
            mMode++;
            mTimer[0] = 10;
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        }
        break;
    }

    case 2:
        mTargetHeadAngleX = s_TargetAngle - shape_angle.y;
        if (mTargetHeadAngleX > 0x4000) {
            mTargetHeadAngleX = 0x4000;
        } else if (mTargetHeadAngleX < -0x4000) {
            mTargetHeadAngleX = -0x4000;
        }

        if (mTimer[0] == 0) {
            mAction = ACT_ESCAPE;
            mMode = 0;
        }
        break;
    }

    if (mAnm == ANM_GLAD) {
        mCreatureSound.startCreatureSoundLevel(0x7FFFF, 0, -1);
    }

    if (mTimer[2] == 20) {
        mAction = ACT_CREATE;
        mMode = 0;
    }
}

/* 807455F4-807458F8 0037F4 0304+00 1/1 0/0 0/0 .text            GroundCheck__8daE_PM_cFv */
void daE_PM_c::GroundCheck() {
    mTargetAngleY = s_TargetAngle + 0x8000;

    cXyz vec1(0.0f, 100.0f, 200.0f);
    cXyz vec2(0.0f, 0.0f, 0.0f);
    cXyz vec3(0.0f, 0.0f, 0.0f);
    cXyz vec4(0.0f, 0.0f, 0.0f);
    cXyz vec5(0.0f, 100.0f, 400.0f);
    cXyz vec6;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&vec1, &vec3);
    mDoMtx_stack_c::multVec(&vec5, &vec4);

    dBgS_ObjGndChk gnd_chk;
    dBgS_LinChk lin_chk;
    gnd_chk.SetPos(&vec3);
    vec3.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    gnd_chk.SetPos(&vec4);
    vec4.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if (vec3.y != -1.0e9f) {
        if (current.pos.y - vec3.y > 50.0f) {
            speedF = 0.0f;
            mTargetSpeed = 0.0f;
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            for (int i = 0; i < 4; i++) {
                mTargetAngleY = current.angle.y + (i + 1) * 0x4000;
                vec1.set(0.0f, 50.0f, 300.0f);
                vec6.set(0.0f, -50.0f, 300.0f);
                cLib_offsetPos(&vec2, &current.pos, mTargetAngleY, &vec1);
                cLib_offsetPos(&vec5, &current.pos, mTargetAngleY, &vec6);
                lin_chk.Set(&vec2, &vec5, NULL);
                if (dComIfG_Bgsp().LineCross(&lin_chk)) break;
            }
            mMode = 10;
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        } else if (current.pos.y - vec4.y > 50.0f) {
            mTargetAngleY = s_TargetAngle;
        }
    } else {
        mTargetAngleY = s_TargetAngle;
    }
}

/* 80745970-80745C44 003B70 02D4+00 1/1 0/0 0/0 .text            EscapeAction__8daE_PM_cFv */
void daE_PM_c::EscapeAction() {
    switch (mMode) {
    case 0:
        SetAnm(ANM_RUN, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        mTargetSpeed = 13.0f;
        speedF = 10.0f;
        mMode++;
        mTimer[0] = cM_rndF(50.0f) + 100.0f;
        GroundCheck();
        break;

    case 1:
        if (mpMorf->getFrame() > 5.0f) {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
        } else {
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        }

        if (mTimer[0] == 0) {
            mTimer[0] = cM_rndF(30.0f) + 30.0f;
            mMode++;
        }

        GroundCheck();
        break;

    case 2:
        mTargetHeadAngleX = 0x4000;

        if (mTimer[0] == 0) {
            mTimer[0] = cM_rndF(30.0f) + 30.0f;
            mMode--;
        }

        GroundCheck();
        break;

    case 3:
        if (mTimer[1] == 0) {
            mMode = 0;
            mTimer[1] = 40;
        }
        break;

    case 10: {
        int angle = current.angle.y - mTargetAngleY;
        if (angle > -0x10 && angle < 0x10) {
            mMode = 0;
            mTimer[1] = 100;
        }
        cLib_chaseAngleS(&current.angle.y, mTargetAngleY, 0x500);
        break;
    }
    }

    if (s_dis > l_HIO.mEscapeRange + 200.0f) {
        mTargetSpeed = 5.0f;
        if (speedF < 5.8f) {
            mTargetAngleY = s_TargetAngle;
        }
        if (speedF < 5.5f) {
            mAction = ACT_WAIT;
            mMode = 0;
            speedF = 0.0f;
        }
    } else {
        mTargetSpeed = 12.0f;
    }

    cLib_addCalc2(&speedF, mTargetSpeed, 0.05f, 10.0f);
    field_0x6fa = 0x1000;

    if (mTimer[2] == 20) {
        mAction = ACT_CREATE;
        mMode = 0;
    }
}

/* 80745C44-80745DBC 003E44 0178+00 1/1 0/0 0/0 .text            DeathAction__8daE_PM_cFv */
void daE_PM_c::DeathAction() {
    switch (mMode) {
    case 0:
        attention_info.flags = 0;
        speedF = 0.0f;
        SetAnm(ANM_DAMAGE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mMode++;
        break;

    case 1:
        if (mpMorf->getFrame() > 20.0f) {
            mMode++;
            SetAnm(ANM_HIDE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_FADEOUT, -1);
        }
        break;

    case 2:
        if (mpMorf->isStop()) {
            if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
            }
            mAction = ACT_DEMO;
            mMode = 0;
            mDemoMode = 0;
        }
        break;
    }

    mTargetAngleY = s_TargetAngle;
}

/* 80745DBC-80745ED0 003FBC 0114+00 2/1 0/0 0/0 .text            Action__8daE_PM_cFv */
void daE_PM_c::Action() {
    mTargetHeadAngleX = 0;

    switch (mAction) {
    case ACT_START:
        StartAction();
        ObjHit();
        break;
    case ACT_CREATE:
        CreateAction();
        ObjHit();
        break;
    case ACT_WAIT:
        WaitAction();
        CreateChk();
        ObjHit();
        break;
    case ACT_ESCAPE:
        EscapeAction();
        CreateChk();
        ObjHit();
        break;
    case ACT_DAMAGE:
        DamageAction();
        ObjHit();
        break;
    case ACT_DEATH:
        DeathAction();
        break;
    case ACT_DEMO:
        DemoMoveAction();
        break;
    }

    if (mAction != ACT_DEMO) {
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x500);
    } else {
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 5, 0x1000);
    }
    cLib_addCalcAngleS2(&mHeadAngleX, mTargetHeadAngleX, 4, 0x1000);
    shape_angle.y = current.angle.y;
}

/* 80745ED0-80746624 0040D0 0754+00 2/1 0/0 0/0 .text            DemoBossStart2__8daE_PM_cFv */
void daE_PM_c::DemoBossStart2() {
    bool bVar1 = false;
    cXyz vec1, vec2;

    if (mDemoMode != 0) {
        SetMoveCam(0.1f, 50.0f);
    } else {
        SetMoveCam(0.03f, 50.0f);
    }

    mTargetAngleY = s_TargetAngle;

    switch (mDemoMode) {
    case 0:
        current.pos.y = 10000.0f;
        old.pos.y = current.pos.y;
        if (mTimer[0] < 150) {
            mCamCenterTarget.y += 3.0f;
            if (mTimer[0] == 0) {
                mDemoMode++;
                current.pos.y = 2500.0f;
                old.pos = current.pos;
                SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
                speed.y = 0.0f;
                gravity = -3.0f;
                Particle_Set(0x880D, current.pos);
            }
        }
        break;

    case 1:
        if (mAnm == ANM_APPEAR01) {
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &current.pos, &tevStr,
                                                 &current.angle, &scale, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
        }
        mCamCenterTarget.y = current.pos.y + 100.0f;

        if (mAcch.ChkGroundHit() && mAnm == ANM_APPEAR01) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        } else if (mpMorf->isStop() && mAnm == ANM_APPEAR02) {
            SetAnm(ANM_OP, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_OP, -1);
            mDemoMode++;
            mBossLightOn = true;
        }
        break;

    case 2:
        if (mpMorf->isStop()) {
            mDemoMode++;

        } else {
            vec1.set(0.0f, 50.0f, 300.0f);
            cLib_offsetPos(&vec2, &current.pos, s_TargetAngle, &vec1);
            cLib_addCalcPos2(&mCamEyeTarget, vec2, 0.5f, 20.0f);

            if (mpMorf->checkFrame(106.0f) || mpMorf->checkFrame(124.0f)) {
                bVar1 = true;
                vec1.set(50.0f, -50.0f, 0.0f);
                dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            } else if (mpMorf->checkFrame(115.0f) || mpMorf->checkFrame(133.0f)) {
                bVar1 = true;
                vec1.set(-50.0f, -50.0f, 0.0f);
                dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            } else if (mpMorf->checkFrame(146.0f) || mpMorf->checkFrame(159.0f)
                    || mpMorf->checkFrame(173.0f) || mpMorf->checkFrame(184.0f)) {
                bVar1 = true;
                vec1.set(0.0f, -80.0f, 0.0f);
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (bVar1) {
                cXyz pos = mCamEyeTarget;
                cLib_offsetPos(&mCamEyeTarget, &pos, s_TargetAngle, &vec1);
            }
        }
        break;

    case 3:
        if (mTimer[0] == 0) {
            SetAnm(ANM_FOGBLOW_ST, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_FOGBLOW, -1);
            mDemoMode++;
            for (int i = 0; i < mPuppetNum; i++) {
                mPuppetID[i] = -1;
            }
        }
        break;

    case 4:
        vec1.set(current.pos.x, current.pos.y, current.pos.z);
        GakkiLoopAction(vec1, 400.0f);

        if (mAnm == ANM_FOGBLOW_EN) {
            mMode--;
            mDemoMode++;
        }

        if (mAnm == ANM_FOGBLOW_LP) {
            vec1.set(mPoint.x, mPoint.y, mPoint.z);
            vec2.set(0.0f, 100.0f, 1500.0f);
            cLib_offsetPos(&mCamEyeTarget, &current.pos, s_TargetAngle, &vec2);
        }
        break;

    case 5:
        if (mpMorf->isStop()) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mpTrumpetMorf->setPlaySpeed(0.0f);
            mDemoMode++;
            mTimer[0] = 70;
        }
        break;

    case 6:
        if (mTimer[0] == 0) {
            if (mDoorAction == 0) {
                SetReleaseCam();
                mDoorAction = 1;
                mTimer[3] = l_HIO.mBossEscapeTimer;
            }

            mAction = ACT_WAIT;
            mMode = 0;
            mDemoMode = 0;
        }
        break;
    }

    if (mDemoMode != 0) {
        mTargetAngleY = s_TargetAngle;
    }
}

/* 80746624-80747194 004824 0B70+00 2/1 0/0 0/0 .text            DemoBossStart__8daE_PM_cFv */
void daE_PM_c::DemoBossStart() {
    bool bVar1 = false;
    cXyz vec1, vec2;
    if (mDemoMode > 2) {
        mTargetAngleY = cLib_targetAngleY(&current.pos, s_LinkPos);
    }

    switch (mDemoMode) {
    case 0:
        if (mTimer[0] == 100) {
            vec1.set(0.0f, 50.0f, 300.0f);
            cLib_offsetPos(&mCamEyeTarget, &current.pos, shape_angle.y, &vec1);
        }

        if (mAnm == ANM_WAIT01 && mTimer[0] == 0) {
            SetAnm(ANM_OP, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_OP, -1);
            mDemoMode++;
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 1:
        if (mpMorf->isStop()) {
            SetAnm(ANM_HIDE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_FADEOUT, -1);
            mCamCenterTarget.y += 100.0f;
            mDemoMode++;
            mBossLightOn = true;

        } else {
            vec1.set(0.0f, 50.0f, 240.0f);
            cLib_offsetPos(&vec2, &current.pos, shape_angle.y, &vec1);
            cLib_addCalcPos2(&mCamEyeTarget, vec2, 0.5f, 20.0f);

            if (mpMorf->checkFrame(106.0f) || mpMorf->checkFrame(124.0f)) {
                bVar1 = true;
                vec1.set(50.0f, -50.0f, 0.0f);
                dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            } else if (mpMorf->checkFrame(115.0f) || mpMorf->checkFrame(133.0f)) {
                bVar1 = true;
                vec1.set(-50.0f, -50.0f, 0.0f);
                dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            } else if (mpMorf->checkFrame(146.0f) || mpMorf->checkFrame(159.0f)
                    || mpMorf->checkFrame(173.0f) || mpMorf->checkFrame(184.0f)) {
                bVar1 = true;
                vec1.set(0.0f, -80.0f, 0.0f);
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (bVar1) {
                cXyz pos = mCamEyeTarget;
                cLib_offsetPos(&mCamEyeTarget, &pos, shape_angle.y, &vec1);
            }
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 2:
        if (mpMorf->isStop() && mAnm == ANM_HIDE) {
            mPoint = dPath_GetPnt(mpPath, 1)->m_position;
            current.pos.set(mPoint.x, mPoint.y + 10000.0f, mPoint.z);
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mTimer[1] = 15;
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
            vec1.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec1, &vec1);
            Particle_Set(0x880D, vec1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FADEIN, 0, -1);

        } else if (mAnm == ANM_HIDE) {
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
            vec1.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec1, &vec1);
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec1, &tevStr,
                                                 &current.angle, &scale, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);

        } else if (mAnm == ANM_APPEAR01 && mTimer[1] == 0) {
            mDemoMode++;
            current.pos.set(mPoint.x, mPoint.y + 500.0f, mPoint.z);
            cXyz pos(mPoint.x, mPoint.y + 100.0f, mPoint.z);
            mCamCenterTarget = pos;
            mCamCenterTarget.y += 400.0f;
            gravity = -3.0f;
            speed.y = 0.0f;
            mTimer[1] = 30;
            mCamCenter = mCamCenterTarget;
            vec1.set(0.0f, 50.0f, 1000.0f);
            cLib_offsetPos(&mCamEyeTarget, &pos, s_TargetAngle, &vec1);
            mCamEye = mCamEyeTarget;
            SetMoveCam(0.1f, 50.0f);
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
            vec1.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec1, &vec1);
            Particle_Set(0x880D, vec1);
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 3:
        mCamCenterTarget.y = current.pos.y + 100.0f;

        if (mAnm == ANM_APPEAR01) {
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &current.pos, &tevStr,
                                                 &current.angle, &scale, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
        }

        if (mAnm == ANM_WAIT01) {
            mTimer[0] = 30;
            mDemoMode++;
        }

        if (mAcch.ChkGroundHit() && mAnm == ANM_APPEAR01) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
            vec1.set(mPoint.x, mPoint.y, mPoint.z);
            vec2.set(0.0f, 100.0f, 250.0f);
            cLib_offsetPos(&mCamEyeTarget, &vec1, shape_angle.y, &vec2);
        } else if (mpMorf->isStop() && mAnm == ANM_APPEAR02) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        }

        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x1000);
        shape_angle.y = current.angle.y;
        SetMoveCam(0.08f, 50.0f);
        break;

    case 4:
        if (mTimer[0] == 0) {
            SetAnm(ANM_FOGBLOW_ST, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_FOGBLOW, -1);
            mDemoMode++;
            for (int i = 0; i < mPuppetNum; i++) {
                mPuppetID[i] = -1;
            }
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 5:
        vec1.set(current.pos.x, current.pos.y, current.pos.z);
        GakkiLoopAction(vec1, 400.0f);

        if (mAnm == ANM_FOGBLOW_EN) {
            mMode--;
            mDemoMode++;
        }

        if (mAnm == ANM_FOGBLOW_LP) {
            vec1.set(mPoint.x, mPoint.y, mPoint.z);
            vec2.set(0.0f, 100.0f, 800.0f);
            cLib_offsetPos(&mCamEyeTarget, &vec1, shape_angle.y, &vec2);
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 6:
        if (mpMorf->isStop()) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mpTrumpetMorf->setPlaySpeed(0.0f);
            mDemoMode++;
            mTimer[0] = 70;
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 7:
        if (mTimer[0] == 0) {
            if (mDoorAction == 0) {
                SetReleaseCam();
                mDoorAction = 1;
            }
            mAction = ACT_WAIT;
            mMode = 0;
            mDemoMode = 0;
        }

        SetMoveCam(0.1f, 50.0f);
        break;
    }
}

/* 80747194-80747500 005394 036C+00 1/1 0/0 0/0 .text            BossEscapeAction__8daE_PM_cFv */
void daE_PM_c::BossEscapeAction() {
    cXyz vec1;

    switch (mMode) {
    case 0:
        attention_info.flags = 0;
        SetAnm(ANM_HIDE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mCreatureSound.startCreatureVoice(Z2SE_EN_PM_FADEOUT, -1);
        mCcCyl.OnTgNoHitMark();
        mMode++;
        break;

    case 1:
        MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
        vec1.set(0.0f, -30.0f, 0.0f);
        MtxPosition(&vec1, &vec1);
        mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec1, &tevStr, &current.angle,
                                             &scale, 0xff, NULL, -1, NULL, NULL, NULL);

        if (mpMorf->isStop()) {
            SearchRndP();
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            current.pos.set(mPoint.x, mPoint.y + 100.0f, mPoint.z);
            old.pos = current.pos;
            mMode++;
            Particle_Set(0x880D, vec1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FADEIN, 0, -1);
        }
        break;

    case 2:
        mTargetAngleY = s_TargetAngle;
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x1000);
        shape_angle.y = current.angle.y;

        if (mAcch.ChkGroundHit()) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mMode++;
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        }
        break;

    case 3:
        if (mpMorf->isStop()) {
            attention_info.flags = 4;
            mAction = ACT_WAIT;
            mMode = 0;
            if (mBossHealth < 3) {
                mTimer[3] = l_HIO.mBossEscapeTimer;
            }
        }
        break;
    }
}

/* 80747500-807476A0 005700 01A0+00 2/2 0/0 0/0 .text            s_boss_sub__FPvPv */
static void* s_boss_sub(void* i_actor, void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAc_ac_c* actor = static_cast<fopAc_ac_c*>(i_actor);
    cXyz& actor_pos = fopAcM_GetPosition(actor);
    cXyz& player_pos = fopAcM_GetPosition(player);
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_SM_DOOR) {
        u8 prm = (fopAcM_GetParam(actor) & 0xF0) >> 4;
        if (player_pos.absXZ(actor_pos) < 16000.0f && prm == 1) {
            return i_actor;
        }
    }
    return NULL;
}

/* 807476A0-80747F38 0058A0 0898+00 2/1 0/0 0/0 .text            BossDamageAction__8daE_PM_cFv */
void daE_PM_c::BossDamageAction() {
    cXyz vec1, vec2, vec3, vec4;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMode) {
    case 0:
        if (CameraSet()) {
            player->onPlayerNoDraw();
            player->onPlayerShadowNoDraw();
            mPuppetNum += l_HIO.mAdditionalPuppetNum;
            if (mBossHealth == 0) {
                fopAc_ac_c* door = (fopAc_ac_c*)fpcM_Search(s_boss_sub, this);
                if (door != NULL) {
                    vec1 = fopAcM_GetPosition(door);
                    csXyz* angle = fopAcM_GetAngle_p(door);
                    cXyz unused(1000.0f, 0.0f, 2000.0f);
                    if (dComIfG_play_c::getLayerNo(0) == 2) {
                        vec1.set(-5355.0f, 1500.0f, 11060.0f);
                    } else {
                        vec1.set(-5700.0f, 500.0f, 5190.0f);
                    }
                    daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec1, angle->y + 0x8000, 0);
                }

                mAction = ACT_DEATH;
                mMode = 0;
                mDemoMode = 0;
                SetAnm(ANM_END, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
                mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_DEATH, -1);
                mPuppetDelete = 1;
                mBossLightOn = false;
                vec1.set(current.pos.x, current.pos.y + 50.0f, current.pos.z);
                SetStopCam(vec1, 300.0f, 0.0f, shape_angle.y);
                mTargetAngleY = shape_angle.y;
                mCamEyeTarget.y += 100.0f;

            } else {
                SetAnm(ANM_DAMAGE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
                mMode++;
                mPuppetDelete = 1;
                vec1.set(current.pos.x, current.pos.y + 50.0f, current.pos.z);
                SetStopCam(vec1, 350.0f, 50.0f, s_TargetAngle);
            }
        }
        break;

    case 1:
        if (mpMorf->isStop()) {
            SetAnm(ANM_HIDE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_FADEOUT, -1);
            mMode++;
            mCamCenterTarget.y += 200.0f;
        }
        SetStopingCam();
        break;

    case 2:
        if (mAnm == ANM_HIDE) {
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
            vec4.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec4, &vec4);
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec4, &tevStr,
                                                 &current.angle, &scale, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
        }

        if (mpMorf->isStop() && mAnm == ANM_HIDE) {
            SearchFarP();
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            current.pos.set(mPoint.x, mPoint.y + 10000.0f, mPoint.z);
            mTimer[1] = 20;
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_WAIST), *calc_mtx);
            vec4.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec4, &vec4);
            Particle_Set(0x880D, vec4);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FADEIN, 0, -1);

        } else if (mAnm == ANM_APPEAR01 && mTimer[1] == 0) {
            player->offPlayerNoDraw();
            player->offPlayerShadowNoDraw();
            mMode++;
            current.pos.set(mPoint.x, mPoint.y + 500.0f, mPoint.z);
            old.pos = current.pos;
            vec1.set(mPoint.x, mPoint.y, mPoint.z);
            SetStopCam(vec1, 1000.0f, 100.0f, s_TargetAngle);
            mCamCenterTarget.y += 400.0f;
            mCamCenter.y = mCamCenterTarget.y;
            speed.y = 0.0f;
            gravity = -3.0f;
            Particle_Set(0x880D, current.pos);
        }

        SetMoveCam(0.1f, 50.0f);
        break;

    case 3:
        //! @bug vec4 is not initialized
        mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec4, &tevStr, &current.angle,
                                             &scale, 0xff, NULL, -1, NULL, NULL, NULL);
        mCamCenterTarget.y = current.pos.y + 50.0f;
        mTargetAngleY = s_TargetAngle;
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x1000);
        shape_angle.y = current.angle.y;

        if (mAcch.ChkGroundHit()) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mMode++;
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
        }

        SetMoveCam(0.2f, 50.0f);
        break;

    case 4:
        vec2.set(0.0f, 100.0f, 300.0f);
        cLib_offsetPos(&vec3, &current.pos, s_TargetAngle, &vec2);
        mCamEyeTarget = vec3;
        SetMoveCam(0.1f, 50.0f);

        if (mpMorf->isStop()) {
            for (int i = 0; i < mPuppetNum; i++) {
                mPuppetID[i] = -1;
            }
            mPuppetDelete = 0;
            mAction = ACT_CREATE;
            mMode = 0;
            mDemoMode = 0;
            field_0x613 = 1;
        }
        break;

    case 10:
        SetAnm(ANM_DAMAGE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mMode++;
        break;

    case 11:
        if (mpMorf->isStop()) {
            mAction = ACT_WAIT;
            mMode = 0;
            mDemoMode = 0;
        }
        break;
    }
}

/* 80747F38-807480A4 006138 016C+00 1/1 0/0 0/0 .text            BossWaitAction__8daE_PM_cFv */
void daE_PM_c::BossWaitAction() {
    switch (mMode) {
    case 0:
        if (mSecondEncounter) {
            SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        } else {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        }
        mMode++;
        break;

    case 1:
        if (s_dis < 400.0f && dComIfG_play_c::getLayerNo(0) == 0) {
            mAction = ACT_ESCAPE;
            mMode = 0;
        }

        if (mTimer[3] == 0 && mBossHealth < 3 && dComIfG_play_c::getLayerNo(0) == 2) {
            mAction = ACT_ESCAPE;
            mMode = 0;
        }

        if (mAnm == ANM_GLAD) {
            mCreatureSound.startCreatureSoundLevel(0x7ffff, 0, -1);
        }
        break;
    }

    mTargetAngleY = s_TargetAngle;
    if (mTimer[2] == 20) {
        mCcCyl.OffTgNoHitMark();
        mAction = ACT_CREATE;
        mMode = 0;
    }
}

/* 807480A4-80748964 0062A4 08C0+00 1/1 0/0 0/0 .text            BossDeathAction__8daE_PM_cFv */
void daE_PM_c::BossDeathAction() {
    cXyz vec1, vec2, vec3;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMode) {
    case 0:
        if (mpMorf->getFrame() < 196.0f && mAnm == ANM_END) {
            MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_BACKBONE), *calc_mtx);
            vec3.set(0.0f, -30.0f, 0.0f);
            MtxPosition(&vec3, &vec3);
            vec3.x = current.pos.x;
            vec3.z = current.pos.z;
            mCamCenterTarget = vec3;
        } else {
            vec3.set(0.0f, 0.0f, mCamCenterTarget.absXZ(mCamEye) + 20.0f);
            vec2.set(mCamEye.x, current.pos.y, mCamEye.z);
            cLib_offsetPos(&mCamCenterTarget, &vec2, shape_angle.y + 0x8000, &vec3);
            shape_angle.y += 0x40;
        }

        mTargetAngleY = shape_angle.y;

        if (mpMorf->getFrame() == 195.0f && mAnm == ANM_END) {
            current.pos.y += 30000.0f;
            old.pos = current.pos;
            gravity = 0.0f;
            mTimer[2] = 10;
            shape_angle.y = cLib_targetAngleY(&mCamCenterTarget, &mCamEyeTarget);
        } else if (mpMorf->isStop() && mAnm == ANM_END && mTimer[2] == 0) {
            mTimer[2] = 100;
            if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
            }
            mMode++;
        }

        if (mpMorf->getFrame() > 180.0f) {
            mParticleKey = dComIfGp_particle_set(mParticleKey, 0x880C, &vec3, &tevStr,
                                                 &current.angle, &scale, 0xff, NULL, -1,
                                                 NULL, NULL, NULL);
        }

        SetMoveCam(0.2f, 15.0f);
        break;

    case 1:
        shape_angle.y += 0x40;
        vec3.set(0.0f, 0.0f, mCamCenterTarget.absXZ(mCamEye) + 20.0f);
        vec2.set(mCamEye.x, mCamCenterTarget.y, mCamEye.z);
        cLib_offsetPos(&mCamCenterTarget, &vec2, shape_angle.y + 0x8000, &vec3);

        if (mTimer[2] == 0) {
            if (dComIfG_play_c::getLayerNo(0) == 2) {
                mMsgFlow.init(this, 0x6E, 0, NULL);
            } else {
                mMsgFlow.init(this, 0x6F, 0, NULL);
            }
            mMode++;
        }

        SetMoveCam(0.2f, 15.0f);
        break;

    case 2:
        shape_angle.y += 0x40;
        vec3.set(0.0f, 0.0f, mCamCenterTarget.absXZ(mCamEye) + 20.0f);
        vec2.set(mCamEye.x, mCamCenterTarget.y, mCamEye.z);
        cLib_offsetPos(&mCamCenterTarget, &vec2, shape_angle.y + 0x8000, &vec3);

        if (mMsgFlow.doFlow(this, NULL, 0)) {
            player->offPlayerNoDraw();
            player->offPlayerShadowNoDraw();

            fopAc_ac_c* door = (fopAc_ac_c*)fpcM_Search(s_boss_sub, this);
            if (door != NULL) {
                cXyz pos = fopAcM_GetPosition(door);
                pos.y += 400.0f;
                csXyz* angle = fopAcM_GetAngle_p(door);
                SetStopCam(pos, 1000.0f, -200.0f, angle->y);
                vec3.set(500.0f, -200.0f, 0.0f);
                vec1 = mCamEye;
                cLib_offsetPos(&mCamEye, &vec1, angle->y, &vec3);
                mCamEyeTarget = mCamEye;
                current.pos.x = pos.x;
                current.pos.y = mAcch.GetGroundH() + 30000.0f;
                current.pos.z = pos.z;
            }

            mMode++;
            mDoorAction = 2;
            mTimer[1] = 100;
        }

        SetMoveCam(0.2f, 15.0f);
        break;

    case 3:
        SetStopingCam();
        if (mTimer[1] == 0) {
            SetReleaseCam();
            fopAcM_delete(this);
        }
        break;
    }
}

/* 80748964-80748B18 006B64 01B4+00 2/1 0/0 0/0 .text            BossAction__8daE_PM_cFv */
void daE_PM_c::BossAction() {
    mTargetHeadAngleX = 0;

    switch (mAction) {
    case ACT_START:
        StartAction();
        break;

    case ACT_CREATE:
        DemoCreateAction();
        ObjHit();
        if (mAction == ACT_DAMAGE && mMode != 10) {
            mAction = ACT_DAMAGE;
            mMode = 0;
            mDemoMode = 0;
            field_0x613 = 0;
            mCcCyl.ClrTgHit();
        }
        break;

    case ACT_WAIT:
        BossWaitAction();
        CreateChk();
        ObjHit();
        break;

    case ACT_ESCAPE:
        BossEscapeAction();
        break;

    case ACT_DAMAGE:
        BossDamageAction();
        break;

    case ACT_DEATH:
        BossDeathAction();
        break;

    case ACT_DEMO:
        if (mSecondEncounter) {
            DemoBossStart2();
        } else {
            DemoBossStart();
        }
        dComIfGp_getEvent().onSkipFade();
        dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 1);
    }

    if (mSecondEncounter && daPy_getPlayerActorClass()->checkWolfLock(this)) {
        daPy_getPlayerActorClass()->cancelWolfLock(this);
    }

    if (mAction != ACT_DEATH) {
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 5, 0x1000);
        cLib_addCalcAngleS2(&mHeadAngleX, mTargetHeadAngleX, 4, 0x1000);
        shape_angle.y = current.angle.y;
    }
}

/* 80748B18-80748D74 006D18 025C+00 1/1 0/0 0/0 .text            Execute__8daE_PM_cFv */
int daE_PM_c::Execute() {
    s_LinkPos = &fopAcM_GetPosition(daPy_getPlayerActorClass());
    s_TargetAngle = cLib_targetAngleY(&current.pos, s_LinkPos);
    s_dis = current.pos.abs(*s_LinkPos);

    for (int i = 0; i < 4; i++) {
        mTimer[i]--;
        if (mTimer[i] < 0) {
            mTimer[i] = 0;
        }
    }

    Yazirushi();
    
    if (mStage == 4) {
        BossAction();
    } else if (mStage == 0) {
        AppearAction();
    } else {
        Action();
    }

    LampAction();
    setMidnaBindEffect(this, &mCreatureSound, &current.pos, &cXyz(1.5f, 1.5f, 1.5f));
    EyeMove();
    mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setCcCylinder();
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    setBaseMtx();
    setGakkiBaseMtx();
    setLampBaseMtx();
    return 1;
}

/* 80748D74-8074954C 006F74 07D8+00 2/2 0/0 0/0 .text            StartAction__8daE_PM_cFv */
void daE_PM_c::StartAction() {
    cXyz pos;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMode) {
    case 0:
        mPuppetNum = 4;
        if (mStage == 1) {
            if (mAnm != ANM_GLAD) {
                SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            }

            daE_PM_c* other = (daE_PM_c*)fpcM_Search(s_obj_sub, this);
            if (other != NULL) {
                for (int i = 0; i < mPuppetNum; i++) {
                    if (other->mPuppetID[i] != -1) {
                        mPuppetID[i] = other->mPuppetID[i];
                    }
                }
            }

            if (dComIfGs_isSwitch(0x80, fopAcM_GetRoomNo(this))
                || dComIfGs_isSwitch(0xE0, fopAcM_GetRoomNo(this)))
            {
                mMode++;
                mAction = ACT_CREATE;
                mMode = 0;
            }

        } else if (mStage == 2) {
            if (mAnm != ANM_GLAD) {
                SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            }

            if (dComIfGs_isSwitch(0x81, fopAcM_GetRoomNo(this))
                || dComIfGs_isSwitch(0xE1, fopAcM_GetRoomNo(this)))
            {
                mMode++;
                mTimer[0] = 240;
            }

        } else if (mStage == 3) {
            if (mAnm != ANM_GLAD) {
                SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            }

            if (dComIfGs_isSwitch(0x82, fopAcM_GetRoomNo(this))
                || dComIfGs_isSwitch(0xE2, fopAcM_GetRoomNo(this)))
            {
                mMode++;
                mTimer[0] = 240;
            }
            
        } else if (mStage == 4) {
            SearchNearP();
            mCcStts.Init(0xFA, 0xFF, this);
            SetAnm(ANM_APPEAR01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mMode += 3;
            for (int i = 0; i < mPuppetNum; i++) {
                mPuppetID[i] = -1;
            }
        }
        break;

    case 1:
        if (mTimer[0] == 0 && mAcch.ChkGroundHit()) {
            SetAnm(ANM_APPEAR02, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_L, 0, -1);
            mCreatureSound.startCreatureSound(Z2SE_EN_PM_FN_R, 0, -1);
            J3DAnmTexPattern* btp = (J3DAnmTexPattern*)dComIfG_getObjectRes("E_PM", 0x22);
            mpEyeAnm->init(mpMorf->getModel()->getModelData(), btp, TRUE,
                           J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1);
            mMode++;
        }
        break;

    case 2:
        for (int i = 0; i < mPuppetNum; i++) {
            mPuppetID[i] = -1;
        }

        if (mpMorf->isStop()) {
            if (mStage != 4) {
                mAction = ACT_CREATE;
                mMode = 0;
            } else {
                mMode++;
            }
        }
        break;

    case 3:
        current.angle.y = s_TargetAngle;
        shape_angle.y = s_TargetAngle;

        if (mTimer[0] == 0 && mAnm != ANM_KYORO2) {
            SetAnm(ANM_KYORO2, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        }

        if (mpMorf->isStop()) {
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mTimer[0] = (u8)(cM_rndFX(50.0f) + 200.0f);
        }

        pos.set(current.pos.x, 10000.0f, current.pos.z);
        if (mSecondEncounter) {
            current.pos.y = -10000.0f;
            old.pos.y = current.pos.y;
        }
        if (fopAcM_gc_c::gndCheck(&pos) && current.pos.absXZ(*s_LinkPos) < 1000.0f
            && mAnm == ANM_WAIT01 && s_LinkPos->y <= fopAcM_gc_c::getGroundY() + 100.0f
            && CameraSet())
        {
            mPuppetNum = 4;
            gravity = -9.0f;
            mAction = ACT_DEMO;
            mMode = 1;
            mTimer[0] = 130;

            if (mSecondEncounter) {
                mTimer[0] = 180;
                pos.set(current.pos.x, 1900.0f, current.pos.z);
                SetStopCam(pos, 500.0f, 0.0f, s_TargetAngle);
                mCamEye = mCamEyeTarget;
                fopAcM_OffStatus(this, fopAcStts_CULL_e);
            } else {
                pos.set(current.pos.x, current.pos.y + 80.0f, current.pos.z);
                mTargetAngleY = shape_angle.y;
                SetStopCam(pos, 500.0f, -150.0f, shape_angle.y);
            }

            if (mSecondEncounter) {
                player->changeOriginalDemo();
                player->changeDemoMode(4, 0, 0, 0);
            }
        }
    }
}

/* 8074954C-807499C0 00774C 0474+00 4/4 0/0 0/0 .text            GakkiLoopAction__8daE_PM_cF4cXyzf
 */
void daE_PM_c::GakkiLoopAction(cXyz param_0, f32 param_1) {
    cXyz vec1(0.0f, 0.0f, 0.0f);
    cXyz vec2(0.0f, 0.0f, param_1);
    cXyz vec3;

    if (mAnm == ANM_FOGBLOW_ST && mpMorf->isStop()) {
        SetAnm(ANM_FOGBLOW_LP, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        mTimer[0] = 0;
        J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes("E_PM", 0x19);
        mpTrumpetMorf->setAnm(bck, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f, 0.0f, -1.0f, NULL);
        dBgS_LinChk lin_chk;

        for (int i = 0; i < mPuppetNum; i++) {
            if (mPuppetID[i] == -1) {
                if (dComIfG_play_c::getLayerNo(0) == 2) {
                    mTimer[0] += 18;
                } else {
                    mTimer[0] += 20;
                }
            }
        }

    } else if (mAnm == ANM_FOGBLOW_LP) {
        vec3.set(s_LinkPos->x, s_LinkPos->y + 100.0f, s_LinkPos->z);
        mCreatureSound.startCreatureSoundLevel(Z2SE_EN_PM_TRUMPET, 0, -1);

        int i = 0;
        dBgS_LinChk lin_chk;
        f32 step = 0x10000 / mPuppetNum;
        for (; i < mPuppetNum; i++) {
            if (mPuppetID[i] == -1) {
                s16 angle = shape_angle.y + step * i;
                cLib_offsetPos(&vec1, &param_0, angle, &vec2);
                if (!way_bg_check2(this, vec3, vec1) || mStage == 4) {
                    mPuppetID[i] = fopAcM_createChild(PROC_E_FS, fopAcM_GetID(this), 0xFFFFFFF,
                                                      &vec1, fopAcM_GetRoomNo(this), &shape_angle,
                                                      NULL, -1, NULL);
                }
            }
        }

        if (mTimer[0] == 0) {
            SetAnm(ANM_FOGBLOW_EN, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mMode++;
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_LAUGH, -1);
        }

        static u16 gakki_eff_id[3] = {0x8201, 0x8202, 0x8203};
        for (int i = 0; i < 3; i++) {
            mGakkiParticleKey[i] = dComIfGp_particle_set(mGakkiParticleKey[i], gakki_eff_id[i],
                                                         &current.pos, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mGakkiParticleKey[i]);
            if (emitter != NULL) {
                MTXCopy(mpTrumpetMorf->getModel()->getAnmMtx(2), *calc_mtx);
                emitter->setGlobalRTMatrix(*calc_mtx);
            }
        }
    }
}

/* 807499C0-80749C0C 007BC0 024C+00 1/1 0/0 0/0 .text            DemoCreateAction__8daE_PM_cFv */
void daE_PM_c::DemoCreateAction() {
    cXyz vec1, vec2, vec3;
    switch (mMode) {
    case 0:
        SetAnm(ANM_FOGBLOW_ST, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_FOGBLOW, -1);
        mMode++;
        speedF = 0.0f;
        mPuppetDelete = 0;
        break;

    case 1:
        vec1.set(current.pos.x, current.pos.y, current.pos.z);
        GakkiLoopAction(current.pos, 400.0f);
        if (field_0x613 == 1) {
            SetMoveCam(0.1f, 50.0f);
        }

        if (field_0x613 == 1 && mAnm == ANM_FOGBLOW_LP) {
            vec1.set(mPoint.x, mPoint.y, mPoint.z);
            vec2.set(0.0f, 100.0f, 800.0f);
            cLib_offsetPos(&vec3, &vec1, s_TargetAngle, &vec2);
            mCamEyeTarget = vec3;
            SetMoveCam(0.1f, 50.0f);
        }
        break;

    case 2:
        if (mpMorf->isStop()) {
            mCcCyl.OnTgNoHitMark();
            mpTrumpetMorf->setPlaySpeed(0.0f);
            if (field_0x613 == 1) {
                mTimer[3] = l_HIO.mBossEscapeTimer;
                field_0x613 = 0;
                mAction = ACT_WAIT;
                mMode = 0;
                mDemoMode = 0;
                SetReleaseCam();
            } else {
                mAction = ACT_WAIT;
                mMode = 0;
                mDemoMode = 0;
            }
        }
        break;
    }

    mTargetAngleY = s_TargetAngle;
}

/* 80749C0C-80749D9C 007E0C 0190+00 1/1 0/0 0/0 .text            CreateAction__8daE_PM_cFv */
void daE_PM_c::CreateAction() {
    cXyz vec;

    switch (mMode) {
    case 0:
        SetAnm(ANM_FOGBLOW_ST, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_FOGBLOW, -1);
        mMode++;
        speedF = 0.0f;
        break;

    case 1: {
        cXyz& player_speed = fopAcM_GetSpeed(daPy_getPlayerActorClass());
        vec.set(s_LinkPos->x + player_speed.x * 20.0f, s_LinkPos->y + 200.0f,
                s_LinkPos->z + player_speed.z * 20.0f);
        GakkiLoopAction(vec, 200.0f);
        break;
    }

    case 2:
        if (mpMorf->isStop()) {
            mpTrumpetMorf->setPlaySpeed(0.0f);
            if (field_0x613 == 1) {
                field_0x613 += 2;
            }
            mAction = ACT_WAIT;
            mMode = 0;
            mDemoMode = 0;
        }
        break;
    }

    mTargetAngleY = s_TargetAngle;
}

/* 80749D9C-80749ED0 007F9C 0134+00 2/2 0/0 0/0 .text            CreateChk__8daE_PM_cFv */
void daE_PM_c::CreateChk() {
    for (int i = 0; i < mPuppetNum; i++) {
        fopAc_ac_c* puppet = fopAcM_SearchByID(mPuppetID[i]);
        if (puppet == NULL && mPuppetID[i] != -1) {
            mPuppetID[i] = -1;
        }

        if (mPuppetID[i] == -1 && mTimer[2] == 0) {
            if (s_dis <= l_HIO.mEscapeRange) {
                mTimer[2] = l_HIO.mCreateTimer * 0.5f;
            } else {
                mTimer[2] = l_HIO.mCreateTimer;
            }

            if (mStage == 4) {
                if (dComIfG_play_c::getLayerNo(0) == 2) {
                    mTimer[2] = 200;
                } else {
                    mTimer[2] = 160;
                }
            }
        }
    }
}

/* 80749ED0-8074A14C 0080D0 027C+00 1/1 0/0 0/0 .text            LampAction__8daE_PM_cFv */
void daE_PM_c::LampAction() {
    cXyz vec = mOldLampPosition - mLampPosition;
    f32 dist = vec.abs();
    cLib_addCalcAngleS2(&field_0x6fa, dist * 1280.0f, 5, 0x1000);
    field_0x6fc += dist * 556.0f;
    cLib_addCalcAngleS2(&mLampAngle.x, field_0x6fa * cM_ssin(field_0x6fc), 5, 0x1000);
    cLib_addCalcAngleS2(&mLampAngle.z, field_0x6fa * cM_ssin(field_0x6fc), 5, 0x1000);
    mOldLampPosition = mLampPosition;
}

/* 8074A14C-8074A210 00834C 00C4+00 1/1 0/0 0/0 .text            DamageAction__8daE_PM_cFv */
void daE_PM_c::DamageAction() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        SetAnm(ANM_DAMAGE, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mMode++;
        break;

    case 1:
        if (mpMorf->isStop()) {
            mAction = ACT_WAIT;
            mMode = 0;
        }
        break;
    }

    mTargetAngleY = s_TargetAngle;
}

/* 8074A210-8074A3DC 008410 01CC+00 1/1 0/0 0/0 .text            At_Check__8daE_PM_cFv */
// NONMATCHING regalloc
void daE_PM_c::At_Check() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    mAtInfo.mpCollider = mCcCyl.GetTgHitObj();
    mAtInfo.mpActor = at_power_check(&mAtInfo);

    if (mAtInfo.mpActor != NULL) {
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            mAtInfo.mAttackPower = 0;
        }

        if ((s16)mAtInfo.mAttackPower > 0) {
            health -= (s16)mAtInfo.mAttackPower;
        }

        u32 pause_timer = 0;
        if (mAtInfo.mAttackPower != 0 && health <= l_HIO.field_0x34) {
            mAtInfo.mHitStatus = 2;
            pause_timer = 5;
            mAction = ACT_DEMO;
            mMode = 0;
        } else {
            pause_timer = 2;
        }

        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_MIDNA_LOCK)) {
            pause_timer = 0;
        }

        dCcD_GObjInf* collider = (dCcD_GObjInf*)mAtInfo.mpCollider;
        u32 sound = collider->GetAtSe();
        u32 var1 = 30;
        if (mAtInfo.mHitStatus == 1) {
            var1 = 31;
        } else if (mAtInfo.mHitStatus == 2) {
            var1 = 32;
        }

        if (mAtInfo.mpSound != NULL) {
            if (mAtInfo.field_0x18 != 0) {
                mAtInfo.mpSound->startCollisionSE(dCcD_GObjInf::getHitSeID(sound, FALSE), mAtInfo.field_0x18);
            } else {
                mAtInfo.mpSound->startCollisionSE(dCcD_GObjInf::getHitSeID(sound, FALSE), var1);
            }
        }

        if (mAtInfo.mHitType == 1 || mAtInfo.mpCollider->ChkAtType(AT_TYPE_THROW_OBJ)) {
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_THROW_OBJ)) {
                pause_timer = 4;
            }
            dScnPly_c::setPauseTimer(pause_timer);
        }
    }
}

/* 8074A3DC-8074A644 0085DC 0268+00 2/2 0/0 0/0 .text            ObjHit__8daE_PM_cFv */
void daE_PM_c::ObjHit() {
    mIFrameTimer--;
    if (mIFrameTimer <= 0) {
        mIFrameTimer = 0;
    }

    if (mIFrameTimer > 0) {
        mCcCyl.OffTgSetBit();
        mCcCyl.ClrTgHit();
        return;
    }

    mCcCyl.OnTgSetBit();
    mCcStts.Move();

    if (mCcCyl.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcCyl.GetTgHitObj();
        mAtInfo.mpCollider = mCcCyl.GetTgHitObj();
        if (dComIfG_play_c::getLayerNo(0) == 0 && mStage == 4
            && !hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD) && !hit_obj->ChkAtType(AT_TYPE_UNK))
        {
            mAction = ACT_ESCAPE;
            mMode = 0;
            mDemoMode = 0;
        } else {
            At_Check();
            mCreatureSound.startCreatureVoice(Z2SE_EN_PM_V_DAMAGE, -1);
            mAction = ACT_DAMAGE;
            mMode = 0;
            if (mStage != 4) {
                if (health <= l_HIO.field_0x34) {
                    mAction = ACT_DEMO;
                    mCcCyl.ClrTgHit();
                    mDemoMode = 0;
                }
            } else {
                if (dComIfG_play_c::getLayerNo(0) == 2) {
                    if (hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD)
                        || hit_obj->ChkAtType(AT_TYPE_ARROW) || hit_obj->ChkAtType(AT_TYPE_BOMB)
                        || hit_obj->ChkAtType(AT_TYPE_IRON_BALL))
                    {
                        mBossHealth--;
                        if (mBossHealth == 0) {
                            daPy_getPlayerActorClass()->onPlayerNoDraw();
                        }
                    } else {
                        mAction = ACT_DAMAGE;
                        mMode = 10;
                    }
                } else {
                    mBossHealth--;
                    if (mBossHealth == 0) {
                        daPy_getPlayerActorClass()->onPlayerNoDraw();
                    }
                }
            }

            mIFrameTimer = 15;
        }
    }
}

/* 8074A644-8074A6CC 008844 0088+00 1/1 0/0 0/0 .text            EyeMove__8daE_PM_cFv */
void daE_PM_c::EyeMove() {
    if (mEyeAnmTimer == 0) {
        mEyeAnmTimer = cM_rndF(100.0f) + 30.0f;
    } else {
        mEyeAnmTimer--;
        if (mEyeAnmTimer <= 8) {
            mEyeAnmFrame = 8 - mEyeAnmTimer;
        } else {
            mEyeAnmFrame = 0;
        }
    }
}

/* 8074A6CC-8074AAC0 0088CC 03F4+00 1/1 0/0 0/0 .text            Draw__8daE_PM_cFv */
int daE_PM_c::Draw() {
    if (mSecondEncounter && mBossLightOn) {
        GXColor color;
        color.r = l_HIO.mBossLightR;
        color.g = l_HIO.mBossLightG;
        color.b = l_HIO.mBossLightB;
        cLib_chaseF(&field_0x5fc, l_HIO.field_0x48, 0.01f);
        dKy_BossLight_set(&mLampPosition, &color, field_0x5fc, 1);
    }

    J3DModel* model = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpEyeAnm->entry(model->getModelData());
    mpMorf->entryDL();

    cXyz pos;
    pos.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &pos, 1000.0f, 100.0f, current.pos.y,
                                    mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                                    dDlst_shadowControl_c::getSimpleTex());

    g_env_light.setLightTevColorType_MAJI(mpLampModel, &tevStr);
    mDoExt_modelUpdateDL(mpLampModel);

    g_env_light.setLightTevColorType_MAJI(mpGlowEffectMorf->getModel(), &tevStr);
    J3DMaterial* material = mpGlowEffectMorf->getModel()->getModelData()->getMaterialNodePointer(0);
    if (mSecondEncounter) {
        material->getTevColor(1)->r = l_HIO.mGlowColor1R;
        material->getTevColor(1)->g = l_HIO.mGlowColor1G;
        material->getTevColor(1)->b = l_HIO.mGlowColor1B;
        material->getTevColor(1)->a = l_HIO.mGlowColor1A;
        material->getTevColor(2)->r = l_HIO.mGlowColor2R;
        material->getTevColor(2)->g = l_HIO.mGlowColor2G;
        material->getTevColor(2)->b = l_HIO.mGlowColor2B;
    } else {
        material->getTevColor(1)->r = 120;
        material->getTevColor(1)->g = 150;
        material->getTevColor(1)->b = 150;
        material->getTevColor(1)->a = 255;
        material->getTevColor(2)->r = 0;
        material->getTevColor(2)->g = 60;
        material->getTevColor(2)->b = 101;
    }
    mpGlowEffectMorf->entryDL();

    g_env_light.setLightTevColorType_MAJI(mpTrumpetMorf->getModel(), &tevStr);
    mpTrumpetMorf->entryDL();

    return 1;
}

/* 8074AAC0-8074AB28 008CC0 0068+00 1/1 0/0 0/0 .text            Delete__8daE_PM_cFv */
int daE_PM_c::Delete() {
    dComIfG_resDelete(&mPhase, "E_PM");
    
    if (mHIOInit) {
        hioInit = false;
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }

    return 1;
}

/* 8074AB28-8074ABA8 008D28 0080+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_PM_cFv */
void daE_PM_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
    mpEyeAnm->setFrame(mEyeAnmFrame);
}

/* 8074ABA8-8074AC10 008DA8 0068+00 1/1 0/0 0/0 .text            setGakkiBaseMtx__8daE_PM_cFv */
void daE_PM_c::setGakkiBaseMtx() {
    mpTrumpetMorf->getModel()->setBaseTRMtx(mpMorf->getModel()->getAnmMtx(JNT_HAND_L));
    mpTrumpetMorf->play(NULL, 0, 0);
    mpTrumpetMorf->modelCalc();
}

/* 8074AC10-8074AE90 008E10 0280+00 1/1 0/0 0/0 .text            setLampBaseMtx__8daE_PM_cFv */
void daE_PM_c::setLampBaseMtx() {
    cXyz vec1, vec2;
    MTXCopy(mpMorf->getModel()->getAnmMtx(JNT_HAND_R), *calc_mtx);
    cXyz vec3(0.0f, -30.0f, -5.0f);
    //! @bug vec1 is not initialized in its first two uses, which are probably supposed to be vec3
    MtxPosition(&vec1, &mLampPosition);
    mDoMtx_stack_c::transS(mLampPosition);
    mDoMtx_stack_c::ZXYrotM(mLampAngle);
    mpLampModel->setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::transM(0.0f, -35.0f, 0.0f);
    MTXCopy(mDoMtx_stack_c::get(), *calc_mtx);
    MtxPosition(&vec1, &vec2);
    mLampParticleKey = dComIfGp_particle_set(mLampParticleKey, 0x818C, &vec2, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mLampParticleKey);
    if (emitter != NULL) {
        cXyz scale(l_HIO.mLampParticleScale, l_HIO.mLampParticleScale, l_HIO.mLampParticleScale);
        emitter->setGlobalScale(scale);
    }

    mDoMtx_stack_c::transS(vec2.x, vec2.y, vec2.z);
    vec1 = dComIfGp_getCamera(0)->lookat.eye - vec2;
    mDoMtx_stack_c::YrotM(cM_atan2s(vec1.x, vec1.z));
    mDoMtx_stack_c::XrotM(-cM_atan2s(vec1.y, JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z)));
    mDoMtx_stack_c::scaleM(l_HIO.mGlowEffectScale, l_HIO.mGlowEffectScale, l_HIO.mGlowEffectScale);
    mpGlowEffectMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpGlowEffectMorf->play(NULL, 0, 0);
    mpGlowEffectMorf->modelCalc();
}

/* 8074AE90-8074AEB0 009090 0020+00 1/0 0/0 0/0 .text            daE_PM_Draw__FP8daE_PM_c */
static int daE_PM_Draw(daE_PM_c* i_this) {
    return i_this->Draw();
}

/* 8074AEB0-8074AED0 0090B0 0020+00 2/1 0/0 0/0 .text            daE_PM_Execute__FP8daE_PM_c */
static int daE_PM_Execute(daE_PM_c* i_this) {
    return i_this->Execute();
}

/* 8074AED0-8074AED8 0090D0 0008+00 1/0 0/0 0/0 .text            daE_PM_IsDelete__FP8daE_PM_c */
static int daE_PM_IsDelete(daE_PM_c* i_this) {
    return 1;
}

/* 8074AED8-8074AEF8 0090D8 0020+00 1/0 0/0 0/0 .text            daE_PM_Delete__FP8daE_PM_c */
static int daE_PM_Delete(daE_PM_c* i_this) {
    return i_this->Delete();
}

/* 8074AEF8-8074B4DC 0090F8 05E4+00 1/1 0/0 0/0 .text            SkipChk__8daE_PM_cFv */
void daE_PM_c::SkipChk() {
    fopAc_ac_c* puppet;
    cXyz vec1, vec2, vec3;

    if (cDmr_SkipInfo == 0) {
        return;
    }

    if (mStage == 0) {
        mDoorAction = 5;
        if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
            dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
        }

        for (int i = 0; i < 2; i++) {
            if (!fopAcM_SearchByID(mPuppetID[i], &puppet)) {
                vec1.set(i * 100.0f + 500.0f, 150.0f, -(i * 100.0f));
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mDoMtx_stack_c::multVec(&vec1, &vec1);
                mPuppetID[i] = fopAcM_createChild(PROC_E_FS, fopAcM_GetID(this), 0, &vec1,
                                                  fopAcM_GetRoomNo(this), &shape_angle,
                                                  NULL, -1, NULL);
            }
        }

        for (int i = 2; i < 4; i++) {
            if (!fopAcM_SearchByID(mPuppetID[i], &puppet)) {
                vec1.set(-500.0f - i * 100.0f, 150.0f, -(i * 100.0f));
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mDoMtx_stack_c::multVec(&vec1, &vec1);
                mPuppetID[i] = fopAcM_createChild(PROC_E_FS, fopAcM_GetID(this), 0, &vec1,
                                                  fopAcM_GetRoomNo(this), &shape_angle,
                                                  NULL, -1, NULL);
            }
        }

        daE_PM_c* other = (daE_PM_c*)fpcM_Search(s_pm_sub, this);
        if (other != NULL) {
            for (int i = 0; i < 4; i++) {
                other->mPuppetID[i] = mPuppetID[i];
            }
        }

        mCamCenter = *s_LinkPos;
        mCamCenter.y += 200.0f;
        mCamEye.set(-9881.0f, 1892.0f, 17971.0f);
        SetReleaseCam();

        if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
            dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
        }

        mAction = ACT_ESCAPE;
        mMode = 2;
        mTimer[0] = 10;
        mPoint = dPath_GetPnt(mpPath, 0)->m_position;
        current.pos.set(mPoint.x, mPoint.y + 1000.0f, mPoint.z);
        old.pos = current.pos;

    } else if (mStage == 4) {
        f32 step = 0x10000 / mPuppetNum;
        vec3.set(0.0f, 0.0f, 400.0f);
        for (int i = 0; i < mPuppetNum; i++) {
            cLib_offsetPos(&vec2, &current.pos, shape_angle.y + step * i, &vec3);
        }

        if (mSecondEncounter) {
            fopAcM_OffStatus(this, fopAcStts_CULL_e);
            SetReleaseCam();
            mDoorAction = 1;
            mDemoMode = 0;
            mCcCyl.OffTgNoHitMark();
            mAction = ACT_CREATE;
            mMode = 0;
            SetAnm(ANM_GLAD, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            current.pos.y = mAcch.GetGroundH();
            old.pos.y = current.pos.y;
            mBossLightOn = true;
        } else {
            mCamCenter = *s_LinkPos;
            mCamCenter.y += 200.0f;
            vec3.set(0.0f, 200.0f, 500.0f);
            cLib_offsetPos(&mCamEye, s_LinkPos, cLib_targetAngleY(&current.pos, s_LinkPos), &vec3);
            SetReleaseCam();
            mDoorAction = 1;
            mDemoMode = 0;
            mAction = ACT_CREATE;
            mMode = 0;
            mPoint = dPath_GetPnt(mpPath, 1)->m_position;
            current.pos.set(mPoint.x, mPoint.y, mPoint.z);
            old.pos = current.pos;
            SetAnm(ANM_WAIT01, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
        }
    }
}

/* 8074B4DC-8074B834 0096DC 0358+00 1/1 0/0 0/0 .text            Create__8daE_PM_cFv */
cPhs__Step daE_PM_c::Create() {
    fopAcM_SetupActor(this, daE_PM_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_PM");

    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x45E0)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            hioInit = true;
            mHIOInit = true;
            l_HIO.field_0x4 = -1;
        }

        mStage = fopAcM_GetParam(this) & 0xFF;
        mPathIndex = (fopAcM_GetParam(this) >> 8) & 0xFF;
        mpPath = dPath_GetRoomPath(mPathIndex, fopAcM_GetRoomNo(this));
        mSwBit = (fopAcM_GetParam(this) >> 0x18) & 0xFF;

        attention_info.flags = 4;
        attention_info.distances[fopAc_attn_BATTLE_e] = 86;
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, 0.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
        mAcchCir.SetWall(30.0f, 100.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mAtInfo.mpSound = &mCreatureSound;
        mAtInfo.mPowerType = 1;
        mAtInfo.mpSound = &mCreatureSound;
        initCcCylinder();
        field_0x6ff = false;
        gravity = -9.0f;
        health = 100;
        mBossHealth = 3;
        field_0x5fc = 0.0f;
        mCreatureSound.setEnemyName("E_PM");

        J3DModel* model = mpMorf->getModel();
        model->setUserArea((u32)this);
        model->getModelData()->getJointNodePointer(JNT_HEAD)->setCallBack(JointCallBack);

        if (dComIfG_play_c::getLayerNo(0) == 2 || dComIfG_play_c::getLayerNo(0) == 5) {
            mSecondEncounter = true;
        }

        if (mStage == 0) {
            current.pos.y += 10000.0f;
            gravity = 0.0f;
        } else if (mStage == 4) {
            current.pos.y += 500.0f;
        }

        daE_PM_Execute(this);
    }

    return step;
}

/* 8074BA00-8074BA20 009C00 0020+00 1/0 0/0 0/0 .text            daE_PM_Create__FP10fopAc_ac_c */
static cPhs__Step daE_PM_Create(fopAc_ac_c* i_this) {
    return static_cast<daE_PM_c*>(i_this)->Create();
}

AUDIO_INSTANCES;

/* 8074C23C-8074C25C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_PM_Method */
static actor_method_class l_daE_PM_Method = {
    (process_method_func)daE_PM_Create,
    (process_method_func)daE_PM_Delete,
    (process_method_func)daE_PM_Execute,
    (process_method_func)daE_PM_IsDelete,
    (process_method_func)daE_PM_Draw,
};

/* 8074C25C-8074C28C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_PM */
extern actor_process_profile_definition g_profile_E_PM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_PM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_PM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  161,                    // mPriority
  &l_daE_PM_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
