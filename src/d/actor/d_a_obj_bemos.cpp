/**
 * @file d_a_obj_bemos.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bemos.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "SSystem/SComponent/c_lib.h"

//
// Forward References:
//

extern "C" extern char const* const d_a_obj_bemos__stringBase0;

#ifdef DEBUG
daObjBm_HIO_c l_HIO;

daObjBm_HIO_c::daObjBm_HIO_c() {
    mBeamScale.set(0.5f, 0.5f, 1.0f);
    mSearchDistance = 1000.0f;
    mSearchAngle = 30000;
    mPatrolRotationSpeed = 500;
    mAttackRotationSpeed = 450;
    mBeamLowerDistance = 300.0f;
    mBeamMiddleDistance = 600.0f;
    field_0x1C = 1000.0f;
    mTargetOffsetDistance = 0.0f;
    mNoSearchTimeAfterSwitchActivation = 20;
    mDetectionAngle = 25000;
    mSoundPositionMoveSpeed = 60.0f;
    mNoSearchAttackTime = 0;
    mSearchSpeedOnDetection = 1000;
    mBodyScale = 1.0f;
    mDebugDraw = 0;
    mCheckDraw = 0;
}


daObjBm_HIO_c::genMessage(JORMContext* ctx) {
  ctx->genLabel("ビーモス", 0, 0, NULL, -1, -1, 512, 24);
  ctx->genCheckBox("デバッグ描画", &mDebugDraw, 1, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("サーチ距離", &mSearchDistance, 100.0f, 5000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("サーチ角度", &mSearchAngle, 0.0f, 32767.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("発見角度", &mDetectionAngle, 0.0f, 32767.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("巡回回転速度", &mPatrolRotationSpeed, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("攻撃回転速度", &mAttackRotationSpeed, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("ビーム発射・下距離", &mBeamLowerDistance, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("ビーム発射・中距離", &mBeamMiddleDistance, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("目標オフセット距離", &mTargetOffsetDistance, 0.0f, 500.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("ＳＷ起動後サーチ無し時間", &mNoSearchTimeAfterSwitchActivation, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("発音位置移動速度", &mSoundPositionMoveSpeed, 0.0f, 1000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("サーチ無し攻撃時間", &mNoSearchAttackTime, 0.0f, 100.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("発見時のサーチ速度", &mSearchSpeedOnDetection, 0.0f, 10000.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("本体スケール", &mBodyScale, 0.1f, 5.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("ビームＸスケール", &mBeamScale.x, 0.1f, 10.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genSlider("ビームＹスケール", &mBeamScale.y, 0.1f, 10.0f, 0, NULL, -1, -1, 512, 24);
  ctx->genCheckBox("チェック描画", &mCheckDraw, 1, 0, NULL, -1, -1, 512, 24);
}
#endif

/* 80BAE36C-80BAE4A8 0000EC 013C+00 1/1 0/0 0/0 .text
 * PPCallBack__9daObjBm_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
// NONMATCHING
void daObjBm_c::PPCallBack(fopAc_ac_c* i_bgActor, fopAc_ac_c* i_actorP, s16 param_2,
                               dBgW_Base::PushPullLabel param_3) {
    int tmp = cLib_checkBit((int)param_2, 3);
    u32 l_swNo3 = ((daObjBm_c*)i_bgActor)->getSwNo3();
    u32 l_moveType = ((daObjBm_c*)i_bgActor)->getMoveType();

    if (tmp && !fopAcM_isSwitch(i_bgActor,l_swNo3)) {
        int tmp2 = cLib_checkBit(tmp,2);
        s16 angle = param_2;
   
        if (tmp2) {
            angle -= -0x8000;
        }
        
        angle -= ((daObjBm_c*)i_bgActor)->home.angle.y;

        JUT_PANIC(513,"0");
        
        ((daObjBm_c*)i_bgActor)->mPPLabel = (dBgW::PushPullLabel)param_2;
        
        if (angle >= -0x2000 && angle < 0x2000) {
            tmp = 0;
        } else {
            if (angle >= 0x2000 && angle < 0x6000) {
                tmp = 1;
            } else {
                if (angle < 0x6000 && angle < -0x6000) {
                    tmp = 2;
                } else {
                    tmp = 3;
                }
            }
        }

        if (l_moveType != 0 || tmp == 0) {
            for (int i = 0; i < 4; i++) {
                if (tmp == 1) {
                    ((daObjBm_c*)i_bgActor)->mMomentCnt[i]++;
                } else {
                    ((daObjBm_c*)i_bgActor)->mMomentCnt[i] = 0;
                }
            }
        
            ((daObjBm_c*)i_bgActor)->field_0x10d2 = 1;
        }
    }
}

/* 80BAE4A8-80BAE5FC 000228 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
// NONMATCHING
static int nodeCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        u16 jnt_no = param_0->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjBm_c* beamos = (daObjBm_c*)model->getUserArea();
        cMtx_copy(model->getAnmMtx(jnt_no), mDoMtx_stack_c::get());

        if (jnt_no == beamos->getHeadJoint()) {
            mDoMtx_stack_c::XrotM(beamos->field_0xf96 + (beamos->field_0x1000 * cM_scos(beamos->field_0x1000 * beamos->field_0xff0)));
        } else {
            if (jnt_no == beamos->getBigGearJoint()) {
                mDoMtx_stack_c::XrotM(beamos->field_0xf9a);
            } else {
                if (jnt_no == beamos->getSmallGear0Joint()) {
                    mDoMtx_stack_c::XrotM(beamos->field_0xf9e);
                } else {
                    if (jnt_no == beamos->getSmallGear1Joint()) {
                        mDoMtx_stack_c::XrotM(beamos->field_0xfa2);
                    } else {
                        if (jnt_no == beamos->getSmallGear2Joint()) {
                            mDoMtx_stack_c::XrotM(beamos->field_0xfa6);
                        }
                    }
                }
            }
        }

        cMtx_copy(mDoMtx_stack_c::get(),model->getAnmMtx(jnt_no));
    }
}

/* ############################################################################################## */
/* 80BB37B8-80BB37C4 000000 000C+00 13/13 0/0 0/0 .rodata          l_eye_offset */
static cXyz const l_eye_offset = cXyz(0.0f,330.0f,75.0f);

/* 80BB37C4-80BB37D0 00000C 000C+00 0/1 0/0 0/0 .rodata          l_high_beam_offset */
static cXyz const l_high_beam_offset = cXyz(0.0f,255.0f,65.0f);

