/**
 * d_a_obj_ss_item.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ss_item.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_ext.h"
#include "d/actor/d_a_myna.h"

/* 80CE7F34-80CE7F40 -00001 000C+00 1/1 0/0 0/0 .data            l_resFileName */
static char* l_resFileName[] = {
    "Always",
    "Always",
    "Pumpkin",
};

/* 80CE7F40-80CE7F4C 00000C 000C+00 1/1 0/0 0/0 .data            l_bmdIdxName */
static int l_bmdIdxName[] = {0x23, 0x23, 0x00};

/* 80CE7F4C-80CE7F58 -00001 000C+00 1/2 0/0 0/0 .data            l_bmdFileName */
static char* l_bmdFileName[] = {
    "",
    "",
    "pumpkin.bmd",
};

/* 80CE7EB0-80CE7EE0 000000 0030+00 5/5 0/0 0/0 .rodata          mCcDObjInfo__14daObj_SSItem_c */
dCcD_SrcGObjInf const daObj_SSItem_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0, 0}, {0x79}}},
    {0, 0, 0, 0, {0}},
    {0, 0, 0, 0, {0}},
    {{0}},
};

/* 80CE7F58-80CE7F9C 000024 0044+00 2/2 0/0 0/0 .data            mCcDCyl__14daObj_SSItem_c */
dCcD_SrcCyl daObj_SSItem_c::mCcDCyl = {mCcDObjInfo, {}};

/* 80CE6C18-80CE6E68 000078 0250+00 1/0 0/0 0/0 .text            __dt__14daObj_SSItem_cFv */
daObj_SSItem_c::~daObj_SSItem_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80CE6E68-80CE70CC 0002C8 0264+00 1/1 0/0 0/0 .text            create__14daObj_SSItem_cFv */
int daObj_SSItem_c::create() {
    fopAcM_SetupActor(this, daObj_SSItem_c);
    field_0xB0E = getTypeFromParam();
    setFlowNodeNumber(getFlowNodeNum());
    setValueNumber(getValue());
    field_0xAFC = 0;
    field_0xAF0.set(current.pos);
    field_0xB04 = -1;

    if (field_0xB0E == 2) {
        field_0xB04 = fopAcM_create(PROC_OBJ_PUMPKIN, 0x10000319, &current.pos,
                                    fopAcM_GetRoomNo(this), &current.angle, NULL, -1);
        return cPhs_COMPLEATE_e;
    } else {
        int retVal = dComIfG_resLoad(&mPhase, getResName());
        if (retVal == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, &createHeapCallBack, 0xEB0)) {
                return cPhs_ERROR_e;
            } else {
                initialize();
            }
        }
        return retVal;
    }
}

/* 80CE7298-80CE7358 0006F8 00C0+00 1/1 0/0 0/0 .text            CreateHeap__14daObj_SSItem_cFv */
BOOL daObj_SSItem_c::CreateHeap() {
    J3DModelData* modelData;
    if (l_bmdIdxName[field_0xB0E] != 0) {
        modelData = static_cast<J3DModelData*>(
            dComIfG_getObjectRes(getResName(), l_bmdIdxName[field_0xB0E]));
    } else {
        modelData = static_cast<J3DModelData*>(
            dComIfG_getObjectRes(getResName(), l_bmdFileName[field_0xB0E]));
    }
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL;
}

/* 80CE7358-80CE738C 0007B8 0034+00 1/1 0/0 0/0 .text            Delete__14daObj_SSItem_cFv */
int daObj_SSItem_c::Delete() {
    this->~daObj_SSItem_c();
    return 1;
}

/* 80CE738C-80CE7610 0007EC 0284+00 2/2 0/0 0/0 .text            Execute__14daObj_SSItem_cFv */
int daObj_SSItem_c::Execute() {
    if (field_0xB0E == 2) {
        return 1;
    } else {
        field_0xAFC = fopAcM_checkCarryNow(this);
        setParam();
        if (field_0xAFC != 0) {
            mAcch.ClrWallHit();
            mAcch.ClrGroundHit();
            speedF = 0.0f;
            speed.set(0.0f, 0.0f, 0.0f);
        } else {
            mStts.Move();
            if (mAtCyl.ChkCoHit() != 0) {
                field_0xA8C = *mStts.GetCCMoveP();
            } else {
                field_0xA8C.set(0.0f, 0.0f, 0.0f);
            }
            fopAcM_posMoveF(this, &field_0xA8C);
            mAcch.CrrPos(dComIfG_Bgsp());
            mGndChk = mAcch.m_gnd;
            field_0xB00 = mAcch.GetGroundH();
            if (field_0xB00 != -1000000000.0f) {
                setEnvTevColor();
                setRoomNo();
            }
        }
        if (mProcessFunc != NULL) {
            (this->*mProcessFunc)(NULL);
        }
        setMtx();
        if (field_0xAFC == 0) {
            mTgCyl.SetCoSPrm(0);
            mTgCyl.SetTgType(0xD8FBFDFF);
            mTgCyl.SetTgSPrm(0x1F);
            mTgCyl.SetR(8.0f);
            mTgCyl.SetH(62.0f);
            cXyz currentPos = current.pos;
            mTgCyl.SetC(currentPos);
            dComIfG_Ccsp()->Set(&mTgCyl);
            mAtCyl.SetAtType(0);
            mAtCyl.SetAtSPrm(0);
            mAtCyl.SetR(8.0f);
            mAtCyl.SetH(62.0f);
            mAtCyl.SetC(current.pos);
            dComIfG_Ccsp()->Set(&mAtCyl);
        }
        setAttnPos();
        return 1;
    }
}

