/**
 * d_a_obj_kabuto.cpp
 * Object - Golden Beetle
 */

#include "rel/d/a/obj/d_a_obj_kabuto/d_a_obj_kabuto.h"
#include "SSystem/SComponent/c_math.h"
#include "m_Do/m_Do_lib.h"
#include "d/com/d_com_inf_game.h"
#include "d/menu/d_menu_insect.h"
#include "d/d_procname.h"

/* 80C2E2F0-80C2E2F4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 80C2E300-80C2E314 000018 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static daObj_KabHIO_c l_HIO;

/* 80C2AE6C-80C2AEA4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__14daObj_KabHIO_cFv */
daObj_KabHIO_c::daObj_KabHIO_c() {
    field_0x4 = -1;
    field_0xc = 1.5f;
    field_0x8 = 1.2f;
    field_0x10 = -0.6f;
}

/* 80C2AEA4-80C2AF10 000124 006C+00 1/1 0/0 0/0 .text            InitCcSph__13daObjKABUTO_cFv */
void daObjKABUTO_c::InitCcSph() {
    const static dCcD_SrcSph ccSphSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x14002, 0x11}, 0x0}}, // mObj
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
        } // mSphAttr
    };

    mCcStts.Init(1, 0, this);
    mCcSph.Set(ccSphSrc);
    mCcSph.SetStts(&mCcStts);
    mCcSph.SetC(current.pos);
    mCcSph.OnTgNoHitMark();
}

/* 80C2AF10-80C2AF68 000190 0058+00 1/1 0/0 0/0 .text            SetCcSph__13daObjKABUTO_cFv */
void daObjKABUTO_c::SetCcSph() {
    mCcSph.SetC(current.pos);
    mCcSph.SetR(20.0f);
    dComIfG_Ccsp()->Set(&mCcSph);
}

/* 80C2AF68-80C2AF88 0001E8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daObjKABUTO_c*>(i_this)->CreateHeap();
}

/* 80C2AF88-80C2B2E0 000208 0358+00 1/1 0/0 0/0 .text            CreateHeap__13daObjKABUTO_cFv */
int daObjKABUTO_c::CreateHeap() {
    J3DModelData* model_data;
    if (mSex == SEX_FEMALE) {
        model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("Kab_m", 10));
    } else {
        model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("Kab_m", 11));
    }
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL,
                                  static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 7)),
                                  2, 1.5f, 0, -1, &mCreatureSound, 0, 0x11000284);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorf->getModel();

    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL) {
        return 0;
    }
    if (mSex == SEX_FEMALE) {
        J3DAnmTevRegKey* tev_anm = static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("Kab_m", 14));
        if (!mpBrkAnm->init(model->getModelData(), tev_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        J3DAnmTevRegKey* tev_anm = static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("Kab_m", 15));
        if (!mpBrkAnm->init(model->getModelData(), tev_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL) {
        return 0;
    }
    if (mSex == SEX_FEMALE) {
        J3DAnmTextureSRTKey* tex_anm =
            static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("Kab_m", 18));
        if (!mpBtkAnm->init(model->getModelData(), tex_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        J3DAnmTextureSRTKey* tex_anm =
            static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("Kab_m", 19));
        if (!mpBtkAnm->init(model->getModelData(), tex_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    return 1;
}

/* 80C2B328-80C2B348 0005A8 0020+00 1/0 0/0 0/0 .text            daObjKABUTO_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObjKABUTO_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjKABUTO_c*>(i_this)->create();
}

/* 80C2B348-80C2B36C 0005C8 0024+00 1/0 0/0 0/0 .text daObjKABUTO_Delete__FP13daObjKABUTO_c */
static int daObjKABUTO_Delete(daObjKABUTO_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 80C2B36C-80C2B4D4 0005EC 0168+00 1/1 0/0 0/0 .text            ShopWaitAction__13daObjKABUTO_cFv
 */
void daObjKABUTO_c::ShopWaitAction() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        J3DAnmTransform* anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 7));
        mpMorf->setAnm(anm, 2, 5.0f, 0.0f, 0.0f, -1.0f);
        mMode++;
        mTimers[0] = cM_rndF(50.0f) + 50.0f;
        break;

    case 1:
        mTimers[0]--;
        if (mTimers[0] <= 0) {
            mTimers[0] = 0;
        }
        if (mTimers[0] == 0) {
            s32 rnd = cM_rndF(100.0f);
            if (rnd < 40) {
                mAction = ACT_WALK;
                mMode = 0;
            } else if (rnd < 70) {
                mAction = ACT_MOVE;
                mMode = 0;
            } else {
                mTimers[0] = cM_rndF(50.0f) + 50.0f;
            }
        }
        break;
    }
}

/* 80C2B4D4-80C2B618 000754 0144+00 1/1 0/0 0/0 .text            WaitAction__13daObjKABUTO_cFv */
void daObjKABUTO_c::WaitAction() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        J3DAnmTransform* anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 7));
        mpMorf->setAnm(anm, 2, 5.0f, 0.0f, 0.0f, -1.0f);
        mMode++;
        mTimers[0] = cM_rndF(50.0f) + 50.0f;
        break;

    case 1:
        if (fopAcM_searchActorDistance(this, daPy_getPlayerActorClass()) < 1500.0f) {
            mTimers[0]--;
            if (mTimers[0] <= 0) {
                mTimers[0] = 0;
            }
            if (mTimers[0] == 0 && (s32)cM_rndF(100.0f) < 90) {
                mAction = ACT_WALK;
                mMode = 0;
            }
        }
        break;
    }
}

