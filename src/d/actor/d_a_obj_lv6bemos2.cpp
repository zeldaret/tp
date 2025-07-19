/**
 * @file d_a_obj_lv6bemos2.cpp
 * 
*/

#include "d/actor/d_a_obj_lv6bemos2.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_camera.h"

enum E_bm6_RES_File_ID {
    /* BCK */
    /* 0x08 */ BCK_BM6_DOWN = 0x8,
    /* 0x09 */ BCK_BM6_UP,
    /* 0x0A */ BCK_EF_BIMOL6,

    /* BMDE */
    /* 0x0D */ BMDE_BM6 = 0xD,

    /* BMDR */
    /* 0x10 */ BMDR_EF_BIMOL6 = 0x10,

    /* BRK */
    /* 0x13 */ BRK_BM6_LOOK = 0x13,
    /* 0x14 */ BRK_BM6_SERCH,
    /* 0x15 */ BRK_BM6_TURN,
    /* 0x16 */ BRK_BM6_UP,

    /* BTK */
    /* 0x19 */ BTK_EF_BIMOL6 = 0x19,
    /* 0x1A */ BTK_EF_BIMOL6_OFF,
    /* 0x1B */ BTK_EF_BIMOL6_ON,

    /* DZB */
    /* 0x1E */ DZB_BM6 = 0x1E,
};

enum Particle {
    /* 0x88D3 */ ZL2_GLOW02_1 = 0x88D3,
    /* 0x88D4 */ ZL2_GLOW02_2,
    /* 0x88D5 */ ZL2_GLOW02_3,
    /* 0x88D6 */ ZLF_RING00,
    /* 0x88D7 */ ZL2_SENKO01,
    /* 0x88D8 */ ZL2_GLOWLINE01,
    /* 0x88D9 */ ZL2_ICEROCK_1,
    /* 0x88DA */ ZL2_ICEROCK_2,
    /* 0x88DB */ ZL2_ROCK02_1,
    /* 0x88DC */ ZL2_ROCK02_2,
    /* 0x88DD */ NW_SMOKE,
    /* 0x890C */ ZL2_SMOKE00_IA8 = 0x890C,
};

/* 80C7E1B8-80C7E30C 000078 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjLv6Bm_c* i_this = (daObjLv6Bm_c*)model->getUserArea();

        MTXCopy(model->getAnmMtx(jntNo), mDoMtx_stack_c::get());
        s16 sVar1 = i_this->field_0xa28 * cM_scos(i_this->field_0xa20 * 0x2CEC);

        if (jntNo == i_this->getHeadJoint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9c2 + sVar1);
        } else if (jntNo == i_this->getBigGearJoint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9c6);
        } else if (jntNo == i_this->getSmallGear0Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9ca);
        } else if (jntNo == i_this->getSmallGear1Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9ce);
        } else if (jntNo == i_this->getSmallGear2Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9d2);
        }

        MTXCopy(mDoMtx_stack_c::get(), model->getAnmMtx(jntNo));
    }

    return 1;
}

/* 80C81C2C-80C81C38 000000 000C+00 9/9 0/0 0/0 .rodata          l_eye_offset */
static f32 const l_eye_offset[3] = {0.0f, 430.0f, 80.0f};

/* 80C81C38-80C81C44 00000C 000C+00 0/1 0/0 0/0 .rodata          l_beam_offsetPos */
static f32 const l_beam_offsetPos[3] = {0.0f, 98.0f, 125.0f};

/* 80C7E30C-80C7E374 0001CC 0068+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initBaseMtx() {
    cXyz sp18(0.5f, 0.5f, 1.0f);
    mBeamosModel->setBaseScale(scale);
    mBeamEffectModel->setBaseScale(sp18);
    setBaseMtx();
}

/* 80C7E374-80C7E448 000234 00D4+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mBeamosModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(1.0f, 1.0f, 1.0f);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    cXyz sp18(0.5f, 0.5f, field_0xa0c);
    mBeamEffectModel->setBaseScale(sp18);
    mDoMtx_stack_c::transS(field_0x9e4);
    mDoMtx_stack_c::ZXYrotM(field_0x9f0);
    mBeamEffectModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

UNK_REL_DATA;

/* 80C81D24-80C81D28 -00001 0004+00 9/10 0/0 0/0 .data            l_arcName */
static char* l_arcName = "E_bm6";

/* 80C81D28-80C81D2C -00001 0004+00 0/1 0/0 0/0 .data            l_eye_matName */
static char* l_eye_matName = "bm6_eye";

/* 80C81D2C-80C81D30 -00001 0004+00 0/1 0/0 0/0 .data            l_head_joint */
static char* l_head_joint = "head";

/* 80C81D30-80C81D34 -00001 0004+00 0/1 0/0 0/0 .data            l_bigGear_joint */
static char* l_bigGear_joint = "cogRed";

/* 80C81D34-80C81D38 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear0_joint */
static char* l_smallGear0_joint = "cogBlue";

/* 80C81D38-80C81D3C -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear1_joint */
static char* l_smallGear1_joint = "cogGreen";

/* 80C81D3C-80C81D40 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear2_joint */
static char* l_smallGear2_joint = "cogYellow";

/* 80C81D40-80C81D54 00003C 0014+00 0/2 0/0 0/0 .data            l_joint_table */
static char* l_joint_table[5] = {
    l_head_joint,
    l_bigGear_joint,
    l_smallGear0_joint,
    l_smallGear1_joint,
    l_smallGear2_joint,
};

