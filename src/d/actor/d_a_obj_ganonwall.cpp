/**
 * d_a_obj_ganonwall.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ganonwall.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* ############################################################################################## */
/* 80BF55EC-80BF564C 000000 0060+00 1/1 0/0 0/0 .rodata          l_idx */
static u8 const l_idx[24][4] = {
    {0x17, 0x05, 0x06, 0x01}, {0x17, 0x05, 0x06, 0x02}, {0x17, 0x05, 0x06, 0x03},
    {0x17, 0x05, 0x06, 0x04}, {0x17, 0x05, 0x06, 0x05}, {0x05, 0x06, 0x01, 0x00},
    {0x06, 0x0B, 0x05, 0x00}, {0x06, 0x0B, 0x05, 0x01}, {0x06, 0x0B, 0x05, 0x02},
    {0x06, 0x0B, 0x05, 0x03}, {0x06, 0x0B, 0x05, 0x04}, {0x0B, 0x11, 0x06, 0x00},
    {0x0B, 0x11, 0x06, 0x01}, {0x0B, 0x11, 0x06, 0x02}, {0x0B, 0x11, 0x06, 0x03},
    {0x0B, 0x11, 0x06, 0x04}, {0x0B, 0x11, 0x06, 0x05}, {0x11, 0x13, 0x02, 0x00},
    {0x11, 0x13, 0x02, 0x01}, {0x13, 0x17, 0x04, 0x00}, {0x13, 0x17, 0x04, 0x01},
    {0x13, 0x17, 0x04, 0x02}, {0x13, 0x17, 0x04, 0x03}, {0x17, 0x05, 0x06, 0x00},
};

/* 80BF564C-80BF56AC 000060 0060+00 0/1 0/0 0/0 .rodata          l_color */
static const GXColor l_color[24] = {
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0x96, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0x64, 0x64, 0x32, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0x64, 0x64, 0x64, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0x78, 0x78, 0x78, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
    {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xB4, 0xB4, 0xB4, 0xFF},
};

/* 80BF56E4-80BF56E8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Y_gwall";

/* 80BF56E8-80BF56EC -00001 0004+00 1/1 0/0 0/0 .data            l_matName */
static char* l_matName = "mat00";

/* 80BF4CF8-80BF4D18 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjGWall_c*>(i_this)->CreateHeap();
}

/* 80BF4D18-80BF4D54 000098 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjGWall_cFv */
void daObjGWall_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80BF4D54-80BF4DA8 0000D4 0054+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjGWall_cFv */
void daObjGWall_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(this->shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);
}

/* 80BF4DA8-80BF4E8C 000128 00E4+00 1/1 0/0 0/0 .text            Create__12daObjGWall_cFv */
int daObjGWall_c::Create() {
    mEventBit1 = getEventBit1();
    mEventBit2 = getEventBit2();
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    cullSizeFar = 1000000.f;
    mMatIdx = 0xffff;
    JUTNameTab* name_table = mpModel->getModelData()->getMaterialTable().getMaterialName();
    for (u16 i = 0; i < mpModel->getModelData()->getMaterialTable().getMaterialNum(); i++) {
        if (strcmp(name_table->getName(i), l_matName) == 0) {
            mMatIdx = i;
        }
    }
    execute();
    return 1;
}

/* 80BF4E8C-80BF4FA8 00020C 011C+00 1/1 0/0 0/0 .text            CreateHeap__12daObjGWall_cFv */
int daObjGWall_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 7);
    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL ||
        mpBtkAnm->init(model_data, btk, 1, 2, 1.0, 0, -1) == 0)
    {
        return 0;
    }
    return 1;
}

/* 80BF4FF0-80BF50A4 000370 00B4+00 1/1 0/0 0/0 .text            create__12daObjGWall_cFv */
int daObjGWall_c::create() {
    fopAcM_SetupActor(this, daObjGWall_c);
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x3500)) {
            return cPhs_ERROR_e;
        }
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80BF50A4-80BF50CC 000424 0028+00 2/2 0/0 0/0 .text            execute__12daObjGWall_cFv */
int daObjGWall_c::execute() {
    mpBtkAnm->play();
    return 1;
}

/* 80BF50CC-80BF5168 00044C 009C+00 1/1 0/0 0/0 .text            checkDraw__12daObjGWall_cFv */
int daObjGWall_c::checkDraw() {
    if (mEventBit2 != 0x3ff && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mEventBit2]) ||
        mEventBit1 != 0x3ff && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mEventBit1]))
    {
        return 0;
    }
    return 1;
}

/* 80BF5168-80BF5530 0004E8 03C8+00 1/1 0/0 0/0 .text            draw__12daObjGWall_cFv */
int daObjGWall_c::draw() {
    if (!checkDraw()) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mpBtkAnm->entry(mpModel->getModelData());

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
    float minute = dKy_getdaytime_minute();
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

    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80BF5530-80BF5564 0008B0 0034+00 1/1 0/0 0/0 .text            _delete__12daObjGWall_cFv */
int daObjGWall_c::_delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80BF5564-80BF5584 0008E4 0020+00 1/0 0/0 0/0 .text            daObjGWall_Draw__FP12daObjGWall_c
 */
static int daObjGWall_Draw(daObjGWall_c* i_this) {
    return i_this->draw();
}

/* 80BF5584-80BF55A4 000904 0020+00 1/0 0/0 0/0 .text daObjGWall_Execute__FP12daObjGWall_c */
static int daObjGWall_Execute(daObjGWall_c* i_this) {
    return i_this->execute();
}

/* 80BF55A4-80BF55C4 000924 0020+00 1/0 0/0 0/0 .text            daObjGWall_Delete__FP12daObjGWall_c
 */
static int daObjGWall_Delete(daObjGWall_c* i_this) {
    return i_this->_delete();
}

/* 80BF55C4-80BF55E4 000944 0020+00 1/0 0/0 0/0 .text            daObjGWall_Create__FP12daObjGWall_c
 */
static int daObjGWall_Create(daObjGWall_c* i_this) {
    return i_this->create();
}

/* 80BF56EC-80BF570C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGWall_Method */
static actor_method_class l_daObjGWall_Method = {
    (process_method_func)daObjGWall_Create,  
    (process_method_func)daObjGWall_Delete,
    (process_method_func)daObjGWall_Execute, 
    0,
    (process_method_func)daObjGWall_Draw,
};

/* 80BF570C-80BF573C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GanonWall */
extern actor_process_profile_definition g_profile_Obj_GanonWall = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_GanonWall,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjGWall_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    570,                     // mPriority
    &l_daObjGWall_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