/* 80C2B618-80C2B844 000898 022C+00 1/1 0/0 0/0 .text            WallCheck__13daObjKABUTO_cFv */
BOOL daObjKABUTO_c::WallCheck() {
    dBgS_LinChk lin_chk;
    lin_chk.SetObj();
    lin_chk.Set(&old.pos, &current.pos, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
        const cXyz* normal = plane.i_GetNP();
        current.pos = lin_chk.i_GetCross();
        cXyz zero(0.0f, 0.0f, 0.0f);
        cXyz normal_yz(0.0f, normal->y, normal->z);
        mWallAngle.z = -cM_atan2s(normal->x, zero.abs(normal_yz));
        mWallAngle.x = cM_atan2s(normal->z, normal->y);
        mDownAngleY = cM_atan2s(normal->x, normal->z);
        return true;
    }
    return false;
}

/* 80C2B88C-80C2B998 000B0C 010C+00 1/1 0/0 0/0 .text            SpeedSet__13daObjKABUTO_cFv */
void daObjKABUTO_c::SpeedSet() {
    speed.y += gravity;
    cXyz speed_base(0.0f, speed.y, speedF);
    cXyz speed_real(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(mWallAngle);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&speed_base, &speed_real);
    current.pos.x += speed_real.x;
    current.pos.y += speed_real.y;
    current.pos.z += speed_real.z;
    cLib_addCalc2(&speedF, mTargetSpeedXZ, 0.4f, 10.0f);
    cLib_addCalc2(&speed.y, mTargetSpeedY, 0.1f, 0.5f);
    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x100);
    shape_angle.y = current.angle.y;
}

