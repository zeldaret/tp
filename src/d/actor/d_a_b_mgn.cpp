/**
 * @file d_a_b_mgn.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_b_mgn.h"
#include "d/actor/d_a_obj_bhashi.h"
#include "d/d_camera.h"
#include "f_op/f_op_msg_mng.h"
#include "m_Do/m_Do_graphic.h"
#include "f_op/f_op_actor_enemy.h"

class daB_MGN_HIO_c : public JORReflexible {
public:
    /* 8060572C */ daB_MGN_HIO_c();
    /* 8060F8D0 */ virtual ~daB_MGN_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ s8 no;
    /* 0x08 */ f32 base_size;
    /* 0x0C */ f32 dash_speed;
    /* 0x10 */ f32 turn_speed;
    /* 0x14 */ f32 dash_anim;
    /* 0x18 */ f32 jewel_R;
    /* 0x1C */ f32 jewel_G;
    /* 0x20 */ f32 jewel_B;
};

enum B_MGN_RES_FILE_ID {
    /* BCK */
    /* 0x06 */ BCK_MGN_APPROACH = 6,
    /* 0x07 */ BCK_MGN_BACKJUMP,
    /* 0x08 */ BCK_MGN_BLOW,
    /* 0x09 */ BCK_MGN_DASH,
    /* 0x0A */ BCK_MGN_DASH_JUMP,
    /* 0x0B */ BCK_MGN_DOWNL,
    /* 0x0C */ BCK_MGN_DOWNL_DAMAGE,
    /* 0x0D */ BCK_MGN_DOWNL_LOOP,
    /* 0x0E */ BCK_MGN_DOWNL_UP,
    /* 0x0F */ BCK_MGN_DOWNL_UPA,
    /* 0x10 */ BCK_MGN_DOWNL_UPB,
    /* 0x11 */ BCK_MGN_DOWNL_WAIT,
    /* 0x12 */ BCK_MGN_DOWNR,
    /* 0x13 */ BCK_MGN_DOWNR_DAMAGE,
    /* 0x14 */ BCK_MGN_DOWNR_LOOP,
    /* 0x15 */ BCK_MGN_DOWNR_UPA,
    /* 0x16 */ BCK_MGN_DOWNR_UPB,
    /* 0x17 */ BCK_MGN_DOWNR_WAIT,
    /* 0x18 */ BCK_MGN_DROP,
    /* 0x19 */ BCK_MGN_DROP_POSE,
    /* 0x1A */ BCK_MGN_END_DEMO,
    /* 0x1B */ BCK_MGN_MDCATCHED,
    /* 0x1C */ BCK_MGN_MDCATCHST,
    /* 0x1D */ BCK_MGN_MDTHROWLED,
    /* 0x1E */ BCK_MGN_MDTHROWLST,
    /* 0x1F */ BCK_MGN_MDTHROWRED,
    /* 0x20 */ BCK_MGN_MDTHROWRST,
    /* 0x21 */ BCK_MGN_OP,
    /* 0x22 */ BCK_MGN_SIDESLIPL,
    /* 0x23 */ BCK_MGN_SIDESLIPR,
    /* 0x24 */ BCK_MGN_STEP,
    /* 0x25 */ BCK_MGN_WAIT,
    /* 0x26 */ BCK_MGN_WAIT2,
    /* 0x27 */ BCK_WL_MGNCATCHED,
    /* 0x28 */ BCK_WL_MGNCATCHST,
    /* 0x29 */ BCK_WL_MGNTHROWLED,
    /* 0x2A */ BCK_WL_MGNTHROWLST,
    /* 0x2B */ BCK_WL_MGNTHROWRED,
    /* 0x2C */ BCK_WL_MGNTHROWRST,

    /* BMDR */
    /* 0x2F */ BMDR_MGN = 0x2F,
    /* 0X30 */ BMDR_MGN_TAIEKI,

    /* BRK */
    /* 0x33 */ BRK_MGN_CORE = 0x33,
    /* 0x34 */ BRK_MGN_CORE_BEAT,
    /* 0x35 */ BRK_MGN_END_DEMO,
    /* 0x36 */ BRK_MGN_OP_DEMO,

    /* BTK */
    /* 0x39 */ BTK_MGN_DASH_JUMP = 0x39,
    /* 0x3A */ BTK_MGN_DROP,
    /* 0x3B */ BTK_MGN_END_DEMO,
    /* 0x3C */ BTK_MGN_ENTER,
    /* 0x3D */ BTK_MGN_EXIT,
};

enum B_MGNE_RES_FILE_ID {
    /* BCK */
    /* 0x06 */ BCK_EF_GDGATE_START = 6,

    /* BMDR */
    /* 0x09 */ BMDR_EF_GDGATE = 9,

    /* BRK */
    /* 0x0C */ BRK_EF_GDGATE_APPEAR = 12,
    /* 0x0D */ BRK_EF_GDGATE_START,

    /* BTK */
    /* 0x10 */ BTK_EF_GDGATE = 16,
};

enum Joint {
    /* 0x00 */ JNT_WORLD_ROOT,
    /* 0x01 */ JNT_BACKBONE1,
    /* 0x02 */ JNT_BACKBONE2,
    /* 0x03 */ JNT_HAIRA1,
    /* 0x04 */ JNT_HAIRA2,
    /* 0x05 */ JNT_HAIRBL1,
    /* 0x06 */ JNT_HAIRBL2,
    /* 0x07 */ JNT_HAIRBR1,
    /* 0x08 */ JNT_HAIRBR2,
    /* 0x09 */ JNT_HAIRCL1,
    /* 0x0A */ JNT_HAIRCL2,
    /* 0x0B */ JNT_HAIRCR1,
    /* 0x0C */ JNT_HAIRCR2,
    /* 0x0D */ JNT_HAIRDL1,
    /* 0x0E */ JNT_HAIRDL2,
    /* 0x0F */ JNT_HAIRDL3,
    /* 0x10 */ JNT_HAIRDR1,
    /* 0x11 */ JNT_HAIRDR2,
    /* 0x12 */ JNT_HAIRDR3,
    /* 0x13 */ JNT_HAIREL1,
    /* 0x14 */ JNT_HAIREL2,
    /* 0x15 */ JNT_HAIREL3,
    /* 0x16 */ JNT_HAIRER1,
    /* 0x17 */ JNT_HAIRER2,
    /* 0x18 */ JNT_HAIRER3,
    /* 0x19 */ JNT_NECK,
    /* 0x1A */ JNT_BEARD,
    /* 0x1B */ JNT_HEAD,
    /* 0x1C */ JNT_CHIN,
    /* 0x1D */ JNT_TANGE,
    /* 0x1E */ JNT_EARL,
    /* 0x1F */ JNT_EARR,
    /* 0x20 */ JNT_NOSE,
    /* 0x21 */ JNT_SHOULDEL,
    /* 0x22 */ JNT_ARML1,
    /* 0x23 */ JNT_ARML2,
    /* 0x24 */ JNT_FURL,
    /* 0x25 */ JNT_HANDL,
    /* 0x26 */ JNT_FINGAL1,
    /* 0x27 */ JNT_FINGAL2,
    /* 0x28 */ JNT_FINGBL1,
    /* 0x29 */ JNT_FINGBL2,
    /* 0x2A */ JNT_FINGCL1,
    /* 0x2B */ JNT_FINGCL2,
    /* 0x2C */ JNT_FINGDL1,
    /* 0x2D */ JNT_FINGDL2,
    /* 0x2E */ JNT_FINGEL1,
    /* 0x2F */ JNT_FINGEL2,
    /* 0x30 */ JNT_SHOULDER,
    /* 0x31 */ JNT_ARMR1,
    /* 0x32 */ JNT_ARMR2,
    /* 0x33 */ JNT_FURR,
    /* 0x34 */ JNT_HANDR,
    /* 0x35 */ JNT_FINGAR1,
    /* 0x36 */ JNT_FINGAR2,
    /* 0x37 */ JNT_FINGBR1,
    /* 0x38 */ JNT_FINGBR2,
    /* 0x39 */ JNT_FINGCR1,
    /* 0x3A */ JNT_FINGCR2,
    /* 0x3B */ JNT_FINGDR1,
    /* 0x3C */ JNT_FINGDR2,
    /* 0x3D */ JNT_FINGER1,
    /* 0x3E */ JNT_FINGER2,
    /* 0x3F */ JNT_WAIST,
    /* 0x40 */ JNT_LEGL1,
    /* 0x41 */ JNT_LEGL2,
    /* 0x42 */ JNT_LEGL3,
    /* 0x43 */ JNT_FOOTL,
    /* 0x44 */ JNT_LEGR1,
    /* 0x45 */ JNT_LEGR2,
    /* 0x46 */ JNT_LEGR3,
    /* 0x47 */ JNT_FOOTR,
    /* 0x48 */ JNT_TAIL1,
    /* 0x49 */ JNT_TAIL2,
    /* 0x4A */ JNT_TAIL3,
    /* 0x4B */ JNT_TAIL4,
};

namespace {
/* 806100CC-8061010C 000038 0040+00 0/1 0/0 0/0 .data cc_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph cc_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 2, 3}, {0xDCFBFDFD, 0x43}, 0x75}},  // mObj
        {dCcD_SE_HARD_BODY, 0, 6, 0, 0},                                 // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 0x303},                                  // mGObjTg
        {0}                                                              // mGObjCo
    },                                                                   // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};

/* 8061010C-8061014C 000078 0040+00 0/1 0/0 0/0 .data at_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph at_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_BOSS_SWING, 2, 12}, {0xDCFBFDFD, 0}, 0}},  // mObj
        {dCcD_SE_HARD_BODY, 0, 13, 0, 0},                                // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 2},                                      // mGObjTg
        {0}                                                              // mGObjCo
    },                                                                   // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
    }  // mSphAttr
};

/* 8061014C-8061018C 0000B8 0040+00 0/1 0/0 0/0 .data tg_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph tg_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 12}, {0x04402020, 2}, 0}},  // mObj
        {dCcD_SE_METAL, 0, 1, 0, 0},                                // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 2},                                 // mGObjTg
        {0}                                                         // mGObjCo
    },                                                              // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
    }  // mSphAttr
};

/* 8061018C-8061019C 0000F8 000F+01 1/1 0/0 0/0 .data body_front_sph__23@unnamed@d_a_b_mgn_cpp@ */
static u8 body_front_sph[15] = {
    1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
};
}  // namespace

/* 8060572C-8060577C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__13daB_MGN_HIO_cFv */
daB_MGN_HIO_c::daB_MGN_HIO_c() {
    no = -1;
    base_size = 1.2f;
    dash_speed = 50.0f;
    turn_speed = 70.0f;
    dash_anim = 1.0f;
    jewel_R = 100.0f;
    jewel_G = 100.0f;
    jewel_B = 100.0f;
}

