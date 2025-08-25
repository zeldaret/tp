/**
 * d_a_obj_sekizo.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_sekizo.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

/* 80CCE19C-80CCE1A4 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
static struct {
    u32 bmdIdx;
    u32 resIdx;
} l_bmdData[1] = {4, 1};

/* 80CCE1A4-80CCE1AC 000028 0008+00 0/1 0/0 0/0 .data            l_dzbData */
static struct {
    u32 dzbIdx;
    u32 resIdx;
} l_dzbData[1] = {7, 1};

/* 80CCE1AC-80CCE1B4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {"", "Sekizo"};

/* 80CCDC0C-80CCDD00 0000EC 00F4+00 1/1 0/0 0/0 .text            create__14daObj_Sekizo_cFv */
cPhs__Step daObj_Sekizo_c::create() {
    fopAcM_SetupActor(this, daObj_Sekizo_c);

    field_0x5b0 = 0;
    cPhs__Step step =
        (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_resNameList[l_bmdData[field_0x5b0].resIdx]);
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)MoveBGCreate(l_resNameList[l_dzbData[field_0x5b0].resIdx],
                                        l_dzbData[field_0x5b0].dzbIdx, dBgS_MoveBGProc_TypicalRotY,
                                        0x4000, NULL);
        if (step == cPhs_ERROR_e) {
            return step;
        }
    }
    return step;
}

/* 80CCDD00-80CCDD8C 0001E0 008C+00 1/0 0/0 0/0 .text            CreateHeap__14daObj_Sekizo_cFv */
int daObj_Sekizo_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(
        l_resNameList[l_bmdData[field_0x5b0].resIdx], l_bmdData[field_0x5b0].bmdIdx);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return false;
    }

    return true;
}

/* 80CCDD8C-80CCDDE8 00026C 005C+00 1/0 0/0 0/0 .text            Create__14daObj_Sekizo_cFv */
int daObj_Sekizo_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    field_0x5b2 = false;
    field_0x5b1 = true;
    return 1;
}

/* 80CCDDE8-80CCDE3C 0002C8 0054+00 1/0 0/0 0/0 .text            Delete__14daObj_Sekizo_cFv */
int daObj_Sekizo_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_resNameList[l_bmdData[field_0x5b0].resIdx]);
    return 1;
}

/* 80CCDE3C-80CCDEF4 00031C 00B8+00 1/0 0/0 0/0 .text            Execute__14daObj_Sekizo_cFPPA3_A4_f
 */
int daObj_Sekizo_c::Execute(Mtx** i_mtx) {
    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        *i_mtx = &mBgMtx;
        setBaseMtx();
        if (field_0x5b2) {
            if (field_0x5b1) {
                dComIfG_Bgsp().Release(mpBgW);
                field_0x5b1 = false;
            }
        } else if (!field_0x5b1) {
            dComIfG_Bgsp().Regist(mpBgW, this);
            field_0x5b1 = true;
        }
    }
    return 1;
}

/* 80CCDEF4-80CCDFA4 0003D4 00B0+00 1/0 0/0 0/0 .text            Draw__14daObj_Sekizo_cFv */
int daObj_Sekizo_c::Draw() {
    if (!field_0x5b2) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setList();
    }
    return 1;
}

/* 80CCDFA4-80CCDFE0 000484 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObj_Sekizo_cFv */
void daObj_Sekizo_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CCDFE0-80CCE044 0004C0 0064+00 2/2 0/0 0/0 .text            setBaseMtx__14daObj_Sekizo_cFv */
void daObj_Sekizo_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CCE044-80CCE064 000524 0020+00 1/0 0/0 0/0 .text            daObj_Sekizo_Create__FPv */
static int daObj_Sekizo_Create(void* i_this) {
    return static_cast<daObj_Sekizo_c*>(i_this)->create();
}

/* 80CCE064-80CCE084 000544 0020+00 1/0 0/0 0/0 .text            daObj_Sekizo_Delete__FPv */
static int daObj_Sekizo_Delete(void* i_this) {
    return static_cast<daObj_Sekizo_c*>(i_this)->MoveBGDelete();
}

/* 80CCE084-80CCE0A4 000564 0020+00 1/0 0/0 0/0 .text            daObj_Sekizo_Execute__FPv */
static int daObj_Sekizo_Execute(void* i_this) {
    return static_cast<daObj_Sekizo_c*>(i_this)->MoveBGExecute();
}

/* 80CCE0A4-80CCE0D0 000584 002C+00 1/0 0/0 0/0 .text            daObj_Sekizo_Draw__FPv */
static int daObj_Sekizo_Draw(void* i_this) {
    return static_cast<daObj_Sekizo_c*>(i_this)->MoveBGDraw();
}

/* 80CCE0D0-80CCE0D8 0005B0 0008+00 1/0 0/0 0/0 .text            daObj_Sekizo_IsDelete__FPv */
static int daObj_Sekizo_IsDelete(void* i_this) {
    return 1;
}

/* 80CCE240-80CCE24C 000008 000C+00 1/1 0/0 0/0 .bss             @3800 */
static u8 lit_3800[12];

/* 80CCE24C-80CCE250 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Sekizo_Param_c l_HIO;

/* 80CCE1B4-80CCE1D4 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Sekizo_MethodTable */
static actor_method_class daObj_Sekizo_MethodTable = {
    (process_method_func)daObj_Sekizo_Create, (process_method_func)daObj_Sekizo_Delete,
    (process_method_func)daObj_Sekizo_Execute, (process_method_func)daObj_Sekizo_IsDelete,
    (process_method_func)daObj_Sekizo_Draw};

/* 80CCE1D4-80CCE204 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SEKIZO */
extern actor_process_profile_definition g_profile_OBJ_SEKIZO = {
    fpcLy_CURRENT_e,            // mLayerID
    7,                          // mListID
    fpcPi_CURRENT_e,            // mListPrio
    PROC_OBJ_SEKIZO,            // mProcName
    &g_fpcLf_Method.base,      // sub_method
    sizeof(daObj_Sekizo_c),     // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // mSubMtd
    88,                         // mPriority
    &daObj_Sekizo_MethodTable,  // mSubMtd
    0x44000,                    // status
    fopAc_ACTOR_e,              // mActorType
    fopAc_CULLBOX_CUSTOM_e,     // cullType
};
