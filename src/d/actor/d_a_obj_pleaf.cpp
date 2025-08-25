/**
 * d_a_obj_pleaf.cpp
 * Object - Pumpkin Leaf
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_pleaf.h"
#include "dol2asm.h"

/* 80CB189C-80CB18A0 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "J_Hatake";

/* 80CB0D4C-80CB0F08 0000EC 01BC+00 1/0 0/0 0/0 .text            __dt__13daObj_Pleaf_cFv */
daObj_Pleaf_c::~daObj_Pleaf_c() {
    dComIfG_resDelete(&mPhaseReq, getResName());
}

/* 80CB1864-80CB1874 000000 0010+00 2/2 0/0 0/0 .rodata          m__19daObj_Pleaf_Param_c */
daObj_Pleaf_Param_c::params const daObj_Pleaf_Param_c::m = {0, -3.0f, 1.0f, 900.0f};

/* 80CB0F08-80CB1180 0002A8 0278+00 1/1 0/0 0/0 .text            create__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::create() {
    fopAcM_SetupActor(this, daObj_Pleaf_c);
    mType = getType();
    int phase = dComIfG_resLoad(&mPhaseReq, getResName());
    if (phase == cPhs_COMPLEATE_e) {
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x810)) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 50.0f, 300.0f);
        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                     fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                     fopAcM_GetShapeAngle_p(this));
        mStts.Init(0xFF, 0, this);
        cXyz new_pos = current.pos;
        new_pos.y += 50.0f;
        mGndChk.SetPos(&new_pos);
        mGroundDist = dComIfG_Bgsp().GroundCross(&mGndChk);
        if (mGroundDist != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        Execute();
    }
    return phase;
}

/* 80CB134C-80CB13C4 0006EC 0078+00 1/1 0/0 0/0 .text            CreateHeap__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(getResName(), 3);
    if (modelData == NULL) {
        return 0;
    }
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel != NULL) {
        return 1;
    }
    return 0;
}

/* 80CB13C4-80CB13F8 000764 0034+00 1/1 0/0 0/0 .text            Delete__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::Delete() {
    this->~daObj_Pleaf_c();
    return 1;
}

/* 80CB13F8-80CB14D4 000798 00DC+00 2/2 0/0 0/0 .text            Execute__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::Execute() {
    cXyz new_pos = current.pos;
    new_pos.y += 50.0f;
    mGndChk.SetPos(&new_pos);
    mGroundDist = dComIfG_Bgsp().GroundCross(&mGndChk);
    if (mGroundDist != -1000000000.0f) {
        setEnvTevColor();
        setRoomNo();
    }
    setMtx();
    attention_info.position = current.pos;
    eyePos = attention_info.position;
    attention_info.flags = 0;
    return 1;
}

/* 80CB14D4-80CB1598 000874 00C4+00 1/1 0/0 0/0 .text            Draw__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    if (mGroundDist != -1000000000.0f) {
        mShadowKey =
            dComIfGd_setShadow(mShadowKey, 1, mpModel, &current.pos,
                               daObj_Pleaf_Param_c::m.field_0xc, 20.0f, current.pos.y, mGroundDist,
                               mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }
    return 1;
}

/* 80CB1598-80CB15B8 000938 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daObj_Pleaf_cFP10fopAc_ac_c            */
int daObj_Pleaf_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_Pleaf_c*>(i_this)->CreateHeap();
}

/* 80CB15B8-80CB15C8 000958 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Pleaf_cFv */
char* daObj_Pleaf_c::getResName() {
    return l_resName;
}

/* 80CB15C8-80CB15E8 000968 0020+00 1/1 0/0 0/0 .text            isDelete__13daObj_Pleaf_cFv */
int daObj_Pleaf_c::isDelete() {
    switch (mType) {
    case 0:
        return 0;
    default:
        return 0;
    }
}

/* 80CB15E8-80CB1644 000988 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__13daObj_Pleaf_cFv
 */
void daObj_Pleaf_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80CB1644-80CB1684 0009E4 0040+00 2/2 0/0 0/0 .text            setRoomNo__13daObj_Pleaf_cFv */
void daObj_Pleaf_c::setRoomNo() {
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mGndChk));
}

/* 80CB1684-80CB16E8 000A24 0064+00 1/1 0/0 0/0 .text            setMtx__13daObj_Pleaf_cFv */
void daObj_Pleaf_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CB16E8-80CB1708 000A88 0020+00 1/0 0/0 0/0 .text            daObj_Pleaf_Create__FPv */
static int daObj_Pleaf_Create(void* i_this) {
    return static_cast<daObj_Pleaf_c*>(i_this)->create();
}

/* 80CB1708-80CB1728 000AA8 0020+00 1/0 0/0 0/0 .text            daObj_Pleaf_Delete__FPv */
static int daObj_Pleaf_Delete(void* i_this) {
    return static_cast<daObj_Pleaf_c*>(i_this)->Delete();
}

/* 80CB1728-80CB1748 000AC8 0020+00 1/0 0/0 0/0 .text            daObj_Pleaf_Execute__FPv */
static int daObj_Pleaf_Execute(void* i_this) {
    return static_cast<daObj_Pleaf_c*>(i_this)->Execute();
}

/* 80CB1748-80CB1768 000AE8 0020+00 1/0 0/0 0/0 .text            daObj_Pleaf_Draw__FPv */
static int daObj_Pleaf_Draw(void* i_this) {
    return static_cast<daObj_Pleaf_c*>(i_this)->Draw();
}

/* 80CB1768-80CB1770 000B08 0008+00 1/0 0/0 0/0 .text            daObj_Pleaf_IsDelete__FPv */
static int daObj_Pleaf_IsDelete(void* i_this) {
    return 1;
}

/* 80CB18A0-80CB18C0 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Pleaf_MethodTable */
static actor_method_class daObj_Pleaf_MethodTable = {
    (process_method_func)daObj_Pleaf_Create,  (process_method_func)daObj_Pleaf_Delete,
    (process_method_func)daObj_Pleaf_Execute, (process_method_func)daObj_Pleaf_IsDelete,
    (process_method_func)daObj_Pleaf_Draw,
};

/* 80CB18C0-80CB18F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_PLEAF */
extern actor_process_profile_definition g_profile_OBJ_PLEAF = {
    fpcLy_CURRENT_e,           // mLayerID
    8,                         // mListID
    fpcPi_CURRENT_e,           // mListPrio
    PROC_OBJ_PLEAF,            // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daObj_Pleaf_c),     // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // sub_method
    713,                       // mPriority
    &daObj_Pleaf_MethodTable,  // sub_method
    0x44100,                   // mStatus
    fopAc_ACTOR_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80CB197C-80CB1980 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Pleaf_Param_c l_HIO;
