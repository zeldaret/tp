/**
 * @file d_a_obj_ss_drink.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_myna.h"
#include "d/actor/d_a_obj_ss_drink.h"
#include "d/actor/d_a_player.h"
#include "d/d_msg_object.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

/* 80CE69E4-80CE69E8 -00001 0004+00 2/2 0/0 0/0 .data            l_resFileName */
static char* l_resFileName = "Obj_btl";

/* 80CE69E8-80CE69EC -00001 0004+00 1/2 0/0 0/0 .data            l_bmdName */
static char* l_bmdName = "al_bottle.bmd";

/* ############################################################################################## */
/* 80CE6930-80CE6960 000000 0030+00 5/5 0/0 0/0 .rodata          mCcDObjInfo__15daObj_SSDrink_c */
dCcD_SrcGObjInf const daObj_SSDrink_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0, 0}, {0x79}}},
    {0, 0, 0, 0, {0}},
    {0, 0, 0, 0, {0}},
    {{0}},
};

/* 80CE69EC-80CE6A30 000028 0044+00 2/2 0/0 0/0 .data            mCcDCyl__15daObj_SSDrink_c */
dCcD_SrcCyl daObj_SSDrink_c::mCcDCyl = {mCcDObjInfo, {}};

/* 80CE4F78-80CE51C8 000078 0250+00 1/0 0/0 0/0 .text            __dt__15daObj_SSDrink_cFv */
daObj_SSDrink_c::~daObj_SSDrink_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80CE51C8-80CE53EC 0002C8 0224+00 1/1 0/0 0/0 .text            create__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::create() {
    fopAcM_ct(this, daObj_SSDrink_c);
    field_0xb0b = getTypeFromParam();
    field_0xb0a = getCapacityFromParam();
    setFlowNodeNumber(getFlowNodeNum());
    setValueNumber(getValue());
    mLeftHandPosY = daPy_getPlayerActorClass()->getLeftHandPos().y;
    int phase = dComIfG_resLoad(&mPhase, getResName());

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2000)) {
            return cPhs_ERROR_e;
        }

        initialize();
    }

    return phase;
}

/* 80CE53EC-80CE55A8 0004EC 01BC+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;
    J3DAnmTevRegKey* pbrk;
    J3DAnmTexPattern* pbtp;
    int unused = 0;

    mdlData_p = (J3DModelData*)dComIfG_getObjectRes(getResName(), l_bmdName);
    JUT_ASSERT(216, mdlData_p != NULL);

    mpModel = mDoExt_J3DModel__create(mdlData_p, 0, 0x11020084);
    if (mpModel == NULL) {
        return 0;
    }

    pbtp = (J3DAnmTexPattern*)dComIfG_getObjectRes(l_resFileName, "al_bottle.btp");
    JUT_ASSERT(230, pbtp != NULL);
    mpBtpAnm = new mDoExt_btpAnm();
    if (mpBtpAnm == NULL || !mpBtpAnm->init(mdlData_p, pbtp, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_resFileName, "al_bottle.brk");
    JUT_ASSERT(242, pbrk != NULL);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL || !mpBrkAnm->init(mdlData_p, pbrk, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 80CE55F0-80CE5624 0006F0 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::Delete() {
    this->~daObj_SSDrink_c();
    return 1;
}

/* 80CE5624-80CE5858 000724 0234+00 2/2 0/0 0/0 .text            Execute__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::Execute() {
    setParam();
    mStts.Move();

    int chk = chkEvent();
    if (chk) {
        if (field_0xaf0) {
            (this->*field_0xaf0)(NULL);
        }
        orderEvent();
    }

    fopAcM_posMoveF(this, &field_0xa98);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0xafc = mAcch.GetGroundH();

    if (field_0xafc != -G_CM3D_F_INF) {
        setEnvTevColor();
        setRoomNo();
    }

    animePlay();
    setMtx();

    if (!checkProcess(&daObj_SSDrink_c::drink)) {
        cXyz acStack_2c;
        mCyl2.SetCoSPrm(0);
        mCyl2.SetTgType(0xd8fbfdff);
        mCyl2.SetTgSPrm(0x1f);
        mCyl2.SetR(YREG_F(8) + 10.0f);
        mCyl2.SetH(YREG_F(9) + 30.0f);

        acStack_2c = current.pos;
        mCyl2.SetC(acStack_2c);
        dComIfG_Ccsp()->Set(&mCyl2);

        mCyl1.SetAtType(AT_TYPE_0);
        mCyl1.SetAtSPrm(0);

        mCyl1.SetR(YREG_F(6) + 10.0f);
        mCyl1.SetH(YREG_F(7) + 30.0f);
        mCyl1.SetC(current.pos);

        dComIfG_Ccsp()->Set(&mCyl1);
    }

    setAttnPos();
    return 1;
}

/* 80CE5858-80CE5994 000958 013C+00 1/1 0/0 0/0 .text            Draw__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::Draw() {
    if (checkProcess(&daObj_SSDrink_c::drink)) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.dScnKy_env_light_c::setLightTevColorType_MAJI(mpModel, &tevStr);
    fopAcM_setEffectMtx(this, mpModel->getModelData());
    animeEntry();
    mDoExt_modelUpdateDL(mpModel);
    if (field_0xafc != -G_CM3D_F_INF) {
        cM3dGPla cStack_3c;
        bool tri_pla = dComIfG_Bgsp().GetTriPla(mGndChk, &cStack_3c);
        if (tri_pla) {
            f32 some_float = 10.0f;
            dComIfGd_setSimpleShadow(&current.pos, field_0xafc, some_float, &cStack_3c.mNormal, 0,
                                     1.0f, dDlst_shadowControl_c::getSimpleTex());
        }
    }

    return 1;
}

/* 80CE59DC-80CE59FC 000ADC 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_SSDrink_cFP10fopAc_ac_c          */
int daObj_SSDrink_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daObj_SSDrink_c* i_this = (daObj_SSDrink_c*)a_this;
    return i_this->CreateHeap();
}

