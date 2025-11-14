/**
 * @file d_a_npc_blue_ns.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_blue_ns.h"
#include "d/d_s_play.h"
#include "d/actor/d_a_npc_yamis.h"
#include "d/actor/d_a_npc_yamid.h"
#include "d/actor/d_a_npc_yamit.h"

/* 8096CBC0-8096CC2C 000020 006C+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[9] = {
    {11, 2, 0},
    {12, 2, 0},
    {13, 2, 0},
    {8, 0, 0},
    {9, 0, 0},
    {10, 0, 0},
    {5, 0, 0},
    {6, 0, 0},
    {7, 0, 0},
};

/* 8096CC2C-8096CC30 -00001 0004+00 4/5 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[1] = {"Blue_NS"};

/* 8096CC30-8096CC4C -00001 001C+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[7] = {
    NULL,
    "CHG_YAMI_CHIBI",
    "CHG_YAMI_DEBU",
    "CHG_YAMI_NOPPO",
    "CHG_YAMI_NOPPO_STOPPER",
    "CHG_YAMI_NOPPO_STOPPER",
    "CHG_YAMI_NOPPO_STOPPER",
};

/* 8096CC4C-8096CC50 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Blue_NS";

/* 8096CE94-8096CE98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcBlueNS_Param_c l_HIO;

/* 8096CC98-8096CCEC 0000F8 0054+00 0/2 0/0 0/0 .data            mEvtSeqList__13daNpcBlueNS_c */
daNpcBlueNS_c::EventFn daNpcBlueNS_c::mEvtSeqList[] = {
    NULL,
    &daNpcBlueNS_c::_Evt_ChgYami_Chibi,
    &daNpcBlueNS_c::_Evt_ChgYami_Debu,
    &daNpcBlueNS_c::_Evt_ChgYami_Noppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
    &daNpcBlueNS_c::_Evt_ChgYami_STNoppo,
};

/* 8096896C-80968AF0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpcBlueNS_cFv */
daNpcBlueNS_c::daNpcBlueNS_c() {}

/* 80968B80-80968D44 000300 01C4+00 1/0 0/0 0/0 .text            __dt__13daNpcBlueNS_cFv */
daNpcBlueNS_c::~daNpcBlueNS_c() {
    for (int i = 0; i < ARRAY_SIZE(l_arcNames); i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[i]);
    }

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }
}

/* 8096C920-8096C964 000000 0044+00 8/8 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8}, // mGObjAt
        {dCcD_SE_NONE, 0x8, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 8096C964-8096C9D4 000044 0070+00 3/9 0/0 0/0 .rodata          m__19daNpcBlueNS_Param_c */
const daNpcBlueNS_HIOParam daNpcBlueNS_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    2000.0f,
    255.0f,
    300.0f,
    35.0f,
    105.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    2,
    6,
    3,
    6,
    60.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    0,
    0,
    0,
    0,
    0,
    0,
    300.0f,
};

/* 80968D44-80968FE4 0004C4 02A0+00 1/1 0/0 0/0 .text            Create__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::Create() {
    fopAcM_ct(this, daNpcBlueNS_c);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();

    int phase_state = cPhs_ERROR_e;
    for (int i = 0; i < ARRAY_SIZE(l_arcNames); i++) {
        phase_state = dComIfG_resLoad(&mPhase[i], l_arcNames[i]);
        if (phase_state != cPhs_COMPLEATE_e) {
            return phase_state;
        }
    }

    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1F20)) {
            return cPhs_ERROR_e;
        }

        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        mTwilight = dKy_darkworld_check();

        mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -120.0f, -10.0f, -120.0f, 120.0f, 220.0f, 120.0f);
        
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpcBlueNS_Param_c::m.common.width, daNpcBlueNS_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());

        mCcStts.Init(daNpcBlueNS_Param_c::m.common.weight, 0, this);
        mCyl.Set(l_cyl_src);
        mCyl.SetStts(&mCcStts);
        mCyl.SetH(daNpcBlueNS_Param_c::m.common.height);
        mCyl.SetR(daNpcBlueNS_Param_c::m.common.width);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        field_0xe10 = 1;
        field_0xe12 = 0;
        mpHolyBallY = NULL;
        mpHolyBallG = NULL;
        mpTagYami = NULL;
        mpNpcYami = NULL;
        mYamijinId = fpcM_ERROR_PROCESS_ID_e;
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase_state;
}

/* 80968FE4-80969138 000764 0154+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 0x10);
    JUT_ASSERT(406, NULL != mdlData_p);

    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }

    if (mAnm_p == NULL) {
        return 0;
    }

    J3DModel* mdl_p = mAnm_p->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    mdl_p->setUserArea((uintptr_t)this);
    setMotion(0, -1.0f, 0);
    return 1;
}

/* 80969138-809691A8 0008B8 0070+00 1/1 0/0 0/0 .text            isDelete__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::isDelete() {
    BOOL rt = FALSE;
    if (daNpcT_chkEvtBit(0x23A) || fopAcM_isSwitch(this, getSwitchBitNo())) {
        rt = TRUE;
    }

    return rt;
}

/* 809691A8-809691DC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcBlueNS_c();
    return 1;
}

/* 809691DC-80969200 00095C 0024+00 2/2 0/0 0/0 .text            Execute__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::Execute() {
    _Execute();
    return 1;
}

/* 80969200-80969468 000980 0268+00 1/1 0/0 0/0 .text            _Execute__13daNpcBlueNS_cFv */
// NONMATCHING - small regalloc
int daNpcBlueNS_c::_Execute() {
    setParam();

    if (main()) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
    }

    if (-G_CM3D_F_INF != mGroundH) {
        field_0x998 = daNpcF_getGroundAngle(&mGndChk, mCurAngle.y);
        setEnvTevColor();
        setRoomNo();
    }

    playAllAnm();
    adjustShapeAngle();
    setAttnPos();
    cLib_chaseF(&mExpressionMorf, 0.0f, 1.0f);
    setCollisions();

    if (mTwilight) {
        attention_info.flags |= fopAc_AttnFlag_UNK_0x400000;
        if (daNpcF_chkDoBtnEqSpeak(this)) {
            dComIfGp_setDoStatusForce(59, 0);
        }
    }

    mOldAngle = mCurAngle;
    mCutType = 0;
    mOrderSpeakEvt = 0;
    mOrderNewEvt = 0;
    field_0x9eb = 0;
    field_0x9ef = 0;
    field_0x9f3 = 0;

    for (int i = 0; i < 5; i++) {
        if ((mAttnChangeTimer == 0 || mAttnIdx != i) && mAttnActorTimer[i] != 0 && cLib_calcTimer<int>(&mAttnActorTimer[i]) == 0) {
            mAttnActor[i].remove();
        }
    }

    if (mDamageTimer != 0) {
        cLib_calcTimer<int>(&mDamageTimer);
    }
}