/* 8060577C-8060584C 00013C 00D0+00 1/1 0/0 0/0 .text ctrlJoint__9daB_MGN_cFP8J3DJointP8J3DModel */
int daB_MGN_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    if (jntNo == JNT_BACKBONE1) {
        mDoMtx_stack_c::YrotM(shape_angle.y - field_0xb16);
    } else if (jntNo == JNT_NECK) {
        mDoMtx_stack_c::YrotM(field_0xb16 - field_0xb14);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8060584C-80605898 00020C 004C+00 1/1 0/0 0/0 .text JointCallBack__9daB_MGN_cFP8J3DJointi */
int daB_MGN_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daB_MGN_c* i_this = (daB_MGN_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80610440-80610444 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 80610450-80610474 000018 0024+00 6/6 0/0 0/0 .bss             l_HIO */
static daB_MGN_HIO_c l_HIO;

/* 80605898-80605C8C 000258 03F4+00 1/1 0/0 0/0 .text            draw__9daB_MGN_cFv */
int daB_MGN_c::draw() {
    J3DModel* model = mpMgnModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    mpMgnCoreBrk->entry(model->getModelData());
    mpMgnBtk->entry(model->getModelData());

    J3DMaterial* material_p = model->getModelData()->getMaterialNodePointer(3);
    material_p->getTevColor(0)->r = (u8)(l_HIO.jewel_R * mJewelColorStrength);
    material_p->getTevColor(0)->g = (u8)(l_HIO.jewel_G * mJewelColorStrength);
    material_p->getTevColor(0)->b = (u8)(l_HIO.jewel_B * mJewelColorStrength);

    mpMgnModelMorf->entryDL();

    cXyz sp18(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    f32 var_f31 = 4000.0f - current.pos.y;
    if (var_f31 < 0.0f) {
        var_f31 = 0.0f;
    }

    tevStr.field_0x344 = (var_f31 / 4000.0f) * field_0xae8;

    dBgS_GndChk gndchk;
    f32 gnd_height;
    if (mAcch.GetGroundH() == -1000000000.0f) {
        cXyz spC(current.pos);
        gndchk.SetPos(&spC);
        gnd_height = dComIfG_Bgsp().GroundCross(&gndchk);
    } else {
        gndchk = mAcch.m_gnd;
        gnd_height = mAcch.GetGroundH();
    }

    field_0xa94 = dComIfGd_setShadow(field_0xa94, 0, model, &sp18, 3000.0f, 0.0f, current.pos.y,
                                     mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                                     dDlst_shadowControl_c::getSimpleTex());

    for (int i = 0; i < 20; i++) {
        if (mBloodEffMode[i] != 0) {
            J3DMaterial* material_p = mpMgnTaiekiModel[i]->getModelData()->getMaterialNodePointer(0);
            if (material_p != NULL) {
                material_p->getTevKColor(3)->a = field_0x940[i];
            }

            g_env_light.setLightTevColorType_MAJI(mpMgnTaiekiModel[i], &tevStr);
            mDoExt_modelUpdateDL(mpMgnTaiekiModel[i]);
        }
    }

    drawHideSmokeEffect();

    if (mBlurRate != 0.0f) {
        mDoGph_gInf_c::setBlureRate(mBlurRate);
        mDoGph_gInf_c::onBlure();
    } else {
        mDoGph_gInf_c::offBlure();
    }

    return 1;
}

/* 80605C8C-80605CAC 00064C 0020+00 1/0 0/0 0/0 .text            daB_MGN_Draw__FP9daB_MGN_c */
static int daB_MGN_Draw(daB_MGN_c* i_this) {
    return i_this->draw();
}

/* 80605CAC-80605D78 00066C 00CC+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_ARROW) {
            if (fopAcM_searchActorDistance((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data) < 1500.0f + nREG_F(9)) {
                if (fopAcM_GetSpeedF((fopAc_ac_c*)i_actor)) {
                    s16 var_r29 = ((fopAc_ac_c*)i_actor)->current.angle.y;
                    s16 var_r28 = fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
                    if (abs((s16)(var_r29 - var_r28)) < 0x2000) {
                        return i_actor;
                    }
                }
            }
        }
    }

    return NULL;
}

/* 80605D78-8060601C 000738 02A4+00 2/2 0/0 0/0 .text            setDashSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::setDashSmokeEffect() {
    static f32 foot_rand_frame[8] = {10.0f, 16.0f, 18.0f, 2.0f, 64.0f, 68.0f, 63.0f, 69.0f};

    int jnt_no = -1;
    int var_r28 = 0;
    int var_r27;

    if (checkBck(BCK_MGN_DOWNR_UPA) || checkBck(BCK_MGN_DOWNL_UPA)) {
        var_r28 = 4;
    }

    if (mpMgnModelMorf->checkFrame(foot_rand_frame[var_r28])) {
        jnt_no = JNT_HANDR;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        var_r27 = 0;
    } else if (mpMgnModelMorf->checkFrame(foot_rand_frame[var_r28 + 1])) {
        jnt_no = JNT_HANDL;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        var_r27 = 1;
    } else if (mpMgnModelMorf->checkFrame(foot_rand_frame[var_r28 + 2])) {
        jnt_no = JNT_FOOTR;
        var_r27 = 2;
    } else if (mpMgnModelMorf->checkFrame(foot_rand_frame[var_r28 + 3])) {
        jnt_no = JNT_FOOTL;
        var_r27 = 3;
    }

    if (jnt_no != -1) {
        dBgS_GndChk gndchk;
        cXyz effpos;

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(jnt_no));
        mDoMtx_stack_c::multVecZero(&effpos);

        effpos.y += 100.0f;
        gndchk.SetPos(&effpos);
        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet1(&field_0x25f8[var_r27], &field_0x2608[var_r27], &effpos, NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 8060601C-806062C0 0009DC 02A4+00 2/2 0/0 0/0 .text            setBackJumpEffect__9daB_MGN_cFv */
void daB_MGN_c::setBackJumpEffect() {
    int jnt_no = -1;
    int var_r27;

    if (mpMgnModelMorf->checkFrame(40.0f)) {
        jnt_no = JNT_HANDR;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        var_r27 = 0;
    } else if (mpMgnModelMorf->checkFrame(37.0f)) {
        jnt_no = JNT_HANDL;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        var_r27 = 1;
    } else if (mpMgnModelMorf->checkFrame(35.0f)) {
        jnt_no = JNT_FOOTR;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        var_r27 = 2;
    } else if (mpMgnModelMorf->checkFrame(36.0f)) {
        jnt_no = JNT_FOOTL;
        var_r27 = 3;
    }

    if (jnt_no != -1) {
        dBgS_GndChk gndchk;
        cXyz effpos;

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(jnt_no));
        mDoMtx_stack_c::multVecZero(&effpos);

        effpos.y += 100.0f;
        gndchk.SetPos(&effpos);
        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet1(&field_0x25f8[var_r27], &field_0x2608[var_r27], &effpos, NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 806062C0-80606424 000C80 0164+00 1/1 0/0 0/0 .text            setSlideSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::setSlideSmokeEffect() {
    dBgS_GndChk gndchk;
    cXyz effpos;
    mSound.startCreatureSoundLevel(Z2SE_EN_MGN_SLIP, 0, -1);

    for (int i = 0; i < 4; i++) {
        static int foot_jnt[4] = {JNT_HANDR, JNT_HANDL, JNT_FOOTR, JNT_FOOTL};
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(foot_jnt[i]));
        mDoMtx_stack_c::multVecZero(&effpos);

        effpos.y += 100.0f;
        gndchk.SetPos(&effpos);
        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet2(&field_0x25f8[i], &field_0x2608[i], &effpos, NULL, 3.0f, &tevStr);
        }
    }
}

/* 80606424-806065D4 000DE4 01B0+00 3/3 0/0 0/0 .text            setBodySlideEffect__9daB_MGN_cFv */
void daB_MGN_c::setBodySlideEffect() {
    dBgS_GndChk gndchk;
    cXyz effpos;

    mSound.startCreatureSoundLevel(Z2SE_EN_MGN_SLIP, 0, -1);

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x3f));
            mDoMtx_stack_c::multVecZero(&effpos);
        } else {
            mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&effpos);
        }

        effpos.y += 100.0f;
        gndchk.SetPos(&effpos);

        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);
        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet2(&field_0x25f8[i], &field_0x2608[i], &effpos, NULL, 10.0f, &tevStr);
        }
    }
}

/* 806065D4-80606754 000F94 0180+00 1/1 0/0 0/0 .text            setOpeningEffect__9daB_MGN_cFv */
void daB_MGN_c::setOpeningEffect() {
    dBgS_GndChk gndchk;
    cXyz effpos;

    mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x34));
    mDoMtx_stack_c::multVecZero(&effpos);

    effpos.y += 100.0f;
    gndchk.SetPos(&effpos);
    effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

    if (effpos.y != -1000000000.0f) {
        fopAcM_effSmokeSet1(&field_0x25f8[0], &field_0x2608[0], &effpos, NULL, 15.0f, &tevStr, 1);
    }

    mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x25));
    mDoMtx_stack_c::multVecZero(&effpos);
    effpos.y += 100.0f;
    gndchk.SetPos(&effpos);
    effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

    if (effpos.y != -1000000000.0f) {
        fopAcM_effSmokeSet1(&field_0x25f8[1], &field_0x2608[1], &effpos, NULL, 15.0f, &tevStr, 1);
    }
}

/* 80606754-8060688C 001114 0138+00 1/1 0/0 0/0 .text            setStepEffect__9daB_MGN_cFv */
void daB_MGN_c::setStepEffect() {
    dBgS_GndChk gndchk;
    cXyz effpos;

    for (int i = 0; i < 2; i++) {
        J3DModel* model = mpMgnModelMorf->getModel();

        static int foot_jnt[2] = {JNT_HANDR, JNT_HANDL};
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(foot_jnt[i]));
        mDoMtx_stack_c::multVecZero(&effpos);
        effpos.y += 100.0f;

        gndchk.SetPos(&effpos);

        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &effpos, NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 8060688C-80606A10 00124C 0184+00 2/2 0/0 0/0 .text            setFallAttackEffect__9daB_MGN_cFv */
void daB_MGN_c::setFallAttackEffect() {
    dBgS_GndChk gndchk;
    cXyz effpos;

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            J3DModel* model = mpMgnModelMorf->getModel();
            mDoMtx_stack_c::copy(model->getAnmMtx(0x3F));
            mDoMtx_stack_c::multVecZero(&effpos);
        } else {
            mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&effpos);
        }

        effpos.y += 100.0f;
        gndchk.SetPos(&effpos);

        effpos.y = dComIfG_Bgsp().GroundCross(&gndchk);

        if (effpos.y != -1000000000.0f) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &effpos, NULL, 10.0f, &tevStr, 1);
        }
    }
}

/* 80606A10-80606AEC 0013D0 00DC+00 1/1 0/0 0/0 .text            setHeadLightEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadLightEffect() {
    mHeadLightEmitterID = dComIfGp_particle_set(mHeadLightEmitterID, 0x8C1F, &current.pos, &tevStr, &shape_angle,
                                                NULL, 0xFF, NULL, -1, NULL, NULL, NULL);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mHeadLightEmitterID);
    if (emitter != NULL) {
        emitter->setGlobalSRTMatrix(mpMgnModelMorf->getModel()->getAnmMtx(27));
    }
}

/* 80606AEC-80606C6C 0014AC 0180+00 1/1 0/0 0/0 .text            setHeadHitEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadHitEffect() {
    mHeadHitEmitterID = dComIfGp_particle_set(mHeadHitEmitterID, 0x8C1D, &current.pos, &tevStr, &shape_angle,
                                              NULL, 0xFF, NULL, -1, NULL, NULL, NULL);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mHeadHitEmitterID);
    if (emitter != NULL) {
        emitter->setGlobalSRTMatrix(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
    }

    mHeadHitEmitter2ID = dComIfGp_particle_set(mHeadHitEmitter2ID, 0x8C1E, &current.pos, &tevStr, &shape_angle,
                                               NULL, 0xFF, NULL, -1, NULL, NULL, NULL);

    emitter = dComIfGp_particle_getEmitter(mHeadHitEmitter2ID);
    if (emitter != NULL) {
        emitter->setGlobalSRTMatrix(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
    }
}

/* 80606C6C-80606D60 00162C 00F4+00 2/2 0/0 0/0 .text setHideSmokeEffect__9daB_MGN_cFP4cXyzUc */
int daB_MGN_c::setHideSmokeEffect(cXyz* i_pos, u8 i_type) {
    for (int i = 0; i < 4; i++) {
        if (mGdgateStatus[i] == 0) {
            mGdgateStatus[i] = 1;
            mGdgatePos[i] = *i_pos;
            mGdgateAngle[i] = cLib_targetAngleY(i_pos, &daPy_getPlayerActorClass()->current.pos);
            mGdgateType[i] = i_type;

            if (mGdgateType[i] == 0) {
                mGdgatePos[i].y += 200.0f;
            } else {
                mGdgatePos[i].z += 200.0f;
            }

            return i;
        }
    }

    return -1;
}

/* 80606D60-806071C4 001720 0464+00 2/1 0/0 0/0 .text            calcHideSmokeEffect__9daB_MGN_cFv
 */
void daB_MGN_c::calcHideSmokeEffect() {
    csXyz eff_rot;
    cXyz eff_size(7.0f, 7.0f, 7.0f);

    f32 anm_speed = 1.0f;
    if (field_0xaff >= 5) {
        anm_speed = 2.0f;
    }

    for (int i = 0; i < 4; i++) {
        J3DModelData* modelData = mpGdgateModelMorf[i]->getModel()->getModelData();

        eff_rot.set(0, mGdgateAngle[i], 0);
        if (mGdgateType[i] != 0) {
            eff_rot.x = 0x4000;
        }

        switch (mGdgateStatus[i]) {
        case 1:
            mGdgateStatus[i] = 2;

            mpGdgateModelMorf[i]->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_mgne", 6), 0, 0.0f,
                                    anm_speed, 0.0f, -1.0f);

            mpGdgateStartBrk[i]->remove(modelData);
            mpGdgateStartBrk[i]->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", 13),
                                  1, 0, anm_speed, 0, -1);

            mpGdgateBtk[i]->remove(modelData);
            mpGdgateBtk[i]->init(mpMgnModelMorf->getModel()->getModelData(),
                                  (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgne", 16), 1, 2,
                                  anm_speed, 0, -1);

            mpGdgateAppearBrk[i]->remove(modelData);
            mpGdgateAppearBrk[i]->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", 12),
                                  1, 0, 0.0f, 0, -1);

            field_0x26b4[i] = 1;
        case 2:
            cLib_addCalcAngleS(&mGdgateAngle[i], cLib_targetAngleY(&mGdgatePos[i], &daPy_getPlayerActorClass()->current.pos), 0x10, 0x100, 0x20);
            field_0x26a4[i] = dComIfGp_particle_set(field_0x26a4[i], 0x8A15, &mGdgatePos[i], &tevStr,
                                                    &eff_rot, &eff_size, 0xFF, NULL, -1, NULL, NULL, NULL);
            break;
        case 7:
            dComIfGp_particle_set(0x8A14, &mGdgatePos[i], &tevStr, &eff_rot, &eff_size);
        case 3:
            mGdgateStatus[i] = 4;
            mpGdgateStartBrk[i]->remove(modelData);
            mpGdgateStartBrk[i]->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", 13), 1, 0, -1.0f, 0, -1);
            field_0x26b4[i] = 1;
        case 4:
            if (mpGdgateStartBrk[i]->isStop()) {
                mGdgateStatus[i] = 0;
                field_0x26b4[i] = 0;
            }
            break;
        case 5:
            mGdgateStatus[i] = 6;
            mpGdgateAppearBrk[i]->setPlaySpeed(anm_speed);
            field_0x26b4[i] = 1;
            break;
        }

        if (field_0x26b4[i] != 0) {
            mpGdgateModelMorf[i]->play(0, 0);
            mDoMtx_stack_c::transS(mGdgatePos[i]);
            mDoMtx_stack_c::ZXYrotM(eff_rot);
            mDoMtx_stack_c::scaleM(eff_size);

            mpGdgateModelMorf[i]->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
            mpGdgateModelMorf[i]->modelCalc();
            mpGdgateStartBrk[i]->play();
            mpGdgateAppearBrk[i]->play();
            mpGdgateBtk[i]->play();

            mSound.startCreatureSoundLevel(Z2SE_EN_MGN_APPR_EFF, 0, -1);
        }
    }
}

/* 806071C4-8060729C 001B84 00D8+00 1/1 0/0 0/0 .text            drawHideSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::drawHideSmokeEffect() {
    J3DModel* model = mpMgnModelMorf->getModel();
    J3DModelData* modelData;

    for (int i = 0; i < 4; i++) {
        model = mpGdgateModelMorf[i]->getModel();
        modelData = model->getModelData();

        if (field_0x26b4[i]) {
            g_env_light.settingTevStruct(0, &mGdgatePos[i], &tevStr);
            g_env_light.setLightTevColorType_MAJI(model, &tevStr);

            mpGdgateStartBrk[i]->entry(modelData);
            mpGdgateAppearBrk[i]->entry(modelData);
            mpGdgateBtk[i]->entry(modelData);

            mpGdgateModelMorf[i]->entryDL();
        }
    }
}

/* 8060729C-80607498 001C5C 01FC+00 5/5 0/0 0/0 .text            setBloodEffect__9daB_MGN_cFv */
void daB_MGN_c::setBloodEffect() {
    if (field_0xaa4 == 0) {
        for (int i = 0; i < 20; i++) {
            if (mBloodEffMode[i] == 0) {
                mBloodEffMode[i] = 1;
                break;
            }
        }

        f32 var_f31 = 2.0f;
        if (speed.absXZ() > 10.0f) {
            var_f31 = 1.0f;
        }

        if (cM_rnd() < 0.3f) {
            field_0xaa4 = (int)(var_f31 * (cM_rndF(3.0f) + 3.0f));
        } else {
            field_0xaa4 = (int)(var_f31 * (cM_rndFX(10.0f) + 15.0f));
        }
    }
}