/* 80C2B998-80C2BDE8 000C18 0450+00 1/1 0/0 0/0 .text            WallWalk__13daObjKABUTO_cFv */
void daObjKABUTO_c::WallWalk() {
    cXyz vec1(0.0f, -100.0f, speedF * 3.0f);
    cXyz vec2(0.0f, 40.0f, 0.0f);
    cXyz vec3(0.0f, 20.0f, 100.0f);
    dBgS_LinChk lin_chk1, lin_chk2;
    lin_chk1.SetObj();
    lin_chk2.SetObj();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mWallAngle);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&vec1, &vec1);
    mDoMtx_stack_c::multVec(&vec2, &vec2);
    lin_chk1.Set(&vec2, &vec1, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk1)) {
        speedF = 0.3f;
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(lin_chk1, &plane);
        const cXyz* normal = plane.i_GetNP();
        s16 normal_ang_y = cM_atan2s(normal->x, normal->z);
        cXyz cross;
        cXyz zero(0.0f, 0.0f, 0.0f);
        cXyz normal_yz(0.0f, normal->y, normal->z);
        f32 normal_len_yz = zero.abs(normal_yz);
        cross = lin_chk1.i_GetCross();
        if (normal_ang_y - mDownAngleY < 0x1000 && normal_ang_y - mDownAngleY > -0x1000
            && cross.abs(current.pos) < speedF * 3.0f)
        {
            current.pos = cross;
            mWallAngle.z = -cM_atan2s(normal->x, normal_len_yz);
            mWallAngle.x = cM_atan2s(normal->z, normal->y);
            mDownAngleY = normal_ang_y;
        } else {
            mTargetAngleY += 0x100;
        }
    } else {
        mTargetAngleY += 0x100;
    }
    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x50);
    shape_angle.y = current.angle.y;
}

/* 80C2BDE8-80C2BFE8 001068 0200+00 2/2 0/0 0/0 .text            WalkAction__13daObjKABUTO_cFv */
void daObjKABUTO_c::WalkAction() {
    for (int i = 0; i < 3; i++) {
        mTimers[i]--;
        if (mTimers[i] <= 0) {
            mTimers[i] = 0;
        }
    }

    J3DAnmTransform* anm;

    switch (mMode) {
    case 0:
        anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 7));
        mpMorf->setAnm(anm, 2, 5.0f, 1.5f, 0.0f, -1.0f);
        mTargetSpeedXZ = 0.2f;
        speed.y = 0.0f;
        mTargetSpeedY = 0.0f;
        mMode++;
        mTimers[1] = cM_rndF(50.0f) + 50.0f;
        break;

    case 1:
        if (mTimers[0] == 0) {
            cXyz target_pos(cM_rndFX(100.0f), 0.0f, cM_rndFX(100.0f));
            mTargetAngleY = cM_atan2s(target_pos.x, target_pos.z);
            mTimers[0] = cM_rndF(50.0f) + 50.0f;
        }

        if (mTimers[1] == 0) {
            s32 rnd = cM_rndF(100.0f);
            if (rnd < 30) {
                mAction = ACT_MOVE;
                mMode = 0;
            } else if (rnd < 60) {
                mAction = ACT_WAIT;
                mMode = 0;
            } else {
                mTimers[1] = cM_rndF(50.0f) + 50.0f;
            }
        }
        break;
    }

    WallWalk();
}

