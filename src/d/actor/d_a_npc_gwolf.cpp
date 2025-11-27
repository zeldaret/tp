/**
 * @file d_a_npc_gwolf.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_gwolf.h"
#include "d/actor/d_a_npc.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_camera.h"

enum GWolf_RES_File_ID {
    /* BCK */
    /* 0x07 */ BCK_WL_AT = 0x7,
    /* 0x08 */ BCK_WL_ATTACKA,
    /* 0x09 */ BCK_WL_ATTACKAED,
    /* 0x0A */ BCK_WL_ATTACKAST,
    /* 0x0B */ BCK_WL_DASHA,
    /* 0x0C */ BCK_WL_HOWLB,
    /* 0x0D */ BCK_WL_HOWLC,
    /* 0x0E */ BCK_WL_JUMPA,
    /* 0x0F */ BCK_WL_JUMPAST,
    /* 0x10 */ BCK_WL_WAITSIT,

    /* BMDR */
    /* 0x13 */ BMDR_GW = 0x13,

    /* BRK */
    /* 0x16 */ BRK_GW = 0x16,

    /* BTK */
    /* 0x19 */ BTK_GW = 0x19,

    /* EVT */
    /* 0x1C */ EVT_GWOLF_EVENT_LIST = 0x1C,
};

enum RES_Name {
    /* 0x0 */ GWOLF,
};

enum Event {
    /* 0x0 */ EVT_NONE,
    /* 0x1 */ EVT_ATTACK_WARP,
    /* 0x2 */ EVT_ATTACK_WARP_HORSE,
    /* 0x3 */ EVT_HOWLING_SESSIONA,
    /* 0x4 */ EVT_HOWLING_SESSIONB,
    /* 0x5 */ EVT_HOWLING_SESSIONC,
    /* 0x6 */ EVT_HOWLING_SESSIOND,
    /* 0x7 */ EVT_HOWLING_SESSIONE,
    /* 0x8 */ EVT_HOWLING_SESSIONF,
    /* 0x9 */ EVT_MEET_GWOLFA,
    /* 0xA */ EVT_MEET_GWOLFB,
    /* 0xB */ EVT_MEET_GWOLFC,
    /* 0xC */ EVT_MEET_GWOLFD,
    /* 0xD */ EVT_MEET_GWOLFE,
    /* 0xE */ EVT_MEET_GWOLFF,
};

enum Event_Cut_Nums {
    /* 0x5 */ NUM_EVT_CUTS_e = 0x5,
};

enum Animation {
    /* 0x2 */ ANM_WAITSIT = 0x2,
    /* 0x3 */ ANM_AT,
    /* 0x4 */ ANM_ATTACKAST,
    /* 0x5 */ ANM_ATTACKA,
    /* 0x6 */ ANM_ATTACKAED,
    /* 0x7 */ ANM_HOWLB,
    /* 0x8 */ ANM_HOWLC,
    /* 0x9 */ ANM_JUMPAST,
    /* 0xA */ ANM_JUMPA,
    /* 0xB */ ANM_DASHA,
};

enum Motion {
    /* 0x0 */ MOT_WAITSIT,
    /* 0x1 */ MOT_AT,
    /* 0x2 */ MOT_ATTACKAST,
    /* 0x3 */ MOT_ATTACKAED,
    /* 0x4 */ MOT_HOWLB,
    /* 0x5 */ MOT_HOWLC,
    /* 0x6 */ MOT_JUMPAST,
    /* 0x7 */ MOT_JUMPA,
    /* 0x8 */ MOT_DASHA,
};

/* 809F8F14-809F8F18 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_GWolf_Param_c l_HIO;

/* 809F8814-809F881C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static daNpc_GetParam1 l_bmdGetParamList[1] = {
    {BMDR_GW, GWOLF},
};

/* 809F881C-809F887C 000028 0060+00 0/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[12] = {
    {-1, GWOLF},
    {-1, GWOLF},
    {BCK_WL_WAITSIT, GWOLF},
    {BCK_WL_AT, GWOLF},
    {BCK_WL_ATTACKAST, GWOLF},
    {BCK_WL_ATTACKA, GWOLF},
    {BCK_WL_ATTACKAED, GWOLF},
    {BCK_WL_HOWLB, GWOLF},
    {BCK_WL_HOWLC, GWOLF},
    {BCK_WL_JUMPAST, GWOLF},
    {BCK_WL_JUMPA, GWOLF},
    {BCK_WL_DASHA, GWOLF},
};

/* 809F887C-809F8884 000088 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {BTK_GW, GWOLF},
};

/* 809F8884-809F888C 000090 0008+00 0/0 0/0 0/0 .data            l_brkGetParamList */
static daNpc_GetParam1 l_brkGetParamList[1] = {
    {BRK_GW, GWOLF},
};

/* 809F888C-809F8904 000098 0078+00 0/2 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[15] = {
    {EVT_NONE, GWOLF},
    {EVT_ATTACK_WARP, GWOLF},
    {EVT_ATTACK_WARP_HORSE, GWOLF},
    {EVT_HOWLING_SESSIONA, GWOLF},
    {EVT_HOWLING_SESSIONB, GWOLF},
    {EVT_HOWLING_SESSIONC, GWOLF},
    {EVT_HOWLING_SESSIOND, GWOLF},
    {EVT_HOWLING_SESSIONE, GWOLF},
    {EVT_HOWLING_SESSIONF, GWOLF},
    {EVT_MEET_GWOLFA, GWOLF},
    {EVT_MEET_GWOLFB, GWOLF},
    {EVT_MEET_GWOLFC, GWOLF},
    {EVT_MEET_GWOLFD, GWOLF},
    {EVT_MEET_GWOLFE, GWOLF},
    {EVT_MEET_GWOLFF, GWOLF},
};

/* 809F8904-809F8940 -00001 003C+00 0/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[15] = {
    NULL,
    "ATTACK_WARP",
    "ATTACK_WARP_HORSE",
    "HOWLING_SESSIONA",
    "HOWLING_SESSIONB",
    "HOWLING_SESSIONC",
    "HOWLING_SESSIOND",
    "HOWLING_SESSIONE",
    "HOWLING_SESSIONF",
    "MEET_GWOLFA",
    "MEET_GWOLFB",
    "MEET_GWOLFC",
    "MEET_GWOLFD",
    "MEET_GWOLFE",
    "MEET_GWOLFF",
};

/* 809F8940-809F894C 00014C 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLFa */
static int l_loadRes_GWOLFa[3] = {
    GWOLF, -1, -1,
};

