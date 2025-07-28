/**
 * @file d_a_npc_shad.cpp
 * 
*/

#include "d/actor/d_a_npc_shad.h"
#include "d/actor/d_a_cstaF.h"
#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "d/d_msg_object.h"

UNK_REL_DATA

/* 80AE2640-80AE27F0 000020 01B0+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[36] = {
    {-1, 2, 0},
    {9, 0, 0},
    {8, 0, 0},
    {0xB, 0, 1},
    {7, 0, 0},
    {0xC, 2, 1},
    {0xD, 0, 1},
    {0xE, 0, 1},
    {0x11, 2, 1},
    {0x10, 2, 1},
    {0xB, 2, 0},
    {0xF, 2, 1},
    {0xA, 2, 0},
    {0x1E, 2, 1},
    {0x1D, 0, 1},
    {0x18, 0, 1},
    {0x19, 2, 1},
    {7, 2, 1},
    {6, 0, 1},
    {0x12, 0, 1},
    {0xC, 2, 0},
    {0x1F, 2, 1},
    {3, 2, 2},
    {0x15, 0, 1},
    {8, 2, 1},
    {9, 0, 1},
    {0xA, 2, 1},
    {4, 0, 2},
    {0x13, 0, 1},
    {0x14, 2, 1},
    {0x17, 2, 1},
    {3, 2, 3},
    {0x1C, 0, 1},
    {0x16, 2, 1},
    {0x1A, 0, 1},
    {0x1B, 2, 1},
};

/* 80AE27F0-80AE2874 0001D0 0084+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[11] = {
    {0x16, 2, 0},
    {0x2B, 0, 1},
    {0x17, 0, 0},
    {0x18, 0, 0},
    {0x2D, 0, 1},
    {0x2E, 0, 1},
    {0x31, 2, 1},
    {0x30, 2, 1},
    {0x2F, 2, 1},
    {0x19, 2, 0},
    {0x1A, 2, 0},
};

/* 80AE2874-80AE28B0 000254 003C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[5] = {
    {0x13, 2, 0},
    {0x25, 0, 1},
    {0x26, 2, 1},
    {0x28, 0, 1},
    {0x27, 2, 1},
};

/* 80AE28B0-80AE28BC 000290 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD0 */
static int l_loadRes_SHAD0[3] = {
    0, 2, -1,
};

/* 80AE28BC-80AE28C8 00029C 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD1 */
static int l_loadRes_SHAD1[3] = {
    0, 1, -1,
};

/* 80AE28C8-80AE28D4 0002A8 000C+00 1/0 0/0 0/0 .data            l_loadRes_SHAD2 */
static int l_loadRes_SHAD2[3] = {
    0, 3, -1,
};

/* 80AE28D4-80AE28E0 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_SHAD0,
    l_loadRes_SHAD1,
    l_loadRes_SHAD2,
};

/* 80AE28E0-80AE28F0 -00001 0010+00 6/8 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[4] = {
    "Shad",
    "Shad1",
    "Shad2",
    "Shad3",
};

/* 80AE28F0-80AE2928 -00001 0038+00 3/6 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[14] = {
    "",
    "THE_INTRODUCTION",
    "RESIST_MEETING",
    "SHAD_TO_CHANT_SPELL1",
    "SHAD_TO_CHANT_SPELL2",
    "SHAD_TO_CHANT_SPELL2_SKIP",
    "SHAD_DISCOVERY_CANNON",
    "SHAD_DISCOVERY_CANNON_SKIP",
    "SHAD_DISAPPEAR",
    "SHAD_DISAPPEAR_SKIP",
    "SHAD_CALLBACK",
    "RESIST_WIRETAP_ASH",
    "RESIST_WIRETAP_SHAD",
    "RESIST_WIRETAP_RAFREL"
};

/* 80AE2928-80AE2960 000308 0038+00 3/6 0/0 0/0 .data            l_evtArcs */
static char* l_evtArcs[14] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 80AE2960-80AE2964 -00001 0004+00 0/3 0/0 0/0 .data            l_myName */
static char* l_myName = "Shad";

/* 80AE2A00-80AE2AA8 0003E0 00A8+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcShad_c */
daNpcShad_c::EventFn daNpcShad_c::mEvtSeqList[14] = {
    NULL,
    &daNpcShad_c::EvCut_Introduction,
    &daNpcShad_c::EvCut_Meeting,
    &daNpcShad_c::EvCut_ToChantSpell1,
    &daNpcShad_c::EvCut_ToChantSpell2,
    &daNpcShad_c::EvCut_ToChantSpell2Skip,
    &daNpcShad_c::EvCut_DiscoveryCannon,
    &daNpcShad_c::EvCut_DiscoveryCannonSkip,
    &daNpcShad_c::EvCut_Disappear,
    &daNpcShad_c::EvCut_DisappearSkip,
    &daNpcShad_c::EvCut_CallBack,
    &daNpcShad_c::EvCut_WiretapEntrant,
    &daNpcShad_c::EvCut_WiretapSponsor,
    &daNpcShad_c::EvCut_WiretapEntrant,
};

/* 80AD8420-80AD8620 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpcShad_cFv */
daNpcShad_c::~daNpcShad_c() {
    for (int i = 0; l_loadRes_list[mMode][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_arcNames[l_loadRes_list[mMode][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80AE1FDC-80AE204C 000000 0070+00 19/19 0/0 0/0 .rodata          m__17daNpcShad_Param_c */
const daNpcShad_HIOParam daNpcShad_Param_c::m = {
    35.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    45.0f,
    -45.0f,
    30.0f,
    -10.0f,
    40.0f,
    -40.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
    6,
    80.0f,
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
    12.0f,
};

/* 80AD8620-80AD8B60 000500 0540+00 1/1 0/0 0/0 .text            Create__11daNpcShad_cFv */
cPhs__Step daNpcShad_c::Create() {
    fopAcM_SetupActor(this, daNpcShad_c);

    if (strcmp(dComIfGp_getStartStageName(), "R_SP116") == 0 && dComIfG_play_c::getLayerNo(0) == 4) {
        if (daNpcF_chkEvtBit(0x169) && daNpcF_chkEvtBit(0x10A) && daNpcF_chkEvtBit(0x10B) && !daNpcF_chkEvtBit(0x10C)) {
            return cPhs_ERROR_e;
        }

        if (dComIfGs_isStageSwitch(0x18, 0x4B)) {
            return cPhs_ERROR_e;
        }

        mMode = 0;
    } else {
        if (strcmp(dComIfGp_getStartStageName(), "R_SP209") == 0) {
            if (daNpcF_chkEvtBit(0x311)) {
                return cPhs_ERROR_e;
            }

            if (!daNpcF_chkEvtBit(0x10B) || (daNpcF_chkEvtBit(0x12E) && !daNpcF_chkEvtBit(0x31C))) {
                return cPhs_ERROR_e;
            }

            if (daNpcF_chkEvtBit(0x12F)) {
                if (!daNpcF_chkEvtBit(0x312)) {
                    if (getPathPoint(getPathID(), 1, &home.pos)) {
                        current.pos = home.pos;
                        old.pos = current.pos;
                    }
                } else {
                    home.pos.set(4342.7183f, -1518.5f, -3942.3232f);
                    current.pos = home.pos;
                    old.pos = current.pos;
                    setAngle(-0x2581);
                }
            }

            mMode = 1;
        } else {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                if (dComIfGs_isSaveSwitch(20)) {
                    return cPhs_ERROR_e;
                }

                fopAcM_OnStatus(this, 0x4000);
                mMode = 2;
            }
        }
    }

    bool bVar1 = false;
    if (mMode == 1 && daNpcF_chkEvtBit(0x31C)) {
        bVar1 = true;
    }

    s16 sVar1;
    if (bVar1) {
        sVar1 = 0x42;
    } else {
        sVar1 = getMessageNo();
    }

    field_0xe14 = sVar1;
    field_0xe16 = field_0xe14;

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; l_loadRes_list[mMode][i] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[l_loadRes_list[mMode][i]]);

        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        int iVar1 = 0;
        switch (mMode) {
            case 0:
                iVar1 = 0x3610;
                break;

            case 1:
                iVar1 = 0x4CA0;
                break;

            case 2:
                iVar1 = 0x44A0;
                break;

            default:
                JUT_ASSERT(423, 0);
                break;
        }

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, iVar1)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -100.0f, -50.0f, -100.0f, 100.0f, 220.0f, 100.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpcShad_Param_c::m.common.width, daNpcShad_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                    fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(daNpcShad_Param_c::m.common.weight, 0, this);

        field_0xcb0.Set(mCcDCyl);
        field_0xcb0.SetStts(&mCcStts);
        field_0xcb0.SetTgType(0);
        field_0xcb0.SetTgSPrm(0);

        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        mpMorf->modelCalc();
        reset();
        Execute();
    }

    return phase;
}

/* 80AD8B60-80AD8F24 000A40 03C4+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcShad_cFv */
int daNpcShad_c::CreateHeap() {
    J3DModelData* mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 0xF));
    JUT_ASSERT(483, 0 != mdlData_p);
    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                  &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    field_0xb48 = NULL;
    if (mMode == 1 || mMode == 2) {
        mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 0x10));
        JUT_ASSERT(518, mdlData_p != 0);
        field_0xb48 = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
        if (field_0xb48 == NULL) {
            return 0;
        }

        if (mMode == 2) {
            mdlData_p = field_0xb48->getModelData();
            mdlData_p->getMaterialNodePointer(1)->getShape()->hide();
        }
    }

    field_0xb4c = NULL;
    if (mMode == 1) {
        mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[1], 0x22));
        JUT_ASSERT(530, mdlData_p != 0);
        field_0xb4c = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
        if (field_0xb4c == NULL) {
            return 0;
        }
    }

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    switch (mMode) {
        case 0:
            setMotionAnm(0x16, 0.0f);
            break;

        case 1:
            setMotionAnm(0xD, 0.0f);
            break;

        case 2:
            setMotionAnm(0x1F, 0.0f);
            break;

        default:
            JUT_ASSERT(545, 0);
            break;
    }

    return 1;
}