/* 80C2BFE8-80C2C7C8 001268 07E0+00 2/2 0/0 0/0 .text            MoveAction__13daObjKABUTO_cFv */
void daObjKABUTO_c::MoveAction() {
    for (int i = 0; i < 3; i++) {
        mTimers[i]--;
        if (mTimers[i] <= 0) {
            mTimers[i] = 0;
        }
    }

    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec(0.0f, 1.0f, 0.0f);
    cXyz vec2, pos;
    dBgS_LinChk lin_chk;
    J3DAnmTransform* anm;

    switch (mMode) {
    case 0:
        anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 6));
        mpMorf->setAnm(anm, 2, 5.0f, 0.0f, 0.0f, -1.0f);
        mMode++;
        mTimers[0] = 20;
        break;
    
    case 1:
        if (mTimers[0] == 10) {
            mpMorf->setPlaySpeed(1.0f);
        }

        if (mTimers[0] == 0) {
            mMode++;
            mDoMtx_stack_c::ZXYrotS(mWallAngle);
            mDoMtx_stack_c::multVec(&vec, &vec);
            mTimers[0] = cM_rndF(10.0f) + 30.0f;
            if (mLocation == LOC_OUTSIDE) {
                mTimers[1] = cM_rndF(80.0f) + 80.0f;
            } else {
                mTimers[1] = cM_rndF(50.0f) + 50.0f;
            }
            mTargetSpeedXZ = cM_rndF(5.0f) + 8.0f;
            mTargetAngleY = mDownAngleY;
            mTargetSpeedY = 3.0f;
            speed.y = 5.0f;
        }
        break;

    case 2:
        cXyz* flame_pos = player->getKandelaarFlamePos();
        if (flame_pos != NULL) {
            mTargetAngleY = cLib_targetAngleY(&current.pos, flame_pos);
            if (flame_pos->abs(current.pos) < 200.0f && speed.y < 0.0f) {
                cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 2, 0x500);
            } else {
                cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x200);
            }
            if (flame_pos->abs(current.pos) < 11.0f && player->speedF < 1.0f) {
                vec2.set(0.0f, 0.0f, 10.0f);
                if (!field_0x735) {
                    mDownAngleY = cLib_targetAngleY(&current.pos, flame_pos);
                }
                cLib_offsetPos(&pos, flame_pos, mDownAngleY, &vec2);
                current.pos = pos;
                shape_angle.x = 0x4000;
                shape_angle.y = mDownAngleY;
                speedF = 0.0f;
                mTargetSpeedXZ = 0.0f;
                speed.y = 0.0f;
                mTargetSpeedY = 0.0f;
                mpMorf->setPlaySpeed(0.0f);
                mTargetAngleY = 0;
                current.angle.y = mDownAngleY;
                field_0x735 = true;
                anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 7));
                mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
            } else if (field_0x735) {
                field_0x735 = false;
                mTargetSpeedY = 3.0f;
                speed.y = 3.0f;
                speedF = 8.0f;
                mTargetSpeedXZ = 8.0f;
                mpMorf->setPlaySpeed(1.0f);
                mDownAngleY = 0;
                anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 6));
                mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
            }
        }

        if (mTimers[0] == 0) {
            if (flame_pos == NULL) {
                vec2 = home.pos - current.pos;
                vec2.x += cM_rndFX(1050.0f);
                vec2.z += cM_rndFX(1050.0f);
                mTargetAngleY = cM_atan2s(vec2.x, vec2.z);
            }
            mTimers[0] = cM_rndF(20.0f) + 20.0f;
            mTargetSpeedXZ = cM_rndF(5.0f) + 8.0f;
        }

        if (mTimers[1] == 0) {
            mTargetSpeedY = -cM_rndF(3.0f);
            mTimers[1] = cM_rndF(20.0f) + 20.0f;
        }

        SpeedSet();
        if (mLocation == LOC_OUTSIDE) {
            cLib_addCalcAngleS2(&mWallAngle.x, 0, 0x10, 0x1000);
            cLib_addCalcAngleS2(&mWallAngle.z, 0, 0x10, 0x1000);
        } else {
            cLib_addCalcAngleS2(&mWallAngle.x, 0, 0x10, 0x100);
            cLib_addCalcAngleS2(&mWallAngle.z, 0, 0x10, 0x100);
        }
        if (!field_0x735) {
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);
        }

        if (WallCheck()) {
            mAction = ACT_WAIT;
            mMode = 0;
            speedF = 0.0f;
            speed.y = 0.0f;
            shape_angle.x = 0;
            shape_angle.z = 0;
        }

        if (mLocation == LOC_AGITHA) {
            cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0x10, 0x100);
        }
        break;
    }

    if (mpMorf->getPlaySpeed() == 1.0f) {
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_BTBT, 0, -1);
    }
}