/* 80BB37D0-80BB37DC 000018 000C+00 0/1 0/0 0/0 .rodata          l_mid_beam_offset */
static cXyz const l_mid_beam_offset = cXyz(0.0f, 205.0f, 65.0f);

/* 80BB37DC-80BB37E8 000024 000C+00 0/1 0/0 0/0 .rodata          l_low_beam_offset */
static cXyz const l_low_beam_offset = cXyz(0.0f, 160.0f, 65.0f);

/* 80BB37E8-80BB3818 000030 0030+00 1/1 0/0 0/0 .rodata          l_craw_offset */
static cXyz const l_craw_offset[4] = {
    cXyz(-95.0f,0.0f,0.0f),
    cXyz(95.0f,0.0f, 0.0f), 
    cXyz(0.0f, 0.0f,-95.0f),
    cXyz(0.0f,0.0f,95.0f),
};

/* 80BB3818-80BB3820 000060 0008+00 1/2 0/0 0/0 .rodata          M_dir_base__9daObjBm_c */
s16 const daObjBm_c::M_dir_base[4] = {
    0x0000, 
    0x4000, 
    0x8000, 
    0xC000,
};

/* 80BAE5FC-80BAE68C 00037C 0090+00 1/1 0/0 0/0 .text            initBaseMtx__9daObjBm_cFv */
void daObjBm_c::initBaseMtx() {
    field_0x10a0.set(0.5f, 0.5f, 1.0f);
    mpModel->setBaseScale(scale);
    mpModel3->setBaseScale(scale);
    mpModel2->setBaseScale(field_0x10a0);
    setBaseMtx();
}

/* 80BAE68C-80BAE778 00040C 00EC+00 2/2 0/0 0/0 .text            setBaseMtx__9daObjBm_cFv */
void daObjBm_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x,current.pos.y,current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(1.0f,1.0f,1.0f);
    PSMTXCopy(mDoMtx_stack_c::get(),mBgMtx);
    
#if DEBUG
    field_0x10e8 = l_HIO.mBeamScale.x;
    field_0x10ec = l_HIO.mBeamScale.y;
#endif

    mpModel2->setBaseScale(field_0x10a0);
    mDoMtx_stack_c::transS(field_0xfb8);
    mDoMtx_stack_c::ZXYrotM(field_0xfc4);
    mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(home.angle);
    mpModel3->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BB3A94-80BB3A98 -00001 0004+00 8/9 0/0 0/0 .data            l_arcName */
static const char* l_arcName[2] = {
    "Obj_bm",
    ""
};

/* 80BB3A98-80BB3A9C -00001 0004+00 0/1 0/0 0/0 .data            l_eye_matName */
static const char* l_eye_matName = "bmEye";

/* 80BB3A9C-80BB3AA0 -00001 0004+00 0/1 0/0 0/0 .data            l_head_joint */
static char* l_head_joint = "head";

/* 80BB3AA0-80BB3AA4 -00001 0004+00 0/1 0/0 0/0 .data            l_bigGear_joint */
static char* l_bigGear_joint = "cogRed";

/* 80BB3AA4-80BB3AA8 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear0_joint */
static char* l_smallGear0_joint = "cogBlue";

/* 80BB3AA8-80BB3AAC -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear1_joint */
static char* l_smallGear1_joint = "cogGreen";

/* 80BB3AAC-80BB3AB0 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear2_joint */
static char* l_smallGear2_joint = "cogYellow";

/* 80BB3AB0-80BB3AC4 00003C 0014+00 0/2 0/0 0/0 .data            l_joint_table */
static char* l_joint_table[5] = {
    l_head_joint,
    l_bigGear_joint,
    l_smallGear0_joint,
    l_smallGear1_joint,
    l_smallGear2_joint,
};