/* 80607498-8060778C 001E58 02F4+00 1/1 0/0 0/0 .text            calcBloodMove__9daB_MGN_cFv */
void daB_MGN_c::calcBloodMove() {
    for (int i = 0; i < 20; i++) {
        switch (mBloodEffMode[i]) {
        case 0:
            break;
        case 1: {
            mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(1));
            mDoMtx_stack_c::transM(cM_rndFX(10.0f) + 200.0f, cM_rndFX(10.0f) + -150.0f, cM_rndFX(10.0f));
            mDoMtx_stack_c::multVecZero(&mBloodEffPos[i]);

            field_0x710[i].set(speed.x / 2, 0.0f, speed.z / 2);

            mBloodEffMode[i] = 2;
            field_0x940[i] = 255.0f;

            f32 temp_f31 = cM_rnd() + 0.5f;
            field_0x8f0[i] = temp_f31;
            mBloodEffSize[i].set(temp_f31, temp_f31, temp_f31);
        }
        case 2:
            if (field_0x710[i].y > -60.0f) {
                field_0x710[i].y -= 3.0f;
            }

            mBloodEffPos[i] += field_0x710[i];

            if (mBloodEffPos[i].y <= 0.0f) {
                mBloodEffPos[i].y = 0.0f;
                field_0x710[i].set(0.0f, 0.0f, 0.0f);
                mBloodEffMode[i] = 3;
            }
            break;
        case 3:
            if (mBloodEffSize[i].y > field_0x8f0[i] * 0.2f) {
                mBloodEffSize[i].y *= 0.6f;
            }

            if (mBloodEffSize[i].x < field_0x8f0[i] * 2.0f) {
                mBloodEffSize[i].x *= 1.1f;
            }

            mBloodEffSize[i].z = mBloodEffSize[i].x;

            if (mBloodEffSize[i].y < field_0x8f0[i] * 0.2f &&
                mBloodEffSize[i].x > field_0x8f0[i] * 2.0f)
            {
                mBloodEffMode[i] = 4;
            }
            break;
        case 4:
            mBloodEffSize[i].y *= 0.7f;
            mBloodEffSize[i].x *= 1.01f;
            mBloodEffSize[i].z = mBloodEffSize[i].x;

            if (cLib_chaseF(&field_0x940[i], 0.0f, 20.0f)) {
                mBloodEffMode[i] = 0;
            }
        }

        if (mBloodEffMode[i] != 0) {
            mDoMtx_stack_c::transS(mBloodEffPos[i]);
            mDoMtx_stack_c::scaleM(mBloodEffSize[i]);
            mDoMtx_stack_c::transM(0.0f, 17.0f, 0.0f);
            mpMgnTaiekiModel[i]->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }
}

/* 8060778C-806078DC 00214C 0150+00 2/2 0/0 0/0 .text            checkDownBeforeBG__9daB_MGN_cFv */
void daB_MGN_c::checkDownBeforeBG() {
    cXyz line_end;
    line_end = current.pos;
    line_end.x += cM_ssin(shape_angle.y) * 1200.0f;
    line_end.z += cM_scos(shape_angle.y) * 1200.0f;

    dBgS_LinChk linchk;
    linchk.Set(&current.pos, &line_end, this);

    field_0xa92 = 0;

    if (dComIfG_Bgsp().LineCross(&linchk)) {
        cM3dGPla tri;
        dComIfG_Bgsp().GetTriPla(linchk, &tri);

        cXyz* var_r29 = tri.GetNP();
        s16 var_r28 = (s16)cM_atan2s(var_r29->x, var_r29->z);
        if (abs((s16)(var_r28 - shape_angle.y)) > 0x5000) {
            if ((s16)(var_r28 - shape_angle.y) != 0) {
                field_0xa92 -= (s16)0x300;
            } else {
                field_0xa92 += (s16)0x300;
            }
        }
    }
}

/* 80607924-806079CC 0022E4 00A8+00 11/11 0/0 0/0 .text            setBck__9daB_MGN_cFiUcff */
void daB_MGN_c::setBck(int i_anm, u8 i_mode, f32 i_morf, f32 i_speed) {
    mpMgnModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_mgn", i_anm), i_mode, i_morf,
                           i_speed, 0.0f, -1.0f);
}

/* 806079CC-80607A2C 00238C 0060+00 3/3 0/0 0/0 .text            checkBck__9daB_MGN_cFi */
bool daB_MGN_c::checkBck(int i_anm) {
    if (mpMgnModelMorf->getAnm() == dComIfG_getObjectRes("B_mgn", i_anm))
        return true;
    else
        return false;
}

/* 80607A2C-80607A80 0023EC 0054+00 16/16 0/0 0/0 .text            setActionMode__9daB_MGN_cFii */
void daB_MGN_c::setActionMode(int i_action, int i_mode) {
    mActionMode = i_action;
    mMoveMode = i_mode;
    mJewelColorMode = 0;

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mHeadLightEmitterID);
    if (emitter != NULL) {
        emitter->deleteAllParticle();
    }
}

/* 80607A80-80607B50 002440 00D0+00 2/2 0/0 0/0 .text            setExitMode__9daB_MGN_cFi */
void daB_MGN_c::setExitMode(BOOL param_1) {
    mpMgnBtk->init(mpMgnModelMorf->getModel()->getModelData(),
                   (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 61), 1, 0, 1.4f, 0, -1);

    if (!param_1) {
        setActionMode(ACTION_DASH_e, 4);
    } else {
        setActionMode(ACTION_CIRCLE_e, 4);
    }

    offBodyCo();
    mAtSph.OffAtSetBit();
}

/* 80607B50-80607B80 002510 0030+00 1/1 0/0 0/0 .text            onBodyShield__9daB_MGN_cFv */
void daB_MGN_c::onBodyShield() {
    field_0x1fb8 = 0xDCFBFDFD;
    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].SetTgType(field_0x1fb8);
    }
}

/* 80607B80-80607BB0 002540 0030+00 1/1 0/0 0/0 .text            offBodyShield__9daB_MGN_cFv */
void daB_MGN_c::offBodyShield() {
    field_0x1fb8 = 0xFBFDFD;
    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].SetTgType(field_0x1fb8);
    }
}

/* 80607BB0-80607BFC 002570 004C+00 3/3 0/0 0/0 .text            onBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::onBodySlideAt() {
    for (int i = 0; i < 15; i++) {
        if (body_front_sph[i]) {
            mBodyCcSph[i].SetAtSPrm(31);
            mBodyCcSph[i].SetAtSpl((dCcG_At_Spl)6);
            mBodyCcSph[i].SetAtAtp(1);
        }
    }
}

/* 80607BFC-80607C20 0025BC 0024+00 3/3 0/0 0/0 .text            offBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::offBodySlideAt() {
    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].SetAtSPrm(3);
    }
}

/* 80607C20-80607CB0 0025E0 0090+00 1/1 0/0 0/0 .text            checkHitSlideAt__9daB_MGN_cFv */
bool daB_MGN_c::checkHitSlideAt() {
    for (int i = 0; i < 15; i++) {
        if (mBodyCcSph[i].ChkAtHit() && !mBodyCcSph[i].ChkAtShieldHit()) {
            if (fopAcM_GetName(mBodyCcSph[i].GetAtHitObj()->GetAc()) == PROC_ALINK) {
                return true;
            }
        }
    }

    return false;
}

/* 80607CB0-80607CE4 002670 0034+00 1/1 0/0 0/0 .text            onBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::onBodyFallAt() {
    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].SetAtSPrm(31);
        mBodyCcSph[i].SetAtSpl((dCcG_At_Spl)13);
        mBodyCcSph[i].SetAtAtp(2);
    }
}

/* 80607CE4-80607D08 0026A4 0024+00 1/1 0/0 0/0 .text            offBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::offBodyFallAt() {
    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].SetAtSPrm(3);
    }
}

/* 80607D08-80607D44 0026C8 003C+00 4/4 0/0 0/0 .text            onBodyCo__9daB_MGN_cFv */
void daB_MGN_c::onBodyCo() {
    field_0xb05 = 1;

    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].OnCoSetBit();
        mBodyCcSph[i].OnAtSetBit();
    }
}

/* 80607D44-80607D7C 002704 0038+00 4/4 0/0 0/0 .text            offBodyCo__9daB_MGN_cFv */
void daB_MGN_c::offBodyCo() {
    field_0xb05 = 0;

    for (int i = 0; i < 15; i++) {
        mBodyCcSph[i].OffCoSetBit();
        mBodyCcSph[i].OffAtSetBit();
    }
}

/* 80607D7C-8060819C 00273C 0420+00 1/1 0/0 0/0 .text            getNearHitPos__9daB_MGN_cFP4cXyz */
cXyz daB_MGN_c::getNearHitPos(cXyz* param_1) {
    cXyz sp38[6] = {
        cXyz(280.0f, -200.0f, 0.0f),
        cXyz(100.0f, -130.0f, -10.0f),
        cXyz(180.0f, -170.0f, 10.0f),
        cXyz(280.0f, -170.0f, 20.0f),
        cXyz(100.0f, -120.0f, 20.0f),
        cXyz(180.0f, -160.0f, 10.0f),
    };

    f32 sp20[6] = {
        -80.0f,
        -50.0f,
        -50.0f,
        -50.0f,
        -50.0f,
        -50.0f,
    };

    cXyz sp14, sp8;
    f32 var_f31 = 1000.0f;
    for (int i = 0; i < 6; i++) {
        int var_r28 = i % 3 + field_0xafc * 3;

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::transM(sp38[var_r28]);
        mDoMtx_stack_c::multVecZero(&sp8);

        if (i >= 3) {
            sp8.y += sp20[var_r28];
        }

        if (param_1->abs(sp8) < var_f31) {
            var_f31 = param_1->abs(sp8);
            sp14 = sp8;
        }
    }

    if (var_f31 != 1000.0f) {
        return sp14;
    } else {
        return *param_1;
    }
}

/* 8060819C-80608738 002B5C 059C+00 1/1 0/0 0/0 .text            damage_check__9daB_MGN_cFv */
void daB_MGN_c::damage_check() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (field_0xafd == 0 && field_0xaff >= 4) {
        for (int i = 0; i < 15; i++) {
            mBodyCcSph[i].SetTgType(field_0x1fb8 & 0xFFBFDFDF);
        }
    } else {
        for (int i = 0; i < 15; i++) {
            mBodyCcSph[i].SetTgType(field_0x1fb8);
        }
    }

    if (field_0xafd == 0) {
        if (field_0xaff >= 4) {
            field_0x20f4[0].SetTgType(0);
            field_0x20f4[1].SetTgType(0);
        } else {
            field_0x20f4[0].SetTgType(0x402020);
            field_0x20f4[1].SetTgType(0x402020);
        }

        field_0x20f4[0].OffTgNoHitMark();
        field_0x20f4[1].OffTgNoHitMark();
    } else {
        field_0x20f4[0].SetTgType(0xdc000000);
        field_0x20f4[1].SetTgType(0xdc000000);
        field_0x20f4[0].OnTgNoHitMark();
        field_0x20f4[1].OnTgNoHitMark();
    }

    mCcStts.Move();

    if (mDamageInvulnerabilityTimer == 0) {
        mAtInfo.mpCollider = NULL;

        cXyz sp24;
        if (field_0x20f4[0].ChkTgHit()) {
            mAtInfo.mpCollider = field_0x20f4[0].GetTgHitObj();
            sp24 = *field_0x20f4[0].GetTgHitPosP();
        }

        if (field_0x20f4[1].ChkTgHit()) {
            mAtInfo.mpCollider = field_0x20f4[1].GetTgHitObj();
            sp24 = *field_0x20f4[1].GetTgHitPosP();
        }

        if (mAtInfo.mpCollider != NULL) {
            if (mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
                mDamageInvulnerabilityTimer = 20;
            } else {
                mDamageInvulnerabilityTimer = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                mDamageInvulnerabilityTimer = KREG_S(8) + 10;
            }

            s16 prev_hp = health;
            cc_at_check(this, &mAtInfo);

            if (field_0xafd == 0) {
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_KOROBU, -1);
                field_0xb0a = 100;

                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mHeadLightEmitterID);
                if (emitter != NULL) {
                    emitter->deleteAllParticle();
                }

                if (!dComIfGs_isOneZoneSwitch(5, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onOneZoneSwitch(5, fopAcM_GetRoomNo(this));
                }

                field_0xb07 = 0;
                health = prev_hp;
                mAtSph.OffAtSetBit();

                if (cM_rnd() < 0.5f) {
                    setActionMode(ACTION_DOWN_e, 0);
                } else {
                    setActionMode(ACTION_DOWN_e, 1);
                }
            } else {
                if (mAtInfo.mpCollider->GetAtAtp() >= 1) {
                    sp24 = getNearHitPos(&sp24);
    
                    if (mAtInfo.mHitStatus == 0) {
                        dComIfGp_setHitMark(1, this, &sp24, NULL, NULL, 0);
                    } else {
                        dComIfGp_setHitMark(3, this, &sp24, NULL, NULL, 0);
                    }
    
                    csXyz effrot(0, cLib_targetAngleY(&sp24, &player->current.pos), 0);
                    dComIfGp_particle_set(0x8C22, &sp24, &tevStr, &effrot, 0);
                }
    
                if (field_0xb08 == 0) {
                    field_0xaa0 = 100;
                    field_0xb08 = 1;
                }
    
                if (player->getCutCount() >= 3 && field_0xaa0 < 20) {
                    field_0xaa0 = 20;
                }
    
                if (!dComIfGs_isOneZoneSwitch(6, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onOneZoneSwitch(6, fopAcM_GetRoomNo(this));
                }
    
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) && player->getCutType() != 44 &&
                    player->getCutType() != 45 && player->onWolfEnemyHangBite(this))
                {
                    setActionMode(ACTION_DOWN_BITE_DAMAGE_e, 0);
                    return;
                }
    
                u8 var_r29 = 0;
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_MASTER_SWORD)) {
                    if (mAtInfo.mpCollider->GetAtAtp() >= 4) {
                        if (player->getSwordAtUpTime() != 0) {
                            var_r29 = 4;
                        } else {
                            var_r29 = 2;
                        }
                    } else if (player->getSwordAtUpTime() != 0) {
                        var_r29 = 2;
                    } else if (player->getCutCount() >= 4) {
                        var_r29 = 2;
                    } else if (((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
                        field_0xb07++;
                        if (field_0xb07 >= 2) {
                            var_r29 = 2;
                        }
                    }
                } else if (mAtInfo.mpCollider->GetAtAtp() >= 4 || ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
                    var_r29 = 1;
                }

                if (field_0xaff == 3 && var_r29 != 0) {
                    var_r29 = 1;
                }

                field_0xb06 = var_r29;
                setActionMode(ACTION_DOWN_DAMAGE_e, 0);
            }

            field_0x20f4[0].ClrTgHit();
            field_0x20f4[1].ClrTgHit();
        }
    }
}

/* 80608738-806087A8 0030F8 0070+00 1/1 0/0 0/0 .text            calcJointAngle__9daB_MGN_cFs */
void daB_MGN_c::calcJointAngle(s16 i_targetAngle) {
    field_0xb18 = 1;

    field_0xb16 = shape_angle.y;
    cLib_addCalcAngleS2(&field_0xb16, i_targetAngle, 4, 0xC00);

    field_0xb14 = field_0xb16;
    cLib_addCalcAngleS2(&field_0xb14, i_targetAngle, 4, 0xC00);
}