/* 80969468-80969504 000BE8 009C+00 1/1 0/0 0/0 .text callEvt_changeYami__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::callEvt_changeYami() {
    static const u16 sCallEvtName[] = {
        1, 2, 3, 4, 5, 6,
    };

    mCyl.OffCoSetBit();
    fopAcM_onSwitch(this, getSwitchBitNo());
    mOrderEvtNo = sCallEvtName[mType];
    OS_REPORT("-------mOrderEvtNo = %d\n", mOrderEvtNo);
    eventInfo.setIdx(1);
    setAction(&daNpcBlueNS_c::wait);
}

/* 80969504-809695F0 000C84 00EC+00 5/5 0/0 0/0 .text            create_Yamijin__13daNpcBlueNS_cFi
 */
fpc_ProcID daNpcBlueNS_c::create_Yamijin(int param_0) {
    static const s16 sNameYami[] = {
        PROC_NPC_YAMIS,
        PROC_NPC_YAMID,
        PROC_NPC_YAMIT,
    };

    int var_r30 = mType / 3;
    int type = mType % 3;
    if (var_r30 != 0 && type != 2) {
        var_r30 = 0;
        type = 2;
    }

    int swbit = (getSwitchBitNo() << 0x10) & 0xFF0000;
    u32 parameters;
    if (param_0 != 0) {
        parameters = var_r30 | swbit;
    } else {
        parameters = var_r30 | swbit | 0x10000000;
    }

    cXyz pos(current.pos);
    csXyz angle(current.angle);
    angle.x = getFlowNodeNo();
    cXyz size(1.0f, 1.0f, 1.0f);
    return fopAcM_create(sNameYami[type], parameters, &pos, fopAcM_GetRoomNo(this), &angle, &size, -1);
}

/* 809695F0-80969698 000D70 00A8+00 1/1 0/0 0/0 .text            col_check__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::col_check() {
    if (mCyl.ChkTgHit()) {
        cCcD_Obj* tg_hit_obj = mCyl.GetTgHitObj();
        if (tg_hit_obj != NULL && tg_hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD) && mCyl.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_LIGHT) {
            OS_REPORT("---------------HIT LIGHTNING SWORD!!\n");
            lightsowrdSE();
            return TRUE;
        }

        setAction(&daNpcBlueNS_c::down);
    }

    return FALSE;
}

/* 80969698-80969870 000E18 01D8+00 1/1 0/0 0/0 .text
 * holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c           */
BOOL daNpcBlueNS_c::holyball_check_main(fopAc_ac_c* i_actor) {
    if (i_actor == NULL) {
        return FALSE;
    }

    if (!fopAcM_checkCarryNow(i_actor)) {
        return FALSE;
    }

    f32 dist, range;
    switch (mType) {
    case 5: {
        cXyz sp14(248.75623f, 800.0f, 5368.2173f);
        f32 temp_f29 = 700.0f;

        cXyz sp8 = *fopAcM_GetPosition_p(i_actor) - sp14;
        dist = sp8.absXZ();
        range = 40.0f + temp_f29;
        break;
    }
    case 3:
    case 4:
        dist = fopAcM_searchActorDistanceXZ(this, i_actor);
        range = 1000.0f;
        break;
    default:
        dist = fopAcM_searchActorDistanceXZ(this, i_actor);
        range = daNpcBlueNS_Param_c::m.field_0x6c;
    }

    return dist <= range;
}