/* 80AD90E0-80AD9114 000FC0 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcShad_cFv */
int daNpcShad_c::Delete() {
    this->~daNpcShad_c();
    return 1;
}

/* 80AD9114-80AD9138 000FF4 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcShad_cFv */
int daNpcShad_c::Execute() {
    execute();
    return 1;
}

/* 80AD9138-80AD9280 001018 0148+00 1/1 0/0 0/0 .text             Draw__11daNpcShad_cFv */
int daNpcShad_c::Draw() {
    if (field_0xe1e == 0) {
        return 1;
    }

    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, daNpcShad_Param_c::m.common.real_shadow_size, NULL, FALSE);

    if (field_0xb48 != NULL) {
        g_env_light.setLightTevColorType_MAJI(field_0xb48, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0xF));
        field_0xb48->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(field_0xb48);
    }

    if (field_0xb4c != NULL && (mMotion == 0xB || mMotion == 0xC)) {
        g_env_light.setLightTevColorType_MAJI(field_0xb4c, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x15));
        field_0xb4c->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(field_0xb4c);
    }

    return 1;
}

/* 80AD9280-80AD944C 001160 01CC+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpcShad_cFP8J3DJointP8J3DModel                */
int daNpcShad_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int iVar1[3] = {1, 4, 5};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(5));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 4:
        case 5:
            setLookatMtx(jntNo, iVar1, daNpcShad_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 5 || jntNo == 9) && (mAnmFlags & 0x100) != 0) {
        J3DAnmTransform* anmTransform = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anmTransform);
    }

    return 1;
}

/* 80AD944C-80AD946C 00132C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpcShad_cFP10fopAc_ac_c              */
int daNpcShad_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcShad_c* i_this = (daNpcShad_c*)a_this;
    return i_this->CreateHeap();
}

/* 80AD946C-80AD94B8 00134C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpcShad_cFP8J3DJointi */
int daNpcShad_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcShad_c* i_this = (daNpcShad_c*)model->getUserArea();
        
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80AD94B8-80AD974C 001398 0294+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcShad_cFib */
bool daNpcShad_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* anmTransform;
    mAnmFlags &= 0xFFFFE03F;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anmTransform = (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    } else {
        anmTransform = NULL;
    }

    int i_attr = l_bckGetParamList[i_idx].attr;
    bool bVar1 = false;

    switch (i_idx) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(0);
            break;

        case 2:
            bVar1 = setExpressionBtp(3);
            break;

        case 3:
            bVar1 = setExpressionBtp(1);
            break;

        case 4:
            bVar1 = setExpressionBtp(2);
            break;

        case 5:
            bVar1 = setExpressionBtp(0);
            break;

        case 6:
            bVar1 = setExpressionBtp(4);
            break;

        case 7:
            bVar1 = setExpressionBtp(5);
            break;

        case 8:
            bVar1 = setExpressionBtp(6);
            break;

        case 9:
            bVar1 = setExpressionBtp(7);
            break;

        case 10:
            bVar1 = setExpressionBtp(10);
            break;

        case 11:
            bVar1 = setExpressionBtp(8);
            break;

        case 12:
            bVar1 = setExpressionBtp(9);
            break;

        default:
            anmTransform = NULL;
    }

    if (!bVar1) {
        return false;
    }

    if (anmTransform == NULL) {
        return true;
    }

    if (setBckAnm(anmTransform, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= 0x140;
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_shad.cpp"); // %s: Failed to register expression Bck animation!
    return false;
}

/* 80AD974C-80AD982C 00162C 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcShad_cFi */
bool daNpcShad_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anmTexPattern = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_idx].arcIdx], l_btpGetParamList[i_idx].fileIdx);
    int i_attr = l_btpGetParamList[i_idx].attr;

    mAnmFlags &= 0xFFFFF57F;

    if (anmTexPattern == NULL) {
        return true;
    }

    if (setBtpAnm(anmTexPattern, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= 0x280;

        if (i_idx == 0) {
            mAnmFlags |= 0x800;
        }
            
        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_shad.cpp"); // %s: Failed to register expression Btp animation!
    return false;
}

/* 80AD982C-80AD99B4 00170C 0188+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcShad_cFif */
void daNpcShad_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* anmTransformKey = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    int i_attr = l_bckGetParamList[i_idx].attr;

    mAnmFlags &= 0xFFFFFFC0;

    if (anmTransformKey != NULL && setMcaMorfAnm(anmTransformKey, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= 9;
        mMotionLoops = 0;
    }

    int iVar1 = 0;
    switch (i_idx) {
        case 0x19:
            iVar1 = 1;
            break;

        case 0x1A:
            iVar1 = 2;
            break;

        case 0x20:
            iVar1 = 3;
            break;

        case 0x21:
            iVar1 = 4;
            break;
    }

    J3DAnmTextureSRTKey* anmTextureSRTKey = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[iVar1].arcIdx], l_btkGetParamList[iVar1].fileIdx);
    i_attr = l_btkGetParamList[iVar1].attr;

    if (anmTextureSRTKey != NULL) {
        if (setBtkAnm(anmTextureSRTKey, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
            mAnmFlags |= 0x12;
        }
    }
}