/* 806087A8-80608EF8 003168 0750+00 2/1 0/0 0/0 .text            executeCircle__9daB_MGN_cFv */
void daB_MGN_c::executeCircle() {
    cXyz sp30(0.0f, 0.0f, -600.0f);
    cXyz sp24;
    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);

    s16 var_r28;
    s16 var_r27 = cLib_targetAngleY(&sp30, &current.pos);

    switch (mMoveMode) {
    case 1:
    case 10:
        if (mMoveMode == 1) {
            field_0xaa8 = 100;
        } else {
            field_0xaa8 = 30;
            mMoveMode = 1;
        }
    case 0:
        if (checkBck(BCK_MGN_APPROACH)) {
            setBck(BCK_MGN_DASH, 2, 0.0f, l_HIO.dash_anim);
        } else if (!checkBck(BCK_MGN_DOWNR_DAMAGE) && !checkBck(BCK_MGN_DOWNL_DAMAGE)) {
            setBck(BCK_MGN_DASH, 2, 3.0f, l_HIO.dash_anim);
        }

        field_0xa90 = var_r27;
        if ((s16)(field_0xa90 - shape_angle.y) < 0) {
            field_0xa92 = 0x800;
        } else {
            field_0xa92 = -0x800;
        }

        field_0xa90 += field_0xa92;
        mMoveMode += 2;
        field_0xa9c = cM_rndFX(50.0f) + 200.0f;

        mAtSph.OnAtSetBit();
        mAtSph.SetAtAtp(2);

        speedF = l_HIO.turn_speed;
        attention_info.flags = 0;
    case 2:
    case 3:
        setDashSmokeEffect();
        setBloodEffect();
    case 4:
        if (mpMgnModelMorf->isStop() && (checkBck(BCK_MGN_DOWNR_DAMAGE) || checkBck(BCK_MGN_DOWNL_DAMAGE))) {
            setBck(BCK_MGN_DASH, 2, 3.0f, 1.0f);
        }

        if (abs((s16)(field_0xa90 - var_r27)) < 0x800) {
            field_0xa90 += field_0xa92;
        }

        sp24.set(cM_ssin(field_0xa90) * 2000.0f, 0.0f, cM_scos(field_0xa90) * 2000.0f);
        sp24 += sp30;

        cLib_chaseF(&speedF, l_HIO.turn_speed, 10.0f);

        var_r28 = cLib_targetAngleY(&current.pos, &sp24);
        cLib_addCalcAngleS2(&shape_angle.y, var_r28, 8, 0x400);
        current.angle.y = shape_angle.y;

        calcJointAngle(var_r28);

        if (mMoveMode == 2) {
            if (field_0xa9c == 0 && current.pos.abs(player_pos) > 2000.0f) {
                mMoveMode = 5;
                mAtSph.OffAtSetBit();

                if (field_0xa92 > 0) {
                    setBck(BCK_MGN_SIDESLIPR, 2, 3.0f, 1.0f);
                } else {
                    setBck(BCK_MGN_SIDESLIPL, 2, 3.0f, 1.0f);
                }
            }
        } else if (mMoveMode == 3) {
            if (field_0xaa8 == 0) {
                setExitMode(1);
            }
        } else {
            cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

            if (mpMgnBtk->checkFrame(15.0f)) {
                cXyz pos;
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mDoMtx_stack_c::transM(0.0f, 0.0f, 1000.0f);
                mDoMtx_stack_c::multVecZero(&pos);
                dComIfGp_particle_set(0x8c1c, &pos, &tevStr, &shape_angle, 0);

                mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);
            }

            if (mpMgnBtk->isStop()) {
                setActionMode(ACTION_WARP_e, 0);
            }
        }
        break;
    case 5:
        setSlideSmokeEffect();
        setBloodEffect();

        if (abs((s16)(field_0xa90 - var_r27)) < 0x800) {
            field_0xa90 += field_0xa92;
        }

        sp24.set(cM_ssin(field_0xa90) * 2000.0f, 0.0f, cM_scos(field_0xa90) * 2000.0f);
        sp24 += sp30;
        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp24), 8, 0x400);

        var_r28 = fopAcM_searchPlayerAngleY(this);
        cLib_addCalcAngleS2(&shape_angle.y, var_r28, 8, 0x400);
        calcJointAngle(var_r28);

        cLib_chaseF(&speedF, 0.0f, 1.5f);
        if (!speedF) {
            setBck(BCK_MGN_WAIT, 2, 30.0f, 1.0f);
            field_0xa9c = 30;
            mMoveMode = 6;
        }
        break;
    case 6:
        setBloodEffect();

        var_r28 = fopAcM_searchPlayerAngleY(this);
        cLib_addCalcAngleS2(&shape_angle.y, var_r28, 8, 0x800);
        calcJointAngle(var_r28);

        if (field_0xa9c == 0) {
            field_0xafd = 0;
            setActionMode(ACTION_DASH_e, 0);
        }
    }
}

/* 80608EF8-80609D70 0038B8 0E78+00 2/1 0/0 0/0 .text            executeDash__9daB_MGN_cFv */
// NONMATCHING - small regalloc, equivalent
void daB_MGN_c::executeDash() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMoveMode) {
    case 10:
    case 11: {
        cXyz gate_offset(0.0f, 0.0f, -800.0f);
        cXyz player_pos(player->current.pos);

        s16 angle = cLib_targetAngleY(&player_pos, &gate_offset);
        if (field_0xaff >= 5) {
            angle += cM_rndFX(6.0f) * 4096.0f;
        } else {
            angle += cM_rndFX(4.0f) * 4096.0f;
        }

        if (mMoveMode == 11) {
            if (abs((s16)(angle - field_0xa90) < 0x1800) != 0) {
                if ((s16)(angle - field_0xa90) < 0) {
                    angle = field_0xa90 - 0x1800;
                } else {
                    angle = field_0xa90 + 0x1800;
                }
            }
        }

        cXyz gate_pos(cM_ssin(angle) * 2500.0f, 0.0f, cM_scos(angle) * 2500.0f);
        mNextGdgatePos = gate_pos + gate_offset;
        field_0xa90 = angle;

        if (field_0xaff >= 5) {
            field_0xb10 = setHideSmokeEffect(&mNextGdgatePos, 0);
            field_0xafd = 0;
            attention_info.flags = 0;
            mMoveMode = 12;
            field_0xa9c = 20;
            setBck(BCK_MGN_WAIT, 2, 3.0f, 1.0f);
        } else {
            speedF = 0.0f;
            if (((cM_rnd() < 0.3f && mGdgateNum >= 3) || mGdgateNum >= 10) &&
                player_pos.absXZ(mNextGdgatePos) > 2000.0f)
            {
                field_0xb10 = setHideSmokeEffect(&mNextGdgatePos, 0);
                field_0xafd = 0;
                attention_info.flags = 0;
                mMoveMode = 12;
                field_0xa9c = 60;
                setBck(BCK_MGN_WAIT, 2, 3.0f, 1.0f);

                shape_angle.y = fopAcM_searchPlayerAngleY(this);
                current.angle.y = shape_angle.y;
            } else {
                mGdgateNum++;
                field_0xb10 = setHideSmokeEffect(&mNextGdgatePos, 0);
                field_0xa9c = cM_rndF(15.0f) + 30.0f;
                mMoveMode = 20;
            }
        }
        break;
    }
    case 12:
        if (field_0xa9c == 0) {
            if (field_0xaff >= 5) {
                field_0xa9c = 15;
            } else {
                field_0xa9c = 30;
            }

            if (field_0xb10 != -1) {
                mGdgateStatus[field_0xb10] = 5;
            }

            mMoveMode = 13;
        }
        break;
    case 13:
        if (field_0xa9c == 0) {
            onBodyCo();

            mMoveMode = 2;
            mpMgnBtk->init(mpMgnModelMorf->getModel()->getModelData(),
                           (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3c), 1, 0, 1.4f,
                           0, -1);

            mAcch.ClrWallHit();
            field_0xaac = 20;
            field_0xa9c = 21;
            mJewelColorMode = 1;
            speedF = speed.y = gravity = 0.0f;

            if (field_0xb10 != -1) {
                current.angle.y = shape_angle.y = mGdgateAngle[field_0xb10];
                mGdgateStatus[field_0xb10] = 7;
            }

            current.pos.set((mNextGdgatePos.x - cM_ssin(shape_angle.y) * 1000.0f), mNextGdgatePos.y,
                            (mNextGdgatePos.z - cM_scos(shape_angle.y) * 1000.0f));
            old.pos = current.pos;

            field_0xb16 = field_0xb14 = shape_angle.y;
        }
        break;
    case 20:
        if (field_0xb10 != -1) {
            current.angle.y = shape_angle.y = mGdgateAngle[field_0xb10];
        }

        if (field_0xa9c == 0) {
            if (field_0xb10 != -1) {
                mGdgateStatus[field_0xb10] = 3;
            }
            mMoveMode = 11;
        }
        break;
    case 0:
        mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
        setBck(BCK_MGN_APPROACH, 0, 3.0f, 1.0f);
        mMoveMode = 1;
        mJewelColorMode = 2;
    case 1:
        attention_info.flags = 0;
        if (player->checkNowWolf()) {
            attention_info.flags = 4;
        }

        if (mpMgnModelMorf->isStop()) {
            mMoveMode = 2;
            field_0xa9c = 0;
            field_0xaac = 0;
        }
        break;
    case 2:
        if (field_0xaac == 0) {
            gravity = -5.0f;
        }

        if (checkBck(BCK_MGN_APPROACH)) {
            setBck(BCK_MGN_DASH, 2, 0.0f, l_HIO.dash_anim);
        } else {
            setBck(BCK_MGN_DASH, 2, 3.0f, l_HIO.dash_anim);
        }

        mMoveMode = 3;
        field_0x20f4[0].OnTgSetBit();
        mAtSph.OnAtSetBit();
        mAtSph.SetAtAtp(2);
        current.angle.y = shape_angle.y;

        field_0xb03 = 0;
        if (cM_rnd() < 0.7f) {
            field_0xb03 = 1;
        }

        speedF = l_HIO.dash_speed;
        fopAcM_OnCarryType(this, fopAcM_CARRY_LIGHT);

        if (field_0xb0b >= 2) {
            if (daPy_getPlayerActorClass()->checkNowWolf()) {
                if (field_0xb0c < 3) {
                    field_0xb0c++;
                } else {
                    if (!dComIfGs_isOneZoneSwitch(9, fopAcM_GetRoomNo(this))) {
                        dComIfGs_onOneZoneSwitch(9, fopAcM_GetRoomNo(this));
                    }
                }
            }
        }
    case 3:
        field_0xb09 = 1;
        attention_info.flags = 0;

        if (player->checkNowWolf()) {
            attention_info.flags |= 4;

            cXyz sp48;
            mDoMtx_stack_c::YrotS(-shape_angle.y);
            mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
            mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &sp48);

            if (fabsf(sp48.x) < 200.0f && sp48.z > 100.0f && sp48.z < 1500.0f) {
                attention_info.flags |= 0x10;
            }
        }

        cLib_chaseF(&field_0xae8, 1.0f, 0.05f);

        if (mpMgnBtk->isStop()) {
            setBloodEffect();
        }

        setDashSmokeEffect();

        cLib_chaseF(&speedF, l_HIO.dash_speed, 10.0f);

        if (checkThrowMode(2)) {
            field_0x20f4[0].OffTgSetBit();
            mAtSph.OffAtSetBit();
            offThrowMode(2);
            setActionMode(ACTION_THROWN_e, 0);
            return;
        }

        if (field_0xa9c == 0) {
            fopAc_ac_c* var_r27;
            if (field_0xaff >= 5) {
                cXyz sp3C(cM_ssin(shape_angle.y) * 1600.0f, 300.0f, cM_scos(shape_angle.y) * 1600.0f);
                sp3C += current.pos;

                dBgS_LinChk spE8;
                spE8.Set(&current.pos, &sp3C, this);

                if (dComIfG_Bgsp().LineCross(&spE8)) {
                    var_r27 = dComIfG_Bgsp().GetActorPointer(spE8);
                    if (!var_r27 || fopAcM_GetName(var_r27) != PROC_Obj_BHASHI) {
                        attention_info.flags = 0;
                        field_0x20f4[0].OffTgSetBit();
                        mAtSph.OffAtSetBit();
                        setExitMode(0);
                        field_0xaac = 3;
                    }
                }
            } else {
                if (mAcch.ChkWallHit()) {
                    var_r27 = dComIfG_Bgsp().GetActorPointer(mAcchCir);
                    if (!var_r27 || fopAcM_GetName(var_r27) != PROC_Obj_BHASHI) {
                        if (abs((s16)(mAcchCir.GetWallAngleY() - shape_angle.y)) > 0x6000) {
                            field_0x20f4[0].OffTgSetBit();
                            mAtSph.OffAtSetBit();
                            setActionMode(ACTION_CIRCLE_e, field_0xb03);
                            return;
                        }
    
                        if ((s16)(mAcchCir.GetWallAngleY() - shape_angle.y) < 0) {
                            shape_angle.y += (s16) 0x100;
                        } else {
                            shape_angle.y += (s16) -0x100;
                        }
    
                        current.angle.y = shape_angle.y;
                    }
                }

                if (abs((s16)(current.angle.y - fopAcM_searchPlayerAngleY(this))) > 0x4000) {
                    field_0x20f4[0].OffTgSetBit();
                    mAtSph.OffAtSetBit();
                    setActionMode(ACTION_CIRCLE_e, field_0xb03);
                    break;
                }
            }
        }
        break;
    case 4:
        cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

        if (mpMgnBtk->checkFrame(15.0f)) {
            cXyz sp30;
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::transM(0.0f, 0.0f, 1000.0f + nREG_F(10));
            mDoMtx_stack_c::multVecZero(&sp30);

            dComIfGp_particle_set(0x8c1c, &sp30, &tevStr, &shape_angle, 0);
            mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);
        }

        if (field_0xaff >= 5) {
            field_0xaac = 33;
            if (mpMgnBtk->getFrame() > 30.0f) {
                field_0xafe = 0;
                mMoveMode = 10;
            }
        } else {
            field_0xaac = 3;
            if (mpMgnBtk->isStop()) {
                setActionMode(ACTION_WARP_e, 0);
            }
        }
        break;
    case 5:
        setBck(BCK_MGN_DASH, 2, 3.0f, l_HIO.dash_anim);
        mMoveMode = 6;
        field_0x20f4[0].OnTgSetBit();
        mAtSph.OnAtSetBit();
        mAtSph.SetAtAtp(2);
        current.angle.y = shape_angle.y;
        speedF = l_HIO.dash_speed;
    case 6: {
        if (mpMgnBtk->isStop()) {
            setBloodEffect();
        }
        setDashSmokeEffect();

        cLib_chaseF(&speedF, l_HIO.dash_speed, 10.0f);

        cXyz sp24(cM_ssin(shape_angle.y) * 1600.0f, 300.0f, cM_scos(shape_angle.y) * 1600.0f);
        sp24 += current.pos;

        dBgS_LinChk sp78;
        sp78.Set(&current.pos, &sp24, this);

        if (dComIfG_Bgsp().LineCross(&sp78)) {
            attention_info.flags = 0;
            field_0x20f4[0].OffTgSetBit();
            mAtSph.OffAtSetBit();
            setExitMode(0);
            field_0xaac = 3;
        }
        break;
    }
    case 8:
    case 9:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 7:
        break;
    }
}