/* 80969870-809699D0 000FF0 0160+00 1/1 0/0 0/0 .text            Draw__13daNpcBlueNS_cFv */
int daNpcBlueNS_c::Draw() {
    if (field_0xe10 == 0) {
        return 1;
    }

    J3DModel* mdl_p = mAnm_p->getModel();
    mdl_p->getModelData();

    tevStr.TevColor.r = 0;
    tevStr.TevColor.g = 0;
    tevStr.TevColor.b = 0;
    tevStr.TevColor.a = 0;

    if (mTwilight) {
        g_env_light.settingTevStruct(2, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mdl_p, &tevStr);
        dComIfGd_setListDark();
        mAnm_p->entryDL();
        dComIfGd_setList();
    } else {
        g_env_light.settingTevStruct(2, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mdl_p, &tevStr);
        mAnm_p->entryDL();
    }

    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, mdl_p, &current.pos, daNpcBlueNS_Param_c::m.common.real_shadow_size, 20.0f + tREG_F(3), current.pos.y, mGroundH, mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 809699D0-80969B68 001150 0198+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel              */
int daNpcBlueNS_c::ctrlJoint(J3DJoint* param_0, J3DModel* i_model) {
    int jnt_no = param_0->getJntNo();
    int spC[] = {1, 3, 4};

    if (jnt_no == 0) {
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);

        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);

        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 1:
    case 3:
    case 4:
        setLookatMtx(jnt_no, spC, daNpcBlueNS_Param_c::m.common.neck_rotation_ratio);
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 80969B68-80969B88 0012E8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcBlueNS_cFP10fopAc_ac_c            */
int daNpcBlueNS_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daNpcBlueNS_c*)i_this)->CreateHeap();
}

/* 80969B88-80969BD4 001308 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi               */
int daNpcBlueNS_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* mdl_p = j3dSys.getModel();
        daNpcBlueNS_c* i_this = (daNpcBlueNS_c*)mdl_p->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, mdl_p);
        }
    }

    return 1;
}

/* 80969BD4-80969C48 001354 0074+00 1/0 0/0 0/0 .text            setParam__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::setParam() {
    srchActor();

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcBlueNS_Param_c::m.common.attention_distance, daNpcBlueNS_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcBlueNS_Param_c::m.common.talk_distance, daNpcBlueNS_Param_c::m.common.talk_angle);
    attention_info.flags = 0;

    #if !PLATFORM_GCN
    scale.set(daNpcBlueNS_Param_c::m.common.scale, daNpcBlueNS_Param_c::m.common.scale, daNpcBlueNS_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpcBlueNS_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcBlueNS_Param_c::m.common.height);
    gravity = daNpcBlueNS_Param_c::m.common.gravity;
    #endif
}

/* 80969C48-80969C90 0013C8 0048+00 1/1 0/0 0/0 .text            srchActor__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchActor() {
    srchHollyBall();

    switch (mType) {
    case 5:
        srchTagYami();
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        break;
    }
}

/* 80969C90-80969CF8 001410 0068+00 1/1 0/0 0/0 .text            srchHollyBall__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchHollyBall() {
    if (mpHolyBallY == NULL) {
        mpHolyBallY = (daObjCarry_c*)fpcM_Search(_search_HollyBall_Y, this);
    }

    if (mpHolyBallG == NULL) {
        mpHolyBallG = (daObjCarry_c*)fpcM_Search(_search_HollyBall_G, this);
    }
}

/* 80969CF8-80969D60 001478 0068+00 1/1 0/0 0/0 .text            srchTagYami__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::srchTagYami() {
    if (mpTagYami == NULL) {
        mpTagYami = (daTagYami_c*)fpcM_Search(_search_Tag, this);
        if (mpTagYami != NULL) {
            mpTagYami->off_CoHit();
        }
    }
}

/* 80969D60-80969DE4 0014E0 0084+00 1/1 0/0 0/0 .text            _search_Tag__13daNpcBlueNS_cFPvPv
 */
void* daNpcBlueNS_c::_search_Tag(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }

    if (fopAcM_GetName(i_actor) == PROC_TAG_YAMI && ((daNpcBlueNS_c*)i_data)->_chk_TagPrm((fopAc_ac_c*)i_actor)) {
        return i_actor;
    }

    return NULL;
}

/* 80969DE4-80969E9C 001564 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_Y__13daNpcBlueNS_cFPvPv */
void* daNpcBlueNS_c::_search_HollyBall_Y(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }

    if (fpcM_IsCreating(fopAcM_GetID(i_actor))) {
        return NULL;
    }

    if (fopAcM_GetName(i_actor) != PROC_Obj_Carry) {
        return NULL;
    }

    if (!((daObjCarry_c*)i_actor)->prm_chk_type_lightball()) {
        return NULL;
    }

    if (((daObjCarry_c*)i_actor)->getType() != daObjCarry_c::TYPE_BALL_S) {
        return NULL;
    }

    return i_actor;
}