/* 809F894C-809F8958 000158 000C+00 1/0 0/0 0/0 .data            l_loadRes_GWOLF0 */
static int l_loadRes_GWOLF0[3] = {
    GWOLF, -1, -1,
};

/* 809F8958-809F8968 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[4] = {
    l_loadRes_GWOLFa,
    l_loadRes_GWOLFa,
    l_loadRes_GWOLFa,
    l_loadRes_GWOLF0,
};

/* 809F8968-809F896C -00001 0004+00 4/7 0/0 0/0 .data            l_resNames */
static char* l_resNames[1] = {"GWolf"};

/* 809F896C-809F8970 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "GWolf";

/* 809F8970-809F8980 00017C 000E+02 3/3 0/0 0/0 .data            l_appearTmpFlag */
static s16 l_appearTmpFlag[7] = {
    -1,
    0x005C, // dSv_event_tmp_flag_c::T_0092 - Hero's spirit - Gold wolf identification 2
    0x005D, // dSv_event_tmp_flag_c::T_0093 - Hero's spirit - Gold wolf identification 3
    0x005E, // dSv_event_tmp_flag_c::T_0094 - Hero's spirit - Gold wolf identification 4
    0x005F, // dSv_event_tmp_flag_c::T_0095 - Hero's spirit - Gold wolf identification 5
    0x0060, // dSv_event_tmp_flag_c::T_0096 - Hero's spirit - Gold wolf identification 6
    0x0061, // dSv_event_tmp_flag_c::T_0097 - Hero's spirit - Gold wolf identification 7
};

/* 809F8980-809F8990 00018C 000E+02 2/2 0/0 0/0 .data            l_warpAppearFlag */
static s16 l_warpAppearFlag[7] = {
    -1,
    0x01D8, // dSv_event_flag_c::F_0472 - Secret techniques - Distant howling complete (for secret technique 2)
    0x01D9, // dSv_event_flag_c::F_0473 - Secret techniques - Distant howling complete (for secret technique 3)
    0x01DA, // dSv_event_flag_c::F_0474 - Secret techniques - Distant howling complete (for secret technique 4)
    0x01DB, // dSv_event_flag_c::F_0475 - Secret techniques - Distant howling complete (for secret technique 5)
    0x01DC, // dSv_event_flag_c::F_0476 - Secret techniques - Distant howling complete (for secret technique 6)
    0x01DD, // dSv_event_flag_c::F_0477 - Secret techniques - Distant howling complete (for secret technique 7)
};

/* 809F8990-809F89A4 -00001 0014+00 0/1 0/0 0/0 .data            mEvtCutNameList__13daNpc_GWolf_c */
char* daNpc_GWolf_c::mEvtCutNameList[5] = {
    "",
    "ATTACK_WARP",
    "ATTACK_WARP_HORSE",
    "HOWLING_SESSIONA",
    "MEET_GWOLFA",
};

/* 809F89D4-809F8A10 0001E0 003C+00 0/2 0/0 0/0 .data            mEvtCutList__13daNpc_GWolf_c */
daNpc_GWolf_c::cutFunc daNpc_GWolf_c::mEvtCutList[5] = {
    NULL,
    &daNpc_GWolf_c::ECut_attackWarp,
    &daNpc_GWolf_c::ECut_attackWarpHorse,
    &daNpc_GWolf_c::ECut_howlingSessionA,
    &daNpc_GWolf_c::ECut_meetGWolf,
};

/* 809F30AC-809F3230 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpc_GWolf_cFv */
daNpc_GWolf_c::daNpc_GWolf_c() {}

/* 809F32C0-809F34C0 000300 0200+00 1/0 0/0 0/0 .text            __dt__13daNpc_GWolf_cFv */
daNpc_GWolf_c::~daNpc_GWolf_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }
}

/* ############################################################################################## */
/* 809F84F4-809F8580 000000 008C+00 17/17 0/0 0/0 .rodata          m__19daNpc_GWolf_Param_c */
daNpc_GWolf_HIOParam const daNpc_GWolf_Param_c::m = {
    30.0f,
    -4.0f,
    1.0f,
    600.0f,
    255.0f,
    240.0f,
    35.0f,
    60.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -30.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    5,
    6,
    7,
    6,
    180.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    21.0f,
    40.5f,
    19.5f,
    38.5f,
    500.0f,
    0.99f,
    0.9f,
    120.0f,
};

/* 809F34C0-809F37C0 000500 0300+00 1/1 0/0 0/0 .text            create__13daNpc_GWolf_cFv */
cPhs__Step daNpc_GWolf_c::create() {
    fopAcM_ct(this, daNpc_GWolf_c);

    mType = getTypeFromParam();
    mParamMode = getModeFromParam();

    mExitId = fopAcM_GetParam(this) >> 24;

    if (home.angle.x != 0xFFFF) {
        field_0xe08 = home.angle.x;
    } else {
        field_0xe08 = -1;
    }

    swBit = getSwBitFromParam();
    mSaveTable = getSaveTableFromParam();

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int iVar1 = 0;
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            iVar1++;
        }
    }

    if (iVar1 == i) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3D30)) {
            return cPhs_ERROR_e;
        }

        mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpc_GWolf_Param_c::m.common.width, daNpc_GWolf_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_GWolf_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 809F37C0-809F3A1C 000800 025C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (l_bmdGetParamList[0].fileIdx >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0].arcIdx], l_bmdGetParamList[0].fileIdx);
    }

    JUT_ASSERT(538, NULL != mdlData_p);

    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }

    if (mAnm_p == NULL) {
        return 0;
    }

    J3DModel* model = mAnm_p->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    setMotionAnm(ANM_WAITSIT, 0.0f);
    return 1;
}