/* 80BB3AC4-80BB3ADC 000050 0018+00 0/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {
    {-1200.0f,
    -100.0f,
    -1200.0f
    },
    {
        1200.0f,
    400.0f,
    1200.0f
    },
};

/* 80BB3ADC-80BB3B1C 000068 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x402020, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80BB3B1C-80BB3B68 0000A8 004C+00 0/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x1, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 20.0f}, // mCps
    } // mCpsAttr
};

/* 80BB3B68-80BB3BAC 0000F4 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        15.0f, // mRadius
        60.0f // mHeight
    } // mCyl
};

/* 80BAE778-80BAEADC 0004F8 0364+00 1/0 0/0 0/0 .text            Create__9daObjBm_cFv */
int daObjBm_c::Create() {
    fopAcM_SetMtx(this,mpModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mSph.Set(l_sph_src);
    mSph.SetStts(&mStts);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    
    for (int i = 0; i < 4; i++) {
        mCyl[i].Set(l_cyl_src);
        mCyl[i].SetStts(&mStts);
    }
    
    fopAcM_setCullSizeBox(this,l_cull_box[0].x,l_cull_box[0].y,l_cull_box[0].z,l_cull_box[1].x, l_cull_box[1].y, l_cull_box[1].z);
    JUTNameTab* joint_name = mpModel->getModelData()->getJointTree().getJointName();
    for (int i = 0; i < 5; i++) {
        if ( mpModel->getModelData()->getJointNum() <= i) break;
        if (!strcmp(joint_name->getName(i), l_joint_table[2])) {
            mHeadJntNo = i;
            mpModel->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    mpModel->setUserArea((uintptr_t)this);
    JUTNameTab* material_name = mpModel->getModelData()->getMaterialTable().getMaterialName();

    u32 uVar12 = 0;
    while( true ) {
        if ( mpModel->getModelData()->getMaterialNum() <= uVar12) break;
        if (strcmp(material_name->getName(uVar12),"bmEye") == 0) {
            mpMaterial = mpModel->getModelData()->getMaterialNodePointer(uVar12);
        }
        uVar12 = uVar12 + 1;
    }
    
#if DEBUG
    if (field_0xfcc == 0) {
        OSReport_Error("ブ［モス]。苔のマテリアルがありません");
        return 0;
    }
#endif
    
    // (**(code **)(*(int *)(this + 0x10a0) + 0x14))(this + 0x1080,this + 0x1068,1);
    // (**(code **)(*(int *)(this + 0x10d0) + 0x14))(this + 0x10b0,this + 0x1074,1);

    field_0x1039 = 1;

    if (fopAcM_isSwitch(this,getSwNo2())) {
        field_0xff7 = 0x0;

        if (getMoveType() != 1) {
            mpBckAnm3->setFrame(mpBckAnm3->getEndFrame());
        }
    
        initActionObjBemos();
    } else {
        initActionEnBemos();
        if (getSwNo() != -1) {
            if (fopAcM_isSwitch(this,getSwNo())) {
                field_0xff7 = 0;
                initActionSwWait();
            }
        }
        field_0xff7 = 1;
        J3DAnmTevRegKey* model_data = (J3DAnmTevRegKey*)dComIfG_getObjectRes("Obj_bm", 0x14);
        mpBrkAnm->init(mpModel->getModelData(),model_data,1,2,1.0f,0,-1);
        mpBckAnm->setFrame(mpBckAnm->getEndFrame());
        initActionWarning();
    }
    
    initBaseMtx();
    return 1;
}

/* 80BB3BC4-80BB3BDC 000150 0018+00 0/1 0/0 0/0 .data            l_func$4297 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4297[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3C18-80BB3C54 0001A4 003C+00 0/1 0/0 0/0 .data            l_func$4353 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4353[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3C84-80BB3CB4 000210 0030+00 0/1 0/0 0/0 .data            mode_proc$4406 */
// static daObjBm_c::modeFunc mode_proc[5];

/* 80BB3CE4-80BB3D14 000270 0030+00 0/1 0/0 0/0 .data            l_eff_func$4732 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_eff_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3D14-80BB3D64 0002A0 0050+00 2/2 0/0 0/0 .data            M_lin5__Q29daObjBm_c5Bgc_c */
const daObjBm_c::BgcSrc_c daObjBm_c::Bgc_c::M_lin5[5] = {
    { 0.0f, 0.0f, 0.0f, 0.0f },
    { -0.5f, -0.5f, -1.0f, -1.0f },
    { 0.5f, -0.5f, 1.0f, -1.0f },
    { 0.5f, 0.5f, 1.0f, 1.0f },
    { -0.5f, 0.5f, -1.0f, 1.0f },
};

/* 80BAEADC-80BAEF90 00085C 04B4+00 1/0 0/0 0/0 .text            CreateHeap__9daObjBm_cFv */
int daObjBm_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], 0xd);
    JUT_ASSERT(767, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[0], 0x13);
    JUT_ASSERT(633, pbrk != 0);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL || mpBrkAnm->init(modelData, pbrk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[0], 7);
    JUT_ASSERT(651, pbck != 0);
    mpBckAnm = new mDoExt_bckAnm();
    if (mpBckAnm == NULL || mpBckAnm->init(pbck, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], 0xe);
    JUT_ASSERT(0x29A, modelData != 0);
    mpModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mpModel2 == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[0], 0x1a);
    JUT_ASSERT(680, pbtk != 0);
    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL || mpBtkAnm->init(modelData, pbtk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    mpBtkAnm->setFrame(mpBtkAnm->getEndFrame());

    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[0], 0x18);
    JUT_ASSERT(699, pbtk != 0);
    mpBtkAnm2 = new mDoExt_btkAnm();
    if (mpBtkAnm2 == NULL || mpBtkAnm2->init(modelData, pbtk, 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }

    J3DAnmTransform* pbck2 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[0], 9);
    JUT_ASSERT(711, pbck != 0);
    mpBckAnm2 = new mDoExt_bckAnm();
    if (mpBckAnm2 == NULL || mpBckAnm2->init(pbck2, 1, 2, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], 0xf);
    JUT_ASSERT(0x29A, modelData != 0);
    mpModel3 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel3 == NULL) {
        return 0;
    }

    J3DAnmTransform* pbck3 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[0], 8);
    JUT_ASSERT(680, pbck3 != 0);
    mpBckAnm3 = new mDoExt_bckAnm();
    if (mpBckAnm3 == NULL || mpBckAnm3->init(pbck3, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }
    mpBckAnm3->setPlaySpeed(0.0f);

    return 1;
}

/* 80BAEFD8-80BAF09C 000D58 00C4+00 1/1 0/0 0/0 .text            create1st__9daObjBm_cFv */
int daObjBm_c::create1st() {
    if (field_0x100e == 0) {
        field_0x100a = home.angle.x;
        field_0x100c = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0x100e = 1;
    }

    cPhs__Step phase_state = (cPhs__Step)dComIfG_resLoad(&mPhase,l_arcName[0]);

    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = (cPhs__Step)MoveBGCreate(l_arcName[0],0x1e,dBgS_MoveBGProc_TypicalRotY,0x5500,NULL);
        if (phase_state == cPhs_ERROR_e) {
#if DEBUG
            // finish
            OS_REPORT("", fopAcM_GetParam);
            l_HIO.entryHIO("ビーモス");
#endif
            return phase_state;
    } 

  }

  return phase_state;
}