/* 80969E9C-80969F54 00161C 00B8+00 1/1 0/0 0/0 .text _search_HollyBall_G__13daNpcBlueNS_cFPvPv */
void* daNpcBlueNS_c::_search_HollyBall_G(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }

    if (fpcM_IsCreating(fopAcM_GetID(i_actor))) {
        return NULL;
    }

    if (fopAcM_GetName(i_actor) != PROC_Obj_Carry) {
        return NULL;
    }

    if (!((daObjCarry_c*)i_actor)->prm_chk_type_lightball()) {
        return NULL;
    }

    if (((daObjCarry_c*)i_actor)->getType() != daObjCarry_c::TYPE_BALL_S_2) {
        return NULL;
    }

    return i_actor;
}

/* 80969F54-8096A090 0016D4 013C+00 1/0 0/0 0/0 .text            main__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::main() {
    if (fopAcM_isSwitch(this, 88)) {
        mYamijinId = create_Yamijin(1);
        fopAcM_onSwitch(this, getSwitchBitNo());
        fopAcM_delete(this);
    } else {
        if (mAction != NULL) {
            (this->*mAction)(0);
        }

        if (col_check()) {
            if (field_0xe12 == 0) {
                callEvt_changeYami();
                field_0xe12 = 1;
            }
        } else if (field_0xe12 == 0 && holyball_check()) {
            callEvt_changeYami();
            field_0xe12 = 1;
        }

        playMotion();
    }

    return 0;
}

/* 8096A090-8096A238 001810 01A8+00 1/0 0/0 0/0 .text            setAttnPos__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    lookat();

    cXyz sp20(10.0f, 15.0f, 0.0f);

    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp20, &eyePos);
    sp20.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp20, &sp20);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp20);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp20);

    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcBlueNS_Param_c::m.common.attention_offset, mHeadPos.z);

    cXyz cyl_center;
    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&cyl_center);
    cyl_center.y = current.pos.y;

    mCyl.SetC(cyl_center);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 8096A238-8096A308 0019B8 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpcBlueNS_cFif */
void daNpcBlueNS_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                                    l_bckGetParamList[i_idx].fileIdx);
    int morfAttr = l_bckGetParamList[i_idx].attr;

    mAnmFlags &= ~(ANM_PLAY_MORF | ANM_PAUSE_MORF);

    if (morfAnm != NULL) {
        if (setMcaMorfAnm(morfAnm, 1.0f, i_morf, morfAttr, 0, -1)) {
            mAnmFlags |= ANM_PAUSE_MORF | ANM_PLAY_MORF;
            mMotionLoops = 0;
        }
    }
}

/* 8096A308-8096A350 001A88 0048+00 1/0 0/0 0/0 .text            setMotion__13daNpcBlueNS_cFifi */
void daNpcBlueNS_c::setMotion(int param_0, f32 param_1, int param_2) {
    s16 var_r31 = param_0;
    if ((param_2 != 0 || mMotion != var_r31) && param_0 >= 0 && param_0 < 9) {
        mMotion = var_r31;
        mMotionMorfOverride = param_1;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0xdea = 0;
    }
}

/* 8096A350-8096A358 001AD0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::drawDbgInfo() {
    return false;
}

/* 8096A358-8096A518 001AD8 01C0+00 1/1 0/0 0/0 .text            reset__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::reset() {
    int type = mType % 3;
    if ((mType / 3) != 0) {
        type = 2;
    }

    static const int sWaitAnm[] = {1, 0, 2};
    static const int sDamageAnm[] = {4, 3, 5};
    static const int sAppearAnm[] = {7, 6, 8};

    field_0xe04 = sWaitAnm[type];
    field_0xe08 = sDamageAnm[type];
    field_0xe0c = sAppearAnm[type];

    initialize();
    mLookat.initialize();

    for (int i = 0; i < ARRAY_SIZE(mActorMngr); i++) {
        mActorMngr[i].initialize();
    }

    field_0xddc = 0;
    field_0xde0 = 0;
    mAction = NULL;
    mLookMode = -1;
    field_0xdc0 = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xdd8 = -1;
    mOrderEvtNo = 0;
    setAction(&daNpcBlueNS_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 8096A518-8096A750 001C98 0238+00 1/1 0/0 0/0 .text            playMotion__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::playMotion() {
    daNpcF_anmPlayData anm0_phase1 = {0, 0.0f, 0};
    daNpcF_anmPlayData* anm0[] = {&anm0_phase1};

    daNpcF_anmPlayData anm1_phase1 = {1, 0.0f, 0};
    daNpcF_anmPlayData* anm1[] = {&anm1_phase1};

    daNpcF_anmPlayData anm2_phase1 = {2, 0.0f, 0};
    daNpcF_anmPlayData* anm2[] = {&anm2_phase1};

    daNpcF_anmPlayData anm3_phase1 = {3, 0.0f, 0};
    daNpcF_anmPlayData* anm3[] = {&anm3_phase1};

    daNpcF_anmPlayData anm4_phase1 = {4, 0.0f, 0};
    daNpcF_anmPlayData* anm4[] = {&anm4_phase1};

    daNpcF_anmPlayData anm5_phase1 = {5, 0.0f, 0};
    daNpcF_anmPlayData* anm5[] = {&anm5_phase1};

    daNpcF_anmPlayData anm6_phase1 = {6, daNpcBlueNS_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* anm6[] = {&anm6_phase1};

    daNpcF_anmPlayData anm7_phase1 = {7, daNpcBlueNS_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* anm7[] = {&anm7_phase1};

    daNpcF_anmPlayData anm8_phase1 = {8, daNpcBlueNS_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* anm8[] = {&anm8_phase1};

    daNpcF_anmPlayData** anmData_p[] = {
        anm0, anm1, anm2, anm3,
        anm4, anm5, anm6, anm7,
        anm8,
    };

    if (mMotion >= 0 && mMotion < 9) {
        field_0xdea = mMotionPhase;
        playMotionAnm(anmData_p);
    }
}

/* 8096A750-8096A7F8 001ED0 00A8+00 7/7 0/0 0/0 .text
 * setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i         */