/* 80CE59FC-80CE5A50 000AFC 0054+00 1/0 0/0 0/0 .text            setSoldOut__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setSoldOut() {
    if (getParentPtr() != NULL) {
        ((daMyna_c*)getParentPtr())->onEventFlag(0);
        ((daMyna_c*)getParentPtr())->soldoutItem(fopAcM_GetID(this));
    }
}

/* 80CE5A50-80CE5A60 000B50 0010+00 4/4 0/0 0/0 .text            getResName__15daObj_SSDrink_cFv */
char* daObj_SSDrink_c::getResName() {
    return l_resFileName;
}

/* 80CE5A60-80CE5B0C 000B60 00AC+00 1/1 0/0 0/0 .text getTypeFromParam__15daObj_SSDrink_cFv */
u8 daObj_SSDrink_c::getTypeFromParam() {
    u8 x = fopAcM_GetParam((this)) & 0xf;

    switch (x) {
    case 0:
        field_0xb0c = 0x69;
        return 0;
    case 1:
        field_0xb0c = 0x62;
        return 1;
    case 2:
        field_0xb0c = 0x63;
        return 2;
    case 3:
        field_0xb0c = 0x65;
        return 3;
    case 4:
        field_0xb0c = 0x68;
        return 4;
    case 5:
        field_0xb0c = 0x67;
        return 5;
    default:
        field_0xb0c = 0x60;
    }

    return 6;
}

/* 80CE5B0C-80CE5B18 000C0C 000C+00 1/1 0/0 0/0 .text getSwitchFromParam__15daObj_SSDrink_cFv */
u8 daObj_SSDrink_c::getSwitchFromParam() {
    u8 switch_from_prm = (fopAcM_GetParam(this) & 0xff0) >> 4;
    return switch_from_prm;
}

/* 80CE5B18-80CE5B3C 000C18 0024+00 1/1 0/0 0/0 .text getCapacityFromParam__15daObj_SSDrink_cFv */
u8 daObj_SSDrink_c::getCapacityFromParam() {
    if (field_0xb0b == 6) {
        return 2;
    }

    if (field_0xb0b == 3) {
        return 1;
    }

    return 0;
}

/* 80CE5B3C-80CE5B74 000C3C 0038+00 2/2 0/0 0/0 .text            getFlowNodeNum__15daObj_SSDrink_cFv
 */
u16 daObj_SSDrink_c::getFlowNodeNum() {
    u16 var_r31 = home.angle.x;
    return var_r31 == 0xFFFF || var_r31 == 0 ? -1 : var_r31;
}

/* 80CE5B74-80CE5B80 000C74 000C+00 1/1 0/0 0/0 .text            getValue__15daObj_SSDrink_cFv */
u16 daObj_SSDrink_c::getValue() {
    u16 value = (fopAcM_GetParam(this) & 0xffff000) >> 12;
    return value;
}

