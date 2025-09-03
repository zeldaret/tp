/**
 * @file d_a_obj_ganonwall2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ganonwall2.h"
#include "d/d_com_inf_game.h"

/* ############################################################################################## */
/* 80BF610C-80BF616C 000000 0060+00 2/2 0/0 0/0 .rodata          l_idx */
static u8 const l_idx[24][4] = {
    0x17, 0x05, 0x06, 0x01, 0x17, 0x05, 0x06, 0x02, 0x17, 0x05, 0x06, 0x03, 0x17, 0x05, 0x06, 0x04,
    0x17, 0x05, 0x06, 0x05, 0x05, 0x06, 0x01, 0x00, 0x06, 0x0B, 0x05, 0x00, 0x06, 0x0B, 0x05, 0x01,
    0x06, 0x0B, 0x05, 0x02, 0x06, 0x0B, 0x05, 0x03, 0x06, 0x0B, 0x05, 0x04, 0x0B, 0x11, 0x06, 0x00,
    0x0B, 0x11, 0x06, 0x01, 0x0B, 0x11, 0x06, 0x02, 0x0B, 0x11, 0x06, 0x03, 0x0B, 0x11, 0x06, 0x04,
    0x0B, 0x11, 0x06, 0x05, 0x11, 0x13, 0x02, 0x00, 0x11, 0x13, 0x02, 0x01, 0x13, 0x17, 0x04, 0x00,
    0x13, 0x17, 0x04, 0x01, 0x13, 0x17, 0x04, 0x02, 0x13, 0x17, 0x04, 0x03, 0x17, 0x05, 0x06, 0x00,
};

/* 80BF616C-80BF61CC 000060 0060+00 0/1 0/0 0/0 .rodata          l_color */
static const GXColor l_color[24] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x96, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x64, 0x64, 0x32, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0x64, 0x64, 0x64, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x78, 0x78, 0x78, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB4, 0xB4, 0xB4, 0xFF,
};

/* 80BF620C-80BF6210 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_CTGWall";

/* 80BF6210-80BF6214 -00001 0004+00 1/1 0/0 0/0 .data            l_matName */
static char* l_matName = "mat00";

/* 80BF57D8-80BF5814 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjGWall2_cFv */
void daObjGWall2_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80BF5814-80BF5878 0000B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjGWall2_cFv */
void daObjGWall2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(this->shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BF5878-80BF5950 000118 00D8+00 1/0 0/0 0/0 .text            Create__13daObjGWall2_cFv */
int daObjGWall2_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    // cullSizeFar = 1000000.f;
    mMatIdx = 0xffff;
    JUTNameTab* name_table = mpModel->getModelData()->getMaterialTable().getMaterialName();
    for (u16 i = 0; i < mpModel->getModelData()->getMaterialTable().getMaterialNum(); i++) {
        if (strcmp(name_table->getName(i), l_matName) == 0) {
            mMatIdx = i;
        }
    }
    mSePos.set(0.0f, 800.0f, -10372.5f);
    return 1;
}

/* ############################################################################################## */
/* 80BF5950-80BF5A6C 0001F0 011C+00 1/0 0/0 0/0 .text            CreateHeap__13daObjGWall2_cFv */
int daObjGWall2_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    mpModel = mDoExt_J3DModel__create(model_data, 0, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 8);
    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL ||
        mpBtkAnm->init(model_data, btk, 1, 2, 1.0f, 0, -1) == 0)
    {
        return 0;
    }
    return 1;
}