int daNpcBlueNS_c::setAction(int (daNpcBlueNS_c::*i_action)(int)) {
    field_0xdc0 = 3;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    field_0xdc0 = 0;
    mAction = i_action;

    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    return 1;
}

/* 8096A7F8-8096A81C 001F78 0024+00 1/1 0/0 0/0 .text            setLookMode__13daNpcBlueNS_cFi */
void daNpcBlueNS_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= LOOK_NONE && i_lookMode < LOOK_ACTOR) {
        if (i_lookMode != mLookMode) {
            mLookMode = i_lookMode;
        }
    }
}

/* 8096A81C-8096A9FC 001F9C 01E0+00 1/1 0/0 0/0 .text            lookat__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model_p = mAnm_p->getModel();

    int var_r28 = 0;
    f32 body_angleX_min = daNpcBlueNS_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcBlueNS_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcBlueNS_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcBlueNS_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcBlueNS_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcBlueNS_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcBlueNS_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcBlueNS_Param_c::m.common.head_angleY_max;

    s16 temp_r26 = mCurAngle.y - mOldAngle.y;
    cXyz sp30[] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* sp24[] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    cXyz sp18;
    switch (mLookMode) {
    case LOOK_NONE:
        break;
    case LOOK_RESET:
        var_r28 = 1;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        player = daPy_getPlayerActorClass();
        if (mLookMode == 3) {
            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
        }
        break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max,
                     mCurAngle.y, sp30);
    mLookat.calc(this, model_p->getBaseTRMtx(), sp24, var_r28, temp_r26, 0);
}

/* 8096A9FC-8096AAF0 00217C 00F4+00 1/1 0/0 0/0 .text            step__13daNpcBlueNS_cFsi */
BOOL daNpcBlueNS_c::step(s16 i_angY, int param_1) {
    if (mTurnMode == 0) {
        mTurnTargetAngle = i_angY;
        mTurnAmount = 0;
        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
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

/* 8096AAF0-8096ABD4 002270 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__13daNpcBlueNS_cFv */
BOOL daNpcBlueNS_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcBlueNS_Param_c::m.common.fov)) {
        mActorMngr[0].remove();
        return false;
    }

    bool ret = false;
    if (mActorMngr[0].getActorP() == NULL) {
        ret = chkPlayerInSpeakArea(this);
    } else {
        ret = chkPlayerInTalkArea(this);
    }

    if (ret) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return ret;
}