/* 80609D70-8060A670 004730 0900+00 2/1 0/0 0/0 .text            executeThrown__9daB_MGN_cFv */
void daB_MGN_c::executeThrown() {
    cXyz sp4C;
    daPy_py_c* player = daPy_getPlayerActorClass();

    mDoMtx_stack_c::transS(player->current.pos);
    mDoMtx_stack_c::YrotM(player->shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 787.0f);
    mDoMtx_stack_c::multVecZero(&sp4C);

    switch (mMoveMode) {
    case 0:
        if (!dComIfGs_isOneZoneSwitch(2, fopAcM_GetRoomNo(this))) {
            dComIfGs_onOneZoneSwitch(2, fopAcM_GetRoomNo(this));
        }

        setBck(BCK_MGN_MDCATCHST, 0, 3.0f, 1.0f);

        speedF = 0.0f;
        mMoveMode = 2;
        gravity = 0.0f;
        field_0xb03 = 0;
        field_0xb01 = 1;

        dComIfGs_onOneZoneSwitch(11, fopAcM_GetRoomNo(this));

        attention_info.flags = 0;

        dComIfGp_getVibration().StartQuake(6, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_MIDNA_CATCHED, 0, -1);
    case 2:
        mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);

        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

        setBodySlideEffect();

        cLib_chasePos(&current.pos, sp4C, 100.0f);

        if (mpMgnModelMorf->isStop()) {
            setBck(BCK_MGN_MDCATCHED, 2, 3.0f, 1.0f);
            mMoveMode = 3;
            field_0xa9c = 30;
        }
        break;
    case 3:
        mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);

        dComIfGp_set3DStatusForce(0x13, 5, 0);

        cLib_chasePos(&current.pos, sp4C, 100.0f);
        shape_angle.y = fopAcM_searchPlayerAngleY(this);

        if (field_0xa9c == 0) {
            dComIfGp_getVibration().StopQuake(0x1f);
        }

        if (checkThrowMode(0x10)) {
            dComIfGp_getVibration().StopQuake(0x1f);

            offThrowMode(0x10);
            setBck(BCK_MGN_MDTHROWRST, 0, 3.0f, 1.0f);

            field_0xafc = 1;
            mMoveMode = 5;
            field_0xafd = 1;
        } else if (checkThrowMode(8)) {
            dComIfGp_getVibration().StopQuake(0x1f);

            offThrowMode(8);
            setBck(BCK_MGN_MDTHROWLST, 0, 3.0f, 1.0f);

            field_0xafc = 0;
            mMoveMode = 5;
            field_0xafd = 1;
        } else if (checkThrowMode(4)) {
            dComIfGs_offOneZoneSwitch(11, fopAcM_GetRoomNo(this));

            dComIfGp_getVibration().StopQuake(0x1f);

            offThrowMode(4);
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_MIDNA_RELEASE, -1);

            setBck(BCK_MGN_BLOW, 0, 3.0f, 1.0f);
            mMoveMode = 10;
            speedF = 0.0f;
        }
        break;
    case 5:
        mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);

        cLib_chasePos(&current.pos, sp4C, 100.0f);
        shape_angle.y = fopAcM_searchPlayerAngleY(this);

        if (mpMgnModelMorf->isStop()) {
            gravity = -5.0f;

            if (field_0xafc == 0) {
                setBck(BCK_MGN_MDTHROWLED, 0, 3.0f, 1.0f);

                current.angle.y = shape_angle.y + -0x2800;

                field_0xa90 = shape_angle.y + -0x1000;
                field_0xa92 = 0x200;
            } else {
                setBck(BCK_MGN_MDTHROWRED, 0, 3.0f, 1.0f);

                current.angle.y = shape_angle.y + 0x2800;

                field_0xa90 = shape_angle.y + 0x1000;
                field_0xa92 = -0x200;
            }

            mSound.startCreatureVoice(Z2SE_EN_MGN_V_MIDNA_THROW, -1);
            mMoveMode = 8;
        }
        break;
    case 8:
        if (mpMgnModelMorf->checkFrame(5.0f)) {
            if (field_0xafc == 0) {
                field_0xa92 = 0x200;
            } else {
                field_0xa92 = -0x200;
            }

            dCam_getBody()->ForceLockOn(this);
            onBodySlideAt();
        }

        if (mpMgnModelMorf->getFrame() <= 6.0f) {
            speedF = 100.0f;
        } else {
            setBodySlideEffect();
            cLib_chaseAngleS(&field_0xa92, 0, 0x20);
            shape_angle.y += field_0xa92;
        }

        shape_angle.y += field_0xa92;

        if (mpMgnModelMorf->checkFrame(16.0f) || mpMgnModelMorf->checkFrame(26.0f)) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        }

        cLib_addCalcAngleS2(&current.angle.y, field_0xa90, 8, 0x100);
        cLib_chaseF(&speedF, 0.0f, 4.0f);

        if (mpMgnModelMorf->isStop()) {
            dComIfGp_getVibration().StartQuake(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            if (field_0xafc == 0) {
                setBck(BCK_MGN_DOWNR_LOOP, 2, 3.0f, 1.0f);
            } else {
                setBck(BCK_MGN_DOWNL_LOOP, 2, 3.0f, 1.0f);
            }

            dComIfGs_offOneZoneSwitch(11, fopAcM_GetRoomNo(this));
            mMoveMode = 9;
        }
        break;
    case 9:
        setBodySlideEffect();

        cLib_chaseF(&speedF, 0.0f, 4.0f);
        cLib_chaseAngleS(&field_0xa92, 0, 0x20);
        shape_angle.y += field_0xa92;

        if (!speedF && field_0xa92 == 0) {
            if (dCam_getBody()->GetForceLockOnActor() == this) {
                dCam_getBody()->ForceLockOff(this);
            }

            offBodySlideAt();
            setActionMode(ACTION_DOWN_e, 5);

            dComIfGp_getVibration().StopQuake(0x1f);

            field_0x20f4[0].OnTgSetBit();
            field_0x20f4[1].OnTgSetBit();

            field_0xaa0 = 150;
            field_0xb08 = 0;
            attention_info.flags = 4;
        }
        break;
    case 10:
        s16 sp8;
        if (cM_rnd() < 0.5f) {
            sp8 = shape_angle.y + 0x2000;
        } else {
            sp8 = shape_angle.y + -0x2000;
        }

        player = daPy_getPlayerActorClass();
        player->setThrowDamage(sp8, 50.0f, 40.0f, 1, 0, 0);

        mMoveMode = 11;

        dCam_getBody()->ForceLockOn(this);
        attention_info.flags = 4;
    case 11:
        if (mpMgnModelMorf->isStop()) {
            attention_info.flags = 0;

            if (dCam_getBody()->GetForceLockOnActor() == this) {
                dCam_getBody()->ForceLockOff(this);
            }

            setActionMode(ACTION_DASH_e, 5);
        }
    }
}

/* 8060A670-8060A72C 005030 00BC+00 3/3 0/0 0/0 .text            setDownEnd__9daB_MGN_cFv */
void daB_MGN_c::setDownEnd() {
    field_0x20f4[0].OffTgSetBit();
    field_0x20f4[1].OffTgSetBit();

    field_0xb01 = 0;
    attention_info.flags = 0;

    if (field_0xafc == 0) {
        setBck(BCK_MGN_DOWNR_UPB, 0, 3.0f, 1.0f);
        current.angle.y = shape_angle.y + -0x4000;
    } else {
        setBck(BCK_MGN_DOWNL_UPB, 0, 3.0f, 1.0f);
        current.angle.y = shape_angle.y + 0x4000;
    }

    setActionMode(ACTION_DOWN_e, 7);
}

/* 8060A72C-8060ACB8 0050EC 058C+00 2/1 0/0 0/0 .text            executeDown__9daB_MGN_cFv */
void daB_MGN_c::executeDown() {
    switch (mMoveMode) {
    case 0:
    case 1:
        attention_info.flags = 4;
        field_0x20f4[0].OffTgSetBit();
        mAtSph.OffAtSetBit();
        field_0xafd = 1;
        field_0xafc = mMoveMode;

        if (field_0xafc == 0) {
            setBck(BCK_MGN_DOWNR, 0, 3.0f, 1.0f);
        } else {
            setBck(BCK_MGN_DOWNL, 0, 3.0f, 1.0f);
        }

        field_0xb01 = 1;
        mMoveMode = 2;
        onBodySlideAt();
        field_0xb03 = 0;
    case 2:
        if (field_0xb03 == 0 && checkHitSlideAt()) {
            field_0xb03 = 1;
        }

        if (mpMgnModelMorf->getFrame() >= 15.0f) {
            setBodySlideEffect();
        } else {
            setBloodEffect();
        }

        if (mpMgnModelMorf->checkFrame(13.0f) || mpMgnModelMorf->checkFrame(19.0f)) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        }

        if (mpMgnModelMorf->isStop()) {
            dComIfGp_getVibration().StartQuake(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            if (field_0xafc == 0) {
                setBck(BCK_MGN_DOWNR_LOOP, 2, 3.0f, 1.0f);
            } else {
                setBck(BCK_MGN_DOWNL_LOOP, 2, 3.0f, 1.0f);
            }

            mMoveMode = 3;
        }
        break;
    case 3:
        if (field_0xb03 == 0 && checkHitSlideAt()) {
            field_0xb03 = 1;
        }

        setBodySlideEffect();

        if (field_0xb03 == 0) {
            cLib_chaseF(&speedF, 0.0f, 1.0f);
        } else {
            cLib_chaseF(&speedF, 0.0f, 3.0f);
        }

        if (mAcch.ChkWallHit()) {
            if (abs((s16)(mAcchCir.GetWallAngleY() - shape_angle.y)) > 0x6000) {
                cLib_chaseF(&speedF, 0.0f, 2.0f);
            }
        }

        if (speedF < 5.0f) {
            if (field_0xb03 == 0) {
                field_0xaa0 = 120;
            } else {
                field_0xaa0 = 120;
            }

            field_0xb08 = 0;
            attention_info.flags = 4;
            field_0x20f4[0].OnTgSetBit();
            field_0x20f4[1].OnTgSetBit();

            offBodySlideAt();
            dComIfGp_getVibration().StopQuake(0x1f);
        }

        if (!speedF) {
            mMoveMode = 5;
        }
        break;
    case 5:
        if (field_0xafc == 0) {
            setBck(BCK_MGN_DOWNR_WAIT, 2, 10.0f, 1.0f);
        } else {
            setBck(BCK_MGN_DOWNL_WAIT, 2, 10.0f, 1.0f);
        }
        mMoveMode = 6;
    case 6:
        if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_WOLF_JUMP &&
            field_0xaa0 == 0)
        {
            setDownEnd();
        }
        break;
    case 7:
        if (mpMgnModelMorf->getFrame() < 42.0f) {
            cLib_chaseF(&speedF, 20.0f, 2.0f);
            setBodySlideEffect();
        } else {
            cLib_chaseF(&speedF, 0.0f, 5.0f);
        }

        if (mpMgnModelMorf->getFrame() >= 30.0f) {
            setBloodEffect();
        }

        if (mpMgnModelMorf->isStop()) {
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
            setBck(BCK_MGN_APPROACH, 0, 3.0f, 1.0f);
            mMoveMode = 8;
        }
        break;
    case 8:
        setBloodEffect();

        if (mpMgnModelMorf->isStop()) {
            switch (field_0xaff) {
            case 0:
            case 1:
                if (health < 500) {
                    field_0xaff = 2;
                }
                break;
            case 2:
            case 3:
                if (health < 300) {
                    field_0xaff = 4;
                }
                break;
            case 4:
                if (health < 200) {
                    field_0xaff = 5;
                }
                break;
            }

            setActionMode(ACTION_CIRCLE_e, 1);
        }
    }
}

/* 8060ACB8-8060B028 005678 0370+00 1/1 0/0 0/0 .text            executeDownDamage__9daB_MGN_cFv */
void daB_MGN_c::executeDownDamage() {
    switch (mMoveMode) {
    case 0:
        speedF = 0.0f;
        if (health < 0) {
            setActionMode(ACTION_DEATH_e, 0);
            break;
        }

        if (field_0xb06 != 0) {
            field_0xb07 = 0;

            if (field_0xafc == 0) {
                setBck(BCK_MGN_DOWNR_UPA, 0, 3.0f, 1.0f);
                current.angle.y = shape_angle.y + -0x4000;
            } else {
                setBck(BCK_MGN_DOWNL_UPA, 0, 3.0f, 1.0f);
                current.angle.y = shape_angle.y + 0x4000;
            }

            mSound.startCreatureVoice(Z2SE_EN_MGN_V_RETURN, -1);

            speedF = 40.0f;
            checkDownBeforeBG();
            mMoveMode = 2;

            field_0x20f4[0].OffTgSetBit();
            field_0x20f4[1].OffTgSetBit();

            field_0xb01 = 0;
            attention_info.flags = 0;
            field_0xaff += field_0xb06;

            if (field_0xaff >= 6) {
                setActionMode(ACTION_DEATH_e, 0);
                return;
            }
        } else {
            if (field_0xafc == 0) {
                setBck(BCK_MGN_DOWNR_DAMAGE, 0, 3.0f, 1.0f);
            } else {
                setBck(BCK_MGN_DOWNL_DAMAGE, 0, 3.0f, 1.0f);
            }

            mMoveMode = 1;

            if (field_0xaa0 == 0) {
                field_0x20f4[0].OffTgSetBit();
                field_0x20f4[1].OffTgSetBit();
                field_0xb01 = 0;
                attention_info.flags = 0;
            }
        }

        mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
        break;
    case 1:
        if (mpMgnModelMorf->isStop()) {
            if (field_0xaa0 == 0) {
                setDownEnd();
            } else {
                setActionMode(ACTION_DOWN_e, 5);
            }
        }
        break;
    case 2:
        if (mpMgnModelMorf->getFrame() >= 26.0f) {
            cLib_chaseF(&speedF, 0.0f, 2.0f);
            if (speedF > 10.0f) {
                setBodySlideEffect();
            }

            setBloodEffect();
        } else {
            cLib_chaseAngleS(&field_0xa92, 0, 0x20);
            shape_angle.y += field_0xa92;
        }

        if (mpMgnModelMorf->checkFrame(46.0f)) {
            switch (field_0xaff) {
            case 0:
            case 1:
                if (health < 500) {
                    field_0xaff = 2;
                }
                break;
            case 2:
            case 3:
                if (health < 300) {
                    field_0xaff = 4;
                }
                break;
            case 4:
                if (health < 200) {
                    field_0xaff = 5;
                }
            }

            setActionMode(ACTION_CIRCLE_e, 1);
        }
    }
}