/* 80AD99B4-80AD9C0C 001894 0258+00 1/1 0/0 0/0 .text            reset__11daNpcShad_cFv */
void daNpcShad_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 5; i++) {
        mActorMngr[i].initialize();
    }

    field_0xe0c = 0;
    field_0xe10 = 0;
    mActionFn = NULL;
    field_0xe18 = -1;
    field_0xe1a = 0;
    field_0xe1e = 1;
    field_0xe1f = 0;

    if (isSneaking()) {
        attention_info.distances[0] = 78;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = 77;
        attention_info.flags |= 0x800000;
    } else if (mMode == 0) {
        attention_info.distances[0] = getDistTableIdx(3, 3);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(2, 3);
    } else {
        attention_info.distances[0] = getDistTableIdx(daNpcShad_Param_c::m.common.attention_distance, daNpcShad_Param_c::m.common.attention_angle);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(daNpcShad_Param_c::m.common.talk_distance, daNpcShad_Param_c::m.common.talk_angle);
    }

    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;

    if (isSneaking()) {
        fopAcM_OnStatus(this, 0x4000);
    }

    setWaitAction();
}

/* 80AD9C0C-80AD9E04 001AEC 01F8+00 1/1 0/0 0/0 .text            setWaitAction__11daNpcShad_cFv */
inline void daNpcShad_c::setWaitAction() {
    switch (mMode) {
        case 0:
            setAction(&daNpcShad_c::wait_type0);
            break;

        case 1:
            setAction(&daNpcShad_c::wait_type1);
            break;

        case 2:
            setAction(&daNpcShad_c::wait_type2);
            break;

        default:
            JUT_ASSERT(1379, 0);
    }
}

/* 80AD9E04-80AD9E90 001CE4 008C+00 1/1 0/0 0/0 .text getPathPoint__11daNpcShad_cFUciP3Vec */
inline bool daNpcShad_c::getPathPoint(u8 i_pathIndex, int i_pntIndex, Vec* param_3) {
    dPath* path = dPath_GetRoomPath(i_pathIndex, fopAcM_GetRoomNo(this));
    if (path == NULL) {
        return false;
    }

    dPnt* pnt = dPath_GetPnt(path, i_pntIndex);
    if (pnt == NULL) {
        return false;
    }

    *param_3 = pnt->m_position;
    return true;
}

/* 80AD9E90-80AD9F00 001D70 0070+00 1/1 0/0 0/0 .text            isSneaking__11daNpcShad_cFv */
inline bool daNpcShad_c::isSneaking() {
    if (strcmp(dComIfGp_getStartStageName(), "R_SP116") == 0 && dComIfGp_getStartStageRoomNo() == 5 && dComIfG_play_c::getLayerNo(0) == 2) {
        return true;
    }

    return false;
}