/* 80C81D54-80C81D6C 000050 0018+00 0/1 0/0 0/0 .data            l_cull_box */
static f32 l_cull_box[6] = {
    -1200.0f, -100.0f, -1200.0f,
    1200.0f, 400.0f, 1200.0f,
};

/* 80C81D6C-80C81DAC 000068 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x402420, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80C81DAC-80C81DF8 0000A8 004C+00 0/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 20.0f}, // mCps
    } // mCpsAttr
};

/* 80C81DF8-80C81E3C 0000F4 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x400, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        120.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};

/* 80C7E448-80C7E764 000308 031C+00 1/0 0/0 0/0 .text            Create__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Create() {
    fopAcM_SetMtx(this, mBeamosModel->getBaseTRMtx());
    mStts.Init(0xFF, 0xFF, this);
    field_0x600.Set(l_sph_src);
    field_0x600.SetStts(&mStts);
    field_0x738.Set(l_cps_src);
    field_0x738.SetStts(&mStts);
    field_0x87c.Set(l_cyl_src);
    field_0x87c.SetStts(&mStts);
    
    fopAcM_setCullSizeBox(this, l_cull_box[0], l_cull_box[1], l_cull_box[2], l_cull_box[3], l_cull_box[4], l_cull_box[5]);

    JUTNameTab* name = mBeamosModel->getModelData()->getJointTree().getJointName();
    for (int i = 0; i < 5; i++) {
        for (u16 j = 0; j < mBeamosModel->getModelData()->getJointNum(); j++) {
            if (strcmp(name->getName(j), l_joint_table[i]) == 0) {
                mJoints[i] = j;
                mBeamosModel->getModelData()->getJointNodePointer(j)->setCallBack(nodeCallBack);
            }
        }
    }

    mBeamosModel->setUserArea((u32)this);
    name = mBeamosModel->getModelData()->getMaterialTable().getMaterialName();
    for (u16 i = 0; i < mBeamosModel->getModelData()->getMaterialNum(); i++) {
        if (strcmp(name->getName(i), l_eye_matName) == 0) {
            mEyeMaterial = mBeamosModel->getModelData()->getMaterialNodePointer(i);
        }
    }

    #ifdef DEBUG
    if (mEyeMaterial == NULL) {
        OS_REPORT("Lv6ビーモス：目のマテリアル<%s>がありません\n", l_eye_matName); // Lv6 Beamos: Eye material <%s> is not available.
        return 0;
    }
    #endif

    field_0xa7c.init(&field_0xa64, 1);
    field_0xa9c.init(&field_0xa70, 1);

    field_0xa19 = 1;
    if (fopAcM_isSwitch(this, getSwNo2())) {
        field_0xa1b = 0;
        initActionEnd();
    } else if (getSwNo() != 0xFF && !fopAcM_isSwitch(this, getSwNo())) {
        field_0xa1b = 0;
        initActionSwWait();
    } else {
        field_0xa1b = 1;
        mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_TURN), 1, 2, 1.0f, 0, -1);
        mpBckAnm->setFrame(mpBckAnm->getEndFrame());
        initActionWarning();
    }
    

    initBaseMtx();
    mBeamosModel->calc();

    return 1;
}

/* 80C7E764-80C7EB34 000624 03D0+00 1/0 0/0 0/0 .text            CreateHeap__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDE_BM6);
    JUT_ASSERT(620, modelData != 0);

    mBeamosModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mBeamosModel == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_SERCH);
    JUT_ASSERT(633, pbrk != 0);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL || mpBrkAnm->init(modelData, pbrk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }

    #ifdef DEBUG
    pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_TURN);
    JUT_ASSERT(644, pbrk != 0);
    #endif
    
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_BM6_UP);
    JUT_ASSERT(651, pbck != 0);
    mpBckAnm = new mDoExt_bckAnm();
    if (mpBckAnm == NULL || mpBckAnm->init(pbck, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_EF_BIMOL6);
    JUT_ASSERT(0x29A, modelData != 0);
    mBeamEffectModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mBeamEffectModel == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_OFF);
    JUT_ASSERT(680, pbtk != 0);
    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL || mpBtkAnm->init(modelData, pbtk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    mpBtkAnm->setFrame(mpBtkAnm->getEndFrame());

    #ifdef DEBUG
    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_ON);
    JUT_ASSERT(693, pbtk != 0);
    #endif

    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6);
    JUT_ASSERT(699, pbtk != 0);
    mpBtkAnm2 = new mDoExt_btkAnm();
    if (mpBtkAnm2 == NULL || mpBtkAnm2->init(modelData, pbtk, 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }

    J3DAnmTransform* pbck2 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_EF_BIMOL6);
    JUT_ASSERT(711, pbck != 0);
    mpBckAnm2 = new mDoExt_bckAnm();
    if (mpBckAnm2 == NULL || mpBckAnm2->init(pbck2, 1, 2, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    return 1;
}

/* 80C7EB7C-80C7EC6C 000A3C 00F0+00 1/1 0/0 0/0 .text            create1st__12daObjLv6Bm_cFv */
cPhs__Step daObjLv6Bm_c::create1st() {
    if (fopAcM_isSwitch(this, (u8)getSwNo3())) {
        OS_REPORT("Lv6ビーモス：既に破壊！<%d>\n", getSwNo3()); // Lv6 Beamos: Already destroyed! <%d>
        return cPhs_ERROR_e;
    }

    if (field_0xa36 == 0) {
        field_0xa32 = home.angle.x;
        field_0xa34 = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0xa36 = 1;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step)MoveBGCreate(l_arcName, DZB_BM6, dBgS_MoveBGProc_TypicalRotY, 0x2FA0, NULL);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* 80C7EC6C-80C7EE50 000B2C 01E4+00 1/0 0/0 0/0 .text            Execute__12daObjLv6Bm_cFPPA3_A4_f */
int daObjLv6Bm_c::Execute(f32 (**param_1)[3][4]) {
    field_0xa20++;

    if (field_0x9c2 != field_0x9c4 && field_0x9d6 == 0) {
        field_0x9d6 = 0xFA;
    }

    cLib_chaseAngleS(&field_0x9c2, field_0x9c4, field_0x9d6);
    cLib_chaseAngleS(&field_0x9c6, field_0x9c8, field_0x9da);
    cLib_chaseAngleS(&field_0x9ca, field_0x9cc, field_0x9da);
    cLib_chaseAngleS(&field_0x9ce, field_0x9d0, field_0x9da);
    cLib_chaseAngleS(&field_0x9d2, field_0x9d4, field_0x9da);
    
    action();

    eyePos.x = l_eye_offset[0];
    eyePos.y = l_eye_offset[1];
    eyePos.z = l_eye_offset[2];
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(home.angle.y + field_0x9c2);
    mDoMtx_stack_c::multVec(&eyePos, &eyePos);
    attention_info.position = eyePos;

    *param_1 = &mBgMtx;
    setBaseMtx();

    cLib_addCalcAngleS(&field_0x9d6, field_0x9d8, 0x1E, 0x14, 10);
    cLib_addCalcAngleS(&field_0x9da, field_0x9dc, 0x1E, 0x14, 10);
    cLib_addCalc(&field_0xa28, 0.0f, 0.2f, 50.0f, 10.0f);
    field_0x9de = field_0x9c2;

    field_0xa7c.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    field_0xa9c.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    return 1;
}

/* 80C7EE50-80C7F2A4 000D10 0454+00 1/1 0/0 0/0 .text            action__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::action() {
    static daObjLv6Bm_c::actionFunc l_func[6] = {
        &daObjLv6Bm_c::actionSwWait,
        &daObjLv6Bm_c::actionWarning,
        &daObjLv6Bm_c::actionFindPlayer,
        &daObjLv6Bm_c::actionAttack,
        &daObjLv6Bm_c::actionDead,
        &daObjLv6Bm_c::actionEnd
    };

    static u16 const l_particle_id[3] = {
        ZL2_ROCK02_1,
        ZL2_ROCK02_2,
        NW_SMOKE,
    };

    cCcD_Obj* hitObj;
    if (field_0x600.ChkTgHit()) {
        hitObj = field_0x600.GetTgHitObj();
        if (hitObj != NULL && (hitObj->ChkAtType(AT_TYPE_ARROW) || hitObj->ChkAtType(AT_TYPE_BOMB) || hitObj->ChkAtType(AT_TYPE_IRON_BALL))) {
            mDoAud_seStart(Z2SE_EN_BM_EYE_BREAK, &eyePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            initEffectSet0();
            fopAcM_onSwitch(this, getSwNo2());
            initActionDead();
            OS_REPORT("Lv6ビーモス：目破壊されました！<%d>\n", getSwNo2()); // Lv6 Beamos: Eye destroyed! <%d>
        }
    }

    field_0x600.ClrTgHit();

    if (field_0x87c.ChkTgHit()) {
        hitObj = field_0x87c.GetTgHitObj();
        if (hitObj != NULL && hitObj->ChkAtType(AT_TYPE_CSTATUE_SWING)) {
            if (fopAcM_GetName(field_0x87c.GetTgHitAc()) == PROC_CSTATUE) {
                for (int i = 0; i < 3; i++) {
                    dComIfGp_particle_set(l_particle_id[i], &current.pos, NULL, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
                }

                fopAcM_seStart(this, Z2SE_EN_BM_BREAK, 0);
                fopAcM_delete(this);
                fopAcM_onSwitch(this, getSwNo3());
                OS_REPORT_ERROR("Lv6ビーモス：本体破壊されました！<%d>\n", getSwNo2()); // Lv6 Beamos: The main body has been destroyed! <%d>
            }
        }
    }

    effect_proc();
    calcBeam();

    if (field_0xa10 == 3) {
        dComIfG_Ccsp()->Set(&field_0x738);
        if (mpBtkAnm != NULL && mpBtkAnm->getFrame() != 0.0f) {
            field_0xa7c.startLevelSound(Z2SE_EN_BM_BEAM2, 0, -1);
        }
    }

    (this->*l_func[field_0xa10])();

    mpBckAnm2->play();
    mpBtkAnm->play();
    mpBtkAnm2->play();
    mpBrkAnm->play();
    mpBckAnm->play();

    if (field_0x9d6 != 0) {
        fopAcM_seStartLevel(this, Z2SE_EN_BM_TURN, 0);
    }

    if (field_0xa10 != 0) {
        field_0x600.SetC(eyePos);
        dComIfG_Ccsp()->Set(&field_0x600);
    }

    cXyz sp2c(current.pos);
    sp2c.y += 300.0f;
    field_0x87c.SetC(sp2c);
    dComIfG_Ccsp()->Set(&field_0x87c);
}

/* 80C7F2A4-80C7F8BC 001164 0618+00 1/1 0/0 0/0 .text            calcBeam__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::calcBeam() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAcM_searchPlayerDistanceXZ(this);

    mDoMtx_stack_c::copy(mBeamosModel->getAnmMtx(getHeadJoint()));
    mDoMtx_stack_c::multVecZero(&field_0x9e4);
    mDoMtx_stack_c::transS(field_0x9e4);
    mDoMtx_stack_c::YrotM(shape_angle.y + field_0x9c2);
    mDoMtx_stack_c::transM(cXyz(l_beam_offsetPos[0], l_beam_offsetPos[1], l_beam_offsetPos[2]));
    mDoMtx_stack_c::multVecZero(&field_0x9e4);

    cXyz sp6c(0.0f, 0.0f, field_0xa2c);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y + field_0x9c2);
    mDoMtx_stack_c::multVec(&sp6c, &field_0x9f8);
    field_0x9f8.y += player->current.pos.y - current.pos.y;

    cXyz sp78(field_0x9e4 - field_0x9f8);
    field_0x9f0.x = cM_atan2s(sp78.y, field_0x9f8.absXZ(field_0x9e4));
    if (field_0x9f0.x < cM_deg2s(20.0f)) {
        field_0x9f0.x = cM_deg2s(20.0f);
    }
    field_0x9f0.y = field_0x9c2 + current.angle.y;
    field_0x9f0.z = 0;

    sp6c = field_0x9f8 - field_0x9e4;
    sp6c.normalizeZP();

    f32 fVar1 = (int)(mpBtkAnm->getFrame() + 0.5f) * 360.0f;

    if (fVar1 > 1200.0f) {
        fVar1 = 1200.0f;
    }

    field_0x9f8 = field_0x9e4 + (sp6c * fVar1);
    if (fopAcM_lc_c::lineCheck(&field_0x9e4, &field_0x9f8, this)) {
        field_0xa0c = field_0x9e4.abs(fopAcM_lc_c::getCross()) / fVar1;
    } else {
        field_0xa0c = 1.0f;
    }

    field_0xa0c += 0.01f;
    field_0x9f8 = field_0x9e4 + (sp6c * (fVar1 * field_0xa0c));
    field_0x738.cCcD_CpsAttr::Set(field_0x9e4, field_0x9f8, 20.0f);
    field_0x738.CalcAtVec();

    if (field_0xa19 > 0) {
        cXyz sp84(field_0x9f8);
        if (fopAcM_lc_c::lineCheck(&field_0x9e4, &field_0x9f8, this) != NULL && fopAcM_lc_c::checkGroundHit()) {
            sp84 = fopAcM_lc_c::getCross();
        }

        if (cLib_chasePos(&field_0xa64, sp84, 60.0f)) {
            field_0xa19 = -1;
        }
    } else if (cLib_chasePos(&field_0xa64, field_0x9e4, 60.0f)) {
        field_0xa19 = 1;
    }

}

/* 80C7F904-80C7FA54 0017C4 0150+00 1/1 0/0 0/0 .text            checkFindPlayer__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::checkFindPlayer() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 searchDistance = getSearchDistance();
    int rv = -1;

    field_0xa15 = 0;
    f32 playerDistanceXZ = fopAcM_searchPlayerDistanceXZ(this);
    f32 fVar1 = current.pos.y - player->current.pos.y;
    if (playerDistanceXZ > searchDistance) {
        return -1;
    }
    
    if (fabsf(fVar1) > (1.0f - (playerDistanceXZ / searchDistance)) * l_eye_offset[1]) {
        return -1;
    }

    if ((s16)abs((s16)(fopAcM_searchPlayerAngleY(this) - field_0x9c2 - home.angle.y)) < 0x30D4) {
        rv = 0;
    }

    if ((s8)rv == 0) {
        cXyz sp5c(eyePos);
        cXyz sp68(player->eyePos);
        if (fopAcM_lc_c::lineCheck(&sp5c, &sp68, this)) {
            field_0xa15 = 1;
        }
    }

    return rv;
}

/* 80C7FA54-80C7FBA4 001914 0150+00 1/1 0/0 0/0 .text            checkSearchPlayer__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::checkSearchPlayer() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 searchDistance = getSearchDistance();
    int rv = -1;

    field_0xa15 = 0;

    f32 playerDistanceXZ = fopAcM_searchPlayerDistanceXZ(this);
    f32 fVar1 = current.pos.y - player->current.pos.y;
    if (playerDistanceXZ > searchDistance) {
        return -1;
    }

    if (fabsf(fVar1) > (1.0f - (playerDistanceXZ / searchDistance)) * l_eye_offset[1]) {
        return -1;
    }

    if ((s16)abs((s16)(fopAcM_searchPlayerAngleY(this) - field_0x9c2 - home.angle.y)) < 0x3A98) {
        rv = 0;
    }

    if ((s8)rv == 0) {
        cXyz sp5c(eyePos);
        cXyz sp68(player->eyePos);
        if (fopAcM_lc_c::lineCheck(&sp5c, &sp68, this)) {
            field_0xa15 = 1;
        }
    }

    return rv;
}

/* 80C7FBA4-80C7FBFC 001A64 0058+00 2/2 0/0 0/0 .text            getSearchDistance__12daObjLv6Bm_cFv */
f32 daObjLv6Bm_c::getSearchDistance() {
    f32 rv = 1000.0f;
    if (getSearchDist() != 15 && getSearchDist() != 0) {
        rv -= getSearchDist() * 50.0f;
    }
    return rv;
}

/* 80C7FBFC-80C7FC54 001ABC 0058+00 1/1 0/0 0/0 .text getBeamSearchDistance__12daObjLv6Bm_cFv */
f32 daObjLv6Bm_c::getBeamSearchDistance() {
    f32 rv = 1000.0f;
    if (getBeamSearchDist() != 15 && getBeamSearchDist() != 0) {
        rv -= getBeamSearchDist() * 50.0f;
    }
    return rv;
}

/* 80C7FC54-80C7FD8C 001B14 0138+00 1/1 0/0 0/0 .text            effect_proc__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effect_proc() {
    static daObjLv6Bm_c::effectFunc l_eff_func[2] = {
        &daObjLv6Bm_c::effectWait,
        &daObjLv6Bm_c::effectSet0,
    };

    (this->*l_eff_func[field_0xa1a])();

    if (field_0xa50 != NULL) {
        mDoMtx_stack_c::copy(mBeamosModel->getAnmMtx((u16)getBigGearJoint()));
        mDoMtx_stack_c::multVecZero(&field_0xa58);
        mDoAud_seStartLevel(Z2SE_EN_BM_SPARK, &field_0xa58, 0, 0);
    }
}

/* 80C7FD8C-80C7FD90 001C4C 0004+00 1/0 0/0 0/0 .text            effectWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectWait() {
    /* empty function */
}