/* 80BAF09C-80BAF29C 000E1C 0200+00 1/0 0/0 0/0 .text            Execute__9daObjBm_cFPPA3_A4_f */
int daObjBm_c::Execute(Mtx** param_0) {
#ifdef DEBUG
    scale.setall(l_HIO.mBodyScale)
    mpModel->setBaseScale(scale);
    daPy_py_c* player = daPy_getPlayerActorClass();
#endif

    field_0xff0++;

    if (field_0xf96 != field_0xf98 && field_0xfaa == 0) {
        field_0xfaa = 0xFA;
    }
    
    cLib_chaseAngleS(&field_0xf96,field_0xf98,field_0xfaa);
    cLib_chaseAngleS(&field_0xf9a,field_0xf9c,field_0xfae);
    cLib_chaseAngleS(&field_0xf9e,field_0xfa0,field_0xfae);
    cLib_chaseAngleS(&field_0xfa2,field_0xfa4,field_0xfae);
    cLib_chaseAngleS(&field_0xfa6,field_0xfa8,field_0xfae);

    main_proc_call();

    eyePos = l_eye_offset;
    
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(home.angle.y + field_0xf96);
    mDoMtx_stack_c::multVec(&eyePos, &eyePos);
    attention_info.position = eyePos;

    *param_0 = &mBgMtx;
    setBaseMtx();
    
    cLib_addCalcAngleS(&field_0xfaa,field_0xfac,0x1e,0x14,10);
    cLib_addCalcAngleS(&field_0xfae,field_0xfb0,0x1e,0x14,10);
    cLib_addCalc(&field_0x1000,0.0f,0.2f,KREG_F(2) + 50.0f, KREG_F(3) + 10.0f);
    field_0xfb2 = field_0xf96;

    if (mpBckAnm3->getFrame() == 0.0f) {
        setCrawCO();
    }
    
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mSound2.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80BAF29C-80BAF328 00101C 008C+00 1/1 0/0 0/0 .text            main_proc_call__9daObjBm_cFv */
void daObjBm_c::main_proc_call() {
    static daObjBm_c::procFunc l_func[] = {
        &daObjBm_c::actionEnBemos,
        &daObjBm_c::actionObjBemos,
    };

    (this->*l_func[field_0xfeb])();
}

/* 80BAF328-80BAF37C 0010A8 0054+00 1/1 0/0 0/0 .text            initActionEnBemos__9daObjBm_cFv */
void daObjBm_c::initActionEnBemos() {
    if (mpBgW && mpBgW->ChkUsed()) {
        mpBgW->OffPushPullOk();
    }

    mMode = 0;
}

/* 80BAF37C-80BAF46C 0010FC 00F0+00 2/2 0/0 0/0 .text            initActionObjBemos__9daObjBm_cFv */
void daObjBm_c::initActionObjBemos() {
    if (mpBgW && mpBgW->ChkUsed()) {
        mpBgW->OnPushPullOk();
    }

    mpBgW->SetPushPullCallback((dBgW_Base::PushPull_CallBack)PPCallBack);

    switch (getMoveType()) {
    case 0:
        if (fopAcM_isSwitch(this, getSwNo3())) {
            field_0x10b4 = 4;
            mode_wait();
            mode_dead_init();
        }
        break;
    case 1:
        if (fopAcM_isSwitch(this, getSwNo2())) {
            mode_wait();
            mode_dead_init();
        }
        break;
    }

    mMode = 1;
}

static s8 lbl_406_bss_46;

/* 80BAF46C-80BAF750 0011EC 02E4+00 1/0 0/0 0/0 .text            actionEnBemos__9daObjBm_cFv */
void daObjBm_c::actionEnBemos() {
    static daObjBm_c::procFunc l_func[] = {
        &daObjBm_c::actionSwWait,
        &daObjBm_c::actionWarning,
        &daObjBm_c::actionFindPlayer,
        &daObjBm_c::actionAttack,
        &daObjBm_c::actionDead,
    };

    if (mSph.ChkTgHit()) {
        cCcD_Obj* hitobj = mSph.GetTgHitObj();

        if (hitobj) {
            if (hitobj->ChkAtType(AT_TYPE_ARROW) || hitobj->ChkAtType(AT_TYPE_BOMB) || hitobj->ChkAtType(AT_TYPE_IRON_BALL)) {
                mDoAud_seStart(Z2SE_EN_BM_EYE_BREAK,&eyePos,0,dComIfGp_getReverb((int)fopAcM_GetRoomNo(this)));
                initEffectSet0();
                fopAcM_onSwitch(this,getSwNo2());
                initActionDead();
                OS_REPORT("ビーモス死亡！<%d>\n",getSwNo2());
            }
        }
    }

    mSph.ClrTgHit();
    calcBeamPos();
    effect_proc();
    (this->*l_func[field_0xfe4])();
    calcBeamLenAndAt();
    mpBckAnm2->play();
    mpBtkAnm->play();
    mpBtkAnm2->play();
    mpBrkAnm->play();
    mpBckAnm->play();
    mpBckAnm3->play();

    if (field_0xfaa != 0) {
        fopAcM_seStartLevel(this,Z2SE_EN_BM_TURN,0);
    }

    if (field_0xfe4 != 4 && field_0xfe4 != 0) {
        mSph.SetC(eyePos);
        dComIfG_Ccsp()->Set(&mSph);
    }

    if (field_0xfe4 == 3) {
        dComIfG_Ccsp()->Set(&mCps);
        mSound.startLevelSound(Z2SE_EN_BM_BEAM, 0, -1);
    }
}

/* 80BAF750-80BAF80C 0014D0 00BC+00 1/0 0/0 0/0 .text            actionObjBemos__9daObjBm_cFv */
void daObjBm_c::actionObjBemos() {
    static daObjBm_c::modeFunc mode_proc[] = {
        &daObjBm_c::mode_wait,
        &daObjBm_c::mode_walk,
        &daObjBm_c::mode_afl,
        &daObjBm_c::mode_dead,
    };

    (this->*mode_proc[field_0x10ac])();
}

/* 80BAF80C-80BAF8BC 00158C 00B0+00 1/1 0/0 0/0 .text            setCrawCO__9daObjBm_cFv */
void daObjBm_c::setCrawCO() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(home.angle.y);
    cXyz acStack_28;

    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::multVec(&l_craw_offset[i],&acStack_28);
        mCyl[i].SetC(acStack_28);
        dComIfG_Ccsp()->Set(&mCyl[i]);
  }
}

/* 80BAF8F8-80BAFC08 001678 0310+00 1/1 0/0 0/0 .text            calcBeamPos__9daObjBm_cFv */
void daObjBm_c::calcBeamPos() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dist = fopAcM_searchPlayerDistanceXZ(this);
    cXyz cStack_30 = l_low_beam_offset;

    if (dist > 600.0f) {
        cStack_30 = l_high_beam_offset;
    } else {
        if (dist > 300.0f) {
            cStack_30 = l_mid_beam_offset;
        }
    }
    
    s16 sVar2 = field_0xf96;
    cLib_chasePos(&field_0xfd8,cStack_30,5.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(sVar2 + current.angle.y);
    mDoMtx_stack_c::multVec(&field_0xfd8, &field_0xfb8);

    f32 fVar1 = field_0x1004;
    if (fVar1 < 300.0f)
        fVar1 = 300.0f;

    cXyz cStack_3c(0.0f,0.0f,fVar1);
    mDoMtx_stack_c::multVec(&cStack_3c,&field_0xfcc);
    field_0xfcc = player->current.pos;
    cXyz cStack_48 = field_0xfb8 - field_0xfcc;
    field_0xfc4.x = cM_atan2s(cStack_48.y,field_0xfcc.absXZ(field_0xfb8));
    field_0xfc4.y = sVar2 + current.angle.y;
    field_0xfc4.z = 0;

    if (field_0xfc4.x < cM_deg2s(DREG_F(15) + 20.0f))
        field_0xfc4.x = cM_deg2s(DREG_F(15) + 20.0f);

    mDoMtx_stack_c::transS(field_0xfb8);
    mDoMtx_stack_c::ZXYrotM(field_0xfc4.x, sVar2 + current.angle.y,0);
    mDoMtx_stack_c::multVec(&cStack_3c,&field_0xfcc);
}

/* 80BAFC08-80BAFF60 001988 0358+00 1/1 0/0 0/0 .text            calcBeamLenAndAt__9daObjBm_cFv */
void daObjBm_c::calcBeamLenAndAt() {
    // NONMATCHING
}