/* 80BF5AB4-80BF5B74 000354 00C0+00 1/1 0/0 0/0 .text            create1st__13daObjGWall2_cFv */
int daObjGWall2_c::create1st() {
    if (getEventBit1() != 0x3FF &&
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[(u16)getEventBit1()]) != 0)
    {
        return cPhs_ERROR_e;
    }
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step)MoveBGCreate(l_arcName, 11, NULL, 0x6100, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* ############################################################################################## */
/* 80BF5B74-80BF5C0C 000414 0098+00 1/0 0/0 0/0 .text            Execute__13daObjGWall2_cFPPA3_A4_f
 */
int daObjGWall2_c::Execute(Mtx** i_bgMtx) {
    mpBtkAnm->play();
    *i_bgMtx = &mBgMtx;
    setBaseMtx();
    mDoAud_seStartLevel(Z2SE_OBJ_HYRULE_BARRIER, &mSePos, 0, 0);
    return 1;
}

/* ############################################################################################## */
/* 80BF5C0C-80BF6004 0004AC 03F8+00 1/0 0/0 0/0 .text            Draw__13daObjGWall2_cFv */
int daObjGWall2_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    for (u16 i = 0; i < mpModel->getModelData()->getMaterialTable().getMaterialNum(); i++) {
        J3DMaterial* mat = mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(i);
        J3DFog* fog = mat->getPEBlock()->getFog();
        if (fog != NULL) {
            fog = mat->getPEBlock()->getFog();
            J3DFogInfo* fog_info = fog->getFogInfo();
            fog_info->mColor.r = 0;
            fog_info->mColor.g = 0;
            fog_info->mColor.b = 0;
            fog_info->mStartZ = 1000.0f;
            fog_info->mEndZ = 250000.0f;
        }
    }

    int hour = dKy_getdaytime_hour();
    f32 minute = dKy_getdaytime_minute();
    J3DGXColor* mat_tev_k_color =
        mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(mMatIdx)->getTevKColor(1);
    int idx1 = l_idx[hour][0];
    int idx2 = l_idx[hour][1];
    mat_tev_k_color->r = (l_color[idx1].r +
                          (l_color[idx2].r - l_color[idx1].r) *
                              ((minute + l_idx[hour][3] * 60.0f) / ((l_idx[hour][2] + 1) * 60.0f)));
    mat_tev_k_color->g = (l_color[idx1].g +
                          (l_color[idx2].g - l_color[idx1].g) *
                              ((minute + l_idx[hour][3] * 60.0f) / ((l_idx[hour][2] + 1) * 60.0f)));
    mat_tev_k_color->b = (l_color[idx1].b +
                          (l_color[idx2].b - l_color[idx1].b) *
                              ((minute + l_idx[hour][3] * 60.0f) / ((l_idx[hour][2] + 1) * 60.0f)));
    mat_tev_k_color->a = (l_color[idx1].a +
                          (l_color[idx2].r - l_color[idx1].a) *
                              ((minute + l_idx[hour][3] * 60.0f) / ((l_idx[hour][2] + 1) * 60.0f)));

    dComIfGd_setListBG();
    mpBtkAnm->entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);
    mDoExt_btkAnmRemove(mpModel->getModelData());
    dComIfGd_setList();
    return 1;
}

/* 80BF6004-80BF6038 0008A4 0034+00 1/0 0/0 0/0 .text            Delete__13daObjGWall2_cFv */
int daObjGWall2_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* ############################################################################################## */
/* 80BF6038-80BF6098 0008D8 0060+00 1/0 0/0 0/0 .text daObjGWall2_create1st__FP13daObjGWall2_c */
static int daObjGWall2_create1st(daObjGWall2_c* i_this) {
    fopAcM_SetupActor(i_this, daObjGWall2_c);
    return i_this->create1st();
}

/* 80BF6098-80BF60B8 000938 0020+00 1/0 0/0 0/0 .text daObjGWall2_MoveBGDelete__FP13daObjGWall2_c
 */
static int daObjGWall2_MoveBGDelete(daObjGWall2_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BF60B8-80BF60D8 000958 0020+00 1/0 0/0 0/0 .text daObjGWall2_MoveBGExecute__FP13daObjGWall2_c
 */
static int daObjGWall2_MoveBGExecute(daObjGWall2_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BF60D8-80BF6104 000978 002C+00 1/0 0/0 0/0 .text daObjGWall2_MoveBGDraw__FP13daObjGWall2_c */
static int daObjGWall2_MoveBGDraw(daObjGWall2_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BF6214-80BF6234 -00001 0020+00 1/0 0/0 0/0 .data            daObjGWall2_METHODS */
static actor_method_class daObjGWall2_METHODS = {
    (process_method_func)daObjGWall2_create1st,
    (process_method_func)daObjGWall2_MoveBGDelete,
    (process_method_func)daObjGWall2_MoveBGExecute, 
    0,
    (process_method_func)daObjGWall2_MoveBGDraw,
};

/* 80BF6234-80BF6264 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GanonWall2 */
extern actor_process_profile_definition g_profile_Obj_GanonWall2 = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_GanonWall2,     // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjGWall2_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    580,                     // mPriority
    &daObjGWall2_METHODS,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