/* 809F3BD8-809F3C0C 000C18 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_GWolf_c();
    return 1;
}

/* 809F3C0C-809F3C2C 000C4C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Execute() {
    return execute();
}

/* 809F3C2C-809F3CBC 000C6C 0090+00 1/1 0/0 0/0 .text            Draw__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::Draw() {
    J3DModelData* mdlData_p = mAnm_p->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);

    return draw(
        chkAction(&daNpc_GWolf_c::test), FALSE, daNpc_GWolf_Param_c::m.common.real_shadow_size, NULL, 0
    );
}

/* 809F3CBC-809F3FB8 000CFC 02FC+00 1/1 0/0 0/0 .text draw__13daNpc_GWolf_cFiifP11_GXColorS10i */
int daNpc_GWolf_c::draw(int param_1, int param_2, f32 param_3, _GXColorS10* i_color, int param_5) {
    J3DModel* model = mAnm_p->getModel();
    J3DModelData* mdlData_p = model->getModelData();

    field_0x9f3 = 1;
    if (!checkHide()) {
        f32 fVar1;
        if (param_5 == 0 && mDamageTimer != 0 && mTotalDamageTimer != 0) {
            fVar1 = (f32)mDamageTimer / mTotalDamageTimer;
        } else {
            fVar1 = 0.0f;
        }

        if (!(cM3d_IsZero(fVar1) > 0)) {
            tevStr.TevColor.r = fVar1 * 20.0f;
            tevStr.TevColor.g = 0;
        } else if (param_1 != 0) {
            tevStr.TevColor.g = 20;
            tevStr.TevColor.r = 0;
        } else if (i_color != NULL) {
            tevStr.TevColor.r = i_color->r;
            tevStr.TevColor.g = i_color->g;
            tevStr.TevColor.b = i_color->b;
            tevStr.TevColor.a = i_color->a;
        } else {
            tevStr.TevColor.g = 0;
            tevStr.TevColor.r = 0;
        }

        g_env_light.settingTevStruct(5, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);

        if (!drawDbgInfo()) {
            if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
                mBtpAnm.entry(mdlData_p);
            }

            if((mAnmFlags & ANM_PLAY_BTK) != 0) {
                mBtkAnm.entry(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
                mBrkAnm.entry(mdlData_p);
            }

            if (param_2 != 0) {
                fopAcM_setEffectMtx(this, mdlData_p);
            }

            mAnm_p->entryDL();

            if ((mAnmFlags & ANM_PLAY_BTP) != 0) {
                mBtpAnm.remove(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BTK) != 0) {
                mBtkAnm.remove(mdlData_p);
            }

            if ((mAnmFlags & ANM_PLAY_BRK) != 0) {
                mBrkAnm.remove(mdlData_p);
            }

            mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos, param_3, 20.0f, current.pos.y,
                                            mGroundH, mGndChk, &tevStr, 0, 1.0f,
                                            dDlst_shadowControl_c::getSimpleTex());
            drawOtherMdls();
        }
    }

    return 1;
}

/* 809F3FB8-809F41EC 000FF8 0234+00 1/1 0/0 0/0 .text            ctrlJoint__13daNpc_GWolf_cFP8J3DJointP8J3DModel */
int daNpc_GWolf_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 3, 4};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(jntNo, i_jointList, daNpc_GWolf_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(-field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(-field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 0xE) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mAnm_p->getAnm());
        mAnm_p->changeAnm(anm);
    }

    return 1;
}

/* 809F41EC-809F420C 00122C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c */
int daNpc_GWolf_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->CreateHeap();
}