/* 80BAFFA8-80BB0104 001D28 015C+00 1/1 0/0 0/0 .text            checkFindPlayer__9daObjBm_cFv */
s8 daObjBm_c::checkFindPlayer() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dist = getSearchDistance();
#if DEBUG
    s16 tmp = l_HIO.mSearchAngle;
#else
    s16 tmp = 0x30d4*2;
#endif
    s8 ret = -1;
    field_0xfe8 = 0;
    f32 dist_to_player = fopAcM_searchPlayerDistanceXZ(this);
    f32 beamos_player_position_delta = current.pos.y - player->current.pos.y;

    if (dist_to_player > dist) {
        return -1;
    }

    if (fabs(beamos_player_position_delta) > (1.0f - (dist_to_player / dist)) * l_eye_offset.y) {
        return -1;
    }

    s16 angle = fopAcM_searchPlayerAngleY(this);
    s16 angle_diff = field_0xf96 - home.angle.y;

    if (abs(angle) - angle_diff < (tmp / 2)) {
        ret = 0;
    }

    if (ret == 0) {           
        cXyz eye(eyePos);
        cXyz eye2(player->eyePos);

        if (fopAcM_lc_c::lineCheck(&eye, &eye2, this)) {
            field_0xfe8 = 1;
        }
    }

    return ret;
}

/* 80BB0104-80BB0260 001E84 015C+00 1/1 0/0 0/0 .text            checkSearchPlayer__9daObjBm_cFv */
s8 daObjBm_c::checkSearchPlayer() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dist = getSearchDistance();
#if DEBUG
    s16 tmp = l_HIO.mSearchAngle;
#else
    s16 tmp = 0x30d4*2;
#endif
    s8 ret = -1;
    field_0xfe8 = 0;
    f32 dist_to_player = fopAcM_searchPlayerDistanceXZ(this);
    f32 beamos_player_position_delta = current.pos.y - player->current.pos.y;

    if (dist_to_player > dist) {
        return -1;
    }

    if (fabs(beamos_player_position_delta) > (1.0f - (dist_to_player / dist)) * l_eye_offset.y) {
        return -1;
    }

    s16 angle = fopAcM_searchPlayerAngleY(this);
    s16 angle_diff = field_0xf96 - home.angle.y;

    if (abs(angle) - angle_diff < (tmp / 2)) {
        ret = 0;
    }

    if (ret == 0) {           
        cXyz eye(eyePos);
        cXyz eye2(player->eyePos);

        if (fopAcM_lc_c::lineCheck(&eye, &eye2, this)) {
            field_0xfe8 = 1;
        }
    }

    return ret;
}

/* 80BB0260-80BB02B8 001FE0 0058+00 2/2 0/0 0/0 .text            getSearchDistance__9daObjBm_cFv */
f32 daObjBm_c::getSearchDistance() {
#if DEBUG
    f32 ret = l_HIO.mSearchDistance;
#else
    f32 ret = 1000.0f;
#endif

    if (getSearchDist() != 15 && getSearchDist()) {
        ret -= getSearchDist() * 50.0f;
    }

    return ret;
}

/* 80BB02B8-80BB0310 002038 0058+00 1/1 0/0 0/0 .text            getBeamSearchDistance__9daObjBm_cFv
 */
f32 daObjBm_c::getBeamSearchDistance() {
#if DEBUG
    f32 ret = l_HIO.mBeamLowerDistance;
#else
    f32 ret = 1000.0f;
#endif

    if (getBeamSearchDist() != 15 && getBeamSearchDist()) {
        ret -= getBeamSearchDist() * 50.0f;
    }

    return ret;
}

/* ############################################################################################## */
/* 80BB3F28-80BB3F2C 000048 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80BB3F28[4];

/* 80BB0310-80BB0580 002090 0270+00 1/1 0/0 0/0 .text            effect_proc__9daObjBm_cFv */
void daObjBm_c::effect_proc() {
    // NONMATCHING
}

/* 80BB0580-80BB0584 002300 0004+00 1/0 0/0 0/0 .text            effectWait__9daObjBm_cFv */
void daObjBm_c::effectWait() {}

/* ############################################################################################## */
/* 80BB3880-80BB3884 0000C8 0004+00 0/1 0/0 0/0 .rodata          eff_id_f$4818 */
static u16 const eff_id_f[2] = {
    0x8450,
    0x8451,
};

/* 80BB3884-80BB388C 0000CC 0008+00 0/1 0/0 0/0 .rodata          hit_eff_id$4819 */
static u16 const hit_eff_id[4] = {
    0x85A2,
    0x85A3,
    0x85A4,
    0x85A5,
};

/* 80BB0584-80BB0718 002304 0194+00 1/1 0/0 0/0 .text            initEffectSet0__9daObjBm_cFv */
void daObjBm_c::initEffectSet0() {
    // NONMATCHING
}

/* 80BB0718-80BB071C 002498 0004+00 1/0 0/0 0/0 .text            effectSet0__9daObjBm_cFv */
void daObjBm_c::effectSet0() {}

/* 80BB071C-80BB0720 00249C 0004+00 1/0 0/0 0/0 .text            effectSet1__9daObjBm_cFv */
void daObjBm_c::effectSet1() {}

/* 80BB0720-80BB0724 0024A0 0004+00 1/0 0/0 0/0 .text            effectEnd__9daObjBm_cFv */
void daObjBm_c::effectEnd() {}

/* 80BB0724-80BB0824 0024A4 0100+00 1/1 0/0 0/0 .text            check_to_walk__9daObjBm_cFv */
int daObjBm_c::check_to_walk() {
    int ret = -1;
    bool bVar1 = true;
    
    if (field_0x10d2) {
        dBgW::PushPullLabel iVar2 = cLib_checkBit<dBgW::PushPullLabel>(mPPLabel, dBgW::PPLABEL_PULL);
        dBgW::PushPullLabel iVar3 = cLib_checkBit<dBgW::PushPullLabel>(mPPLabel, dBgW::PPLABEL_4);
    
        s16 sVar5;
        if (iVar2) {
            if (iVar3) {
                sVar5 = 8;
        } else {
            sVar5 = 0x13;
      }
    } else if (iVar3) {
        sVar5 = 8;
    } else {
        sVar5 = 0x13;
    }

        for (int i = 0; i < 4; i++) {
            if (mMomentCnt[i] >= sVar5) {
                if (!mBgc.chk_wall_pre(this, mBgc.M_lin5, 5, M_dir_base[i])) {
                    ret = i;
                }
            } else {
                bVar1 = false;
            }
        }
    }

    if (bVar1) {
        clr_moment_cnt();
    }
  
    field_0x10d2 = 0;
    return ret;
}