/* 8060B028-8060B430 0059E8 0408+00 1/1 0/0 0/0 .text            executeDownBiteDamage__9daB_MGN_cFv
 */
void daB_MGN_c::executeDownBiteDamage() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMoveMode) {
    case 0:
        mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
        mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1f);

        if (field_0xafc == 0) {
            setBck(BCK_MGN_DOWNR_DAMAGE, 0, 3.0f, 1.0f);
        } else {
            setBck(BCK_MGN_DOWNL_DAMAGE, 0, 3.0f, 1.0f);
        }

        mMoveMode = 1;
        field_0xb00 = 0;
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        offBodyCo();
    case 1:
        s16 var_r27;
        if (field_0xafc == 0) {
            var_r27 = shape_angle.y + -0x4000;
        } else {
            var_r27 = shape_angle.y + 0x4000;
        }

        player->setWolfEnemyHangBiteAngle(var_r27);

        if (checkWolfBiteDamage()) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            offWolfBiteDamage();

            field_0xb00++;

            if (field_0xb00 >= 5) {
                field_0xb07 = 0;
                player->offWolfEnemyHangBite();
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
                onBodyCo();

                if (field_0xafc == 0) {
                    setBck(BCK_MGN_DOWNR_UPA, 0, 3.0f, 1.0f);
                    current.angle.y = shape_angle.y + -0x4000;
                } else {
                    setBck(BCK_MGN_DOWNL_UPA, 0, 3.0f, 1.0f);
                    current.angle.y = shape_angle.y + 0x4000;
                }

                mSound.startCreatureVoice(Z2SE_EN_MGN_V_RETURN, -1);

                speedF = 40.0f;
                field_0x20f4[0].OffTgSetBit();
                field_0x20f4[1].OffTgSetBit();
                field_0xb01 = 0;
                attention_info.flags = 0;
                field_0xaff++;

                if (health < 0 || field_0xaff >= 6) {
                    setActionMode(ACTION_DEATH_e, 0);
                } else {
                    checkDownBeforeBG();
                    setActionMode(ACTION_DOWN_DAMAGE_e, 2);
                }
            } else {
                if (field_0xafc == 0) {
                    setBck(BCK_MGN_DOWNR_DAMAGE, 0, 3.0f, 1.0f);
                } else {
                    setBck(BCK_MGN_DOWNL_DAMAGE, 0, 3.0f, 1.0f);
                }

                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1e);
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
            }
        }

        if (player->checkWolfEnemyBiteAllOwn(this)) {
            if (!mpMgnModelMorf->isStop()) {
                return;
            }
        }

        onBodyCo();
        player->offWolfEnemyHangBite();
        offWolfBiteDamage();
        setDownEnd();
    }
}

/* 8060B430-8060B544 005DF0 0114+00 1/1 0/0 0/0 .text            executeWarp__9daB_MGN_cFv */
void daB_MGN_c::executeWarp() {
    switch (mMoveMode) {
    case 0:
    case 1:
        if (mMoveMode == 0) {
            if ((field_0xaff == 2 || field_0xaff == 3) && (cM_rnd() <= 0.5f || field_0xb04 == 0)) {
                field_0xafe = 1;
                field_0xb04 = 1;
            } else {
                field_0xafe = 0;
            }

            field_0xa9c = 90;
        } else {
            field_0xafe = 1;
            field_0xa9c = 0;
        }

        attention_info.flags = 0;
        mMoveMode = 2;
        offBodyCo();
    case 2:
        if (field_0xa9c == 0) {
            if (field_0xafe == 0) {
                mGdgateNum = 0;
                setActionMode(ACTION_DASH_e, 10);
            } else {
                setActionMode(ACTION_FALL_e, 0);
            }
        }
    }
}

/* 8060B544-8060BE6C 005F04 0928+00 2/1 0/0 0/0 .text            executeFall__9daB_MGN_cFv */
void daB_MGN_c::executeFall() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos(player->current.pos);

    if (mMoveMode >= 4) {
        setBloodEffect();
    }

    switch (mMoveMode) {
    case 0:
        onBodyCo();
        f32 var_f31 = player->speedF * 60.0f;
        s16 sp8 = player->current.angle.y;
        cXyz eff_pos(player_pos.x + var_f31 * cM_ssin(sp8), 1500.0f, (player_pos.z + var_f31 * cM_scos(sp8)));

        if (eff_pos.x > 3000.0f) {
            eff_pos.x = 3000.0f;
        }
        if (eff_pos.x < -3000.0f) {
            eff_pos.x = -3000.0f;
        }

        if (eff_pos.z > 2100.0f) {
            eff_pos.z = 2100.0f;
        }
        if (eff_pos.z < -3300.0f) {
            eff_pos.z = -3300.0f;
        }

        field_0xb10 = setHideSmokeEffect(&eff_pos, 1);

        field_0xae8 = 0.0f;
        gravity = 0.0f;
        speedF = 0.0f;
        speed.y = 0.0f;
        current.pos = eff_pos;
        old.pos = current.pos;

        shape_angle.y = current.angle.y = fopAcM_searchPlayerAngleY(this);
        field_0xb16 = field_0xb14 = shape_angle.y;

        mMoveMode = 1;
        field_0xa9c = 60;

        setBck(BCK_MGN_DROP_POSE, 2, 3.0f, 1.0f);

        mpMgnBtk->init(mpMgnModelMorf->getModel()->getModelData(),
                          (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3a), 1, 0, 0.0f, 0,
                          -1);
    case 1:
        cLib_chaseF(&field_0xae8, 1.0f, 0.02f);

        if (field_0xa9c == 0) {
            mpMgnBtk->setPlaySpeed(0.7f);
            attention_info.flags = 0;
            field_0xafd = 0;
            gravity = -3.0f;
            mMoveMode = 4;

            onBodyFallAt();

            dComIfGs_onOneZoneSwitch(10, fopAcM_GetRoomNo(this));

            if (field_0xb10 != -1) {
                mGdgateStatus[field_0xb10] = 7;
            }
        } else if (field_0xa9c == 30 && field_0xb10 != -1) {
            mGdgateStatus[field_0xb10] = 5;
        }
        break;
    case 4:
        if (current.pos.y < 1000.0f) {
            setBck(BCK_MGN_DROP, 0, 10.0f, 0.0f);
            mMoveMode = 5;
        }
    case 5:
        if (mAcch.ChkGroundHit()) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            dComIfGs_offOneZoneSwitch(10, fopAcM_GetRoomNo(this));

            mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);

            mpMgnModelMorf->setPlaySpeed(1.0f);

            if (field_0xaff >= 4) {
                mMoveMode = 15;
            } else {
                if (abs((int)(s16)(shape_angle.y - fopAcM_searchPlayerAngleY(this))) < 0x2000) {
                    mMoveMode = 6;
                } else {
                    mMoveMode = 7;
                }
            }

            field_0xa9c = 5;
            setFallAttackEffect();
        }
        break;
    case 6:
        if (field_0xa9c == 0) {
            offBodyFallAt();
        }

        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
        current.angle.y = shape_angle.y;

        if (mpMgnModelMorf->isStop()) {
            mMoveMode = 10;
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
            setBck(BCK_MGN_BACKJUMP, 0, 3.0f, 1.0f);
        }
        break;
    case 7:
        if (field_0xa9c == 0) {
            offBodyFallAt();
        }

        if (mpMgnModelMorf->isStop()) {
            mMoveMode = 8;
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_TURN, -1);
            setBck(BCK_MGN_STEP, 0, 3.0f, 1.0f);
        }
        break;
    case 8:
        if (mpMgnModelMorf->checkFrame(12.0f)) {
            onBodySlideAt();
        }

        if (mpMgnModelMorf->checkFrame(50.0f)) {
            offBodySlideAt();
        }

        if (mpMgnModelMorf->checkFrame(43.0f)) {
            dComIfGp_getVibration().StartShock(6, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        }

        if (mpMgnModelMorf->getFrame() >= 12.0f && mpMgnModelMorf->getFrame() < 43.0f) {
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
            current.angle.y = shape_angle.y;
        } else {
            if (mpMgnModelMorf->getFrame() >= 43.0f) {
                setStepEffect();
            }
        }

        if (mpMgnModelMorf->isStop()) {
            mMoveMode = 10;
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
            setBck(BCK_MGN_BACKJUMP, 0, 3.0f, 1.0f);
        }
        break;
    case 10:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

        if (mpMgnModelMorf->checkFrame(19.0f)) {
            gravity = -5.0f;
            speed.y = 35.0f;
            speedF = 70.0f;
            current.angle.y = shape_angle.y + 0x8000;
            mMoveMode = 11;
        }
        break;
    case 11:
        if (mpMgnModelMorf->checkFrame(34.0f)) {
            mpMgnModelMorf->setPlaySpeed(0.0f);
        }

        if (mAcch.ChkGroundHit()) {
            speedF = 0.0f;

            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            mpMgnModelMorf->setPlaySpeed(1.0f);
            mMoveMode = 12;
        }
        break;
    case 12:
        setBackJumpEffect();
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

        if (mpMgnModelMorf->isStop()) {
            setBck(BCK_MGN_WAIT, 2, 3.0f, 1.0f);
            field_0xa9c = 30;
            mMoveMode = 13;
            mJewelColorMode = 2;
        }
        break;
    case 13:
        attention_info.flags = 0;

        if (daPy_py_c::checkNowWolf()) {
            attention_info.flags |= 4;
        }

        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
        current.angle.y = shape_angle.y;

        if (field_0xa9c == 0) {
            field_0xafd = 0;
            setActionMode(ACTION_DASH_e, 2);
            mJewelColorMode = 2;
        }
        break;
    case 15:
        if (field_0xa9c == 0) {
            offBodyFallAt();
        }

        current.angle.y = shape_angle.y;

        if (mpMgnModelMorf->isStop()) {
            setActionMode(ACTION_CIRCLE_e, 10);
        }
    }
}

/* 8060BE6C-8060C034 00682C 01C8+00 1/1 0/0 0/0 .text            demo_skip__9daB_MGN_cFi */
void daB_MGN_c::demo_skip(int param_1) {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    mBlurRate = 0.0f;

    dComIfGp_getVibration().StopQuake(0x1f);

    J3DModelData* modelData = mpMgnModelMorf->getModel()->getModelData();
    mpMgnCoreBrk->remove(modelData);
    mpMgnCoreBrk->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x33), 1, 2, 1.0f,
                      0, -1);

    current.pos.set(0.0f, 0.0f, 90.0f);
    mDemoCamCenter.set(0.0f, -180.0f, -2090.0f);
    mDemoCamEye.set(-300.0f, -200.0f, -3090.0f);

    camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);

    dComIfGp_event_reset();

    mKankyoColMode = 1;
    mKankyoBlend = 1.0f;

    Z2GetAudioMgr()->bgmStreamStop(0x1e);
    Z2GetAudioMgr()->bgmStart(Z2BGM_VS_GANON_02, 0, 0);

    setActionMode(ACTION_DASH_e, 0);
}

/* 8060C034-8060C068 0069F4 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__9daB_MGN_cFPvi */
int daB_MGN_c::DemoSkipCallBack(void* i_this, int param_1) {
    if (i_this) {
        ((daB_MGN_c*)i_this)->demo_skip(param_1);
        return 1;
    }

    return 0;
}