/* 80C7FD90-80C7FEC4 001C50 0134+00 1/1 0/0 0/0 .text            initEffectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initEffectSet0() {
    static u16 const eff_id[2] = {
        ZL2_ICEROCK_1,
        ZL2_ICEROCK_2,
    };

    csXyz i_rotation(home.angle);
    i_rotation.y += field_0x9c2;

    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(eff_id[i], &eyePos, &i_rotation, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    field_0xa24 = dComIfGp_particle_set(ZL2_SMOKE00_IA8, &eyePos, &i_rotation, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
    if (field_0xa24 != NULL) {
        field_0xa24->becomeImmortalEmitter();
    }

    field_0xa1a = 1;
}

/* 80C7FEC4-80C7FF78 001D84 00B4+00 1/0 0/0 0/0 .text            effectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectSet0() {
    if (field_0xa24 != NULL) {
        if (field_0xa24->isEnableDeleteEmitter()) {
            field_0xa24->quitImmortalEmitter();
            field_0xa24 = NULL;
        } else {
            mDoMtx_stack_c::copy(mBeamosModel->getAnmMtx(getHeadJoint()));
            field_0xa24->setGlobalRTMatrix(mDoMtx_stack_c::get());
        }
    }
}

/* 80C7FF78-80C7FFB8 001E38 0040+00 1/1 0/0 0/0 .text            initActionSwWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionSwWait() {
    field_0x9d6 = 0;
    field_0x9d8 = 0;
    field_0x9da = field_0x9d6;
    field_0x9da = field_0x9d8;
    mpBrkAnm->setPlaySpeed(0.0f);
    mpBckAnm->setPlaySpeed(0.0f);
    mMode = 0;
    field_0xa10 = 0;
}

/* 80C7FFB8-80C802AC 001E78 02F4+00 1/0 0/0 0/0 .text            actionSwWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionSwWait() {
    cXyz i_sePos;
    switch (mMode) {
        case 0:
            if (fopAcM_isSwitch(this, getSwNo())) {
                mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_UP),
                               1, 0, 1.0f, 0, -1);
                i_sePos = home.pos;
                i_sePos.y += 200.0f;
                mDoAud_seStart(Z2SE_EN_BM_BOOT, &i_sePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                field_0xa1b = 1;
                mMode = 1;
            }
            break;

        case 1:
            if (mpBrkAnm->isStop()) {
                field_0xa11 = 0;
                mMode = 2;
            }
            break;

        case 2:
            if (cLib_calcTimer(&field_0xa11) == 0) {
                mpBtkAnm->init(mBeamEffectModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_ON),
                            1, 0, 0.0f, 0, -1);
                mpBtkAnm2->setPlaySpeed(0.0f);
                mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_TURN),
                            1, 2, 1.0f, 0, -1);
                mpBckAnm->init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_BM6_UP), 1, 0, 1.0f, 0, -1, true);
                fopAcM_seStart(this, Z2SE_EN_BM_UP, 0);
                field_0xa30 = 20;
                initActionWarning();
            }
            break;
    }
}

/* 80C802AC-80C802C0 00216C 0014+00 3/3 0/0 0/0 .text            initActionWarning__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionWarning() {
    mMode = 0;
    field_0xa10 = 1;
}

/* 80C802C0-80C803D8 002180 0118+00 1/0 0/0 0/0 .text            actionWarning__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionWarning() {
    field_0x9d8 = 500;
    fopAcM_searchPlayerAngleY(this);

    switch (mMode) {
        case 0:
            mMode = 1;
            break;

        case 1:
            if (cLib_calcTimer(&field_0xa30) == 0) {
                field_0xa14 = checkFindPlayer();
                if (field_0xa14 != -1 && field_0xa15 == 0) {
                    field_0xa11 = 0;
                    initActionFindPlayer();
                }
            }
            break;
    }

    field_0x9dc = field_0x9d8 + 100;
    if (mMode != 5) {
        field_0x9c4 = field_0x9c2 + field_0x9d6;
    }

    field_0x9c8 = field_0x9c6 - field_0x9da;
    field_0x9cc = field_0x9ca + field_0x9da;
    field_0x9d0 = field_0x9ce + field_0x9da;
    field_0x9d4 = field_0x9d2 + field_0x9da;
}

/* 80C803D8-80C80538 002298 0160+00 1/1 0/0 0/0 .text initActionFindPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionFindPlayer() {
    mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_SERCH),
                   1, 0, 1.0f, 0, -1);
    fopAcM_seStart(this, Z2SE_EN_BM_FIND, 0);
    fopAcM_seStart(this, Z2SE_EN_BM_HEAT, 0);
    field_0xa11 = 0;
    mMode = 0;
    field_0x9d8 = 1000;
    field_0x9d6 = field_0x9d8;
    field_0x9dc = field_0x9d8;
    field_0xa10 = 2;
}

/* 80C80538-80C80684 0023F8 014C+00 1/0 0/0 0/0 .text            actionFindPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionFindPlayer() {
    switch (mMode) {
        case 0:
            field_0x9c4 = fopAcM_searchPlayerAngleY(this) - home.angle.y;
            field_0x9c8 = field_0x9c6 - field_0x9da;
            field_0x9cc = field_0x9ca + field_0x9da;
            field_0x9d0 = field_0x9ce + field_0x9da;
            field_0x9d4 = field_0x9d2 + field_0x9da;

            if ((s16)abs((s16)(fopAcM_searchPlayerAngleY(this) - field_0x9c2 - home.angle.y)) < 2000) {
                mMode = 1;
            }
            break;

        case 1:
            field_0x9c4 = field_0x9c2;
            field_0x9d8 = 0;
            field_0x9d6 = 0;
            field_0xa28 = 300.0f;
            mMode = 2;
            break;

        case 2:
            field_0x9c4 = field_0x9c2;
            field_0x9d8 = 0;
            field_0x9d6 = 0;

            if (field_0xa28 == 0.0f) {
                field_0xa11 = 0;
                initActionAttack();
            }
            break;
    }
}

/* 80C80684-80C8082C 002544 01A8+00 1/1 0/0 0/0 .text            initActionAttack__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionAttack() {
    static u16 const eff_id[4] = {
        ZL2_GLOW02_3,
        ZLF_RING00,
        ZL2_SENKO01,
        ZL2_GLOWLINE01,
    };

    f32 fVar1 = 0.0f;
    field_0xa2c = fopAcM_searchPlayerDistanceXZ(this) - fVar1;

    mpBtkAnm->init(mBeamEffectModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_ON),
                   1, 0, 0.0f, 0, -1);
    mpBtkAnm->setFrame(0.0f);
    mpBtkAnm2->setPlaySpeed(1.0f);

    field_0xa13 = 16;
    field_0xa11 = 20;
    field_0xa12 = 0;

    mDoMtx_stack_c::copy(mBeamosModel->getAnmMtx(getHeadJoint()));

    for (int i = 0; i < 4; i++) {
        field_0xa40[i] = dComIfGp_particle_set(eff_id[i], &current.pos, &current.angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (field_0xa40[i] != NULL) {
            field_0xa40[i]->setGlobalRTMatrix(mDoMtx_stack_c::get());
        }
    }

    field_0xa18 = 0;
    mMode = 0;
    field_0xa10 = 3;
}

/* 80C8082C-80C80F48 0026EC 071C+00 1/0 0/0 0/0 .text            actionAttack__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionAttack() {
    // NONMATCHING
    static u16 const l_eff_id[2] = {
        ZL2_GLOW02_1,
        ZL2_GLOW02_2,
    };

    f32 fVar1 = fopAcM_searchPlayerDistanceXZ(this);
    if (fVar1 > getBeamSearchDistance()) {
        fVar1 = getBeamSearchDistance();
    }

    bool bVar1 = true;
    if (((s8)checkSearchPlayer() == -1 && cLib_calcTimer(&field_0xa11) == 0) || field_0xa15 != 0) {
        bVar1 = false;
    }

    bool bVar2;
    switch (mMode) {
        case 0:
            if (cLib_calcTimer(&field_0xa12) == 0) {
                mMode = 2;
            }
            break;

        case 1:
            field_0x9d8 = 200;
            field_0x9c4 = fopAcM_searchPlayerAngleY(this) - home.angle.y;

            cLib_chaseF(&field_0xa2c, fVar1, 5.0f);
            if (!bVar1) {
                mMode = 3;
            }

            if (cLib_calcTimer(&field_0xa17) == 0) {
                mMode = 2;
            }
            break;

        case 2:
            field_0x9d8 = 450;
            field_0x9c4 = fopAcM_searchPlayerAngleY(this) - home.angle.y;
            cLib_chaseF(&field_0xa2c, fVar1, 15.0f);
            if (!bVar1) {
                mMode = 3;
            }
            break;

        case 3:
            mpBtkAnm->init(mBeamEffectModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_OFF),
                           1, 0, 1.0f, 0, -1);
            mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_TURN),
                           1, 2, 1.0f, 0, -1);
            field_0xa1c = 0xFF;
            mMode = 4;
            break;

        case 4:
            bVar2 = false;
            if (cLib_chaseUC(&field_0xa1c, 0, 26) == 1) {
                if (mpBtkAnm->isStop()) {
                    bVar2 = true;
                }
            }

            for (int i = 0; i < 4; i++) {
                if (field_0xa40[i] != NULL) {
                    field_0xa40[i]->setGlobalAlpha(field_0xa1c);
                }
            }

            if (bVar2) {
                for (int i = 0; i < 2; i++) {
                    if (field_0xa38[i] != NULL) {
                        field_0xa38[i]->becomeInvalidEmitter();
                        field_0xa38[i]->quitImmortalEmitter();
                        field_0xa38[i] = NULL;
                    }
                }

                for (int i = 0; i < 4; i++) {
                    if (field_0xa40[i] != NULL) {
                        field_0xa40[i]->becomeInvalidEmitter();
                        field_0xa40[i]->quitImmortalEmitter();
                        field_0xa40[i] = NULL;
                    }
                }

                initActionWarning();
            }
            break;
    }

    field_0xa70 = home.pos;
    bVar1 = false;

    if (fopAcM_lc_c::lineCheck(&field_0x9e4, &field_0x9f8, this) && fopAcM_lc_c::checkGroundHit()) {
        if (field_0xa18 == 0) {
            for (int i = 0; i < 2; i++) {
                if (field_0xa38[i] == NULL) {
                    field_0xa38[i] = dComIfGp_particle_set(l_eff_id[i], fopAcM_lc_c::getCrossP(), NULL, NULL, 0xFF, 
                                                           NULL, -1, NULL, NULL, NULL);
                }
            }

            field_0xa18 = 1;
        } else {
            mDoMtx_stack_c::transS(fopAcM_lc_c::getCross());
            for (int i = 0; i < 2; i++) {
                if (field_0xa38[i] != NULL) {
                    field_0xa38[i]->setGlobalRTMatrix(mDoMtx_stack_c::get());
                }
            }

            field_0xa70 = fopAcM_lc_c::getCross();
        }
        bVar1 = true;
    }

    if (!bVar1) {
        for (int i = 0; i < 2; i++) {
            if (field_0xa38[i] != NULL) {
                field_0xa38[i]->becomeInvalidEmitter();
                field_0xa38[i]->quitImmortalEmitter();
                field_0xa38[i] = NULL;
            }
        }

        field_0xa18 = 0;
    }

    if (field_0xa70 != home.pos) {
        field_0xa9c.startLevelSound(Z2SE_EN_BM_BURN2, 0, -1);
    }

    if (mpBrkAnm->isStop()) {
        mpBrkAnm->init(mBeamosModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, BRK_BM6_LOOK),
                       1, 2, 1.0f, 0, -1);
    }

    if (cLib_calcTimer(&field_0xa13) == 1) {
        mpBtkAnm->setPlaySpeed(1.0f);
    }

    mDoMtx_stack_c::copy(mBeamosModel->getAnmMtx(getHeadJoint()));

    for (int i = 0; i < 4; i++) {
        if (field_0xa40[i] != NULL) {
            field_0xa40[i]->setGlobalRTMatrix(mDoMtx_stack_c::get());
        }
    }

    field_0x9dc = field_0x9d8 * 3;
    field_0x9c8 = field_0x9c6 - field_0x9da;
    field_0x9cc = field_0x9ca + field_0x9da;
    field_0x9d0 = field_0x9ce + field_0x9da;
    field_0x9d4 = field_0x9d2 + field_0x9da;

    if (!checkLockOnCamera()) {
        dCam_getBody()->ForceLockOn(this);
    }
}

/* 80C80F48-80C81154 002E08 020C+00 1/1 0/0 0/0 .text            initActionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionDead() {
    if (field_0x9c2 > -0x4000 && field_0x9c2 < 0x4000) {
        field_0x9c4 = 0;
    } else {
        field_0x9c4 = 0x7FFF;
    }

    field_0x9d6 = 0;
    field_0x9d8 = 0;

    mpBckAnm->init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_BM6_DOWN), 1, 0, 0.0f, 0, -1, true);
    if (mpBtkAnm->getBtkAnm() == (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_ON)) {
        mpBtkAnm->init(mBeamEffectModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, BTK_EF_BIMOL6_OFF),
                       1, 0, 1.0f, 0, -1);
    }

    for (int i = 0; i < 2; i++) {
        if (field_0xa38[i] != NULL) {
            field_0xa38[i]->becomeInvalidEmitter();
            field_0xa38[i]->quitImmortalEmitter();
            field_0xa38[i] = NULL;
        }
    }

    for (int i = 0; i < 4; i++) {
        if (field_0xa40[i] != NULL) {
            field_0xa40[i]->becomeInvalidEmitter();
            field_0xa40[i]->quitImmortalEmitter();
            field_0xa40[i] = NULL;
        }
    }

    field_0xa11 = 20;
    field_0xa1b = 0;
    fopAcM_OffStatus(this, 0);
    field_0x600.SetTgType(field_0x600.GetTgType() & 0xFFBFDFDF);
    mMode = 0;
    field_0xa10 = 4;
}

/* 80C81154-80C81428 003014 02D4+00 2/0 0/0 0/0 .text            actionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionDead() {
    switch (mMode) {
        case 0:
            if (!cLib_calcTimer(&field_0xa11)) {
                mMode = 1;
            }
            break;

        case 1:
            field_0x9d8 = 500;
            if (field_0xa50 != NULL) {
                field_0xa50->becomeInvalidEmitter();
                field_0xa50->quitImmortalEmitter();
                field_0xa50 = NULL;
            }

            if (field_0xa54 != NULL) {
                field_0xa54->becomeInvalidEmitter();
                field_0xa54->quitImmortalEmitter();
                field_0xa54 = NULL;
            }

            mMode = 2;
            break;

        case 2:
            cLib_addCalcAngleS(&field_0x9d8, 0, 0x5A, 10, 5);
            if (field_0x9c2 == field_0x9c4) {
                field_0x9d8 = 0;
                field_0xa28 = 200.0f;
                mMode = 3;
                fopAcM_seStart(this, Z2SE_EN_BM_TURN_END, 0);
            }
            break;

        case 3:
            field_0xa11 = 20;
            mMode = 4;
            break;

        case 4:
            if (!cLib_calcTimer(&field_0xa11)) {
                mpBckAnm->setPlaySpeed(1.0f);
                mMode = 5;
            }
            break;

        case 5:
            if (mpBckAnm->getFrame() == mpBckAnm->getEndFrame() - 6.0f) {
                fopAcM_seStart(this, Z2SE_EN_BM_DOWN, 0);
            }

            if (mpBckAnm->isStop()) {
                field_0xa11 = 10;
                mMode = 6;
            }
            break;

        case 6:
            break;
    }

    field_0x9dc = field_0x9d8;
    field_0x9c8 = field_0x9c6 - field_0x9da;
    field_0x9cc = field_0x9ca + field_0x9da;
    field_0x9d0 = field_0x9ce + field_0x9da;
    field_0x9d4 = field_0x9d2 + field_0x9da;
}

/* 80C81428-80C814FC 0032E8 00D4+00 1/1 0/0 0/0 .text            initActionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionEnd() {
    mpBckAnm->init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, BCK_BM6_DOWN), 1, 0, 0.0f, 0, -1, true);
    mpBckAnm->setFrame(mpBckAnm->getEndFrame());
    field_0xa1b = 0;
    fopAcM_OffStatus(this, 0);
    field_0x600.SetTgType(field_0x600.GetTgType() & 0xFFBFDFDF);
    field_0xa10 = 5;
}

/* 80C814FC-80C81500 0033BC 0004+00 1/0 0/0 0/0 .text            actionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionEnd() {
    /* empty function */
}