/* 80CE7610-80CE7710 000A70 0100+00 1/1 0/0 0/0 .text            Draw__14daObj_SSItem_cFv */
int daObj_SSItem_c::Draw() {
    if (field_0xB0E == 2) {
        return 1;
    } else {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        mDoExt_modelUpdateDL(mpModel);
        if (field_0xB00 != -1000000000.0f) {
            cM3dGPla plane;
            if (dComIfG_Bgsp().GetTriPla(mGndChk, &plane)) {
                dComIfGd_setSimpleShadow(&current.pos, field_0xB00, 20.0f, &plane.mNormal, 0, 1.0f,
                                         dDlst_shadowControl_c::getSimpleTex());
            }
        }
        return 1;
    }
}

/* 80CE7758-80CE7778 000BB8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daObj_SSItem_cFP10fopAc_ac_c           */
int daObj_SSItem_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_SSItem_c*>(i_this)->CreateHeap();
}

/* 80CE7778-80CE77CC 000BD8 0054+00 1/0 0/0 0/0 .text            setSoldOut__14daObj_SSItem_cFv */
void daObj_SSItem_c::setSoldOut() {
    if (getParentPtr() != NULL) {
        static_cast<daMyna_c*>(getParentPtr())->onEventFlag(0);
        static_cast<daMyna_c*>(getParentPtr())->soldoutItem(fopAcM_GetID(this));
    }
}

/* 80CE77CC-80CE77F8 000C2C 002C+00 1/0 0/0 0/0 .text            getProcessID__14daObj_SSItem_cFv */
u32 daObj_SSItem_c::getProcessID() {
    if (field_0xB0E == 2) {
        return field_0xB04;
    } else {
        return fopAcM_GetID(this);
    }
}

/* 80CE77F8-80CE7838 000C58 0040+00 0/0 0/0 1/1 .text getExchangeItemPtr__14daObj_SSItem_cFv */
daObj_SSItem_c* daObj_SSItem_c::getExchangeItemPtr() {
    if (field_0xB0E == 2) {
        return static_cast<daObj_SSItem_c*>(fopAcM_SearchByID(field_0xB04));
    }
    return this;
}

/* 80CE7838-80CE7850 000C98 0018+00 4/4 0/0 0/0 .text            getResName__14daObj_SSItem_cFv */
char* daObj_SSItem_c::getResName() {
    return l_resFileName[field_0xB0E];
}

/* 80CE7850-80CE789C 000CB0 004C+00 1/1 0/0 0/0 .text getTypeFromParam__14daObj_SSItem_cFv */
u8 daObj_SSItem_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    default:
        return 0;
    }
}

/* 80CE789C-80CE78D4 000CFC 0038+00 1/1 0/0 0/0 .text            getFlowNodeNum__14daObj_SSItem_cFv
 */
u16 daObj_SSItem_c::getFlowNodeNum() {
    u16 num = home.angle.x;
    bool bVar1 = false;
    if (num == 0xFFFF || num == 0) {
        bVar1 = true;
    }

    int num2;
    if (!bVar1) {
        num2 = num;
    } else {
        num2 = -1;
    }

    return num2;
}

/* 80CE78D4-80CE78E0 000D34 000C+00 1/1 0/0 0/0 .text            getValue__14daObj_SSItem_cFv */
u16 daObj_SSItem_c::getValue() {
    return (fopAcM_GetParam(this) >> 0xC) & 0xFFFF;
}

/* 80CE78E0-80CE7950 000D40 0070+00 1/1 0/0 0/0 .text            restart__14daObj_SSItem_cFv */
void daObj_SSItem_c::restart() {
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    setProcess(&wait);
}

/* 80CE7950-80CE7B04 000DB0 01B4+00 1/1 0/0 0/0 .text            initialize__14daObj_SSItem_cFv */
void daObj_SSItem_c::initialize() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    eventInfo.setArchiveName(getResName());
    attention_info.flags = 0;
    attention_info.distances[fopAc_attn_CARRY_e] = 6;
    fopAcM_OnCarryType(this, fopAcM_CARRY_SIDE);
    mAcchCir.SetWall(24.0f, 12.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mStts.Init(0xFF, 0, this);
    mAtCyl.Set(mCcDCyl);
    mAtCyl.SetStts(&mStts);
    mTgCyl.Set(mCcDCyl);
    mTgCyl.SetStts(&mStts);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0xB00 = mAcch.GetGroundH();
    setEnvTevColor();
    setRoomNo();
    restart();
    Execute();
}