/* 8060C068-8060D078 006A28 1010+00 2/1 0/0 0/0 .text            executeOpening__9daB_MGN_cFv */
void daB_MGN_c::executeOpening() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    J3DModelData* modelData = mpMgnModelMorf->getModel()->getModelData();

    cXyz spB8(-7.0f, 0.0f, -1045.0f);
    cXyz spAC;
    cXyz spA0(100.0f, 0.0f, -2190.0f);
    cXyz sp94(0.0f, 220.0f, -1390.0f);

    switch (mMoveMode) {
    case 0:
        attention_info.flags = 0;

        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 4);
            eventInfo.onCondition(2);
            return;
        }

        fopAcM_OffStatus(this, 0x4000);

        player->changeOriginalDemo();
        player->setPlayerPosAndAngle(&spA0, 0, 0);
        player->changeDemoMoveAngle(0);
        player->changeDemoPos0(&spA0);
        player->changeDemoMode(4, 1, 0, 0);

        current.pos = spB8;

        shape_angle.y = current.angle.y = -0x8000;
        field_0xb16 = field_0xb14 = shape_angle.y;

        setBck(BCK_MGN_OP, 0, 3.0f, 1.0f);

        mpMgnCoreBrk->remove(modelData);

        mpMgnCoreBrk->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x36), 1, 0,
                           1.0f, 0, -1);

        mMoveMode = 1;

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        field_0xadc = -200.0f;
        field_0xae0 = -0x4800;
        field_0xae2 = 0;

        mDemoCamCenter.set(-7.0f, 227.0f, -1312.0f - field_0xadc);
        mDemoCamEye.set(-114.0f, 150.0f, 2690.0f);

        mDemoCamFovy = 40.0f;
        field_0xad8 = 170.0f;

        onBodyCo();

        mKankyoColMode = 1;
        mKankyoBlend = 0.0f;

        cXyz sp88(current.pos);
        sp88.y = 0.0f;

        dComIfGp_particle_set(0x8c32, &sp88, &shape_angle, NULL);
        dComIfGp_particle_set(0x8c33, &sp88, &shape_angle, NULL);
        dComIfGp_particle_set(0x8c34, &sp88, &shape_angle, NULL);

        Z2GetAudioMgr()->bgmStreamPrepare(0x2000062);
        Z2GetAudioMgr()->bgmStreamPlay();
        return;
    case 1:
        cLib_addCalc2(&field_0xadc, 0.0f, 0.1f, 5.0f);
        cLib_addCalcAngleS2(&field_0xae2, 0x50, 8, 8);
        cLib_addCalcAngleS2(&field_0xae0, -0x7c80, 0x20, field_0xae2);

        mDemoCamEye = sp94;
        mDemoCamEye.x += cM_ssin(field_0xae0) * 1100.0f;
        mDemoCamEye.z += cM_scos(field_0xae0) * 1100.0f;

        cLib_chaseF(&field_0xad8, 170.0f, 1.0f);

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);
        spAC.y += field_0xad8;
        spAC.z -= field_0xadc;

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.1f, 10.0f);

        if (mpMgnModelMorf->checkFrame(175.0f)) {
            mMoveMode = 2;
            player->setPlayerPosAndAngle(&spA0, 0, 0);
            player->changeDemoMode(0x17, 1, 0, 0);
        }
        break;
    case 2:
        cLib_addCalc2(&field_0xadc, 0.0f, 0.1f, 10.0f);
        cLib_addCalcAngleS2(&field_0xae2, 0x60, 8, 8);
        cLib_addCalcAngleS2(&field_0xae0, -0x7c80, 0x20, field_0xae2);

        mDemoCamEye = sp94;
        mDemoCamEye.x += cM_ssin(field_0xae0) * 1100.0f;
        mDemoCamEye.z += cM_scos(field_0xae0) * 1100.0f;

        if (mpMgnModelMorf->getFrame() < 275.0f) {
            cLib_addCalc2(&mBlurRate, 180.0f, 0.1f, 8.0f);
        } else {
            cLib_addCalc2(&mBlurRate, 0.0f, 0.1f, 5.0f);
        }

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);
        spAC.y *= 0.8f;
        spAC.z -= field_0xadc;

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 50.0f);

        if (mpMgnModelMorf->checkFrame(280.0f)) {
            mMoveMode = 3;
            field_0xadc = 0.0f;
        }
        break;
    case 3:
        cLib_addCalc2(&mBlurRate, 0.0f, 0.1f, 5.0f);
        if (mpMgnModelMorf->getFrame() >= 305.0f) {
            setOpeningEffect();
        }

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        if (mpMgnModelMorf->getFrame() < 305.0f) {
            spAC.y *= 0.7f;
        }

        if (mpMgnModelMorf->getFrame() > 290.0f) {
            cLib_addCalc2(&field_0xadc, 100.0f, 0.1f, 10.0f);
            spAC.x += field_0xadc;
        }

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 100.0f);
        if (mpMgnModelMorf->checkFrame(365.0f)) {
            fopMsgM_messageSetDemo(0x491);
        }

        if (mpMgnModelMorf->checkFrame(305.0f)) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        } else if (mpMgnModelMorf->checkFrame(360.0f)) {
            dComIfGp_getVibration().StartQuake(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            if (!daPy_getPlayerActorClass()->checkNowWolf()) {
                player->changeDemoMode(0x22, 1, 0, 0);
            } else {
                player->changeDemoMode(0x17, 1, 0, 0);
            }
        } else if (mpMgnModelMorf->checkFrame(420.0f)) {
            dComIfGp_getVibration().StopQuake(0x1f);
        } else if (mpMgnModelMorf->checkFrame(450.0f)) {
            if (!daPy_getPlayerActorClass()->checkNowWolf()) {
                player->changeDemoMode(0x17, 1, 0, 0);
            }
        }

        cLib_addCalcPos2(&mDemoCamEye, cXyz(-250.0f, 10.0f, -2540.0f), 0.1f, 20.0f);

        if (mpMgnModelMorf->isStop()) {
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
            setBck(BCK_MGN_BACKJUMP, 0, 3.0f, 1.0f);
            mMoveMode = 5;
        }

        if (mpMgnCoreBrk->isStop()) {
            mpMgnCoreBrk->remove(modelData);
            mpMgnCoreBrk->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x33), 1,
                              2, 1.0f, 0, -1);
        }
        break;
    case 5:
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);
        spAC.x += 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);

        if (mpMgnModelMorf->checkFrame(19.0f)) {
            gravity = -5.0f;
            speed.y = 35.0f;
            speedF = 70.0f;
            mMoveMode = 6;
            current.angle.y = shape_angle.y + 0x8000;
        }
        break;
    case 6:
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        if (mpMgnModelMorf->checkFrame(25.0f)) {
            cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 50.0f);
        } else {
            cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);
        }

        if (mpMgnModelMorf->checkFrame(34.0f)) {
            mpMgnModelMorf->setPlaySpeed(0.0f);
        }

        if (mAcch.ChkGroundHit()) {
            speedF = 0.0f;
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mpMgnModelMorf->setPlaySpeed(1.0f);
            mMoveMode = 7;
        }
        break;
    case 7:
        setBackJumpEffect();
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);

        if (mpMgnModelMorf->isStop()) {
            setBck(BCK_MGN_WAIT, 2, 3.0f, 1.0f);
            field_0xa9c = 30;
            mMoveMode = 8;
        }
        break;
    case 8:
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);

        if (field_0xa9c == 0) {
            setBck(BCK_MGN_WAIT2, 0, 3.0f, 1.0f);
            mMoveMode = 10;
            field_0xad8 = 0.0f;
        }
        break;
    case 10:
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);
        cLib_chaseF(&field_0xad8, 5.0f, 1.0f);

        spAC.set(0.0f, 100.0f, -2590.0f);
        cLib_addCalcPos2(&mDemoCamEye, spAC, 0.1f, field_0xad8);

        if (mpMgnModelMorf->isStop()) {
            setBck(BCK_MGN_WAIT, 2, 3.0f, 1.0f);
            field_0xa9c = 30;
            mMoveMode = 11;
        }
        break;
    case 11:
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x1b));
        mDoMtx_stack_c::multVecZero(&spAC);

        cLib_addCalcPos2(&mDemoCamCenter, spAC, 0.5f, 200.0f);
        cLib_chaseF(&field_0xad8, 5.0f, 1.0f);
        spAC.set(0.0f, 100.0f, -2590.0f);
        cLib_addCalcPos2(&mDemoCamEye, spAC, 0.1f, field_0xad8);

        if (field_0xa9c == 0) {
            setActionMode(ACTION_DASH_e, 0);
            mDemoCamCenter.set(100.0f, 100.0f, -2190.0f);
            mDemoCamEye.set(0.0f, 100.0f, -2690.0f);

            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            Z2GetAudioMgr()->bgmStart(Z2BGM_VS_GANON_02, 0, 0);
            return;
        }
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
    mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_DEMO_OP, -1);
}

/* 8060D078-8060D880 007A38 0808+00 1/1 0/0 0/0 .text            executeDeath__9daB_MGN_cFv */
void daB_MGN_c::executeDeath() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp60;
    cXyz sp54;
    cXyz sp48(-300.0f, 0.0f, -2500.0f);
    s16 sp8 = nREG_S(0) + 0x6800;

    switch (mMoveMode) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(2);
            return;
        }

        Z2GetAudioMgr()->bgmStop(0x1e, 0);

        if (field_0xafb != 0xff) {
            dComIfGs_onSwitch(field_0xafb, fopAcM_GetRoomNo(this));
        }

        mKankyoColMode = 2;
        mKankyoBlend = 0.0f;
        setBck(BCK_MGN_END_DEMO, 0, 3.0f, 1.0f);

        J3DModelData* model = mpMgnModelMorf->getModel()->getModelData();
        mpMgnCoreBrk->remove(model);
        mpMgnCoreBrk->init(model,
                          (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x35), 1, 0, 1.0f, 0, -1);
        mpMgnBtk->init(model,
                          (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3b), 1, 0, 1.0f, 0,
                          -1);

        mMoveMode = 1;

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        speedF = 0.0f;
        field_0xae0 = 0x4800;
        field_0xae2 = 0;
        field_0xadc = 1000.0f;

        mDemoCamEye.set(field_0xadc * cM_ssin(field_0xae0), 70.0f,
                        field_0xadc * cM_scos(field_0xae0));
        mDemoCamEye += sp48;
        mDemoCamCenter.set(0.0f, 300.0f, -500.0f);
        mDemoCamCenter += sp48;

        mDemoCamFovy = 68.0f;
        field_0xa9c = 10;

        sp54.set(0.0f, 0.0f, 0.0f);
        player->setPlayerPosAndAngle(&sp54, fopAcM_searchPlayerAngleY(this) + -0x8000, 0);

        player->changeOriginalDemo();
        player->changeDemoMode(4, 1, 0, 0);

        mSound.startCreatureVoice(Z2SE_EN_MGN_DEMO_END, -1);
        return;
    case 1:
        current.pos = sp48;
        current.angle.y = 0x6800;
        shape_angle.y = 0x6800;

        field_0xb16 = field_0xb14 = shape_angle.y;

        mMoveMode = 2;
    case 2:
        if (mpMgnModelMorf->getFrame() < 230.0f) {
            cLib_addCalc2(&mBlurRate, 180.0f, 0.1f, 2.0f);
        } else {
            cLib_addCalc2(&mBlurRate, 0.0f, 0.1f, 2.0f);
        }

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x19));
        mDoMtx_stack_c::multVecZero(&sp60);
        cLib_addCalcPos2(&mDemoCamCenter, sp60, 0.1f, 50.0f);

        if (field_0xa9c == 0) {
            cLib_addCalcAngleS2(&field_0xae2, 0x40, 8, 8);
            cLib_addCalcAngleS2(&field_0xae0, 0x6e00, 0x20, field_0xae2);
            cLib_addCalc2(&field_0xadc, 500.0f, 0.1f, 7.0f);
        }

        mDemoCamEye.set(field_0xadc * cM_ssin(field_0xae0), 70.0f,
                        field_0xadc * cM_scos(field_0xae0));
        mDemoCamEye += sp48;

        if (mpMgnModelMorf->checkFrame(303.0f)) {
            mMoveMode = 3;
            field_0xad8 = 0.0f;
        }
        break;
    case 3:
        if (mpMgnModelMorf->getFrame() >= 333.0f) {
            setFallAttackEffect();
        }

        if (mpMgnModelMorf->checkFrame(333.0f)) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            if (!daPy_py_c::checkNowWolf()) {
                player->changeDemoMode(0x22, 0, 0, 0);
            }
        }

        if (mpMgnModelMorf->checkFrame(350.0f)) {
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        }

        mDoMtx_stack_c::transS(sp48);
        mDoMtx_stack_c::YrotM(0x6800);
        mDoMtx_stack_c::transM(320.0f, 0.0f, 1000.0f);
        mDoMtx_stack_c::multVecZero(&sp54);

        player->setPlayerPosAndAngle(&sp54, fopAcM_searchPlayerAngleY(this) + -0x8000, 0);

        mDoMtx_stack_c::transS(sp48);
        mDoMtx_stack_c::YrotM(0x6800);
        mDoMtx_stack_c::transM(320.0f, 70.0f, 1280.0f);
        mDoMtx_stack_c::multVecZero(&sp60);
        cLib_addCalc2(&field_0xad8, 50.0f, 0.1f, 5.0f);
        cLib_addCalcPos2(&mDemoCamEye, sp60, 0.1f, field_0xad8);

        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(0x19));
        mDoMtx_stack_c::multVecZero(&sp60);
        cLib_addCalcPos2(&mDemoCamCenter, sp60, 0.1f, 30.0f);

        if (mpMgnModelMorf->isStop()) {
            if (!daPy_py_c::checkNowWolf()) {
                mMoveMode = 4;
                field_0xa9c = 60;
            } else {
                mMoveMode = 5;
                field_0xa9c = 30;
            }
        }
        break;
    case 4:
        if (field_0xa9c == 0) {
            mMoveMode = 100;
            dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        }
        break;
    case 5:
        if (field_0xa9c == 0) {
            player->changeDemoMode(0x3a, 0, 0, 0);
            mMoveMode = 4;
            field_0xa9c = 100;
        }
        break;
    case 100:
        return;
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
}

/* 8060D880-8060DAC0 008240 0240+00 1/1 0/0 0/0 .text            executeJump__9daB_MGN_cFv */
void daB_MGN_c::executeJump() {
    switch (mMoveMode) {
    case 0:
        attention_info.flags = 0;
        offBodyCo();

        mAtSph.OffAtSetBit();
        field_0x20f4[0].OffTgSetBit();

        setBck(BCK_MGN_DASH_JUMP, 0, 5.0f, 1.0f);

        mpMgnBtk->init(mpMgnModelMorf->getModel()->getModelData(),
                       (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x39), 1, 0, 1.1f, 0,
                       -1);
        mpMgnBtk->setFrame(5.0f);
        mMoveMode = 1;
    case 1:
        cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

        if (mpMgnModelMorf->isStop()) {
            speed.y = 80.0f;
            speedF = 10.0f;
        }

        if (mpMgnBtk->checkFrame(10.0f)) {
            cXyz pos(current.pos);
            pos.y += 1000.0f + nREG_F(11);
            dComIfGp_particle_set(0x8C1B, &pos, &tevStr, &shape_angle, 0);
            mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);
        }

        if (mpMgnBtk->isStop()) {
            setActionMode(ACTION_WARP_e, 1);
        }
    }
}

/* 8060DAC0-8060DDA0 008480 02E0+00 1/1 0/0 0/0 .text            checkStartJump__9daB_MGN_cFv */
void daB_MGN_c::checkStartJump() {
    if (field_0xb0b >= 2) {
        if (!dComIfGs_isOneZoneSwitch(7, fopAcM_GetRoomNo(this))) {
            dComIfGs_onOneZoneSwitch(7, fopAcM_GetRoomNo(this));
        }

        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            dComIfGs_onOneZoneSwitch(8, fopAcM_GetRoomNo(this));
        } else {
            dComIfGs_offOneZoneSwitch(8, fopAcM_GetRoomNo(this));
        }
    }

    if (field_0xaff >= 4 && field_0xafd == 0 && field_0x20f4[0].ChkTgSet() && mActionMode != ACTION_JUMP_e) {
        if (fpcM_Search(s_obj_sub, this)) {
            if (field_0xb0b < 2) {
                field_0xb0b++;
            }

            setActionMode(ACTION_JUMP_e, 0);
            return;
        }

        daPy_py_c* player = daPy_getPlayerActorClass();
        if (player->getIronBallCenterPos() != NULL &&
            !dComIfGp_checkPlayerStatus0(0, 0x400) &&
            player->getIronBallCenterPos()->absXZ(current.pos) < 1500.0f &&
            abs((s16)(current.angle.y - cLib_targetAngleY(&current.pos, player->getIronBallCenterPos()))) < 0x2000)
        {
            if (field_0xb0b < 2) {
                field_0xb0b++;
            }

            setActionMode(ACTION_JUMP_e, 0);
        }
    }
}

/* 8060DDA0-8060E158 008760 03B8+00 2/1 0/0 0/0 .text            action__9daB_MGN_cFv */
void daB_MGN_c::action() {
    damage_check();
    checkStartJump();

    switch (mActionMode) {
    case ACTION_OPENING_e:
        executeOpening();
        break;
    case ACTION_CIRCLE_e:
        executeCircle();
        break;
    case ACTION_DASH_e:
        executeDash();
        break;
    case ACTION_THROWN_e:
        executeThrown();
        break;
    case ACTION_DOWN_e:
        executeDown();
        break;
    case ACTION_DOWN_DAMAGE_e:
        executeDownDamage();
        break;
    case ACTION_DOWN_BITE_DAMAGE_e:
        executeDownBiteDamage();
        break;
    case ACTION_WARP_e:
        executeWarp();
        break;
    case ACTION_FALL_e:
        executeFall();
        break;
    case ACTION_DEATH_e:
        executeDeath();
        break;
    case ACTION_JUMP_e:
        executeJump();
    }

    daPy_getPlayerActorClass()->onBossRoomWait();

    if (field_0xb18 != 0) {
        field_0xb18 = 0;
    } else {
        cLib_addCalcAngleS(&field_0xb16, shape_angle.y, 8, 0x400, 0x80);
        cLib_addCalcAngleS(&field_0xb14, field_0xb16, 8, 0x400, 0x80);
    }

    switch (mKankyoColMode) {
    case 0:
        mKankyoBlend = 1.0f;
        dKy_custom_colset(1, 1, mKankyoBlend);
        break;
    case 1:
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.005f);
        dKy_custom_colset(1, 0, mKankyoBlend);
        break;
    case 2:
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.01f);
        dKy_custom_colset(0, 2, mKankyoBlend);
        break;
    }

    if (mpMgnBtk->getBtkAnm() != (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3d) || !mpMgnBtk->getFrame())
    {
        Z2GetAudioMgr()->changeBgmStatus(0);
    } else {
        Z2GetAudioMgr()->changeBgmStatus(1);
    }

    if (mJewelColorMode == 1) {
        cLib_chaseF(&mJewelColorStrength, 1.0f, 0.1f);
    } else if (mJewelColorMode == 2) {
        cLib_chaseF(&mJewelColorStrength, 1.0f, 0.02f);
    } else {
        cLib_chaseF(&mJewelColorStrength, 0.0f, 0.1f);
    }

    if (field_0xb01 != 0) {
        cXyz pos;
        mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::transM(180.0f, -170.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&pos);
        setDownPos(&pos);
    }

    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());

    if (field_0xaac == 0) {
        mAcch.CrrPos(dComIfG_Bgsp());
    }

    if (mBodyCcSph[0].ChkAtSPrm(1) && mAcch.ChkWallHit()) {
        daObjBHASHI_c* pillar = (daObjBHASHI_c*)dComIfG_Bgsp().GetActorPointer(mAcchCir);
        if (pillar != NULL && fopAcM_GetName(pillar) == PROC_Obj_BHASHI) {
            pillar->Obj_Damage(current.pos);
        }
    }

    mpMgnModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpMgnCoreBrk->play();
    mpMgnBtk->play();
}