/* 80CE5B80-80CE5BF0 000C80 0070+00 1/1 0/0 0/0 .text            restart__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::restart() {
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    setProcess(&daObj_SSDrink_c::wait);
}

/* 80CE5BF0-80CE5DB0 000CF0 01C0+00 1/1 0/0 0/0 .text            initialize__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::initialize() {
    J3DModelData* modelData = mpModel->getModelData();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    eventInfo.setArchiveName(getResName());
    attention_info.flags = 0;
    attention_info.distances[fopAc_attn_CARRY_e] = 6;
    fopAcM_OnCarryType(this, fopAcM_CARRY_SIDE);

    if (field_0xb0c == 0x60) {
        mAcchCir.SetWall(24.0f, 12.0f);
    }

    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mStts.Init(0xff, 0, this);
    mCyl1.Set(mCcDCyl);
    mCyl1.SetStts(&mStts);
    mCyl2.Set(mCcDCyl);
    mCyl2.SetStts(&mStts);

    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0xafc = mAcch.GetGroundH();
    setEnvTevColor();
    setRoomNo();
    restart();
    Execute();
}

/* 80CE5DB0-80CE5DDC 000EB0 002C+00 6/6 0/0 0/0 .text
 * checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i */
int daObj_SSDrink_c::checkProcess(ProcessFunc param_0) {
    return field_0xaf0 == param_0;
}

/* 80CE5DDC-80CE5EC8 000EDC 00EC+00 4/4 0/0 0/0 .text
 * setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i   */
int daObj_SSDrink_c::setProcess(ProcessFunc param_0) {
    int ret = 0;

    if (checkProcess(param_0)) {
        return ret;
    }
    field_0xb08 = 2;

    if (field_0xaf0) {
        ret = (this->*field_0xaf0)(NULL);
    }

    field_0xb08 = 0;
    field_0xaf0 = param_0;

    if (field_0xaf0) {
        ret = (this->*field_0xaf0)(NULL);
    }

    field_0xb08 = 1;

    return ret;
}

/* 80CE5EC8-80CE5FE4 000FC8 011C+00 1/1 0/0 0/0 .text            setParam__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setParam() {
    f32 some_float = 1.0f;
    scale.set(some_float, some_float, some_float);

    if (field_0xb0c == 0x60) {
        mAcchCir.SetWallR(24.0f);
        mAcchCir.SetWallH(12.0f);
    }

    gravity = -5.0f;

#ifdef DEBUG
    bool bVar1 = false;
    bool bVar2 = false;
#endif

    if (daPy_getPlayerActorClass()->getGrabActorID() != fpcM_ERROR_PROCESS_ID_e) {
        if (!checkProcess(&daObj_SSDrink_c::drink)) {
            if (field_0xb0c != 0x60) {
                fopAcM_offSwitch(this, getSwitchFromParam());
                return;
            }
        }
    }

    fopAcM_onSwitch(this, getSwitchFromParam());
}

/* 80CE5FE4-80CE6040 0010E4 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_SSDrink_cFv
 */
void daObj_SSDrink_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80CE6040-80CE6084 001140 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setRoomNo() {
    s8 room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mStts.SetRoomId(room_id);
}

/* 80CE6084-80CE60E8 001184 0064+00 1/1 0/0 0/0 .text            setMtx__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CE60E8-80CE6170 0011E8 0088+00 1/1 0/0 0/0 .text            setAttnPos__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setAttnPos() {
    if (!checkProcess(&daObj_SSDrink_c::talk)) {
        attention_info.position = current.pos;
    }

    eyePos = current.pos;
}

/* 80CE6170-80CE61E4 001270 0074+00 1/1 0/0 0/0 .text            animeEntry__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::animeEntry() {
    mpBtpAnm->entry(mpModel->getModelData(), field_0xb0a);
    mpBrkAnm->entry(mpModel->getModelData(), field_0xb0b);
}

/* 80CE61E4-80CE622C 0012E4 0048+00 1/1 0/0 0/0 .text            animePlay__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::animePlay() {
    if (mpBtpAnm != NULL) {
        mpBtpAnm->play();
    }

    if (mpBrkAnm != NULL) {
        mpBrkAnm->play();
    }
}

/* 80CE622C-80CE63AC 00132C 0180+00 1/1 0/0 0/0 .text            chkEvent__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::chkEvent() {
    int ret = 1;

    if (checkProcess(&daObj_SSDrink_c::drink)) {
        return 1;
    }

    if (dComIfGp_getEvent().isOrderOK() == 0) {
        if (getParentPtr() != NULL) {
            fopAc_ac_c* parent = (fopAc_ac_c*)getParentPtr();
            attention_info.position.set(parent->attention_info.position);
        }

        ret = 0;

        if (eventInfo.checkCommandTalk()) {
            if (checkProcess(&daObj_SSDrink_c::talk)) {
                ret = (this->*field_0xaf0)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                setProcess(&daObj_SSDrink_c::talk);
            }

            return ret;
        }
    }

    return ret;
}

/* 80CE63AC-80CE644C 0014AC 00A0+00 1/1 0/0 0/0 .text            orderEvent__15daObj_SSDrink_cFv */
int daObj_SSDrink_c::orderEvent() {
    if (!daPy_py_c::checkNowWolf() && field_0xb0c != 0x60 && getFlowNodeNum() != -1) {
        attention_info.flags = fopAc_AttnFlag_TALKREAD_e | fopAc_AttnFlag_SPEAK_e;
    } else {
        attention_info.flags = 0;
    }

    if (attention_info.flags == (fopAc_AttnFlag_TALKREAD_e | fopAc_AttnFlag_SPEAK_e)) {
        attention_info.distances[fopAc_attn_TALK_e] = 0x6;
        attention_info.distances[fopAc_attn_SPEAK_e] = 0x6;
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
    }

    return 1;
}