/* 80C2C7C8-80C2C944 001A48 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__13daObjKABUTO_cFv */
void daObjKABUTO_c::Z_BufferChk() {
    cXyz vec2, vec1;
    vec1 = current.pos;
    vec1.y += 20.0f;
    mDoLib_project(&vec1, &vec2);
    f32 trim_height;
    camera_class* camera = dComIfGp_getCamera(0);
    if (camera != NULL) {
        trim_height = camera->mCamera.TrimHeight();
    } else {
        trim_height = 0.0f;
    }
    if (vec2.x > 0.0f && vec2.x < 608.0f && vec2.y > trim_height && vec2.y < 448.0f - trim_height) {
        dComIfGd_peekZ(vec2.x, vec2.y, &mBufferZ);
    }

    f32 near = dComIfGd_getView()->mNear;
    f32 far = dComIfGd_getView()->mFar;
    mDoLib_pos2camera(&vec1, &vec2);
    vec2.z += 50.0f;
    if (vec2.z > 0.0f) {
        vec2.z = 0.0f;
    }
    mScreenZ = ((near + far * near / vec2.z) / (far - near) + 1.0f) * 0xffffff;
}

/* 80C2C944-80C2CA08 001BC4 00C4+00 1/1 0/0 0/0 .text            Action__13daObjKABUTO_cFv */
void daObjKABUTO_c::Action() {
    switch (mAction) {
    case ACT_WAIT:
        WaitAction();
        break;
    case ACT_WALK:
        WalkAction();
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KSKS, 0, -1);
        break;
    case ACT_MOVE:
        MoveAction();
        break;
    }
    Insect_GetDemoMain();
    mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
}

/* 80C2CA08-80C2CAC4 001C88 00BC+00 1/1 0/0 0/0 .text            ShopAction__13daObjKABUTO_cFv */
void daObjKABUTO_c::ShopAction() {
    switch (mAction) {
    case ACT_WAIT:
        ShopWaitAction();
        break;
    case ACT_WALK:
        WalkAction();
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KSKS, 0, -1);
        break;
    case ACT_MOVE:
        MoveAction();
        break;
    }
    mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
}

/* 80C2CAC4-80C2CADC 001D44 0018+00 1/0 0/0 0/0 .text            Insect_Release__13daObjKABUTO_cFv
 */
void daObjKABUTO_c::Insect_Release() {
    field_0x56C = 1;
    mAction = ACT_MOVE;
    mMode = 0;
}

/* 80C2E1E0-80C2E1E4 0000D0 0002+02 1/2 0/0 0/0 .rodata          l_kab_itemno */
static u8 const l_kab_itemno[2] = {0xC0, 0xC1};

// Some unused function went here.
// This fake function is here in its place to make the literals match
static f32 fake(f32 param_0) {
    return param_0 * -9.0f * -0.2f * 0.05f;
}

/* 80C2CADC-80C2CC18 001D5C 013C+00 1/1 0/0 0/0 .text            ParticleSet__13daObjKABUTO_cFv */
void daObjKABUTO_c::ParticleSet() {
    if (mScreenZ > mBufferZ) {
        cLib_chaseF(&mParticleScale, 0.0f, 1.0f);
    } else {
        cLib_chaseF(&mParticleScale, mParticleTargetScale, 1.0f);
    }
    mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0xa1b, &current.pos, &tevStr,
                                          &shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
    f32 scale = mParticleScale;
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey1);
    if (emitter != NULL) {
        emitter->setGlobalParticleScale(scale, scale);
    }
    emitter = dComIfGp_particle_getEmitter(mParticleKey2);
    if (emitter != NULL) {
        emitter->setGlobalParticleScale(scale, scale);
    }
}