/* 8060E158-8060E1D0 008B18 0078+00 1/1 0/0 0/0 .text            mtx_set__9daB_MGN_cFv */
void daB_MGN_c::mtx_set() {
    J3DModel* model = mpMgnModelMorf->getModel();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.base_size, l_HIO.base_size, l_HIO.base_size);

    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMgnModelMorf->modelCalc();
}

/* 8060E1D0-8060E820 008B90 0650+00 1/1 0/0 0/0 .text            cc_set__9daB_MGN_cFv */
void daB_MGN_c::cc_set() {
    static f32 const cc_set_radius[15] = {
        200.0f, 280.0f, 100.0f, 100.0f, 100.0f, 100.0f, 70.0f,  70.0f,
        70.0f,  70.0f,  70.0f,  70.0f,  60.0f,  50.0f,  150.0f,
    };

    static u32 const cc_set_jnt[15] = {
        1, 2, 0x25, 0x34, 0x23, 0x32, 0x41, 0x43, 0x45, 0x47, 0x49, 0x4A, 0x4B, 0x4B, 0x1B,
    };

    J3DModel* model = mpMgnModelMorf->getModel();
    if (field_0xafd == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
        mDoMtx_stack_c::transM(100.0f, 0.0f, 0.0f);
    } else {
        mDoMtx_stack_c::copy(model->getAnmMtx(1));
        mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
    }

    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 70.0f;

    cXyz sp24;
    cXyz sp18;
    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);

    for (int i = 0; i < 15; i++) {
        mDoMtx_stack_c::copy(model->getAnmMtx(cc_set_jnt[i]));

        if (i == 1) {
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
        }

        if (i == 13) {
            mDoMtx_stack_c::transM(80.0f, 20.0f, 0.0f);
        }

        mDoMtx_stack_c::multVecZero(&sp24);

        mBodyCcSph[i].SetC(sp24);
        mBodyCcSph[i].SetR(cc_set_radius[i]);
        dComIfG_Ccsp()->Set(&mBodyCcSph[i]);
    }

    if (field_0xafd == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
        mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp24);

        field_0x20f4[0].SetC(sp24);
        field_0x20f4[0].SetR(150.0f);
        dComIfG_Ccsp()->Set(field_0x20f4);

        field_0x2364[0].SetC(sp24);
        field_0x2364[0].SetR(150.0f);
        dComIfG_Ccsp()->Set(field_0x2364);
    } else {
        mDoMtx_stack_c::copy(model->getAnmMtx(2));
        mDoMtx_stack_c::transM(100.0f, -200.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp24);

        mDoMtx_stack_c::copy(model->getAnmMtx(1));
        mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp18);

        field_0xa84 = sp24;

        if (sp24.absXZ(player_pos) < 400.0f || sp18.absXZ(player_pos) < 400.0f) {
            offBodyShield();
        } else {
            onBodyShield();
        }

        field_0x20f4[0].SetC(sp24);
        field_0x20f4[0].SetR(100.0f);
        dComIfG_Ccsp()->Set(field_0x20f4);

        field_0x2364[0].SetC(sp24);
        field_0x2364[0].SetR(100.0f);
        dComIfG_Ccsp()->Set(field_0x2364);

        field_0x20f4[1].SetC(sp18);
        field_0x20f4[1].SetR(100.0f);
        dComIfG_Ccsp()->Set(&field_0x20f4[1]);

        field_0x2364[1].SetC(sp18);
        field_0x2364[1].SetR(100.0f);
        dComIfG_Ccsp()->Set(&field_0x2364[1]);
    }

    mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
    mDoMtx_stack_c::transM(-100.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&sp24);

    mAtSph.SetC(sp24);
    mAtSph.SetR(300.0f);
    dComIfG_Ccsp()->Set(&mAtSph);
}

/* 8060E820-8060EA10 0091E0 01F0+00 1/1 0/0 0/0 .text            execute__9daB_MGN_cFv */
int daB_MGN_c::execute() {
    if (field_0xa9c != 0) {
        field_0xa9c--;
    }
    if (mDamageInvulnerabilityTimer != 0) {
        mDamageInvulnerabilityTimer--;
    }
    if (field_0xaa0 != 0) {
        field_0xaa0--;
    }
    if (field_0xaa4 != 0) {
        field_0xaa4--;
    }
    if (field_0xaa8 != 0) {
        field_0xaa8--;
    }
    if (field_0xaac != 0) {
        field_0xaac--;
    }

    action();
    mtx_set();
    cc_set();
    calcBloodMove();
    calcHideSmokeEffect();

    if (field_0xb09) {
        setHeadLightEffect();
        field_0xb09 = 0;
    }

    if (field_0xb0a) {
        field_0xb0a--;
        setHeadHitEffect();
    }

    if (field_0xafd == 0) {
        if (daPy_getPlayerActorClass()->checkWolfLock(this)) {
            daPy_getPlayerActorClass()->cancelWolfLock(this);
        }
        onWolfNoLock();
    } else {
        offWolfNoLock();
    }

    cXyz effpos;
    mDoMtx_stack_c::copy(mpMgnModelMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&effpos);

    cXyz effsize(2.0f, 2.0f, 2.0f);
    setMidnaBindEffect(this, &mSound, &effpos, &effsize);
    return 1;
}

/* 8060EA10-8060EA30 0093D0 0020+00 2/1 0/0 0/0 .text            daB_MGN_Execute__FP9daB_MGN_c */
static int daB_MGN_Execute(daB_MGN_c* i_this) {
    return i_this->execute();
}

/* 8060EA30-8060EA38 0093F0 0008+00 1/0 0/0 0/0 .text            daB_MGN_IsDelete__FP9daB_MGN_c */
static int daB_MGN_IsDelete(daB_MGN_c* i_this) {
    return 1;
}

/* 8060EA38-8060EAC0 0093F8 0088+00 1/1 0/0 0/0 .text            _delete__9daB_MGN_cFv */
int daB_MGN_c::_delete() {
    dComIfG_resDelete(&mMgnPhase, "B_mgn");
    dComIfG_resDelete(&mMgnePhase, "B_mgne");

    if (mInitHIO) {
        l_initHIO = FALSE;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8060EAC0-8060EAE0 009480 0020+00 1/0 0/0 0/0 .text            daB_MGN_Delete__FP9daB_MGN_c */
static int daB_MGN_Delete(daB_MGN_c* i_this) {
    return i_this->_delete();
}

/* 8060EAE0-8060F068 0094A0 0588+00 1/1 0/0 0/0 .text            CreateHeap__9daB_MGN_cFv */
int daB_MGN_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgn", BMDR_MGN);
    JUT_ASSERT(4010, modelData != 0);
    mpMgnModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                       (J3DAnmTransform*)dComIfG_getObjectRes("B_mgn", BCK_MGN_WAIT), 2,
                                       1.0f, 0, -1, &mSound, 0x80000, 0x11000284);
    if (mpMgnModelMorf == NULL || mpMgnModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMgnModelMorf->getModel();
    model->setUserArea((u32)this);

    for (u16 i = 1; i < model->getModelData()->getJointNum(); i++) {
        if (i == 1 || i == 25) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }
    }

    mpMgnCoreBrk = new mDoExt_brkAnm();
    if (mpMgnCoreBrk == NULL) {
        return 0;
    }

    if (!mpMgnCoreBrk->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", BRK_MGN_CORE),
                           1, 2, 0.0f, 0, -1))
    {
        return 0;
    }

    mpMgnBtk = new mDoExt_btkAnm();
    if (mpMgnBtk == NULL) {
        return 0;
    }
    
    if (!mpMgnBtk->init(mpMgnModelMorf->getModel()->getModelData(),
                           (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", BTK_MGN_EXIT), 1, 0,
                           0.0f, 0, -1))
    {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgn", BMDR_MGN_TAIEKI);
    JUT_ASSERT(4068, modelData != 0);

    for (int i = 0; i < 20; i++) {
        mpMgnTaiekiModel[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpMgnTaiekiModel[i] == NULL) {
            return 0;
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgne", BMDR_EF_GDGATE);
    JUT_ASSERT(4084, modelData != 0);

    for (int i = 0; i < 4; i++) {
        mpGdgateModelMorf[i] = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes("B_mgne", BCK_EF_GDGATE_START),
                                               0, 0.0f, 0, -1, &mSound, 0x80000, 0x11000284);
        if (mpGdgateModelMorf[i] == NULL || mpGdgateModelMorf[i]->getModel() == NULL) {
            return 0;
        }

        mpGdgateStartBrk[i] = new mDoExt_brkAnm();
        if (mpGdgateStartBrk[i] == NULL) {
            return 0;
        }

        if (!mpGdgateStartBrk[i]->init(modelData,
                                          (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", BRK_EF_GDGATE_START), 1, 0,
                                          1.0f, 0, -1))
        {
            return 0;
        }

        mpGdgateAppearBrk[i] = new mDoExt_brkAnm();
        if (mpGdgateAppearBrk[i] == NULL) {
            return 0;
        }

        if (!mpGdgateAppearBrk[i]->init(modelData,
                                          (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", BRK_EF_GDGATE_APPEAR), 1, 0,
                                          1.0f, 0, -1))
        {
            return 0;
        }

        mpGdgateBtk[i] = new mDoExt_btkAnm();
        if (mpGdgateBtk[i] == NULL) {
            return 0;
        }

        if (!mpGdgateBtk[i]->init(mpMgnModelMorf->getModel()->getModelData(),
                                   (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgne", BTK_EF_GDGATE),
                                   1, 2, 1.0f, 0, -1))
        {
            return 0;
        }
    }

    return 1;
}

/* 8060F0B0-8060F0D0 009A70 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    daB_MGN_c* i_this = (daB_MGN_c*)a_this;
    return i_this->CreateHeap();
}

/* 8060F0D0-8060F548 009A90 0478+00 1/1 0/0 0/0 .text            create__9daB_MGN_cFv */
int daB_MGN_c::create() {
    fopAcM_SetupActor(this, daB_MGN_c);

    field_0xafb = fopAcM_GetParam(this);

    int phase_state = dComIfG_resLoad(&mMgnPhase, "B_mgn");
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = dComIfG_resLoad(&mMgnePhase, "B_mgne");
        if (phase_state == cPhs_COMPLEATE_e) {
            OS_REPORT("B_MGN PARAM %x\n", fopAcM_GetParam(this));

            if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x11960)) {
                OS_REPORT("//////////////B_MGN SET NON !!\n");
                return cPhs_ERROR_e;
            }

            if (!l_initHIO) {
                l_initHIO = TRUE;
                mInitHIO = TRUE;
                l_HIO.no = 0xFF;
            }

            attention_info.flags = 0;
            attention_info.distances[2] = 22;
            attention_info.distances[4] = 40;

            J3DModel* model = mpMgnModelMorf->getModel();
            fopAcM_SetMtx(this, model->getBaseTRMtx());
            fopAcM_SetMin(this, -1000.0f, -1000.0f, -1000.0f);
            fopAcM_SetMax(this, 1000.0f, 1000.0f, 1000.0f);

            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                      &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
            mAcchCir.SetWall(150.0f, 600.0f);
            health = 700;
            field_0x560 = 700;
            mCcStts.Init(0xff, 0, this);

            for (int i = 0; i < 15; i++) {
                mBodyCcSph[i].Set(cc_sph_src);
                mBodyCcSph[i].SetStts(&mCcStts);
            }

            field_0x1fb8 = 0xdcfbfdfd;

            mAtSph.Set(at_sph_src);
            mAtSph.SetStts(&mCcStts);

            for (int i = 0; i < 2; i++) {
                field_0x20f4[i].Set(tg_sph_src);
                field_0x20f4[i].SetStts(&mCcStts);
                field_0x20f4[i].SetAtMtrl(dCcD_MTRL_UNK_7);

                field_0x2364[i].Set(tg_sph_src);
                field_0x2364[i].SetStts(&mCcStts);
                field_0x2364[i].SetTgType(0xd8bbdddd);
                field_0x2364[i].OnTgShield();
                field_0x2364[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
            }

            mSound.init(&current.pos, &eyePos, 3, 1);
            mAtInfo.mpSound = &mSound;

            field_0xafe = 0;

            setActionMode(ACTION_OPENING_e, 0);
            field_0xae8 = 1.0f;
            mKankyoColMode = 0;
            mKankyoBlend = 1.0f;

            g_env_light.mColpatWeather = 1;
            g_env_light.wether_pat0 = 1;
            g_env_light.wether_pat1 = 1;

            daB_MGN_Execute(this);
        }
    }

    return phase_state;
}

/* 8060F868-8060F888 00A228 0020+00 1/0 0/0 0/0 .text            daB_MGN_Create__FP9daB_MGN_c */
static int daB_MGN_Create(daB_MGN_c* i_this) {
    return i_this->create();
}

/* 80610364-80610384 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_MGN_Method */
static actor_method_class l_daB_MGN_Method = {
    (process_method_func)daB_MGN_Create,  (process_method_func)daB_MGN_Delete,
    (process_method_func)daB_MGN_Execute, (process_method_func)daB_MGN_IsDelete,
    (process_method_func)daB_MGN_Draw,
};

/* 80610384-806103B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_MGN */
extern actor_process_profile_definition g_profile_B_MGN = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_B_MGN,              // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daB_MGN_c),       // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    232,                     // mPriority
    &l_daB_MGN_Method,       // sub_method
    0x00044000,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