/* 80AE0B58-80AE0ED0 008A38 0378+00 1/1 0/0 0/0 .text            playExpression__11daNpcShad_cFv */
void daNpcShad_c::playExpression() {
    daNpcF_anmPlayData dat0 = {0x1, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {0x2, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2a = {0x3, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat2b = {0xB, 0.0f, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {0x4, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0xC, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x6, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {0x7, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {0x8, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {0x9, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {0xA, 0.0f, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {0xB, 0.0f, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {0xC, 0.0f, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11 = {0x5, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12 = {0x0, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};
    daNpcF_anmPlayData** ppDat[13] = {
        pDat0, pDat1, pDat2, pDat3, pDat4,
        pDat5, pDat6, pDat7, pDat8, pDat9,
        pDat10, pDat11, pDat12,
    };

    if (mExpression >= 0 && mExpression < 0xD) {
        playExpressionAnm(ppDat);
    } 
}

/* 80AE04D8-80AE0B58 0083B8 0680+00 1/1 0/0 0/0 .text            playMotion__11daNpcShad_cFv */
void daNpcShad_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0xD, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {0x12, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0x11, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {0x11, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {0x13, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0xD, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x16, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5a = {0x17, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {0xD, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6a = {0x19, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {0x1A, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7 = {0x1A, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8a = {0xE, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8b = {0xD, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8a, &dat8b};
    daNpcF_anmPlayData dat9a = {0x1B, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat9b = {0x16, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[2] = {&dat9a, &dat9b};
    daNpcF_anmPlayData dat10a = {0x1C, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10b = {0x1D, 0.0f, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10a, &dat10b};
    daNpcF_anmPlayData dat11a = {0x20, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11b = {0x21, 0.0f, 0};
    daNpcF_anmPlayData* pDat11[2] = {&dat11a, &dat11b};
    daNpcF_anmPlayData dat12 = {0x21, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};
    daNpcF_anmPlayData dat13 = {0x1D, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat13[1] = {&dat13};
    daNpcF_anmPlayData dat14a = {0x22, daNpcShad_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat14b = {0x23, 0.0f, 0};
    daNpcF_anmPlayData* pDat14[2] = {&dat14a, &dat14b};
    daNpcF_anmPlayData dat15 = {0x23, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat15[1] = {&dat15};
    daNpcF_anmPlayData dat16 = {0x1F, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat16[1] = {&dat16};
    daNpcF_anmPlayData dat17 = {0x1E, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat17[1] = {&dat17};
    daNpcF_anmPlayData dat18 = {0x18, daNpcShad_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat18[1] = {&dat18};
    daNpcF_anmPlayData dat19 = {0x14, 4.0f, 0};
    daNpcF_anmPlayData* pDat19[1] = {&dat19};
    daNpcF_anmPlayData dat20 = {0x15, 4.0f, 0};
    daNpcF_anmPlayData* pDat20[1] = {&dat20};
    daNpcF_anmPlayData dat21 = {0xF, 4.0f, 0};
    daNpcF_anmPlayData* pDat21[1] = {&dat21};
    daNpcF_anmPlayData dat22 = {0x10, 0.0f, 0};
    daNpcF_anmPlayData* pDat22[1] = {&dat22};
    daNpcF_anmPlayData** ppDat[23] = {
        pDat0, pDat1, pDat2, pDat3, pDat4,
        pDat5, pDat6, pDat7, pDat8, pDat9,
        pDat10, pDat11, pDat12, pDat13, pDat14,
        pDat15, pDat16, pDat17, pDat18, pDat19,
        pDat20, pDat21, pDat22,
    };

    if (mMotion >= 0 && mMotion < 23) {
        playMotionAnm(ppDat);
    }
}

inline csXyz* daNpcShad_c::unk_inline() {
    csXyz* local_fc[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    return *local_fc;
}

inline BOOL daNpcShad_c::chkFindPlayer() {
    f32 fVar1;
    if (mMode == 0) {
        fVar1 = 135.0f;
    } else {
        fVar1 = daNpcShad_Param_c::m.common.fov;
    }

    if (!chkActorInSight(daPy_getPlayerActorClass(), fVar1)) {
        mActorMngr[0].remove();
        return FALSE;
    }

    BOOL rv;
    if (mActorMngr[0].getActorP() == NULL) {
        rv = chkPlayerInSpeakArea(this);
    } else {
        rv = chkPlayerInTalkArea(this);
    }

    if (rv) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return rv;
}

inline void daNpcShad_c::setLookMode(int param_1, fopAc_ac_c* param_2, cXyz* param_3) {
    switch (param_1) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            if (field_0xe18 != param_1 || (daPy_py_c*)param_2 != field_0xca8) {
                field_0xe18 = param_1;
                field_0xca8 = (daPy_py_c*)param_2;
            }
            break;

        case 5:
            field_0xe18 = param_1;
            field_0xca8 = NULL;

            if (param_3 != NULL) {
                mLookPos.set(*param_3);
            }
            break;
    }
}

inline BOOL daNpcShad_c::step(s16 param_1, int param_2, f32 param_3) {
    if (mTurnMode == 0) {
        if (param_2 != -1) {
            if ((int)fabsf(cM_sht2d((s16)(param_1 - mCurAngle.y))) > 40) {
                setExpression(12, -1.0f);
                setMotion(param_2, -1.0f, 0);
            }
        }

        mTurnTargetAngle = param_1;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, param_3, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }

    return mTurnMode > 1;
}

/* 80AD9F00-80ADA630 001DE0 0730+00 1/0 0/0 0/0 .text            wait_type0__11daNpcShad_cFPv */
bool daNpcShad_c::wait_type0(void* param_1) {
    // NONMATCHING
    switch (field_0xe1a) {
        case 0:
            setExpression(12, -1.0f);
            setMotion(4, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe1a = 2;
            break;

        case 2:
            if (isSneaking()) {
                setLookMode(0, NULL, NULL);
            } else {
                if (mActorMngr[0].getActorP() != NULL) {
                    if (!chkFindPlayer()) {
                        mTurnMode = 0;
                    }
                } else {
                    if (chkFindPlayer()) {
                        mTurnMode = 0;
                    }
                }

                if (mActorMngr[0].getActorP() != NULL) {
                    setLookMode(2, NULL, NULL);
                } else {
                    setLookMode(0, NULL, NULL);

                    if (home.angle.y != mCurAngle.y && step(home.angle.y, 21, 15.0f)) {
                        setExpression(12, -1.0f);
                        setMotion(4, -1.0f, 0);
                        mTurnMode = 0;
                    }
                }
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        if (isSneaking()) {
                            mOrderEvtNo = 12;
                            changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                        } else {
                            setAction(&daNpcShad_c::talk);
                        }
                    }
                } else {
                    if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                        setAction(&daNpcShad_c::demo);
                    }
                }
            } else {
                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_evtArcs[mOrderEvtNo]);
                }

                char* event;
                if (mOrderEvtNo != 0) {
                    event = l_evtNames[mOrderEvtNo];
                } else {
                    event = NULL;
                }
                orderEvent(mOrderSpeakEvt, event, 0xFFFF, 40, 0xFF, 1);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1747, 0);
    }

    return true;
}

/* 80ADA630-80ADA674 002510 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcShad_cFifi */
void daNpcShad_c::setMotion(int i_motion, f32 i_motionMorfOverride, int param_3) {
    s16 sVar1 = i_motion;
    if ((param_3 != 0 || mMotion != sVar1) && i_motion >= 0 && i_motion < 0x17) {
        mMotion = sVar1;
        mMotionMorfOverride = i_motionMorfOverride;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80ADA674-80ADA6A0 002554 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcShad_cFif */
void daNpcShad_c::setExpression(int i_expression, f32 i_expressionMorfOverride) {
    if (i_expression >= 0 && i_expression < 0xD) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_expressionMorfOverride;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80ADA6A0-80ADB428 002580 0D88+00 1/0 0/0 0/0 .text            wait_type1__11daNpcShad_cFPv */
bool daNpcShad_c::wait_type1(void* param_1) {
    // NONMATCHING
    switch (field_0xe1a) {
        case 0:
            if (daNpcF_chkEvtBit(0x12F) && !daNpcF_chkEvtBit(0x312)) {
                setExpression(10, -1.0f);
                setMotion(7, -1.0f, 0);
            } else {
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
            }

            mActorMngr[0].remove();
            setLookMode(0, NULL, NULL);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe1c = fopAcM_searchPlayerAngleY(this);
            field_0xe1a = 2;
            break;

        case 2:
            if (daNpcF_chkEvtBit(0x312)) {
                setLookMode(2, NULL, NULL);

                if (mCurAngle.y == field_0xe1c) {
                    if (fopAcM_seenPlayerAngleY(this) > cM_deg2s(daNpcShad_Param_c::m.common.body_angleY_max + daNpcShad_Param_c::m.common.head_angleY_max)) {
                        field_0xe1c = fopAcM_searchPlayerAngleY(this);
                    }
                } else if (step(field_0xe1c, 22, 30.0f)) {
                    setExpression(12, -1.0f);
                    setMotion(0, -1.0f, 0);
                    mTurnMode = 0;
                }

                if (fopAcM_GetPosition_p(daPy_getPlayerActorClass())->x <= 3750.0f) {
                    mOrderEvtNo = 10;
                }
            } else if (daNpcF_chkEvtBit(0x12F)) {
                daTag_EvtArea_c* tag = (daTag_EvtArea_c*)mActorMngr[4].getActorP();
                if (tag != NULL) {
                    if (tag->chkPointInArea(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()))) {
                        field_0xe14 = 67;
                        daNpcF_offTmpBit(0xB);
                        daNpcF_offTmpBit(0xC);
                        daNpcF_offTmpBit(0xD);
                        mOrderEvtNo = 6;
                        fopAcM_delete(tag);
                    }
                }
            } else if (field_0xe1f != 0) {
                setLookMode(2, NULL, NULL);

                if (mCurAngle.y == field_0xe1c) {
                    if (fopAcM_seenPlayerAngleY(this) > cM_deg2s(daNpcShad_Param_c::m.common.body_angleY_max + daNpcShad_Param_c::m.common.head_angleY_max)) {
                        field_0xe1c = fopAcM_searchPlayerAngleY(this);
                    }
                } else if (step(field_0xe1c, 22, 30.0f)) {
                    setExpression(12, -1.0f);
                    setMotion(0, -1.0f, 0);
                    mTurnMode = 0;
                }

                if (fopAcM_searchPlayerDistanceXZ(this) > 400.0f) {
                    field_0xe1f = 0;
                }
            } else {
                if (mActorMngr[0].getActorP() != NULL) {
                    if (!chkFindPlayer()) {
                        mTurnMode = 0;
                    }
                } else if (chkFindPlayer()) {
                    mTurnMode = 0;
                }

                if (mActorMngr[0].getActorP() != NULL) {
                    setLookMode(2, NULL, NULL);
                } else {
                    setLookMode(0, NULL, NULL);
                    if (home.angle.y != mCurAngle.y && step(home.angle.y, 21, 15.0f)) {
                        setExpression(12, -1.0f);
                        setMotion(0, -1.0f, 0);
                        mTurnMode = 0;
                    }
                }
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (dComIfGp_event_chkTalkXY()) {
                        if (!dComIfGp_evmng_ChkPresentEnd()) {
                            return true;
                        }

                        u8 sVar1 = dComIfGp_event_getPreItemNo();
                        if (sVar1 == 0xE9) {
                            field_0xe14 = 64;
                            daNpcF_offTmpBit(0xB);
                            daNpcF_offTmpBit(0xC);
                            daNpcF_offTmpBit(0xD);
                            daNpcF_offTmpBit(0xE);
                            mOrderEvtNo = 3;
                            changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                        } else if (sVar1 == 0xEB) {
                            field_0xe14 = 65;
                            daNpcF_offTmpBit(0xB);
                            daNpcF_offTmpBit(0xC);
                            daNpcF_offTmpBit(0xD);
                            mOrderEvtNo = 4;
                            changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                        } else {
                            s16 eventIdx = dComIfGp_getEventManager().getEventIdx(this, "NO_RESPONSE", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, eventIdx, 1, 0xFFFF);
                        }
                    } else if (daNpcF_chkEvtBit(0x313)) {
                        field_0xe14 = 68;
                        daNpcF_offTmpBit(0xB);
                        mOrderEvtNo = 8;
                        changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                    } else {
                        setAction(&daNpcShad_c::talk);
                    }
                } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    setAction(&daNpcShad_c::demo);
                }
            } else {
                if (!daNpcF_chkEvtBit(0x12F)) {
                    eventInfo.onCondition(0x20);
                }

                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_evtArcs[mOrderEvtNo]);
                }

                char* event;
                if (mOrderEvtNo != 0) {
                    event = l_evtArcs[mOrderEvtNo];
                } else {
                    event = NULL;
                }
                orderEvent(mOrderSpeakEvt, event, 0xFFFF, 40, 0xFF, 1);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1915, 0);
    }

    return true;
}

/* 80ADB428-80ADB628 003308 0200+00 1/0 0/0 0/0 .text            wait_type2__11daNpcShad_cFPv */
bool daNpcShad_c::wait_type2(void* param_1) {
    // NONMATCHING
    switch (field_0xe1a) {
        case 0:
            setExpression(8, -1.0f);
            setMotion(0x10, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setLookMode(0, NULL, NULL);
            field_0xe1a = 2;
            break;

        case 2:
            switch (field_0xe10) {
                case 0:
                    if (daNpcF_chkTmpBit(0x76)) {
                        current.pos.set(-4532.0845f, 0.0f, 8555.381f);
                        old.pos = current.pos;
                        setAngle(-0x6000);
                        field_0xe10++;
                    }
                    break;

                case 1:
                    if (daNpcF_chkTmpBit(0x74)) {
                        setAction(&daNpcShad_c::leave);
                    }
                    break;

                default:
                    JUT_ASSERT(1957, 0);
                    break;
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1962, 0);
            break;
    }

    return true;
}

inline void daNpcShad_c::setExpressionTalkAfter() {
    switch (mExpression) {
        case 1:
            setExpression(8, -1.0f);
            break;

        case 2:
            setExpression(9, -1.0f);
            break;

        case 3:
            setExpression(10, -1.0f);
            break;

        case 4:
            setExpression(7, -1.0f);
            break;

        default:
            setExpression(12, -1.0f);
    }
}

/* 80ADB628-80ADBEA8 003508 0880+00 2/0 0/0 0/0 .text            talk__11daNpcShad_cFPv */
bool daNpcShad_c::talk(void* param_1) {
    // NONMATCHING
    int itemNo, iVar1, iVar2, iVar3;
    u16 eventID;
    s16 eventIdx;
    bool rv = false;

    switch (field_0xe1a) {
        case 0:
            initTalk(field_0xe14, NULL);
            mTurnMode = 0;
            mMsgTimer = 0;
            speedF = 0.0f;
            setLookMode(3, NULL, NULL);
            field_0xe1a = 2;
            break;

        case 2:
            if (strcmp(dComIfGp_getStartStageName(), "R_SP116") == 0 || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, TRUE, NULL)) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    itemNo = NULL;
                    eventID = mFlow.getEventId(&itemNo);
                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventID, itemNo); // At the end of the conversation, Event ID=%d Item No=%d

                    if (eventID == 1) {
                        mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);

                        if (mItemPartnerId != fpcM_ERROR_PROCESS_ID_e) {
                            eventIdx = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, eventIdx, 1, 0xFFFF);
                            field_0x9ec = true;
                            setWaitAction();
                        }
                    } else {
                        setWaitAction();
                    }

                    rv = true;
                } else {
                    iVar3 = mMsgTimer;
                    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE)) {
                        setExpression(iVar1, -1.0f);
                        setMotion(iVar2, -1.0f, 0);
                    } else if (iVar3 != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case 3:
            field_0xe1f = 1;
            field_0xe14 = field_0xe16;
            setExpression(12, -1.0f);

            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(2042, 0);
            break;
    }
    
    return rv;
}

/* 80ADBEA8-80ADC3DC 003D88 0534+00 2/0 0/0 0/0 .text            demo__11daNpcShad_cFPv */
bool daNpcShad_c::demo(void* param_1) {
    // NONMATCHING
    int iVar1, iVar2;
    dEvent_manager_c* eventManager;

    switch (field_0xe1a) {
        case 0:
            setExpression(12, -1.0f);
            setMotion(0, -1.0f, 0);
            field_0xe1a = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
                eventManager = &dComIfGp_getEventManager();
                iVar1 = eventManager->getMyStaffId(l_myName, NULL, 0);
                if (iVar1 != -1) {
                    mStaffID = iVar1;
                    iVar2 = eventManager->getMyActIdx(iVar1, l_evtNames, 14, 0, 0);

                    if (iVar2 > 0 && iVar2 < 14) {
                        mOrderEvtNo = iVar2;
                    }

                    JUT_ASSERT(2082, 0 != mEvtSeqList[mOrderEvtNo]);

                    if ((this->*mEvtSeqList[mOrderEvtNo])(iVar1)) {
                        eventManager->cutEnd(iVar1);
                    }
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager->endCheck(mEventIdx)) {
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    setWaitAction();
                }
            } else {
                mOrderEvtNo = 0;
                mEventIdx = -1;
                setWaitAction();
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2114, 0);
            break;
    }

    return true;
}

/* 80ADC3DC-80ADC700 0042BC 0324+00 1/0 0/0 0/0 .text            leave__11daNpcShad_cFPv */
bool daNpcShad_c::leave(void* param_1) {
    // NONMATCHING
    cXyz sp28(-6253.387f, 0.0f, 6251.7603f);

    switch (field_0xe1a) {
        case 0:
            setExpression(12, -1.0f);
            setMotion(0x13, -1.0f, 0);
            mTurnMode = 0;
            speedF = daNpcShad_Param_c::m.traveling_speed;
            field_0xe1a = 2;
            break;

        case 2:
            step(cLib_targetAngleY(&current.pos, &sp28), 21, 15.0f);

            if (mAcch.ChkWallHit() || current.pos.abs(sp28) < speedF) {
                fopAcM_delete(this);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(2149, 0);
            break;
    }

    return true;
}

/* 80ADC700-80ADC800 0045E0 0100+00 1/0 0/0 0/0 .text            EvCut_Introduction__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_Introduction(int i_cutIndex) {
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 == NULL) {
        return FALSE;
    }

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*piVar1) {
            case 0:
            case 2:
                setLookMode(0, NULL, NULL);
                return TRUE;

            case 1:
                setLookMode(2, NULL, NULL);
                return TRUE;

            default:
                JUT_ASSERT(2184, 0);
                break;
        }
    }

    return FALSE;
}

/* 80ADC800-80ADCAD8 0046E0 02D8+00 1/0 0/0 0/0 .text            EvCut_Meeting__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_Meeting(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 == NULL) {
        return FALSE;
    }

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*piVar1) {
            case 0:
                setExpression(12, -1.0f);
                setMotion(4, -1.0f, 0);
                break;

            case 1:
                setLookMode(2, NULL, NULL);
                break;

            default:
                JUT_ASSERT(2221, 0);
                break;
        }
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;

    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE)) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else {
        if (iVar3 != 0 && mMsgTimer == 0) {
            setExpressionTalkAfter();
        }
    }

    fopAc_ac_c* actor;
    switch (*piVar1) {
        case 0:
            actor = dComIfGp_event_getTalkPartner();
            if (actor == this) {
                actor = NULL;
            }

            setLookMode(4, actor, NULL);
            return TRUE;

        case 1:
            return TRUE;

        default:
            JUT_ASSERT(2245, 0);
            break;
    }

    return FALSE;
}

/* 80ADCAD8-80ADD720 0049B8 0C48+00 1/0 0/0 0/0 .text EvCut_ToChantSpell1__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_ToChantSpell1(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
            case '0002':
                setLookMode(0, NULL, NULL);
                initTalk(field_0xe14, NULL);
                break;

            case '0005':
                initTalk(field_0xe14, NULL);
                setExpression(10, -1.0f);
                setMotion(7, -1.0f, 0);
                break;

            case '0006':
                mTurnMode = 0;
                setMotion(0x14, -1.0f, 0);
                break;

            case '0007':
                current.pos = home.pos;
                old.pos = current.pos;
                speedF = 0.0f;
                setMotion(0, -1.0f, 0);
                field_0xe1e = 0;
                break;

            case '0008':
                initTalk(field_0xe14, NULL);
                Z2GetAudioMgr()->subBgmStart(Z2BGM_ITEM_GET);
                break;

            case '0009':
                setAngle(home.angle.y - 0x2000);
                // fallthrough
            case '0010':
                initTalk(field_0xe14, NULL);
                break;

            default:
                JUT_ASSERT(2298, 0);
                break;
        }

    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;

    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE)) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    cXyz sp30;
    switch (*cutName) {
        case '0001':
            if (!step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                break;
            }

            setExpression(12, -1.0f);
            setMotion(0, -1.0f, 0);
            mTurnMode = 0;
            return TRUE;

        case '0002':
        case '0005':
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, TRUE, NULL)) {
                    return TRUE;
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case '0006':
            sp30.set(-429.52515f, -770.0f, -2582.8027f);
            step(cLib_targetAngleY(fopAcM_GetPosition_p(this), &sp30), -1, 60.0f);
            speedF = 4.7f;
            return TRUE;

        case '0007':
            Z2GetAudioMgr()->seStartLevel(Z2SE_AL_COPYROD_COMEBACK, fopAcM_GetPosition_p(daPy_getPlayerActorClass()), 0,
                                            0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            return TRUE;

        case '0008':
            Z2GetAudioMgr()->seStartLevel(Z2SE_AL_COPYROD_COMEBACK, fopAcM_GetPosition_p(daPy_getPlayerActorClass()), 0,
                                            0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

            if (talkProc(NULL, TRUE, NULL)) {
                fopAcM_delete(this);
                return TRUE;
            }
            break;

        case '0009':
            if (home.angle.y == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    if (mMotion != 0x12) {
                        Z2GetAudioMgr()->muteSceneBgm(190, 0.0f);
                    }

                    mSound.startCreatureVoiceLevel(Z2SE_SHAD_V_INCANTATION, -1);
                    setExpression(11, -1.0f);
                    setMotion(0x12, -1.0f, 0);
                    return TRUE;
                }
            } else if (step(home.angle.y, 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case '0010':
            if (talkProc(NULL, TRUE, NULL)) {
                Z2GetAudioMgr()->unMuteSceneBgm(70);
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                setAngle(fopAcM_searchPlayerAngleY(this));
                return TRUE;
            }
            break;

        default:
            JUT_ASSERT(2382, 0);
            break;
    }

    return FALSE;
}

/* 80ADD720-80ADE47C 005600 0D5C+00 1/0 0/0 0/0 .text EvCut_ToChantSpell2__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_ToChantSpell2(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = dComIfGp_getPEvtManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    fopAc_ac_c* actor;
    daCstaF_c* statue;

    if (eventManager->getIsAddvance(i_cutIndex) != 0) {
        switch (*cutName) {
            case '0002':
                dComIfGs_setItem(SLOT_22, 0xFF);
                mTurnMode = 0;

                actor = NULL;
                fopAcM_SearchByName(PROC_CSTAF, (fopAc_ac_c**)&actor);
                if (actor != NULL) {
                    fopAcM_OnStatus(actor, fopAcM_STATUS_UNK_000800);
                }

                dComIfGp_getEvent().startCheckSkipEdge(this);
                dComIfGp_getEvent().onSkipFade();
                // fallthrough
            case '0003':
                setLookMode(0, NULL, NULL);
                // falllthrough
            case '0005':
                initTalk(field_0xe14, NULL);
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                break;

            case '0006':
                Z2GetAudioMgr()->unMuteSceneBgm(70);
                initTalk(field_0xe14, NULL);
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                break;

            case '0007':
                mTurnMode = 0;
                setMotion(0x11, 15.0f, 0);
                break;

            case '0008':
                if (getPathPoint(getPathID(), 1, &home.pos)) {
                    current.pos = home.pos;
                    old.pos = current.pos;
                    speedF = 0.0f;
                    field_0xe14 = 0x42;
                    setExpression(10, -1.0f);
                    setMotion(7, -1.0f, 0);
                }
                break;

            case '0009':
                setAngle(home.angle.y - 0x2000);
                initTalk(field_0xe14, NULL);
                break;

            case '0010':
                statue = NULL;
                fopAcM_SearchByName(PROC_CSTAF, (fopAc_ac_c**)&statue);
                if (statue != NULL) {
                    statue->onCoverVanishFlg();
                }
                break;

            default:
                JUT_ASSERT(2451, 0);
                break;
        }
    }

    if (dComIfGp_getEvent().checkSkipEdge()) {
        Z2GetAudioMgr()->unMuteSceneBgm(70);
        daNpcF_clearMessageTmpBit();
        daNpcF_onEvtBit(0x12F);
        field_0xe14 = 0x42;
        mOrderEvtNo = 5;
        dMsgObject_onKillMessageFlag();
        changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;

    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    cXyz sp30;
    switch (*cutName) {
        case '0002':
            if (step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
                return TRUE;
            }
            break;

        case '0003':
            if (fopAcM_searchPlayerAngleY(this) == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    return TRUE;
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case '0005':
        case '0006':
            if (talkProc(NULL, TRUE, NULL)) {
                return TRUE;
            }
            break;

        case '0007':
            if (getPathPoint(getPathID(), 1, &sp30)) {
                step(cLib_targetAngleY(fopAcM_GetPosition_p(this), &sp30), -1, 60.0f);
                speedF = 3.0f;
            }
            return TRUE;

        case '0008':
            return TRUE;

        case '0009':
            if (home.angle.y == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    if (mMotion != 0x12) {
                        Z2GetAudioMgr()->muteSceneBgm(190, 0.0f);
                    }

                    mSound.startCreatureVoiceLevel(Z2SE_SHAD_V_INCANTATION_L, -1);
                    setExpression(11, -1.0f);
                    setMotion(0x12, -1.0f, 0);
                    return TRUE;
                }
            } else if (step(home.angle.y, 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }

            break;

        case '0010':
            return TRUE;
            
        default:
            JUT_ASSERT(2540, 0);
            break;
    }

    return FALSE;
}

/* 80ADE47C-80ADE5F8 00635C 017C+00 1/0 0/0 0/0 .text EvCut_ToChantSpell2Skip__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_ToChantSpell2Skip(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                return TRUE;

            case '0002':
                if (getPathPoint(getPathID(), 1, &home.pos)) {
                    current.pos = home.pos;
                    old.pos = current.pos;
                    speedF = 0.0f;
                    setExpression(10, -1.0f);
                    setMotion(7, -1.0f, 0);
                }
                return TRUE;

            default:
                JUT_ASSERT(2574, 0);
                break;
        }
    }

    return FALSE;
}

inline void daNpcShad_c::setLookObliquenessUp() {
    cXyz sp18(0.0f, 100.0f, 100.0f);
    mDoMtx_stack_c::transS(mLookatPos[2]);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&sp18, &sp18);
    setLookMode(5, NULL, &sp18);
}

/* 80ADE5F8-80ADED68 0064D8 0770+00 3/0 0/0 0/0 .text EvCut_DiscoveryCannon__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_DiscoveryCannon(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    cXyz* pcVar1;
    int* piVar1;

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                dComIfGp_getEvent().startCheckSkipEdge(this);
                Z2GetAudioMgr()->bgmStreamPrepare(0x200007C);
                Z2GetAudioMgr()->bgmStreamPlay();
                setExpression(12, 0.0f);
                setMotion(0, 0.0f, 0);
                setLookMode(2, NULL, NULL);
                break;

            case '0003':
                pcVar1 = dComIfGp_evmng_getMyXyzP(i_cutIndex, "POS");
                piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "ANGLE");

                if (pcVar1 != NULL) {
                    current.pos = *pcVar1;
                    old.pos = current.pos;
                }

                if (piVar1 != NULL) {
                    setAngle(*piVar1);
                }

                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
                speedF = 0.0f;
                break;

            case '0005':
            case '0008':
                mTurnMode = 0;
                setExpression(6, -1.0f);
                setMotion(0x14, -1.0f, 0);
                speedF = 5.0f;
                break;

            case '0004':
            case '0006':
            case '0007':
                setLookMode(0, NULL, NULL);
                // fallthrough
            case '0002':
                dComIfGs_onSaveSwitch(79);
                initTalk(field_0xe14, NULL);
                break;

            default:
                JUT_ASSERT(2636, 0);
                break;
        }
    }

    if (dComIfGp_getEvent().checkSkipEdge()) {
        Z2GetAudioMgr()->bgmStreamStop(30);
        daNpcF_clearMessageTmpBit();
        daNpcF_onEvtBit(0x312);
        mOrderEvtNo = 7;
        dMsgObject_onKillMessageFlag();
        changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
    }

    cXyz* pcVar2;
    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;

    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
        case '0003':
            return TRUE;

        case '0005':
        case '0008':
            setLookObliquenessUp();
            pcVar2 = dComIfGp_evmng_getMyXyzP(i_cutIndex, "POS");

            if (pcVar2 != NULL) {
                step(cLib_targetAngleY(&current.pos, pcVar2), -1, 15.0f);

                if (pcVar2->absXZ(current.pos) < 15.0f) {
                    speedF = 0.0f;
                    setMotion(0, -1.0f, 0);
                    return TRUE;
                }
            }
            break;

        case '0002':
        case '0004':
        case '0006':
        case '0007':
            if (talkProc(NULL, TRUE, NULL)) {
                return TRUE;
            }
            break;

        default:
            JUT_ASSERT(2693, 0);
            break;
    }

    return FALSE;
}

/* 80ADED68-80ADEEE4 006C48 017C+00 1/0 0/0 0/0 .text EvCut_DiscoveryCannonSkip__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_DiscoveryCannonSkip(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    cXyz* pos;
    int* angle;

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                return TRUE;

            case '0002':
                pos = dComIfGp_evmng_getMyXyzP(i_cutIndex, "POS");
                angle = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "ANGLE");

                if (pos != NULL) {
                    current.pos = *pos;
                    old.pos = current.pos;
                }

                if (angle != NULL) {
                    setAngle(*angle);
                }

                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                speedF = 0.0f;
                return TRUE;

            default:
                JUT_ASSERT(2729, 0);
                break;
        }
    }

    return FALSE;
}

/* 80ADEEE4-80ADF810 006DC4 092C+00 1/0 0/0 0/0 .text            EvCut_Disappear__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_Disappear(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    cXyz* pos;
    int* angle;

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                dComIfGp_getEvent().startCheckSkipEdge(this);
                // fallthrough
            case '0004':
                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                setLookMode(2, NULL, NULL);
                initTalk(68, NULL);
                break;

            case '0002':
                pos = dComIfGp_evmng_getMyXyzP(i_cutIndex, "POS");
                angle = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "ANGLE");

                if (pos != NULL) {
                    current.pos = *pos;
                    old.pos = current.pos;
                }

                if (angle != NULL) {
                    setAngle(*angle);
                }

                setExpression(12, -1.0f);
                setMotion(0, -1.0f, 0);
                setLookMode(1, NULL, NULL);
                speedF = 0.0f;
                break;

            case '0005':
            case '0003':
                setExpression(6, -1.0f);
                setMotion(0x13, -1.0f, 0);
                mTurnMode = 0;
                speedF = daNpcShad_Param_c::m.traveling_speed;
                break;

            case '0006':
                fopAcM_delete(this);
                break;

            default:
                JUT_ASSERT(2786, 0);
        }
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;
    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    int iVar4, iVar5, iVar6;
    iVar6 = mMsgTimer;
    if (ctrlMsgAnm(iVar4, iVar5, this, FALSE) != 0) {
        setExpression(iVar4, -1.0f);
        setMotion(iVar5, -1.0f, 0);
    } else if (iVar6 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    if (dComIfGp_getEvent().checkSkipEdge()) {
        daNpcF_clearMessageTmpBit();
        daNpcF_onEvtBit(0x311);
        mOrderEvtNo = 9;
        dMsgObject_onKillMessageFlag();
        changeEvent(l_evtArcs[mOrderEvtNo], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
    }

    cXyz* pos2;
    switch (*cutName) {
        case '0001':
            if (fopAcM_searchPlayerAngleY(this) == mCurAngle.y) {
                if (talkProc(NULL, TRUE, NULL)) {
                    setLookMode(0, NULL, NULL);
                    return TRUE;
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 21, 15.0f)) {
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case '0002':
            return TRUE;

        case '0004':
            if (talkProc(NULL, TRUE, NULL)) {
                setLookMode(0, NULL, NULL);
                return TRUE;
            }
            break;

        case '0005':
        case '0003':
            pos2 = dComIfGp_evmng_getMyXyzP(i_cutIndex, "POS");

            if (pos2 != NULL) {
                step(cLib_targetAngleY(&current.pos, pos2), -1, 15.0f);
                
                if (pos2->x > current.pos.x) {
                    speedF = 0.0f;
                    setMotion(0, -1.0f, 0);
                    return TRUE;
                }
            }
            break;

        case '0006':
            return TRUE;

        default:
            JUT_ASSERT(2873, 0);
            break;
    }

    return FALSE;
}

/* 80ADF810-80ADF8DC 0076F0 00CC+00 1/0 0/0 0/0 .text EvCut_DisappearSkip__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_DisappearSkip(int i_cutIndex) {
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                return TRUE;

            case '0002':
                field_0xe1e = 0;
                return TRUE;

            case '0003':
                dComIfGp_event_reset();
                fopAcM_delete(this);
                return TRUE;

            default:
                JUT_ASSERT(2905, 0);
                break;
        }
    }

    return FALSE;
}

/* 80ADF8DC-80ADFB70 0077BC 0294+00 1/0 0/0 0/0 .text            EvCut_CallBack__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_CallBack(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    cXyz sp30;

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                sp30.set(4100.0f, -1520.0f, -3855.8125f);
                setAngle(cLib_targetAngleY(&current.pos, &sp30));
                setLookMode(1, NULL, NULL);
                break;

            case '0002':
                initTalk(69, NULL);
                break;

            default:
                JUT_ASSERT(2939, 0);
                break;
        }
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;
    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
            return TRUE;

        case '0002':
            if (talkProc(NULL, TRUE, NULL)) {
                return TRUE;
            }
            break;

        default:
            JUT_ASSERT(2965, 0);
            break;
    }

    return FALSE;
}

/* 80ADFB70-80ADFE74 007A50 0304+00 1/0 0/0 0/0 .text EvCut_WiretapSponsor__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_WiretapSponsor(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    fopAc_ac_c* actors[4] = {mActorMngr[2].getActorP(), mActorMngr[1].getActorP(), this, mActorMngr[3].getActorP()};
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], actors[2], actors[3], NULL, NULL, NULL, NULL, NULL, NULL);
                initTalk(field_0xe14, (fopAc_ac_c**)&actors[0]);
                break;

            default:
                JUT_ASSERT(3002, 0);
                break;
        }
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;
    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    fopAc_ac_c* talkPartner;
    switch (*cutName) {
        case '0001':
            if (talkProc(NULL, TRUE, (fopAc_ac_c**)&actors[0])) {
                return TRUE;
            }

            talkPartner = dComIfGp_event_getTalkPartner();
            if (talkPartner == this) {
                talkPartner = mActorMngr[2].getActorP();
            }
            setLookMode(4, talkPartner, NULL);
            break;

        default:
            JUT_ASSERT(3032, 0);
            break;
    }
    return FALSE;
}

/* 80ADFE74-80AE0104 007D54 0290+00 2/0 0/0 0/0 .text EvCut_WiretapEntrant__11daNpcShad_cFi */
BOOL daNpcShad_c::EvCut_WiretapEntrant(int i_cutIndex) {
    // NONMATCHING
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");

    if (prm == NULL) {
        return FALSE;
    }

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*prm) {
            case 0:
                setExpression(12, -1.0f);
                setMotion(4, -1.0f, 0);
                break;

            default:
                JUT_ASSERT(3065, 0);
                break;
        }
    }

    int iVar1, iVar2, iVar3;
    iVar3 = mMsgTimer;
    if (ctrlMsgAnm(iVar1, iVar2, this, FALSE) != 0) {
        setExpression(iVar1, -1.0f);
        setMotion(iVar2, -1.0f, 0);
    } else if (iVar3 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    fopAc_ac_c* talkPartner;
    switch (*prm) {
        case 0:
            talkPartner = dComIfGp_event_getTalkPartner();
            if (talkPartner == this) {
                talkPartner = mActorMngr[2].getActorP();
            }
            setLookMode(4, talkPartner, NULL);
            return TRUE;

        default:
            JUT_ASSERT(3088, 0);
            break;
    }

    return FALSE;
}

/* 80AE0104-80AE0124 007FE4 0020+00 1/0 0/0 0/0 .text            daNpcShad_Create__FPv */
static int daNpcShad_Create(void* a_this) {
    daNpcShad_c* i_this = (daNpcShad_c*)a_this;
    return i_this->Create();
}

/* 80AE0124-80AE0144 008004 0020+00 1/0 0/0 0/0 .text            daNpcShad_Delete__FPv */
static int daNpcShad_Delete(void* a_this) {
    daNpcShad_c* i_this = (daNpcShad_c*)a_this;
    return i_this->Delete();
}

/* 80AE0144-80AE0164 008024 0020+00 1/0 0/0 0/0 .text            daNpcShad_Execute__FPv */
static int daNpcShad_Execute(void* a_this) {
    daNpcShad_c* i_this = (daNpcShad_c*)a_this;
    return i_this->Execute();
}

/* 80AE0164-80AE0184 008044 0020+00 1/0 0/0 0/0 .text            daNpcShad_Draw__FPv */
static int daNpcShad_Draw(void* a_this) {
    daNpcShad_c* i_this = (daNpcShad_c*)a_this;
    return i_this->Draw();
}

/* 80AE0184-80AE018C 008064 0008+00 1/0 0/0 0/0 .text            daNpcShad_IsDelete__FPv */
static int daNpcShad_IsDelete(void* a_this) {
    return 1;
}

/* 80AE01BC-80AE0438 00809C 027C+00 1/0 0/0 0/0 .text            setParam__11daNpcShad_cFv */
void daNpcShad_c::setParam() {
    searchActors();
    attention_info.flags = 10;

    if (isSneaking()) {
        attention_info.distances[0] = 78;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = 77;
        attention_info.flags |= 0x800000;
    } else if (mMode == 0) {
        attention_info.distances[0] = getDistTableIdx(3, 5);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(2, 5);
    } else {
        attention_info.distances[0] = getDistTableIdx(daNpcShad_Param_c::m.common.attention_distance, daNpcShad_Param_c::m.common.attention_angle);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = getDistTableIdx(daNpcShad_Param_c::m.common.talk_distance, daNpcShad_Param_c::m.common.talk_angle);
    }

    mAcchCir.SetWallR(daNpcShad_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcShad_Param_c::m.common.knee_length);
    gravity = daNpcShad_Param_c::m.common.gravity;
}

/* 80AE0438-80AE04D8 008318 00A0+00 1/0 0/0 0/0 .text            main__11daNpcShad_cFv */
BOOL daNpcShad_c::main() {
    if (mActionFn) {
        (this->*mActionFn)(NULL);
    }

    if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk() && mItemPartnerId != fpcM_ERROR_PROCESS_ID_e) {
        dComIfGp_event_setItemPartnerId(mItemPartnerId);
        mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
    }

    playExpression();
    playMotion();
    return TRUE;
}

/* 80AE0ED0-80AE0FAC 008DB0 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcShad_cFv */
// NONMATCHING inlining issues
BOOL daNpcShad_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btkAnm = NULL;
        btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);

        if (btkAnm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * -1.0f * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 80AE0FAC-80AE1320 008E8C 0374+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcShad_cFv */
void daNpcShad_c::setAttnPos() {
    // NONMATCHING
    if (field_0xe18 == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    cXyz sp40(10.0f, 10.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(5));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp40, &eyePos);
    sp40.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp40, &sp40);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp40);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp40);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        cXyz sp4c(*attnPos - eyePos);
        mEyeAngle.y = -(mCurAngle.y - mLookatAngle[2].y);
        mEyeAngle.y += cM_atan2s(sp4c.x, sp4c.z);
        mEyeAngle.x -= cM_atan2s(sp4c.x, sp4c.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcShad_Param_c::m.common.attention_offset, mHeadPos.z);
    cXyz sp58;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
    mDoMtx_stack_c::multVecZero(&sp58);
    sp58.y = current.pos.y;
    
    field_0xcb0.SetC(sp58);
    field_0xcb0.SetH(daNpcShad_Param_c::m.common.height);

    f32 fVar1;
    if (mMode == 0) {
        fVar1 = 45.0f;
    } else {
        fVar1 = daNpcShad_Param_c::m.common.width;
    }
    field_0xcb0.SetR(fVar1);

    if (field_0xe1e != 0) {
        dComIfG_Ccsp()->Set(&field_0xcb0);
    }
}

/* 80AE1320-80AE153C 009200 021C+00 1/1 0/0 0/0 .text            lookat__11daNpcShad_cFv */
void daNpcShad_c::lookat() {
    // NONMATCHING
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    int iVar1 = 0;
    f32 body_angleX_min = daNpcShad_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcShad_Param_c::m.common.body_angleX_max;

    f32 body_angleY_min;
    if (mMode == 1) {
        body_angleY_min = -30.0f;
    } else {
        body_angleY_min = daNpcShad_Param_c::m.common.body_angleY_min;
    }

    f32 body_angleY_max;
    if (mMode == 1) {
        body_angleY_max = 30.0f;
    } else {
        body_angleY_max = daNpcShad_Param_c::m.common.body_angleY_max;
    }

    f32 head_angleX_min = daNpcShad_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcShad_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcShad_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcShad_Param_c::m.common.head_angleY_max;

    s16 sVar1 = mCurAngle.y - mOldAngle.y;
    cXyz spf0[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* local_fc = unk_inline();
    cXyz sp108;

    switch (field_0xe18) {
        case LOOK_RESET:
            iVar1 = 1;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();
            break;

        case LOOK_ACTOR:
            player = field_0xca8;
            break;

        case LOOK_ATTN:
            break;
    }

    if (field_0xe18 == LOOK_ATTN) {
        mLookat.setAttnPos(&mLookPos);
    } else if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (field_0xe18 != LOOK_PLAYER && field_0xe18 != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, head_angleX_min, head_angleX_max, 
                     head_angleY_min, head_angleY_max, mCurAngle.y, spf0);
    mLookat.calc(this, model->getBaseTRMtx(), (csXyz**)local_fc, iVar1, sVar1, FALSE);
}

/* 80AE153C-80AE1544 00941C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcShad_cFv */
BOOL daNpcShad_c::drawDbgInfo() {
    return FALSE;
}

/* 80AE2CB8-80AE2CC4 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 80AE2CC4-80AE2CC8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AE2B7C-80AE2B9C -00001 0020+00 1/0 0/0 0/0 .data            daNpcShad_MethodTable */
static actor_method_class daNpcShad_MethodTable = {
    (process_method_func)daNpcShad_Create,
    (process_method_func)daNpcShad_Delete,
    (process_method_func)daNpcShad_Execute,
    (process_method_func)daNpcShad_IsDelete,
    (process_method_func)daNpcShad_Draw,
};

/* 80AE2B9C-80AE2BCC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHAD */
extern actor_process_profile_definition g_profile_NPC_SHAD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_SHAD,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcShad_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  413,                    // mPriority
  &daNpcShad_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