/* 80CE644C-80CE6454 00154C 0008+00 2/0 0/0 0/0 .text            wait__15daObj_SSDrink_cFPv */
int daObj_SSDrink_c::wait(void* param_0) {
#ifdef DEBUG
    switch (field_0xb08) {
    case 0:
    case 2:
    case 1:
        break;
    }
#endif
    return 1;
}

/* 80CE6454-80CE6514 001554 00C0+00 3/0 0/0 0/0 .text            talk__15daObj_SSDrink_cFPv */
int daObj_SSDrink_c::talk(void* param_0) {
    int ret = 0;

    switch (field_0xb08) {
    case 0:
    case 2:
        break;
    case 1:
        setSoldOut();
        dMsgObject_addTotalPrice(getValueNumber());
        daPy_py_c* player = daPy_getPlayerActorClass();
        player->changeOriginalDemo();
        player->changeDemoMode(0x2a, field_0xb0c, 0, 0);
        setProcess(&daObj_SSDrink_c::drink);
    }

    return ret;
}

/* 80CE6514-80CE6624 001614 0110+00 5/0 0/0 0/0 .text            drink__15daObj_SSDrink_cFPv */
int daObj_SSDrink_c::drink(void* param_0) {
    int ret = 0;

    switch (field_0xb08) {
    case 0:
        field_0xb0a = 0x2;
        field_0xb0c = 0x60;
    case 2:
        break;
    case 1:
        daPy_py_c* player = daPy_getPlayerActorClass();
        if (player->checkBottleDrinkEnd() != 0) {
            dComIfGp_event_reset();
            setProcess(&daObj_SSDrink_c::wait);
        } else {
            cXyz left_hand_pos = player->getLeftHandPos();

            if (left_hand_pos.y < mLeftHandPosY) {
                mLeftHandPosY = left_hand_pos.y;
                current.pos.set(left_hand_pos);
            }
        }
        break;
    }

    return ret;
}

/* 80CE6624-80CE6644 001724 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Create__FPv */
static int daObj_SSDrink_Create(void* i_this) {
    return ((daObj_SSDrink_c*)i_this)->create();
}

/* 80CE6644-80CE6664 001744 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Delete__FPv */
static int daObj_SSDrink_Delete(void* i_this) {
    return ((daObj_SSDrink_c*)i_this)->Delete();
}

/* 80CE6664-80CE6684 001764 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Execute__FPv */
static int daObj_SSDrink_Execute(void* i_this) {
    return ((daObj_SSDrink_c*)i_this)->Execute();
}

/* 80CE6684-80CE66A4 001784 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Draw__FPv */
static int daObj_SSDrink_Draw(void* i_this) {
    return ((daObj_SSDrink_c*)i_this)->Draw();
}

/* 80CE66A4-80CE66AC 0017A4 0008+00 1/0 0/0 0/0 .text            daObj_SSDrink_IsDelete__FPv */
static int daObj_SSDrink_IsDelete(void* i_this) {
    return 1;
}

/* 80CE6AA8-80CE6AC8 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SSDrink_MethodTable */
static actor_method_class daObj_SSDrink_MethodTable = {
    (process_method_func)daObj_SSDrink_Create,  (process_method_func)daObj_SSDrink_Delete,
    (process_method_func)daObj_SSDrink_Execute, (process_method_func)daObj_SSDrink_IsDelete,
    (process_method_func)daObj_SSDrink_Draw,
};

/* 80CE6AC8-80CE6AF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SSDRINK */
extern actor_process_profile_definition g_profile_OBJ_SSDRINK = {
    fpcLy_CURRENT_e,             // mLayerID
    7,                           // mListID
    fpcPi_CURRENT_e,             // mListPrio
    PROC_OBJ_SSDRINK,            // mProcName
    &g_fpcLf_Method.base,        // sub_method
    sizeof(daObj_SSDrink_c),     // mSize
    0,                           // mSizeOther
    0,                           // mParameters
    &g_fopAc_Method.base,        // sub_method
    68,                          // mPriority
    &daObj_SSDrink_MethodTable,  // sub_method
    0x00064100,                  // mStatus
    fopAc_UNK_GROUP_5_e,         // mActorType
    fopAc_CULLBOX_CUSTOM_e,      // cullType
};