/* 809F420C-809F4258 00124C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi */
int daNpc_GWolf_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_GWolf_c* i_this = (daNpc_GWolf_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809F4258-809F4390 001298 0138+00 1/0 0/0 0/0 .text            setParam__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setParam() {
    actionFunc action = mNextAction;
    u32 flag = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;

    selectAction();

    if (mNextAction != action) {
        for (int i = 2; i < 2; i++) {
            mActorMngrs[i].initialize();
        }
    }

    field_0xdf8 = 0;
    field_0xdfc = 0;

    if (!daPy_py_c::checkNowWolf()) {
        flag = 0;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(5, 6);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(3, 6);
    attention_info.flags = flag;
    
    scale.set(daNpc_GWolf_Param_c::m.common.scale, daNpc_GWolf_Param_c::m.common.scale, daNpc_GWolf_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_GWolf_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_GWolf_Param_c::m.common.knee_length);

    if (!dComIfGp_event_runCheck()) {
        gravity = daNpc_GWolf_Param_c::m.common.gravity;
    }
}

/* 809F4390-809F4558 0013D0 01C8+00 1/0 0/0 0/0 .text            main__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_GWolf_Param_c::m.common.debug_mode_ON && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK()))) {
        if (mOrderEvtNo != EVT_NONE) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }

        switch (mOrderEvtNo) {
            case EVT_MEET_GWOLFA:
            case EVT_MEET_GWOLFB:
            case EVT_MEET_GWOLFC:
            case EVT_MEET_GWOLFD:
            case EVT_MEET_GWOLFE:
            case EVT_MEET_GWOLFF:
                orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 4, 0xFF, 3);
                break;

            default:
                orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 0x28, 0xFF, 1);
                break;
        }
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playMotion();
    return TRUE;
}

/* 809F4558-809F4638 001598 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* i_btk = NULL;

        if (l_btkGetParamList[0].fileIdx >= 0) {
            i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        }

        if (i_btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 809F4638-809F4698 001678 0060+00 1/0 0/0 0/0 .text            adjustShapeAngle__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::adjustShapeAngle() {
    s16 target = 0;

    if (mAcch.ChkGroundHit()) {
        target = getGroundSlope(mAcch, shape_angle.y);
    }

    cLib_addCalcAngleS2(&shape_angle.x, target, 3, 0x80);
    mCurAngle.x = shape_angle.x;
}

/* 809F4698-809F4BB0 0016D8 0518+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::setAttnPos() {
    static cXyz eyeOffset(35.0f, 0.0f, 0.0f);

    cXyz sp7c, sp88, sp94, spa0;
    f32 attention_offset = daNpc_GWolf_Param_c::m.common.attention_offset;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp94.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp94, &spa0);
        field_0x908[i].x = -spa0.z;
        field_0x908[i].z = -spa0.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp94);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp94);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp94);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp88 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp88.x, sp88.z);
        mEyeAngle.x = -cM_atan2s(sp88.y, sp88.absXZ());
        mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    f32 fVar1 = 0.0f;
    f32 fVar2 = 0.0f;

    sp88.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp88, &sp7c);

    attention_info.position.set(mHeadPos.x, mHeadPos.y + attention_offset, mHeadPos.z);

    if (!mHide && !mTwilight && mType == 0) {
        if (!mIsDamaged) {
            mCyl.SetTgType(0xD8FBFDFF);
            mCyl.SetTgSPrm(0x1F);
            mCyl.OnTgNoHitMark();
        } else {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        }

        mCyl.SetC(sp7c);
        mCyl.SetH(daNpc_GWolf_Param_c::m.common.height + fVar1);
        mCyl.SetR(daNpc_GWolf_Param_c::m.common.width + fVar2);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrTgHit();
}

/* 809F4BB0-809F4BB8 001BF0 0008+00 1/0 0/0 0/0 .text setExpressionAnm__13daNpc_GWolf_cFib */
bool daNpc_GWolf_c::setExpressionAnm(int i_index, bool i_modify) {
    return true;
}

/* 809F4BB8-809F4BBC 001BF8 0004+00 1/0 0/0 0/0 .text            setExpression__13daNpc_GWolf_cFif */
void daNpc_GWolf_c::setExpression(int i_index, f32 i_morf) {
    /* empty function */
}

/* 809F4BBC-809F4DE8 001BFC 022C+00 2/0 0/0 0/0 .text            setMotionAnm__13daNpc_GWolf_cFif */
void daNpc_GWolf_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* i_bck = NULL;
    J3DAnmTextureSRTKey* i_btk = NULL;
    J3DAnmTevRegKey* i_brk = NULL;
    int i_attr = J3DFrameCtrl::EMode_LOOP;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        i_bck = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    }

    mAnm = i_index;

    switch (i_index) {
        case ANM_WAITSIT:
        case ANM_AT:
        case ANM_HOWLB:
        case ANM_HOWLC:
        case ANM_DASHA:
            break;

        case ANM_ATTACKAST:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case ANM_ATTACKA:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case ANM_ATTACKAED:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case ANM_JUMPAST:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case ANM_JUMPA:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        default:
            i_bck = NULL;
            i_btk = NULL;
            break;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
    }

    if (i_btk != NULL) {
        if (setBtkAnm(i_btk, mAnm_p->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }

    if (l_brkGetParamList[0].fileIdx >= 0) {
        i_brk = getTevRegKeyAnmP(l_resNames[l_brkGetParamList[0].arcIdx], l_brkGetParamList[0].fileIdx);
    }

    if (i_brk != NULL) {
        if (mBrkAnm.getBrkAnm() == i_brk) {
            mAnmFlags |= ANM_PLAY_BRK;
        } else if (setBrkAnm(i_brk, mAnm_p->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
            mAnmFlags |= ANM_PLAY_BRK | ANM_PAUSE_BRK;
        }
    }

    if (i_bck != NULL && setMcaMorfAnm(i_bck, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 809F4DE8-809F4E2C 001E28 0044+00 1/0 0/0 0/0 .text            setMotion__13daNpc_GWolf_cFifi */
void daNpc_GWolf_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;

    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 9) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809F4E2C-809F4E34 001E6C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::drawDbgInfo() {
    return FALSE;
}

/* 809F4E34-809F4E38 001E74 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::drawOtherMdls() {
    /* empty function */
}

/* 809F4E38-809F4E84 001E78 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__13daNpc_GWolf_cFv */
u8 daNpc_GWolf_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0 :
            return 0;

        case 1:
            return 1;
        case 2:
            return 2;

        default:
            return 0;
    }
}

/* 809F4E84-809F4F00 001EC4 007C+00 2/1 0/0 0/0 .text            getModeFromParam__13daNpc_GWolf_cFv */
int daNpc_GWolf_c::getModeFromParam() {
    u8 uVar1 = (fopAcM_GetParam(this) & 0xFF00) >> 8;

    if (mType == 0 || mType == 1) {
        switch (uVar1) {
            case 1:
                return 0;

            case 2:
                return 1;

            case 3:
                return 2;

            case 4:
                return 3;

            case 5:
                return 4;

            case 6:
                return 5;

            case 7:
                return 6;
        }
    }

    return -1;
}

/* 809F4F00-809F4FF4 001F40 00F4+00 1/1 0/0 0/0 .text            isDelete__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::isDelete() {
    static s16 l_delFlag[7] = {
        0x0153, 0x01EC, 0x01ED, 0x01EE, 0x01EF, 0x01F0, 0x01F1,
    };
    static s16 l_playerNoList[7] = {
        0xFFFF, 2, 3, 4, 5, 6, 7,
    };

    if (mType == 3 || mType == 2) {
        return FALSE;
    }

    if (mType == 1) {
        if (mParamMode != -1 && l_playerNoList[mParamMode] == dComIfGs_getStartPoint()) {
            return FALSE;
        }
    } else if (mType == 0) {
        if (mParamMode != -1) {
            if (daNpcT_chkEvtBit(l_delFlag[mParamMode])) {
                if (swBit != 0xFF) {
                    dComIfGs_offSwitch(swBit, fopAcM_GetRoomNo(this));
                }
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

/* 809F4FF4-809F520C 002034 0218+00 1/1 0/0 0/0 .text            reset__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngrs[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;
    field_0xdf8 = 0;
    field_0xdfc = 0;
    field_0xe00 = 0;
    field_0xe04 = 0;
    mLookMode = -1;
    mMode = 0;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xe1c = 0;
    field_0xe1d = 0;

    if (mType == 0 && ((l_warpAppearFlag[mParamMode] != -1 && !daNpcT_chkEvtBit(l_warpAppearFlag[mParamMode])) ||
        (l_appearTmpFlag[mParamMode] != -1 && daNpcT_chkTmpBit(l_appearTmpFlag[mParamMode])))) {
        if (l_appearTmpFlag[mParamMode] != -1) {
            daNpcT_offTmpBit(l_appearTmpFlag[mParamMode]);
        }

        mHide = true;
    }

    field_0x9ee = true;
}

/* 809F520C-809F55D0 00224C 03C4+00 1/1 0/0 0/0 .text            playMotion__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAITSIT, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_AT, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2a = {ANM_ATTACKAST, 3.0f, 1};
    daNpcF_anmPlayData dat2b = {ANM_ATTACKA, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {ANM_ATTACKAED, 3.0f, 1};
    daNpcF_anmPlayData dat3b = {ANM_AT, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {ANM_HOWLB, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_HOWLC, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_JUMPAST, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_JUMPA, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_DASHA, daNpc_GWolf_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};

    daNpcF_anmPlayData** ppDat[9] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
    };

    if (mMotion >= 0 && mMotion < 9) {
        playMotionAnm(ppDat);
    }

    if (mHide != true) {
        switch (mAnm) {
            case ANM_WAITSIT:
                if (mAnm_p->getFrame() >= 1.0f && mAnm_p->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_BREATH, -1);
                }
                break;

            case ANM_JUMPAST:
                if (mAnm_p->getFrame() >= 1.0f && mAnm_p->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_JUMP, -1);
                }
                break;

            case ANM_HOWLB:
                if (mAnm_p->getFrame() >= 1.0f && mAnm_p->getFrame() < 2.0f) {
                    mSound.startCreatureVoice(Z2SE_G_WLF_TRANSFORM, -1);
                }
                break;
        }
    }
}

/* 809F55D0-809F55FC 002610 002C+00 2/2 0/0 0/0 .text            chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i */
BOOL daNpc_GWolf_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 809F55FC-809F56A4 00263C 00A8+00 2/2 0/0 0/0 .text            setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i */
BOOL daNpc_GWolf_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 809F56A4-809F5770 0026E4 00CC+00 1/1 0/0 0/0 .text            selectAction__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::selectAction() {
    mNextAction = NULL;

    if (daNpc_GWolf_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_GWolf_c::test;
    } else {
        switch (mType) {
            case 2:
                mNextAction = &daNpc_GWolf_c::waitBrave;
                break;
                  
            case 1:
                mNextAction = &daNpc_GWolf_c::waitHowling;
                break;

            default:
                mNextAction = &daNpc_GWolf_c::wait;
                break;
        }
    }

    return TRUE;
}

/* 809F5770-809F5884 0027B0 0114+00 1/1 0/0 0/0 .text            doNormalAction__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::doNormalAction(int param_1) {
    if (param_1 != 0 && hitChk2(&mCyl, TRUE, FALSE)) {
        int damage_time;
        if (mCutType == daPy_py_c::CUT_TYPE_TURN_RIGHT) {
            damage_time = 20;
        } else {
            damage_time = daNpc_GWolf_Param_c::m.common.damage_time;
        }

        setDamage(damage_time, -1, 0);
        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = EVT_NONE;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809F5884-809F5B60 0028C4 02DC+00 1/1 0/0 0/0 .text            doEvent__13daNpc_GWolf_cFv */
BOOL daNpc_GWolf_c::doEvent() {
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != FALSE) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if (eventInfo.checkCommandTalk() || eventInfo.checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&daNpc_GWolf_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_GWolf_c::talk);
            }

            rv = TRUE;
        } else {
            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staffId != -1) {
                mStaffID = staffId;

                int evtCutNo = eventManager.getMyActIdx(staffId, mEvtCutNameList, 5, FALSE, FALSE);

                JUT_ASSERT(2087, (0 <= evtCutNo) && (evtCutNo < NUM_EVT_CUTS_e));
                JUT_ASSERT(2088, NULL != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                switch (mOrderEvtNo) {
                    case EVT_MEET_GWOLFA:
                    case EVT_MEET_GWOLFB:
                    case EVT_MEET_GWOLFC:
                    case EVT_MEET_GWOLFD:
                    case EVT_MEET_GWOLFE:
                    case EVT_MEET_GWOLFF:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        field_0xe1d = 1;
                        break;

                    case EVT_HOWLING_SESSIONA:
                    case EVT_HOWLING_SESSIONB:
                    case EVT_HOWLING_SESSIONC:
                    case EVT_HOWLING_SESSIOND:
                    case EVT_HOWLING_SESSIONE:
                    case EVT_HOWLING_SESSIONF:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        fopAcM_delete(this);
                        break;

                    default:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        break;
                }
            }
        }

        int i_expression, i_motion;
        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) && !field_0x9eb) {
            setMotion(i_motion, -1.0f, 0);
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 809F5B60-809F5B84 002BA0 0024+00 10/10 0/0 0/0 .text            setLookMode__13daNpc_GWolf_cFi */
void daNpc_GWolf_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 5 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 809F5B84-809F5E0C 002BC4 0288+00 1/1 0/0 0/0 .text            lookat__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mAnm_p->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpc_GWolf_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpc_GWolf_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpc_GWolf_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpc_GWolf_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpc_GWolf_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpc_GWolf_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpc_GWolf_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpc_GWolf_Param_c::m.common.head_angleY_max;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookatPos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookatAngle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;

        case LOOK_RESET:
            i_snap = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mLookMode != LOOK_PLAYER_TALK) {
                break;
            }

            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
            break;

        case LOOK_ACTOR:
            player = (daPy_py_c*)mActorMngrs[1].getActorP();
            break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ACTOR) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }
    
    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, lookatPos);
    mLookat.calc(this, model->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

/* 809F5E0C-809F6548 002E4C 073C+00 3/0 0/0 0/0 .text            ECut_attackWarp__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_attackWarp(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int iVar1 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int iVar2 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0: {
                setMotion(MOT_WAITSIT, -1.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 0.0f;
                cXyz sp50(0.0f, 300.0f, 400.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(mCurAngle.y);
                mDoMtx_stack_c::multVec(&sp50, &sp50);

                if (fopAcM_gc_c::gndCheck(&sp50)) {
                    sp50.y = fopAcM_gc_c::getGroundY();
                }

                player->setPlayerPosAndAngle(&sp50, cLib_targetAngleY(&sp50, &current.pos), 0);
                break;
            }

            case 10:
                setMotion(MOT_AT, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_UNARU, -1);
                break;

            case 15:
                mEventTimer = 20;
                dCam_getBody()->StartBlure(5000, this, daNpc_GWolf_Param_c::m.blur_opacity, daNpc_GWolf_Param_c::m.blur_scale);
                break;

            case 20:
                setMotion(MOT_ATTACKAST, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_ATK, -1);
                break;

            case 30: {
                mCyl.OnCoNoCrrBit();
                mCyl.OnCoNoCoHitInfSet();
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal;
                speed.y = daNpc_GWolf_Param_c::m.attack_spd_vertical;
                cXyz sp5c(player->current.pos);
                speed.y += (sp5c.y - current.pos.y) / ((sp5c - current.pos).absXZ() / speedF);
                break;
            }

            case 40:
                f32 fVar3 = 0.5f;
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal * fVar3;
                break;
        }
    }

    switch (prm) {
        case 0: {
            cXyz sp68(0.0f, 300.0f, 400.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::multVec(&sp68, &sp68);

            if (fopAcM_gc_c::gndCheck(&sp68)) {
                sp68.y = fopAcM_gc_c::getGroundY();
            }

            player->setPlayerPosAndAngle(&sp68, cLib_targetAngleY(&sp68, &current.pos), 0);
            rv = TRUE;
            break;
        }

        case 10:
            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
            rv = TRUE;
            break;

        case 15:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = TRUE;
            }
            break;

        case 20:
            if (mMotion == MOT_ATTACKAST && mMotionPhase > 0) {
                rv = TRUE;
            }
            break;

        case 30:
            if (mMotion == MOT_ATTACKAST && mMotionPhase > 0) {
                if (mAnm_p->getFrame() >= 3.0f) {
                    if (speed.y > 5.0f) {
                        mAnm_p->setPlaySpeed(0.0f);
                    } else {
                        mAnm_p->setPlaySpeed(1.0f);
                    }
                }

                f32 fVar1 = (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.warp_start_dist;
                if (fVar1 < fVar2) {
                    if (l_appearTmpFlag[mParamMode] != -1) {
                        daNpcT_onTmpBit(l_appearTmpFlag[mParamMode]);
                    }

                    dStage_changeScene(mExitId, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_WARP_FADE_GW, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    mAnm_p->setPlaySpeed(0.5f);
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                setMotion(MOT_ATTACKAED, -1.0f, 0);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F6548-809F6BFC 003588 06B4+00 3/0 0/0 0/0 .text ECut_attackWarpHorse__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_attackWarpHorse(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int iVar1 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(MOT_WAITSIT, -1.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 0.0f;
                break;

            case 10:
                setMotion(MOT_AT, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_UNARU, -1);
                break;

            case 15:
                mEventTimer = 20;
                dCam_getBody()->StartBlure(5000, this, 0.9f, 0.99f);
                break;

            case 20:
                setMotion(MOT_ATTACKAST, -1.0f, 0);
                mSound.startCreatureVoice(Z2SE_G_WLF_ATK, -1);
                break;

            case 30: {
                mCyl.OnCoNoCrrBit();
                mCyl.OnCoNoCoHitInfSet();
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal_horse;
                speed.y = daNpc_GWolf_Param_c::m.attack_spd_vertical_horse;
                cXyz sp54(player->current.pos);
                speed.y += (sp54.y - current.pos.y) / ((sp54 - current.pos).absXZ() / speedF);
                break;
            }

            case 40:
                f32 fVar3 = 0.5f;
                speedF = daNpc_GWolf_Param_c::m.attack_spd_horizontal * fVar3;
                break;
        }
    }

    switch (prm) {
        case 0: {
            cXyz sp60(0.0f, 300.0f, 400.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::multVec(&sp60, &sp60);

            if (fopAcM_gc_c::gndCheck(&sp60)) {
                sp60.y = fopAcM_gc_c::getGroundY();
            }

            s16 sVar1 = cLib_targetAngleY(&sp60, &current.pos) - 0x4000;
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp60, sVar1, 0);
            rv = TRUE;
            break;
        }

        case 10:
            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
            rv = TRUE;
            break;


        case 15:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = TRUE;
            }
            break;


        case 20:
            if (mMotion == MOT_ATTACKAST && mMotionPhase > 0) {
                rv = TRUE;
            }
            break;


        case 30:
            if (mMotion == MOT_ATTACKAST && mMotionPhase > 0) {
                if (mAnm_p->getFrame() >= 3.0f && speed.y > 5.0f) {
                    if (speed.y > 5.0f) {
                        mAnm_p->setPlaySpeed(0.0f);
                    } else {
                        mAnm_p->setPlaySpeed(1.0f);
                    }
                }

                f32 fVar1 = (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.warp_start_dist;
                if (fVar1 < fVar2) {
                    if (l_appearTmpFlag[mParamMode] != -1) {
                        daNpcT_onTmpBit(l_appearTmpFlag[mParamMode]);
                    }

                    dStage_changeScene(mExitId, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    mAnm_p->setPlaySpeed(1.0f);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_WARP_FADE_GW, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                setMotion(MOT_ATTACKAED, -1.0f, 0);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F6BFC-809F7084 003C3C 0488+00 1/0 0/0 0/0 .text            ECut_howlingSessionA__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_howlingSessionA(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    daPy_getPlayerActorClass();
    BOOL rv = FALSE;
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(MOT_HOWLC, -1.0f, 0);
                setLookMode(LOOK_NONE);
                break;

            case 10:
                break;

            case 20:
                break;
            
            case 25:
                initTalk(0xBCB, NULL);
                field_0x9eb = true;
                break;

            case 30:
                setMotion(MOT_DASHA, 3.0f, 0);
                setLookMode(LOOK_NONE);
                speedF = 12.0f;
                break;
                
            case 40:
                setMotion(MOT_JUMPAST, -1.0f, 0);
                speed.y = 22.0f;
                gravity = -2.0f;
                break;

            case 50:
                setMotion(MOT_JUMPA, -1.0f, 0);
                mEventTimer = 60;
                speedF = 20.0f;
                cXyz sp38(0.0f, 25.0f, 35.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::ZXYrotM(mCurAngle);
                mDoMtx_stack_c::scaleM(scale);
                mDoMtx_stack_c::multVec(&sp38, &sp38);
                old.pos = sp38;
                current.pos = old.pos;
                break;
        }
    }

    switch (prm) {
        case 0:
            if (mAnm == ANM_HOWLC) {
                if (mAnm_p->getFrame() >= 28.0f) {
                    mAnm_p->setLoopFrame(28.0f);
                    mBtpAnm.setLoopFrame(28.0f);
                    rv = TRUE;
                }
            }
            break;
        
        case 10:
            rv = TRUE;
            break;

        case 20:
            if (field_0xe1c == 2) {
                setMotion(MOT_WAITSIT, -1.0f, 0);
                setLookMode(LOOK_PLAYER);
                rv = TRUE;
            }
            break;
        
        case 25:
            if (talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (mAnm == ANM_DASHA) {
                if (!mAcch.ChkGroundHit()) {
                    speedF = 0.0f;
                    rv = TRUE;
                }
            }
            break;

        case 40:
            if (mAnm == ANM_JUMPAST) {
                if (mAnm_p->isStop()) {
                    speedF = 20.0f;

                    if (speed.y <= 4.0f) {
                        rv = TRUE;
                    }
                }
            }
            break;

        case 50:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                if (mParamMode != -1 && mParamMode != 0) {
                    daNpcT_onEvtBit(l_warpAppearFlag[mParamMode]);
                }

                if (swBit != 0xFF && mSaveTable != 0xFF) {
                    dComIfGs_onStageSwitch(mSaveTable, swBit);
                }

                if (mParamMode == -1 || mParamMode == 0) {
                    dStage_changeScene(0, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                    break;
                }

                static u32 l_warpIdList[6] = {
                    0, 8,9,
                    0xA, 0xB, 0xC,
                };

                dStage_changeScene(l_warpIdList[mParamMode - 1], 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
            }
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 809F7084-809F70A8 0040C4 0024+00 1/1 0/0 0/0 .text            callback_proc__FPvi */
static BOOL callback_proc(void* i_actor, int i_data) {
    static_cast<daNpc_GWolf_c*>(i_actor)->meetGWolfSkip();
    return TRUE;
}

/* 809F70A8-809F70EC 0040E8 0044+00 1/1 0/0 0/0 .text            meetGWolfSkip__13daNpc_GWolf_cFv */
void daNpc_GWolf_c::meetGWolfSkip() {
    mOrderEvtNo = EVT_NONE;
    mEventIdx = -1;
    field_0xe1d = 1;
    dComIfGp_event_reset();
}

/* 809F70EC-809F71E0 00412C 00F4+00 1/0 0/0 0/0 .text            ECut_meetGWolf__13daNpc_GWolf_cFi */
BOOL daNpc_GWolf_c::ECut_meetGWolf(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    daPy_getPlayerActorClass();
    int prm = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                setMotion(MOT_WAITSIT, -1.0f, 0);
                setLookMode(LOOK_PLAYER);
                dComIfGp_getEvent().setSkipProc(this, callback_proc, 0);
                dComIfGp_getEvent().onSkipFade();
                break;
        }
    }

    switch (prm) {
        case 0:
            return TRUE;
    }

    return TRUE;
}