/* 80C2CC18-80C2D21C 001E98 0604+00 1/1 0/0 0/0 .text            Execute__13daObjKABUTO_cFv */
int daObjKABUTO_c::Execute() {
    if (ChkGetDemo()) {
        mScreenZ = mBufferZ + 10000.0f;
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
        Insect_GetDemoMain();
        ParticleSet();
        return 1;
    }

    daPy_py_c* player = daPy_getPlayerActorClass();
    attention_info.position = current.pos;
    eyePos = current.pos;
    eyePos.y += 10.0f;

    switch (mLocation) {
    case LOC_OUTSIDE:
        if (!fopAcM_checkHookCarryNow(this)) {
            Action();
        } else {
            home.pos = current.pos;
        }

        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0xa1c, &current.pos, &tevStr,
                                              &shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
        SetCcSph();
        ObjHit();

        if (mBoomerangHit) {
            home.pos = current.pos;
            cXyz vec = player->current.pos;
            vec.y += 100.0f;
            if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1c00)) {
                mBoomerangMove.bgCheckAfterOffset(&current.pos);
                current.pos.y += 0.5f;
            } else {
                dBgS_LinChk lin_chk;
                lin_chk.SetObj();
                lin_chk.Set(&vec, &current.pos, NULL);
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    cM3dGPla plane;
                    dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                    current.pos = old.pos = lin_chk.i_GetCross();
                    mAction = ACT_WAIT;
                    mMode = 0;
                    const cXyz* normal = plane.i_GetNP();
                    current.pos = lin_chk.i_GetCross();
                    cXyz zero(0.0f, 0.0f, 0.0f);
                    cXyz vec(0.0f, normal->y, normal->z);
                    mWallAngle.z = -cM_atan2s(normal->x, zero.abs(vec));
                    mWallAngle.x = cM_atan2s(normal->z, normal->y);
                    mDownAngleY = cM_atan2s(normal->x, normal->z);
                } else {
                    mAction = ACT_MOVE;
                    mMode = 2;
                    J3DAnmTransform* anm =
                        static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 6));
                    mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
                    speedF = 8.0f;
                    mTargetSpeedXZ = cM_rndF(5.0f) + 8.0f;
                    home.pos = current.pos;
                    mTargetSpeedY = 5.0f;
                    speed.y = 5.0f;
                    mTimers[0] = 50;
                    current.pos.y += 50.0f;
                    mTimers[1] = cM_rndF(5.0f) + 5.0f;
                    current.pos.y = old.pos.y = player->current.pos.y + 100.0f;
                }
                mBoomerangHit = 0;
            }
        }

        eyePos = current.pos;
        eyePos.y += 10.0f;
        attention_info.position = eyePos;
        attention_info.position.y += 10.0f;
        ParticleSet();
        break;

    case LOC_AGITHA:
        ShopAction();
        break;
    }

    if (mAction == ACT_MOVE && mMode == 2 && speed.y < 0.0f) {
        mAcch.CrrPos(dComIfG_Bgsp());
    }
    mpBtkAnm->play();
    mpBrkAnm->play();
    mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    return 1;
}

/* 80C2D21C-80C2D3A4 00249C 0188+00 1/1 0/0 0/0 .text            ObjHit__13daObjKABUTO_cFv */
void daObjKABUTO_c::ObjHit() {
    if (mCcSph.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcSph.GetTgHitObj();
        if (hit_obj->ChkAtType(AT_TYPE_BOOMERANG)) {
            if (!mBoomerangHit) {
                mBoomerangHit = true;
                mCcSph.GetTgHitGObj();
                mBoomerangMove.initOffset(&current.pos);
            }
        } else if (!hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD)
                    && hit_obj->ChkAtType(AT_TYPE_HOOKSHOT)) {
            cXyz offset(0.0f, 0.0f, 0.0f);
            daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &offset);
            mAction = ACT_MOVE;
            mMode = 2;
            mBoomerangHit = false;
            J3DAnmTransform* anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Kab_m", 6));
            mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
            speedF = 8.0f;
            mTargetSpeedXZ = cM_rndF(5.0f) + 8.0f;
            mTimers[1] = cM_rndF(5.0f) + 5.0f;
        }
        mCcSph.ClrTgHit();
    }
}

/* 80C2D3A4-80C2D40C 002624 0068+00 1/1 0/0 0/0 .text            Delete__13daObjKABUTO_cFv */
int daObjKABUTO_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "Kab_m");
    if (mHIOInit) {
        hioInit = false;
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
    return 1;
}