/* 80BB0824-80BB0888 0025A4 0064+00 1/1 0/0 0/0 .text            mode_wait_init__9daObjBm_cFv */
void daObjBm_c::mode_wait_init() {
    fopAcM_SetSpeedF(this, 0.0f);
    fopAcM_SetGravity(this,-4.0f);
    mpBgW->SetCrrFunc(dBgS_MoveBGProc_Trans);
    clr_moment_cnt();
    field_0x10bc = -1;
    field_0x10ac = 0;
}

/* 80BB0888-80BB09C8 002608 0140+00 2/1 0/0 0/0 .text            mode_wait__9daObjBm_cFv */
void daObjBm_c::mode_wait() {

    f32 tmp1 = l_eye_offset.x;
    f32 tmp2 = l_eye_offset.z;

    if (field_0x10ce > 0)
        field_0x10ce--;
    
    int walk_check = check_to_walk();
    cXyz local_38;
    mDoMtx_stack_c::transS(home.pos);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mDoMtx_stack_c::transM(field_0x10b0 * 75.0f, 0.0f, field_0x10b4 * 75.0f);
    mDoMtx_stack_c::multVecZero(&local_38);
    current.pos.x = local_38.x;
    current.pos.z = local_38.z;

    if (walk_check != -1) {
        field_0x10bc = walk_check;
        
        ((daPy_py_c*)dComIfGp_getPlayer(0))->onPushPullKeep();
        mode_walk_init();
    
        if (cLib_checkBit<dBgW::PushPullLabel>(mPPLabel, dBgW::PPLABEL_PULL) != 0) {
            field_0x10cc = 13;
            field_0x10b8 = 2520.6155f;
        } else {
            field_0x10cc = 13;
            field_0x10b8 = 2520.6155f;
        }
    }
}

/* 80BB09C8-80BB09E0 002748 0018+00 1/1 0/0 0/0 .text            mode_walk_init__9daObjBm_cFv */
void daObjBm_c::mode_walk_init() {
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x10ac = 1;
}

/* 80BB3F60-80BB3F90 000080 0030+00 0/1 0/0 0/0 .bss             dir_vec$4972 */
#pragma push
#pragma force_active on
static u8 dir_vec[48];
#pragma pop

/* 80BB09E0-80BB0DA8 002760 03C8+00 1/0 0/0 0/0 .text            mode_walk__9daObjBm_cFv */
void daObjBm_c::mode_walk() {
    // NONMATCHING
}

/* 80BB0DA8-80BB0DC0 002B28 0018+00 1/0 0/0 0/0 .text            mode_afl__9daObjBm_cFv */
void daObjBm_c::mode_afl() {
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x10ac = 2;
}

/* 80BB0DC0-80BB0DE4 002B40 0024+00 2/2 0/0 0/0 .text            mode_dead_init__9daObjBm_cFv */
void daObjBm_c::mode_dead_init() {
    mpBgW->OffPushPullOk();
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x10ac = 3;
}

/* 80BB0DE4-80BB0DE8 002B64 0004+00 1/0 0/0 0/0 .text            mode_dead__9daObjBm_cFv */
void daObjBm_c::mode_dead() {}

/* 80BB0DE8-80BB0E0C 002B68 0024+00 2/2 0/0 0/0 .text            clr_moment_cnt__9daObjBm_cFv */
void daObjBm_c::clr_moment_cnt() {
    for (int i = 0; i < 4; i++) {
        mMomentCnt[i] = 0;
    }
}

/* 80BB0E0C-80BB0ED0 002B8C 00C4+00 1/1 0/0 0/0 .text            __ct__Q29daObjBm_c5Bgc_cFv */
daObjBm_c::Bgc_c::Bgc_c() {
    for (int i = 0; i < 23; i++) {
        field_0x0[i] = 0.0f;
        field_0x64[i] = cXyz::Zero;
    }

    field_0x5c = 0xFFFFFFFF;
    field_0x178 = 0xFFFFFFFF;
    field_0x17c = FLT_MAX;
    field_0x60 = 0.0f;
    mState = STATE_0_e;
}

/* ############################################################################################## */
/* 80BB3898-80BB3A08 0000E0 0170+00 0/0 0/0 0/0 .rodata          M_lin20__Q29daObjBm_c5Bgc_c */
const daObjBm_c::BgcSrc_c daObjBm_c::Bgc_c::M_lin20[] = {
    { 0.0f, 0.0f, 0.0f, 0.0f },
    { -0.25f, -0.25f, 0.0f, 0.0f },
    { -0.5f, -0.5f, -1.0f, -1.0f },
    { 0.0f, -0.5f, 1.0f, -1.0f },
    { 0.0f, 0.0f, 1.0f, 1.0f },
    { -0.5f, 0.0f, -1.0f, 1.0f },
    { 0.25f, -0.25f, 0.0f, 0.0f },
    { 0.0f, -0.5f, -1.0f, -1.0f },
    { 0.5f, -0.5f, 1.0f, -1.0f },
    { 0.5f, 0.0f, 1.0f, 1.0f },
    { 0.0f, 0.0f, -1.0f, 1.0f },
    { 0.25f, 0.25f, 0.0f, 0.0f },
    { 0.0f, 0.0f, -1.0f, -1.0f },
    { 0.5f, 0.0f, 1.0f, -1.0f },
    { 0.5f, 0.5f, 1.0f, 1.0f },
    { 0.0f, 0.5f, -1.0f, 1.0f },
    { -0.25f, 0.25f, 0.0f, 0.0f },
    { -0.5f, 0.0f, -1.0f, -1.0f },
    { 0.0f, 0.0f, 1.0f, -1.0f },
    { 0.0f, 0.5f, 1.0f, 1.0f },
    { -0.5f, 0.5f, -1.0f, 1.0f },
    { -0.75f, 0.25f, 0.0f, 0.0f },
    { -0.75f, -0.25f, 0.0f, 0.0f },
};

/* 80BB3F9C-80BB4728 0000BC 078C+00 1/2 0/0 0/0 .bss             M_gnd_work__Q29daObjBm_c5Bgc_c */
dBgS_ObjGndChk daObjBm_c::Bgc_c::M_gnd_work[23];

/* 80BB4734-80BB4788 000854 0054+00 0/1 0/0 0/0 .bss             M_wrt_work__Q29daObjBm_c5Bgc_c */
dBgS_WtrChk daObjBm_c::Bgc_c::M_wrt_work;

/* 80BB4794-80BB51A4 0008B4 0A10+00 2/3 0/0 0/0 .bss             M_wall_work__Q29daObjBm_c5Bgc_c */
dBgS_ObjLinChk daObjBm_c::Bgc_c::M_wall_work[23];