/* 809F71E0-809F75C0 004220 03E0+00 1/0 0/0 0/0 .text            wait__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(MOT_WAITSIT, -1.0f, 0);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            field_0x9ea = true;
            mMode = 2;
            // fallthrough
        case 2: {
            cXyz sp30(daPy_getPlayerActorClass()->current.pos);
            cXyz sp3c(sp30);
            sp3c.y += 100.0f;

            if (fopAcM_gc_c::gndCheck(&sp3c)) {
                sp30.y = fopAcM_gc_c::getGroundY();
            }

            if (!mHide && !daPy_py_c::checkNowWolf() && fabsf(sp30.y - current.pos.y) < 200.0f) {
                f32 fVar1 = (sp30 - current.pos).absXZ();
                f32 fVar2 = daNpc_GWolf_Param_c::m.demo_start_dist;

                if (fVar1 < fVar2) {
                    if (daPy_getPlayerActorClass()->checkHorseRide()) {
                        mOrderEvtNo = EVT_ATTACK_WARP_HORSE;
                        break;
                    }

                    mOrderEvtNo = EVT_ATTACK_WARP;
                    break;
                }
            }

            if (!mIsDamaged) {
                BOOL bVar1 = mActorMngrs[0].getActorP() != NULL;
                if (chkFindPlayer2(bVar1, shape_angle.y)) {
                    if (!bVar1) {
                        mActorMngrs[0].entry(daPy_getPlayerActorClass());
                        mTurnMode = 0;
                    }
                } else if (bVar1) {
                    mActorMngrs[0].remove();
                    mTurnMode = 0;
                }

                if (mActorMngrs[0].getActorP() != NULL) {
                    setLookMode(LOOK_PLAYER);
                } else {
                    setLookMode(LOOK_NONE);
                    
                    if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                        mMode = 0;
                    }
                }

                if (home.angle.y == mCurAngle.y) {
                    bVar1 = mActorMngrs[0].getActorP() != NULL;
                    fopAc_ac_c* actor_p = getAttnActorP(bVar1, srchAttnActor1, daNpc_GWolf_Param_c::m.common.search_distance,
                                                        daNpc_GWolf_Param_c::m.common.search_height, daNpc_GWolf_Param_c::m.common.search_depth,
                                                        daNpc_GWolf_Param_c::m.common.fov, shape_angle.y, 0x78, TRUE);
                    if (actor_p != NULL) {
                        mActorMngrs[1].entry(actor_p);
                        setLookMode(LOOK_ACTOR);
                    }
                } else {
                    mAttnChangeTimer = 0;
                }
            }
            break;
        }

        case 3:
            break;
    }

    return TRUE;
}

/* 809F75C0-809F775C 004600 019C+00 1/0 0/0 0/0 .text            waitHowling__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::waitHowling(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(MOT_WAITSIT, -1.0f, 0);
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        case 2:
            if (field_0xe1d == 0) {
                u16 evtNo[6] = {EVT_MEET_GWOLFA, EVT_MEET_GWOLFB, EVT_MEET_GWOLFC, EVT_MEET_GWOLFD, EVT_MEET_GWOLFE, EVT_MEET_GWOLFF};

                if (mParamMode == -1 || mParamMode == 0) {
                    mOrderEvtNo = EVT_MEET_GWOLFA;
                } else {
                    mOrderEvtNo = evtNo[mParamMode - 1];
                }

                mOrderNewEvt = true;
            } else if (field_0xe1c == 1) {
                u16 evtNo[6] = {EVT_HOWLING_SESSIONA, EVT_HOWLING_SESSIONB, EVT_HOWLING_SESSIONC, EVT_HOWLING_SESSIOND, EVT_HOWLING_SESSIONE, EVT_HOWLING_SESSIONF};

                if (mParamMode == -1 || mParamMode == 0) {
                    mOrderEvtNo = EVT_HOWLING_SESSIONA;
                } else {
                    mOrderEvtNo = evtNo[mParamMode - 1];
                }

                changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx], l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 2, 0xFFFF);
            }
            break;

        case 3:
            break;
    }

    return TRUE;
}

/* 809F775C-809F77E4 00479C 0088+00 1/0 0/0 0/0 .text            waitBrave__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::waitBrave(void* param_1) {
    switch (mMode) {
        case 0:
            setMotion(MOT_WAITSIT, -1.0f, 0);
            setLookMode(LOOK_PLAYER);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        case 2:
            break;
    }

    return TRUE;
}

/* 809F77E4-809F797C 004824 0198+00 2/0 0/0 0/0 .text            talk__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::talk(void* param_1) {
    BOOL rv = FALSE;
    BOOL bVar1 = FALSE;

    switch (mMode) {
        case 0: {
            if (mIsDamaged) {
                break;
            }

            int msgNo = field_0xe08;
            mOrderSpeakEvt = false;
            initTalk(msgNo, NULL);
            mTurnMode = 0;
            mMode = 2;
            // fallthrough
        }
        case 2:
            if (field_0x9ea) {
                bVar1 = TRUE;
            } else {
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngrs[0].entry(daPy_getPlayerActorClass());

                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    bVar1 = TRUE;
                } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    setMotion(MOT_WAITSIT, -1.0f, 0);
                    mTurnMode = 0;
                }
            }

            if (bVar1 && talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }

            if (rv) {
                mMode = 3;

                if (!field_0x9ec) {
                    dComIfGp_event_reset();
                }

                field_0x9ec = false;
            }
            break;

        case 3:
            break;
    }

    return rv;
}

/* 809F797C-809F7A30 0049BC 00B4+00 2/0 0/0 0/0 .text            test__13daNpc_GWolf_cFPv */
BOOL daNpc_GWolf_c::test(void* param_1) {
    switch (mMode) {
        case 0:
            speedF = 0.0f;
            speed.setall(0.0f);
            mMode = 2;
            // fallthrough
        case 2:
            setMotion(daNpc_GWolf_Param_c::m.common.motion, daNpc_GWolf_Param_c::m.common.morf_frame, 0);
            setLookMode(daNpc_GWolf_Param_c::m.common.look_mode);
            mOrderEvtNo = EVT_NONE;
            attention_info.flags = 0;
            break;

        case 3:
            break;
    }

    return TRUE;
}