/* 8096ABD4-8096AD70 002354 019C+00 6/0 0/0 0/0 .text            wait__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::wait(int param_0) {
    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe04, -1.0f, 0);
        speedF = 0.0f;
        field_0xdc0 = 2;
        break;
    case 2:
        chkFindPlayer();
        if (dComIfGp_event_runCheck() != 0) {
            if (eventInfo.checkCommandTalk()) {
                if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd() != 0) {
                    setAction(&daNpcBlueNS_c::talk);
                }
            } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, this, 0) != -1) {
                setAction(&daNpcBlueNS_c::demo);
            }
        } else {
            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_arcNames[0]);
            }
            orderEvent(field_0xdec, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 2);
        }
        break;
    case 3:
    default:
        JUT_ASSERT(1820, FALSE);
        break;
    }

    return 1;
}

/* 8096AD70-8096AE5C 0024F0 00EC+00 1/0 0/0 0/0 .text            down__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::down(int param_0) {
    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe08, -1.0f, 0);
        speedF = 0.0f;
        downSE();
        field_0xdc0 = 2;
        break;
    case 2:
        if (mAnm_p->isStop()) {
            setAction(&daNpcBlueNS_c::wait);
        }
        break;
    case 3:
    default:
        break;
    }

    // necessary to generate unused ptmf data
    if (0) {
        setAction(&daNpcBlueNS_c::wait);
    }

    return 1;
}

/* 8096AE5C-8096AFC8 0025DC 016C+00 1/0 0/0 0/0 .text            talk__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::talk(int param_0) {
    int var_r27 = 0;
    bool var_r28 = 0;

    switch (field_0xdc0) {
    case 0:
        initTalk(mFlowNodeNo, NULL);
        mMsgTimer = 0;
        field_0xdec = 0;
        setLookMode(LOOK_PLAYER_TALK);
        field_0xdc0 = 2;
        break;
    case 2:
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, 1, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                int sp8 = 0;
                mFlow.getEventId(&sp8);
                setAction(&daNpcBlueNS_c::wait);
                var_r28 = 1;
            }
        } else if (step(fopAcM_searchPlayerAngleY(this), 1)) {
            mTurnMode = 0;
        }
        break;
    case 3:
        if (field_0x9ec == 0) {
            dComIfGp_event_reset();
        }
        break;
    default:
        JUT_ASSERT(1993, FALSE);
        break;
    }

    return var_r28;
}

/* 8096AFC8-8096B204 002748 023C+00 1/0 0/0 0/0 .text            demo__13daNpcBlueNS_cFi */
int daNpcBlueNS_c::demo(int param_0) {
    dEvent_manager_c* evtmgr = &dComIfGp_getEventManager();

    switch (field_0xdc0) {
    case 0:
        setMotion(field_0xe04, -1.0f, 0);
        field_0xdc0 = 2;
        break;
    case 2:
        if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk()) {
            evtmgr = &dComIfGp_getEventManager();
            
            int staffId = evtmgr->getMyStaffId(l_myName, this, 0);
            if (staffId != -1) {
                mStaffID = staffId;

                JUT_ASSERT(2043, NULL != mEvtSeqList[mOrderEvtNo]);
                if ((this->*mEvtSeqList[mOrderEvtNo])(staffId)) {
                    evtmgr->cutEnd(staffId);
                }
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && evtmgr->endCheck(mEventIdx)) {
                switch (mOrderEvtNo) {
                case 4:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 5:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 6:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                case 1:
                case 2:
                case 3:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    fopAcM_delete(this);
                    break;
                default:
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    eventInfo.setIdx(0);
                    setAction(&daNpcBlueNS_c::wait);
                }
            }
        }
        break;
    case 3:
    default:
        JUT_ASSERT(2117, FALSE);
        break;
    }

    return 1;
}

/* 8096B204-8096B320 002984 011C+00 4/4 0/0 0/0 .text            ChgPtclDisp__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::ChgPtclDisp() {
    int type = mType % 3;
    if (mType / 3 != 0) {
        type = 2;
    }

    static const f32 ptclOffsetY[] = {0.0f, 20.0f, 50.0f};

    cXyz sp8;
    sp8.set(current.pos.x, current.pos.y + ptclOffsetY[type], current.pos.z);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_NS_CHANGE_A), &sp8, &tevStr, &shape_angle, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_NS_CHANGE_B), &sp8, &tevStr, &shape_angle, NULL);
}

/* 8096B320-8096B3D8 002AA0 00B8+00 1/1 0/0 0/0 .text            downSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::downSE() {
    switch (mType) {
    case 0:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_S, -1);
        return;
    case 1:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_D, -1);
        return;
    case 2:
    case 3:
    case 4:
    case 5:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_T, -1);
        return;
    }
}

/* 8096B3D8-8096B490 002B58 00B8+00 1/1 0/0 0/0 .text            lightsowrdSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::lightsowrdSE() {
    switch (mType) {
    case 0:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_S, -1);
        return;
    case 1:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_D, -1);
        return;
    case 2:
    case 3:
    case 4:
    case 5:
        mSound.startCreatureVoice(Z2SE_YAMI_CUT_L_SWD_T, -1);
        return;
    }
}

/* 8096B490-8096B548 002C10 00B8+00 4/4 0/0 0/0 .text            appearSE__13daNpcBlueNS_cFv */
void daNpcBlueNS_c::appearSE() {
    switch (mType) {
    case 0:
        mSound.startCreatureVoice(Z2SE_YAMI_TRANSFORM_S, -1);
        return;
    case 1:
        mSound.startCreatureVoice(Z2SE_YAMI_TRANSFORM_D, -1);
        return;
    case 2:
    case 3:
    case 4:
    case 5:
        mSound.startCreatureVoice(Z2SE_YAMI_TRANSFORM_T, -1);
        return;
    }
}

/* 8096B548-8096B5F0 002CC8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Chibi__13daNpcBlueNS_cFi */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Chibi(int i_staffId) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int cutId = -1;
    
    int* idata_p = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (idata_p != NULL) {
        cutId = *idata_p;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;   
    }

    if (evtMgr.getIsAddvance(i_staffId)) {
        _Evt_ChgYami_Chibi_CutInit(cutId);
    }

    return _Evt_ChgYami_Chibi_CutMain(cutId);
}