/* 80CE7B04-80CE7BB4 000F64 00B0+00 1/1 0/0 0/0 .text
 * setProcess__14daObj_SSItem_cFM14daObj_SSItem_cFPCvPvPv_i     */
int daObj_SSItem_c::setProcess(ProcessFunc i_process) {
    mEventType = 2;
    if (mProcessFunc != NULL) {
        (this->*mProcessFunc)(NULL);
    }
    mEventType = 0;
    mProcessFunc = i_process;
    if (mProcessFunc != NULL) {
        (this->*mProcessFunc)(NULL);
    }
    mEventType = 1;
    return 1;
}

/* 80CE7BB4-80CE7C24 001014 0070+00 1/1 0/0 0/0 .text            setParam__14daObj_SSItem_cFv */
void daObj_SSItem_c::setParam() {
    scale.set(1.4f, 1.4f, 1.4f);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    mAcchCir.SetWallR(24.0f);
    mAcchCir.SetWallH(12.0f);
    gravity = -5.0f;
}

/* 80CE7C24-80CE7C80 001084 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__14daObj_SSItem_cFv
 */
void daObj_SSItem_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80CE7C80-80CE7CC4 0010E0 0044+00 2/2 0/0 0/0 .text            setRoomNo__14daObj_SSItem_cFv */
void daObj_SSItem_c::setRoomNo() {
    s32 roomId = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, roomId);
    mStts.SetRoomId(roomId);
}

/* 80CE7CC4-80CE7D28 001124 0064+00 1/1 0/0 0/0 .text            setMtx__14daObj_SSItem_cFv */
void daObj_SSItem_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CE7D28-80CE7D5C 001188 0034+00 1/1 0/0 0/0 .text            setAttnPos__14daObj_SSItem_cFv */
void daObj_SSItem_c::setAttnPos() {
    attention_info.position = current.pos;
    eyePos = current.pos;
}

/* 80CE7D5C-80CE7D8C 0011BC 0030+00 1/0 0/0 0/0 .text            wait__14daObj_SSItem_cFPv */
int daObj_SSItem_c::wait(void* param_0) {
    switch (mEventType) {
    case 0:
        field_0xA8C.set(0.0f, 0.0f, 0.0f);
    case 1:
    case 2:
    default:
        return 1;
    }
}

/* 80CE7D8C-80CE7DAC 0011EC 0020+00 1/0 0/0 0/0 .text            daObj_SSItem_Create__FPv */
static int daObj_SSItem_Create(void* i_this) {
    return static_cast<daObj_SSItem_c*>(i_this)->create();
}

/* 80CE7DAC-80CE7DCC 00120C 0020+00 1/0 0/0 0/0 .text            daObj_SSItem_Delete__FPv */
static int daObj_SSItem_Delete(void* i_this) {
    return static_cast<daObj_SSItem_c*>(i_this)->Delete();
}

/* 80CE7DCC-80CE7DEC 00122C 0020+00 1/0 0/0 0/0 .text            daObj_SSItem_Execute__FPv */
static int daObj_SSItem_Execute(void* i_this) {
    return static_cast<daObj_SSItem_c*>(i_this)->Execute();
}

/* 80CE7DEC-80CE7E0C 00124C 0020+00 1/0 0/0 0/0 .text            daObj_SSItem_Draw__FPv */
static int daObj_SSItem_Draw(void* i_this) {
    return static_cast<daObj_SSItem_c*>(i_this)->Draw();
}

/* 80CE7E0C-80CE7E14 00126C 0008+00 1/0 0/0 0/0 .text            daObj_SSItem_IsDelete__FPv */
static int daObj_SSItem_IsDelete(void* i_this) {
    return 1;
}

/* 80CE7FA8-80CE7FC8 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SSItem_MethodTable */
static actor_method_class daObj_SSItem_MethodTable = {
    (process_method_func)daObj_SSItem_Create,  (process_method_func)daObj_SSItem_Delete,
    (process_method_func)daObj_SSItem_Execute, (process_method_func)daObj_SSItem_IsDelete,
    (process_method_func)daObj_SSItem_Draw,
};

/* 80CE7FC8-80CE7FF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SSITEM */
extern actor_process_profile_definition g_profile_OBJ_SSITEM = {
    fpcLy_CURRENT_e,
    7,
    fpcLy_CURRENT_e,
    PROC_OBJ_SSITEM,
    &g_fpcLf_Method.base,
    sizeof(daObj_SSItem_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x45,
    &daObj_SSItem_MethodTable,
    0x44100,
    0,
    fopAc_CULLBOX_CUSTOM_e,
};