/* 80C2D40C-80C2D474 00268C 0068+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjKABUTO_cFv */
void daObjKABUTO_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mWallAngle);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

int daObjKABUTO_c::Draw() {
    if (mDraw) {
        Z_BufferChk();
        J3DModel* model = mpMorf->getModel();
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        mpBtkAnm->entry(model->getModelData());
        mpBrkAnm->entry(model->getModelData());
        mpMorf->entryDL();
        if (mLocation == LOC_OUTSIDE) {
            dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 15.0f, mAcch.m_gnd, 0,
                                     l_HIO.field_0x10, dDlst_shadowControl_c::getSimpleTex());
        }
    }
    return 1;
}

/* 80C2D474-80C2D558 0026F4 00E4+00 1/0 0/0 0/0 .text            daObjKABUTO_Draw__FP13daObjKABUTO_c
 */
static int daObjKABUTO_Draw(daObjKABUTO_c* i_this) {
    return i_this->Draw();
}

/* 80C2D558-80C2D578 0027D8 0020+00 2/1 0/0 0/0 .text daObjKABUTO_Execute__FP13daObjKABUTO_c */
static int daObjKABUTO_Execute(daObjKABUTO_c* i_this) {
    return i_this->Execute();
}

/* 80C2E200-80C2E204 0000F0 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
static u16 const l_musiya_num[2] = {0x0191, 0x0192};

/* 80C2D578-80C2D724 0027F8 01AC+00 1/1 0/0 0/0 .text            CreateChk__13daObjKABUTO_cFv */
bool daObjKABUTO_c::CreateChk() {
    u8 param = (fopAcM_GetParam(this) >> 8) & 0xf;
    if (param == 0xf) {
        param = 0;
    }

    if (mLocation != LOC_UNK_2) {
        if (param != 0) {
            if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_MALE]])
                || !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_FEMALE]]))
            {
                return false;
            }
        } else {
            if (!strcmp("R_SP160", dComIfGp_getStartStageName())
                && dComIfGp_getStartStageRoomNo() == 3)
            {
                if (dMenu_Insect_c::isCatchNotGiveInsect(l_kab_itemno[mSex])) {
                    return false;
                }
                if ((mSex == SEX_MALE && !dComIfGs_isEventBit(
                        dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]]))
                    || (mSex == SEX_FEMALE && !dComIfGs_isEventBit(
                        dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]])))
                {
                    return false;
                }
            }
        }
    }

    return true;
}