/* 8096B5F0-8096B688 002D70 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutInit__13daNpcBlueNS_cFRCi              */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutInit(const int& i_cutId) {
    switch (i_cutId) {
    case 10:
        mYamijinId = fpcM_ERROR_PROCESS_ID_e;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mpNpcYami = NULL;
        break;
    default:
        JUT_ASSERT(2341, FALSE);
        break;
    }

    return 1;
}

/* 8096B688-8096B7B8 002E08 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Chibi_CutMain__13daNpcBlueNS_cFRCi              */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Chibi_CutMain(const int& i_cutId) {
    BOOL rt = 0;

    switch (i_cutId) {
    case 10:
        if (mYamijinId == fpcM_ERROR_PROCESS_ID_e) {
            mYamijinId = create_Yamijin(0);
            if (mYamijinId != fpcM_ERROR_PROCESS_ID_e) {
                rt = 1;
            }
        } else {
            rt = 1;
        }
        break;
    case 20:
        if (mAnm_p->isStop()) {
            ChgPtclDisp();
            rt = 1;
        }
        break;
    case 30:
        mpNpcYami = fopAcM_SearchByID(mYamijinId);
        if (mpNpcYami != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            ((daNpc_yamiS_c*)mpNpcYami)->vanish_off();
            ((daNpc_yamiS_c*)mpNpcYami)->on_CoHit();
            rt = 1;
        }
        break;
    default:
        JUT_ASSERT(2398, FALSE);
        break;
    }

    return rt;
}

/* 8096B7B8-8096B860 002F38 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Debu__13daNpcBlueNS_cFi */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Debu(int i_staffId) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int cutId = -1;
    
    int* idata_p = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (idata_p != NULL) {
        cutId = *idata_p;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;   
    }

    if (evtMgr.getIsAddvance(i_staffId)) {
        _Evt_ChgYami_Debu_CutInit(cutId);
    }

    return _Evt_ChgYami_Debu_CutMain(cutId);
}

/* 8096B860-8096B8F8 002FE0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi               */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Debu_CutInit(const int& i_cutId) {
    switch (i_cutId) {
    case 10:
        mYamijinId = fpcM_ERROR_PROCESS_ID_e;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mpNpcYami = NULL;
        break;
    default:
        JUT_ASSERT(2465, FALSE);
        break;
    }

    return 1;
}

/* 8096B8F8-8096BA28 003078 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi               */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Debu_CutMain(const int& i_cutId) {
    BOOL rt = 0;

    switch (i_cutId) {
    case 10:
        if (mYamijinId == fpcM_ERROR_PROCESS_ID_e) {
            mYamijinId = create_Yamijin(0);
            if (mYamijinId != fpcM_ERROR_PROCESS_ID_e) {
                rt = 1;
            }
        } else {
            rt = 1;
        }
        break;
    case 20:
        if (mAnm_p->isStop()) {
            ChgPtclDisp();
            rt = 1;
        }
        break;
    case 30:
        mpNpcYami = fopAcM_SearchByID(mYamijinId);
        if (mpNpcYami != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            ((daNpc_yamiD_c*)mpNpcYami)->vanish_off();
            ((daNpc_yamiD_c*)mpNpcYami)->on_CoHit();
            rt = 1;
        }
        break;
    default:
        JUT_ASSERT(2398, FALSE);
        break;
    }

    return rt;
}

/* 8096BA28-8096BAD0 0031A8 00A8+00 1/0 0/0 0/0 .text _Evt_ChgYami_Noppo__13daNpcBlueNS_cFi */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Noppo(int i_staffId) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int cutId = -1;
    
    int* idata_p = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (idata_p != NULL) {
        cutId = *idata_p;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;   
    }

    if (evtMgr.getIsAddvance(i_staffId)) {
        _Evt_ChgYami_Noppo_CutInit(cutId);
    }

    return _Evt_ChgYami_Noppo_CutMain(cutId);
}

/* 8096BAD0-8096BB68 003250 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi              */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutInit(const int& i_cutId) {
    switch (i_cutId) {
    case 10:
        mYamijinId = fpcM_ERROR_PROCESS_ID_e;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mpNpcYami = NULL;
        break;
    default:
        JUT_ASSERT(2589, FALSE);
        break;
    }

    return 1;
}