/* 809F7A30-809F7AB0 004A70 0080+00 1/1 0/0 0/0 .text            getGroundSlope__13daNpc_GWolf_cFR12dBgS_ObjAcchs */
s16 daNpc_GWolf_c::getGroundSlope(dBgS_ObjAcch& i_acch, s16 param_2) {
    cM3dGPla plane;
    if (dComIfG_Bgsp().GetTriPla(i_acch.m_gnd, &plane)) {
        return fopAcM_getPolygonAngle(&plane, param_2);
    }

    return 0;
}

/* 809F7AF8-809F7B18 004B38 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Create__FPv */
static int daNpc_GWolf_Create(void* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->create();
}

/* 809F7B18-809F7B38 004B58 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Delete__FPv */
static int daNpc_GWolf_Delete(void* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->Delete();
}

/* 809F7B38-809F7B58 004B78 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Execute__FPv */
static int daNpc_GWolf_Execute(void* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->Execute();
}

/* 809F7B58-809F7B78 004B98 0020+00 1/0 0/0 0/0 .text            daNpc_GWolf_Draw__FPv */
static int daNpc_GWolf_Draw(void* a_this) {
    return static_cast<daNpc_GWolf_c*>(a_this)->Draw();
}

/* 809F7B78-809F7B80 004BB8 0008+00 1/0 0/0 0/0 .text            daNpc_GWolf_IsDelete__FPv */
static int daNpc_GWolf_IsDelete(void* a_this) {
    return 1;
}

AUDIO_INSTANCES;

/* 809F8D7C-809F8D9C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_GWolf_MethodTable */
static actor_method_class daNpc_GWolf_MethodTable = {
    (process_method_func)daNpc_GWolf_Create,
    (process_method_func)daNpc_GWolf_Delete,
    (process_method_func)daNpc_GWolf_Execute,
    (process_method_func)daNpc_GWolf_IsDelete,
    (process_method_func)daNpc_GWolf_Draw,
};

/* 809F8D9C-809F8DCC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GWOLF */
extern actor_process_profile_definition g_profile_NPC_GWOLF = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_GWOLF,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_GWolf_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  336,                      // mPriority
  &daNpc_GWolf_MethodTable, // sub_method
  0x08044100,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