/* 80C81500-80C816A8 0033C0 01A8+00 1/0 0/0 0/0 .text            Draw__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mBeamosModel, &tevStr);
    dComIfGd_setListBG();

    J3DShape* shape = mEyeMaterial->getShape();
    if (field_0xa1b == 0) {
        shape->hide();
    }

    mpBrkAnm->entry(mBeamosModel->getModelData());
    mpBckAnm->entry(mBeamosModel->getModelData());
    mDoExt_modelUpdateDL(mBeamosModel);
    mDoExt_brkAnmRemove(mBeamosModel->getModelData());
    mDoExt_bckAnmRemove(mBeamosModel->getModelData());
    shape->show();
    dComIfGd_setList();
    g_env_light.setLightTevColorType_MAJI(mBeamEffectModel, &tevStr);

    mpBtkAnm2->entry(mBeamEffectModel->getModelData());
    mpBtkAnm->entry(mBeamEffectModel->getModelData());
    mpBckAnm2->entry(mBeamEffectModel->getModelData());
    mDoExt_modelUpdateDL(mBeamEffectModel);
    mDoExt_btkAnmRemove(mBeamEffectModel->getModelData());
    mDoExt_bckAnmRemove(mBeamEffectModel->getModelData());

    return 1;
}

/* 80C816A8-80C81808 003568 0160+00 1/0 0/0 0/0 .text            Delete__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Delete() {
    if (field_0xa50 != NULL) {
        field_0xa50->becomeInvalidEmitter();
        field_0xa50->quitImmortalEmitter();
        field_0xa50 = NULL;
    }

    if (field_0xa54 != NULL) {
        field_0xa54->becomeInvalidEmitter();
        field_0xa54->quitImmortalEmitter();
        field_0xa54 = NULL;
    }

    for (int i = 0; i < 2; i++) {
        if (field_0xa38[i] != NULL) {
            field_0xa38[i]->becomeInvalidEmitter();
            field_0xa38[i]->quitImmortalEmitter();
            field_0xa38[i] = NULL;
        }
    }

    for (int i = 0; i < 4; i++) {
        if (field_0xa40[i] != NULL) {
            field_0xa40[i]->becomeInvalidEmitter();
            field_0xa40[i]->quitImmortalEmitter();
            field_0xa40[i] = NULL;
        }
    }

    field_0xa7c.deleteObject();
    field_0xa9c.deleteObject();
    dComIfG_resDelete(&mPhase, l_arcName);

    return 1;
}

/* 80C81808-80C819C8 0036C8 01C0+00 1/0 0/0 0/0 .text daObjLv6Bm_create1st__FP12daObjLv6Bm_c */
static int daObjLv6Bm_create1st(daObjLv6Bm_c* i_this) {
    fopAcM_SetupActor(i_this, daObjLv6Bm_c);
    return i_this->create1st();
}

/* 80C81AFC-80C81B1C 0039BC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c */
static int daObjLv6Bm_MoveBGDelete(daObjLv6Bm_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C81B1C-80C81B3C 0039DC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c */
static int daObjLv6Bm_MoveBGExecute(daObjLv6Bm_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C81B3C-80C81B68 0039FC 002C+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c */
static int daObjLv6Bm_MoveBGDraw(daObjLv6Bm_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C81F18-80C81F38 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6Bm_METHODS */
static actor_method_class daObjLv6Bm_METHODS = {
    (process_method_func)daObjLv6Bm_create1st,
    (process_method_func)daObjLv6Bm_MoveBGDelete,
    (process_method_func)daObjLv6Bm_MoveBGExecute,
    0,
    (process_method_func)daObjLv6Bm_MoveBGDraw,
};

/* 80C81F38-80C81F68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6bemos2 */
extern actor_process_profile_definition g_profile_Obj_Lv6bemos2 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6bemos2,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv6Bm_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  631,                    // mPriority
  &daObjLv6Bm_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