/* 8096BB68-8096BC98 0032E8 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi              */
BOOL daNpcBlueNS_c::_Evt_ChgYami_Noppo_CutMain(const int& i_cutId) {
    BOOL rt = 0;

    switch (i_cutId) {
    case 10:
        if (mYamijinId == fpcM_ERROR_PROCESS_ID_e) {
            mYamijinId = create_Yamijin(0);
            if (mYamijinId != fpcM_ERROR_PROCESS_ID_e) {
                rt = 1;
            }
        } else {
            rt = 1;
        }
        break;
    case 20:
        if (mAnm_p->isStop()) {
            ChgPtclDisp();
            rt = 1;
        }
        break;
    case 30:
        mpNpcYami = fopAcM_SearchByID(mYamijinId);
        if (mpNpcYami != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            ((daNpc_yamiT_c*)mpNpcYami)->vanish_off();
            ((daNpc_yamiT_c*)mpNpcYami)->on_CoHit();
            rt = 1;
        }
        break;
    default:
        JUT_ASSERT(2644, FALSE);
        break;
    }

    return rt;
}

/* 8096BC98-8096BD40 003418 00A8+00 3/0 0/0 0/0 .text _Evt_ChgYami_STNoppo__13daNpcBlueNS_cFi */
BOOL daNpcBlueNS_c::_Evt_ChgYami_STNoppo(int i_staffId) {
    dEvent_manager_c& evtMgr = dComIfGp_getEventManager();
    int cutId = -1;
    
    int* idata_p = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (idata_p != NULL) {
        cutId = *idata_p;
    } else {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;   
    }

    if (evtMgr.getIsAddvance(i_staffId)) {
        _Evt_ChgYami_STNoppo_CutInit(cutId);
    }

    return _Evt_ChgYami_STNoppo_CutMain(cutId);
}

/* 8096BD40-8096BDD8 0034C0 0098+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi            */
BOOL daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutInit(const int& i_cutId) {
    switch (i_cutId) {
    case 10:
        mYamijinId = fpcM_ERROR_PROCESS_ID_e;
        break;
    case 20:
        setMotion(field_0xe0c, -1.0f, 0);
        appearSE();
        break;
    case 30:
        field_0xe10 = 0;
        mpNpcYami = NULL;
        break;
    default:
        JUT_ASSERT(2970, FALSE);
        break;
    }

    return 1;
}

/* 8096BDD8-8096BF08 003558 0130+00 1/1 0/0 0/0 .text
 * _Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi            */
BOOL daNpcBlueNS_c::_Evt_ChgYami_STNoppo_CutMain(const int& i_cutId) {
    BOOL rt = 0;

    switch (i_cutId) {
    case 10:
        if (mYamijinId == fpcM_ERROR_PROCESS_ID_e) {
            mYamijinId = create_Yamijin(0);
            if (mYamijinId != fpcM_ERROR_PROCESS_ID_e) {
                rt = 1;
            }
        } else {
            rt = 1;
        }
        break;
    case 20:
        if (mAnm_p->isStop()) {
            ChgPtclDisp();
            rt = 1;
        }
        break;
    case 30:
        mpNpcYami = fopAcM_SearchByID(mYamijinId);
        if (mpNpcYami != NULL) {
            OS_REPORT("----%x :: FIND YAMI ACTOR!!\n", this);
            ((daNpc_yamiT_c*)mpNpcYami)->vanish_off();
            ((daNpc_yamiT_c*)mpNpcYami)->on_CoHit();
            rt = 1;
        }
        break;
    default:
        JUT_ASSERT(3027, FALSE);
        break;
    }

    return rt;
}

/* 8096BF08-8096BF28 003688 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Create__FPv */
static int daNpcBlueNS_Create(void* i_this) {
    return ((daNpcBlueNS_c*)i_this)->Create();
}

/* 8096BF28-8096BF48 0036A8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Delete__FPv */
static int daNpcBlueNS_Delete(void* i_this) {
    return ((daNpcBlueNS_c*)i_this)->Delete();
}

/* 8096BF48-8096BF68 0036C8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Execute__FPv */
static int daNpcBlueNS_Execute(void* i_this) {
    return ((daNpcBlueNS_c*)i_this)->Execute();
}

/* 8096BF68-8096BF88 0036E8 0020+00 1/0 0/0 0/0 .text            daNpcBlueNS_Draw__FPv */
static int daNpcBlueNS_Draw(void* i_this) {
    return ((daNpcBlueNS_c*)i_this)->Draw();
}

/* 8096BF88-8096BF90 003708 0008+00 1/0 0/0 0/0 .text            daNpcBlueNS_IsDelete__FPv */
static int daNpcBlueNS_IsDelete(void* i_this) {
    return 1;
}

/* 8096CD58-8096CD78 -00001 0020+00 1/0 0/0 0/0 .data            daNpcBlueNS_MethodTable */
static actor_method_class daNpcBlueNS_MethodTable = {
    (process_method_func)daNpcBlueNS_Create,
    (process_method_func)daNpcBlueNS_Delete,
    (process_method_func)daNpcBlueNS_Execute,
    (process_method_func)daNpcBlueNS_IsDelete,
    (process_method_func)daNpcBlueNS_Draw,
};

/* 8096CD78-8096CDA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BLUENS */
extern actor_process_profile_definition g_profile_NPC_BLUENS = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_BLUENS,          // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpcBlueNS_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  318,                      // mPriority
  &daNpcBlueNS_MethodTable, // sub_method
  0x08044180,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