/* 80C2D724-80C2DF60 0029A4 083C+00 1/1 0/0 0/0 .text            create__13daObjKABUTO_cFv */
cPhs__Step daObjKABUTO_c::create() {
    fopAcM_SetupActor(this, daObjKABUTO_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "Kab_m");

    if (step == cPhs_COMPLEATE_e) {
        mLocation = fopAcM_GetParam(this) & 0xf;
        if (mLocation == LOC_UNK_2) {
            field_0x56C = 0;
            shape_angle.x -= 0x2000;
            fopAcM_OnStatus(this, 0x4000);
        } else {
            mDraw = true;
            attention_info.distances[fopAc_attn_CARRY_e] = 0x5D;
        }

        mSex = (fopAcM_GetParam(this) >> 4) & 1;
        setItemNo(l_kab_itemno[mSex]);
        setSaveBitNo(l_musiya_num[mSex]);

        if (!CreateChk()) {
            return cPhs_ERROR_e;
        }

        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xb60)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            hioInit = true;
            mHIOInit = true;
            l_HIO.field_0x4 = -1;
        }

        mAction = ACT_WAIT;
        mMode = 0;
        gravity = 0.0f;
        bool cross = false;

        if (mLocation != LOC_UNK_2) {
            cXyz vec1(0.0f, 0.0f, 500.0f);
            cXyz vec2(0.0f, 0.0f, -200.0f);
            cXyz vec3, vec4;
            dBgS_LinChk lin_chk;
            lin_chk.SetObj();
            for (int i = 0; i < 4; i++) {
                cLib_offsetPos(&vec3, &current.pos, shape_angle.y + 0x4000 * i, &vec1);
                cLib_offsetPos(&vec4, &current.pos, shape_angle.y + 0x4000 * i, &vec2);
                lin_chk.Set(&vec4, &vec3, NULL);
                lin_chk.SetObj();
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    cM3dGPla plane;
                    dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                    const cXyz* normal = plane.i_GetNP();
                    current.pos = lin_chk.i_GetCross();
                    cXyz zero(0.0f, 0.0f, 0.0f);
                    cXyz normalYZ(0.0f, normal->y, normal->z);
                    mWallAngle.z = -cM_atan2s(normal->x, zero.abs(normalYZ));
                    mWallAngle.x = cM_atan2s(normal->z, normal->y);
                    mDownAngleY = cM_atan2s(normal->x, normal->z);
                    cross = true;
                    break;
                }
            }
            
            if (!cross) {
                vec1.set(0.0f, 500.0f, 0.0f);
                vec3.set(0.0f, -1000.0f, 0.0f);
                lin_chk.Set(&vec1, &vec3, NULL);
                lin_chk.SetObj();
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    cM3dGPla plane;
                    dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                    const cXyz* normal = plane.i_GetNP();
                    current.pos = lin_chk.i_GetCross();
                    cXyz zero(0.0f, 0.0f, 0.0f);
                    cXyz normalYZ(0.0f, normal->y, normal->z);
                    mWallAngle.z = -cM_atan2s(normal->x, zero.abs(normalYZ));
                    mWallAngle.x = cM_atan2s(normal->z, normal->y);
                    mDownAngleY = cM_atan2s(normal->x, normal->z);
                }
            }
        } else {
            mAction = ACT_WAIT;
            mTimers[0] = 10;
            if (!strcmp("R_SP160", dComIfGp_getStartStageName())
                && dComIfGp_getStartStageRoomNo() == 3)
            {
                mLocation |= LOC_UNK_3;
            }
        }

        attention_info.flags = 0;
        if (mLocation == LOC_OUTSIDE) {
            InitCcSph();
        }
        if (mLocation == LOC_UNK_2 && !(!strcmp("R_SP160", dComIfGp_getStartStageName())
            && dComIfGp_getStartStageRoomNo() == 3))
        {
            InitCcSph();
        }
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
        fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);

        if (mSex == SEX_FEMALE) {
            scale.x = 1.2f;
            scale.y = 1.2f;
            scale.z = 1.2f;
            mParticleScale = 1.0f;
            mParticleTargetScale = 1.0f;
        } else if (mSex == SEX_MALE) {
            scale.x = 1.5f;
            scale.y = 1.5f;
            scale.z = 1.5f;
            mParticleScale = 1.1f;
            mParticleTargetScale = 1.1f;
        }

        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mTimers[2] = 100;
        daObjKABUTO_Execute(this);
    }

    return step;
}

/* 80C2E060-80C2E068 0032E0 0008+00 1/0 0/0 0/0 .text daObjKABUTO_IsDelete__FP13daObjKABUTO_c */
static int daObjKABUTO_IsDelete(daObjKABUTO_c* i_this) {
    return 1;
}

/* 80C2E228-80C2E248 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKABUTO_Method */
static actor_method_class l_daObjKABUTO_Method = {
    (process_method_func)daObjKABUTO_Create,
    (process_method_func)daObjKABUTO_Delete,
    (process_method_func)daObjKABUTO_Execute,
    (process_method_func)daObjKABUTO_IsDelete,
    (process_method_func)daObjKABUTO_Draw,
};

/* 80C2E248-80C2E278 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kabuto */
extern actor_process_profile_definition g_profile_Obj_Kabuto = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_Kabuto,
    &g_fpcLf_Method.mBase,
    sizeof(daObjKABUTO_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x1DD,
    &l_daObjKABUTO_Method,
    0xC0120,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