/* 80BB0ED4-80BB1154 002C54 0280+00 1/1 0/0 0/0 .text
 * wall_pos__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cisf */
 // NONMATCHING - copied from d_a_obj_movebox
void daObjBm_c::Bgc_c::wall_pos(fopAc_ac_c const* i_actor, daObjBm_c::BgcSrc_c const* i_bgcSrc,
                                    int i_num, s16 param_3, f32 param_4) {
    const s16 sp8C = i_actor->home.angle.y + param_3;

    cXyz sp48;
    cXyz sp54;
    cXyz sp60;
    cXyz sp6C;
    cXyz sp78;

    field_0x178 = -1;
    field_0x17c = FLT_MAX;

    mDoMtx_stack_c::YrotS(sp8C);
    mDoMtx_stack_c::XrotM(0x4000);
    mDoMtx_stack_c::multVec(&cXyz::BaseY, &sp6C);
    // sp6C *= param_4 + i_actor->attr().field_0x78 * 0.5f;

    for (int i = 0; i < i_num; i++, i_bgcSrc++) {
        mDoMtx_stack_c::XrotS(0x4000);
        sp78.set(i_bgcSrc->field_0xc, 0.0f, i_bgcSrc->field_0x8);
        mDoMtx_stack_c::multVec(&sp78, &sp60);

        mDoMtx_stack_c::YrotS(sp8C);
        mDoMtx_stack_c::transM(sp60);
        // mDoMtx_stack_c::scaleM(i_actor->attr().field_0x70, i_actor->attr().field_0x64,
                            //    i_actor->attr().field_0x70);
        mDoMtx_stack_c::transM(0.0f, 0.5f, 0.0f);
        mDoMtx_stack_c::XrotM(0x4000);

        sp78.set(i_bgcSrc->field_0x4, 0.0f, i_bgcSrc->field_0x0);
        mDoMtx_stack_c::multVec(&sp78, &sp48);
        sp48 += i_actor->current.pos;
        sp54 = sp48 + sp6C;

        M_wall_work[i].Set(&sp48, &sp54, i_actor);
        M_wall_work[i].SetActorPid(i_actor->base.id);

        if (dComIfG_Bgsp().LineCross(&M_wall_work[i])) {
            field_0x64[i] = M_wall_work[i].GetCross();

            f32 var_f31 = sp48.abs2(field_0x64[i]);
            if (var_f31 < field_0x17c) {
                field_0x17c = var_f31;
                field_0x178 = i;
            }
        } else {
            field_0x64[i] = cXyz::Zero;
        }
    }
}

/* 80BB1154-80BB1194 002ED4 0040+00 2/2 0/0 0/0 .text
 * chk_wall_pre__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cis */
bool daObjBm_c::Bgc_c::chk_wall_pre(fopAc_ac_c const* i_actor,
                                        daObjBm_c::BgcSrc_c const* i_bgcSrc, int i_num,
                                        s16 param_3) {
    wall_pos(i_actor, i_bgcSrc, i_num, param_3, 76.0f);
    return field_0x178 >= 0;
}

/* 80BB1194-80BB11D4 002F14 0040+00 1/1 0/0 0/0 .text            initActionSwWait__9daObjBm_cFv */
void daObjBm_c::initActionSwWait() {
    field_0xfaa = 0;
    field_0xfac = 0;
    field_0xfae = field_0xfaa;
    field_0xfae = field_0xfac;
    mpBrkAnm->setPlaySpeed(0);
    mpBckAnm->setPlaySpeed(0);
    field_0xfea = 0;
    field_0xfe4 = 0;
}

/* 80BB11D4-80BB14C8 002F54 02F4+00 1/0 0/0 0/0 .text            actionSwWait__9daObjBm_cFv */
void daObjBm_c::actionSwWait() {
    // NONMATCHING
}

/* 80BB14C8-80BB154C 003248 0084+00 3/3 0/0 0/0 .text            initActionWarning__9daObjBm_cFv */
void daObjBm_c::initActionWarning() {
    if (field_0x102c) {
        field_0x102c->becomeInvalidEmitter();
        field_0x102c->quitImmortalEmitter();
        field_0x102c = NULL;
    }
    
    if (field_0x1030) {
        field_0x1030->becomeInvalidEmitter();
        field_0x1030->quitImmortalEmitter();
        field_0x1030 = NULL;
    }
    
    field_0xfea = 0;
    field_0xfe4 = 1;
}

/* 80BB154C-80BB1654 0032CC 0108+00 1/0 0/0 0/0 .text            actionWarning__9daObjBm_cFv */
void daObjBm_c::actionWarning() {
#if DEBUG
    field_0xfac = l_HIO.mPatrolRotationSpeed;
#else    
    field_0xfac = 500;
#endif

    switch (field_0xfea) {
        case 0:
            field_0xfea = 1;
            break;

        case 1:
            if (cLib_calcTimer(&field_0x1008) == 0) {
                field_0xfe7 = checkFindPlayer();
                if (field_0xfe7 != -1 && field_0xfe8 == 0) {
                    field_0xfe5 = 0;
                    initActionFindPlayer();
                }
            }
            break;
    }

    field_0xfb0 = field_0xfac + 100;

    if (field_0xfea != 5) {
        field_0xf98 = field_0xf96 + field_0xfaa;
    }

    field_0xf9c = field_0xf9a - field_0xfae;
    field_0xfa0 = field_0xf9e + field_0xfae;
    field_0xfa4 = field_0xfa2 + field_0xfae;
    field_0xfa8 = field_0xfa6 + field_0xfae;
}

/* 80BB1654-80BB1814 0033D4 01C0+00 1/1 0/0 0/0 .text            initActionFindPlayer__9daObjBm_cFv
 */
void daObjBm_c::initActionFindPlayer() {
    mpBrkAnm->init(mpModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[0], 0x13),
                   1, 0, 1.0f, 0, -1);
    field_0x1034 = dComIfGp_particle_set(0x8464,&current.pos, 0, 0,0xff, 0,-1, 0, 0, 0);
    field_0x1038 = -1;
    fopAcM_seStart(this,Z2SE_EN_BM_FIND,0);
    fopAcM_seStart(this,Z2SE_EN_BM_HEAT,0);
    field_0xfe5 = 0;
    field_0xfea = 0;
#if DEBUG
    field_0xfac = l_HIO.mSearchSpeedOnDetection;
#else
    field_0xfac = 1000;
#endif
    field_0xfaa = field_0xfac;
    field_0xfb0 = field_0xfac;
    field_0xfe4 = 2;
}

/* 80BB1814-80BB1960 003594 014C+00 1/0 0/0 0/0 .text            actionFindPlayer__9daObjBm_cFv */
void daObjBm_c::actionFindPlayer() {
    switch (field_0xfea) {
    case 0:
        field_0xf98 = fopAcM_searchPlayerAngleY(this) - home.angle.y;
        field_0xf9c = field_0xf9a - field_0xfae;
        field_0xfa0 = field_0xf9e + field_0xfae;
        field_0xfa4 = field_0xfa2 + field_0xfae;
        field_0xfa8 = field_0xfa6 + field_0xfae;

        if ((s16)abs((s16)(fopAcM_searchPlayerAngleY(this) - field_0xf96 - home.angle.y)) < KREG_S(4) + 2000) {
          field_0xfea = 1;
        }
        break;
    case 1:
        field_0xf98 = field_0xf96;
        field_0xfac = 0;
        field_0xfaa = 0;
        field_0x1000 = KREG_F(10) + 300.0f;
        field_0xfea = 2;
        break;
    case 2:
        field_0xf98 = field_0xf96;
        field_0xfac = 0;
        field_0xfaa = 0;

        if (field_0x1000 == 0.0f) {
            field_0xfe5 = 0;
            initActionAttack();
        }
    }
}

/* 80BB3A20-80BB3A24 000268 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$5506 */
static u16 const l_eff_id_5506[2] = {
    0x8467,
    0x8468,
};

/* 80BB1960-80BB1BD0 0036E0 0270+00 1/1 0/0 0/0 .text            initActionAttack__9daObjBm_cFv */
void daObjBm_c::initActionAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3A2C-80BB3A30 000274 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$5631 */
static u16 const l_eff_id_5631[2] = {
    0x8462,
    0x8463,
};

/* 80BB3A30-80BB3A38 000278 0006+02 0/1 0/0 0/0 .rodata          l_eff_id2$5639 */
static u16 const l_eff_id2[3] = {
    0x8465,
    0x8466,
    0x846B,
};

/* 80BB1BD0-80BB248C 003950 08BC+00 1/0 0/0 0/0 .text            actionAttack__9daObjBm_cFv */
void daObjBm_c::actionAttack() {
    // NONMATCHING
}

/* 80BB248C-80BB2700 00420C 0274+00 1/1 0/0 0/0 .text            initActionDead__9daObjBm_cFv */
void daObjBm_c::initActionDead() {
    // NONMATCHING
}

/* 80BB2700-80BB2AB0 004480 03B0+00 2/0 0/0 0/0 .text            actionDead__9daObjBm_cFv */
void daObjBm_c::actionDead() {
    // NONMATCHING
}

/* 80BB2AB0-80BB2C8C 004830 01DC+00 1/0 0/0 0/0 .text            Draw__9daObjBm_cFv */
int daObjBm_c::Draw() {
    // NONMATCHING
}

/* 80BB2C8C-80BB2EB8 004A0C 022C+00 1/0 0/0 0/0 .text            Delete__9daObjBm_cFv */
int daObjBm_c::Delete() {
    for (int i = 0; i < 2; i++) {
        if (field_0xff8[i]) {
            field_0xff8[i]->becomeInvalidEmitter();
            field_0xff8[i]->quitImmortalEmitter();
            field_0xff8[i] = NULL;
        }
    }

    if (field_0x102c) {
        field_0x102c->becomeInvalidEmitter();
        field_0x102c->quitImmortalEmitter();
        field_0x102c = NULL;
    }

    if (field_0x1030) {
        field_0x1030->becomeInvalidEmitter();
        field_0x1030->quitImmortalEmitter();
        field_0x1030 = NULL;
    }

    if (field_0x1034) {
        field_0x1034->becomeInvalidEmitter();
        field_0x1034->quitImmortalEmitter();
        field_0x1034 = NULL;
    }

    for (int i = 0; i < 2; i++) {
        if (field_0x1010[i]) {
            field_0x1010[i]->becomeInvalidEmitter();
            field_0x1010[i]->quitImmortalEmitter();
            field_0x1010[i] = NULL;
        }

        if (field_0x1018[i]) {
            field_0x1018[i]->becomeInvalidEmitter();
            field_0x1018[i]->quitImmortalEmitter();
            field_0x1018[i] = NULL;
        }
    }

    for (int i = 0; i < 3; i++) {
        if (field_0x1020[i]) {
            field_0x1020[i]->becomeInvalidEmitter();
            field_0x1020[i]->quitImmortalEmitter();
            field_0x1020[i] = NULL;
        }
    }
    
    mpBgW->SetPushPullCallback(NULL);
    mSound.deleteObject();
    mSound2.deleteObject();
    dComIfG_resDelete(&mPhase,l_arcName[0]);
#if DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80BB2EB8-80BB3078 004C38 01C0+00 1/0 0/0 0/0 .text            daObjBm_create1st__FP9daObjBm_c */
static void daObjBm_create1st(daObjBm_c* i_this) {
    fopAcM_SetupActor(i_this, daObjBm_c);
    i_this->create1st();
}

/* 80BB33DC-80BB33FC 00515C 0020+00 1/0 0/0 0/0 .text            daObjBm_MoveBGDelete__FP9daObjBm_c
 */
static void daObjBm_MoveBGDelete(daObjBm_c* i_this) {
    i_this->MoveBGDelete();
}

/* 80BB33FC-80BB341C 00517C 0020+00 1/0 0/0 0/0 .text            daObjBm_MoveBGExecute__FP9daObjBm_c
 */
static void daObjBm_MoveBGExecute(daObjBm_c* i_this) {
    i_this->MoveBGExecute();
}

/* 80BB341C-80BB3448 00519C 002C+00 1/0 0/0 0/0 .text            daObjBm_MoveBGDraw__FP9daObjBm_c */
static void daObjBm_MoveBGDraw(daObjBm_c* i_this) {
    i_this->MoveBGDraw();
}

/* 80BB3D84-80BB3DA4 -00001 0020+00 1/0 0/0 0/0 .data            daObjBm_METHODS */
static actor_method_class daObjBm_METHODS = {
    (process_method_func)daObjBm_create1st,
    (process_method_func)daObjBm_MoveBGDelete,
    (process_method_func)daObjBm_MoveBGExecute,
    0,
    (process_method_func)daObjBm_MoveBGDraw,
};

/* 80BB3DA4-80BB3DD4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Bemos */
extern actor_process_profile_definition g_profile_Obj_Bemos = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Bemos,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjBm_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  604,                    // mPriority
  &daObjBm_METHODS,       // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
