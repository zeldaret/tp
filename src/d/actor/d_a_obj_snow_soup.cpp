/**
 * @file d_a_obj_snow_soup.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_snow_soup.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_procname.h"

/* 80CDF858-80CDF878 000078 0020+00 1/1 0/0 0/0 .text daObjSnowSoup_c_createHeap__FP10fopAc_ac_c
 */
static int daObjSnowSoup_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjSnowSoup_c*>(i_this)->createHeap();
}

/* 80CE0280-80CE0284 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "SnowSoup";

/* 80CE023C-80CE0248 000000 000C+00 3/3 0/0 0/0 .rodata          SOUP_MODEL_OFFSET */
static Vec const SOUP_MODEL_OFFSET = {3317.86f, 214.73f, 323.3f};

/* 80CDF878-80CDF910 000098 0098+00 2/2 0/0 0/0 .text            __ct__15daObjSnowSoup_cFv */
daObjSnowSoup_c::daObjSnowSoup_c() {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 2; j++) {
            mpSmkEmtChange[i][j] = NULL;
        }
    }
    memset(mpSmkEmtCommon, 0, 0x10);
    memset(mpModel, 0, 0xc);
}

/* 80CDF910-80CDF990 000130 0080+00 1/0 0/0 0/0 .text            __dt__15daObjSnowSoup_cFv */
daObjSnowSoup_c::~daObjSnowSoup_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80CDF990-80CDFA3C 0001B0 00AC+00 1/1 0/0 0/0 .text            createHeap__15daObjSnowSoup_cFv */
int daObjSnowSoup_c::createHeap() {
    static u32 const BMD_IDX[3] = {3, 4, 5};
    for (int i = 0; i < 3; i++) {
        J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMD_IDX[i]);
        mpModel[i] = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
        if (mpModel[i] == NULL) {
            return false;
        }
    }
    return true;
}

/* 80CDFA3C-80CDFB70 00025C 0134+00 1/1 0/0 0/0 .text            create__15daObjSnowSoup_cFv */
cPhs__Step daObjSnowSoup_c::create() {
    fopAcM_SetupActor(this, daObjSnowSoup_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(this, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daObjSnowSoup_c_createHeap, 0x6500)) {
            return cPhs_ERROR_e;
        }
        init();
        setModelMtx();
        fopAcM_SetMtx(this, mpModel[mState]->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel[mState]->getModelData());
        createSmkEmtCommon();
        createSmkEmtChange(mState);
        mBubblePos.set(SOUP_MODEL_OFFSET.x, SOUP_MODEL_OFFSET.y, SOUP_MODEL_OFFSET.z);
        mFirewoodPos.set(SOUP_MODEL_OFFSET.x, 0.0f, SOUP_MODEL_OFFSET.z);
    }
    return step;
}

/* 80CDFB70-80CDFBC4 000390 0054+00 1/1 0/0 0/0 .text            Delete__15daObjSnowSoup_cFv */
int daObjSnowSoup_c::Delete() {
    deleteSmkEmtCommon();
    deleteSmkEmtChange(mState);
    this->~daObjSnowSoup_c();
    return 1;
}

/* 80CDFBC4-80CDFC40 0003E4 007C+00 1/1 0/0 0/0 .text            draw__15daObjSnowSoup_cFv */
int daObjSnowSoup_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel[mState], &tevStr);
    mDoExt_modelUpdate(mpModel[mState]);
    return 1;
}

/* 80CDFC40-80CDFE14 000460 01D4+00 1/1 0/0 0/0 .text            execute__15daObjSnowSoup_cFv */
int daObjSnowSoup_c::execute() {
    mDoAud_seStartLevel(Z2SE_OBJ_NABE_BUBBLE, &mBubblePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mDoAud_seStartLevel(Z2SE_OBJ_FIREWOOD_BURNING, &mFirewoodPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    switch (mState) {
    case 0:
            /* dSv_event_flag_c::F_0003 - Snowpeak Ruins - Handed over tomato puree and left room */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[7])) {
            deleteSmkEmtChange(mState);
            mState = 1;
            createSmkEmtChange(mState);
            setModelMtx();
            fopAcM_SetMtx(this, mpModel[mState]->getBaseTRMtx());
            return 1;
        }
        break;
    case 1:
            /* dSv_event_flag_c::F_0004 - Snowpeak Ruins - Handed over secret ingredient and left room */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[8])) {
            deleteSmkEmtChange(mState);
            mState = 2;
            createSmkEmtChange(mState);
            setModelMtx();
            fopAcM_SetMtx(this, mpModel[mState]->getBaseTRMtx());
            return 1;
        }
        break;
    case 2:
        break;
    }
    setModelMtx();
    return 1;
}

/* 80CDFE14-80CDFEA4 000634 0090+00 1/1 0/0 0/0 .text            init__15daObjSnowSoup_cFv */
void daObjSnowSoup_c::init() {
    mState = 0;
        /* dSv_event_flag_c::F_0004 - Snowpeak Ruins - Handed over secret ingredient and left room */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[8])) {
        mState = 2;
               /* dSv_event_flag_c::F_0003 - Snowpeak Ruins - Handed over tomato puree and left room */
    } else if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[7])) {
        mState = 1;
    }
}

/* 80CDFEA4-80CDFF14 0006C4 0070+00 2/2 0/0 0/0 .text            setModelMtx__15daObjSnowSoup_cFv */
void daObjSnowSoup_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel[mState]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CDFF14-80CDFFF8 000734 00E4+00 1/1 0/0 0/0 .text createSmkEmtCommon__15daObjSnowSoup_cFv */
void daObjSnowSoup_c::createSmkEmtCommon() {
    static u16 const PARTICLE_NAME[4] = {0x87E1, 0x87E2, 0x87E3, 0x87E6};
    cXyz vec1(0.0f, 0.0f, 0.0f);
    csXyz vec2(0, 0, 0);
    cXyz vec3(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 4; i++) {
        mpSmkEmtCommon[i] = dComIfGp_particle_set(PARTICLE_NAME[i], &vec1, &vec2, &vec3);
    }
}

/* 80CDFFF8-80CE003C 000818 0044+00 1/1 0/0 0/0 .text deleteSmkEmtCommon__15daObjSnowSoup_cFv */
void daObjSnowSoup_c::deleteSmkEmtCommon() {
    for (int i = 0; i < 4; i++) {
        if (mpSmkEmtCommon[i] != NULL) {
            mpSmkEmtCommon[i]->becomeInvalidEmitter();
            mpSmkEmtCommon[i] = NULL;
        }
    }
}

/* 80CE003C-80CE0134 00085C 00F8+00 2/2 0/0 0/0 .text createSmkEmtChange__15daObjSnowSoup_cFi */
void daObjSnowSoup_c::createSmkEmtChange(int i_state) {
    static u16 const PARTICLE_NAME[3][2] = {{0x8984, 0x8985}, {0x8A8B, 0x8A8D}, {0x8A8C, 0x8A8E}};
    cXyz vec1(0.0f, 0.0f, 0.0f);
    csXyz vec2(0, 0, 0);
    cXyz vec3(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 2; i++) {
        mpSmkEmtChange[i_state][i] =
            dComIfGp_particle_set(PARTICLE_NAME[i_state][i], &vec1, &vec2, &vec3);
    }
}

/* 80CE0134-80CE0180 000954 004C+00 2/2 0/0 0/0 .text deleteSmkEmtChange__15daObjSnowSoup_cFi */
void daObjSnowSoup_c::deleteSmkEmtChange(int i_state) {
    for (int i = 0; i < 2; i++) {
        if (mpSmkEmtChange[i_state][i] != NULL) {
            mpSmkEmtChange[i_state][i]->becomeInvalidEmitter();
            mpSmkEmtChange[i_state][i] = NULL;
        }
    }
}

/* 80CE0180-80CE01D4 0009A0 0054+00 1/0 0/0 0/0 .text daObjSnowSoup_create__FP15daObjSnowSoup_c */

static cPhs__Step daObjSnowSoup_create(daObjSnowSoup_c* i_this) {
    fopAcM_SetupActor(i_this, daObjSnowSoup_c);
    return i_this->create();
}

/* 80CE01D4-80CE01F4 0009F4 0020+00 1/0 0/0 0/0 .text daObjSnowSoup_Delete__FP15daObjSnowSoup_c */
static int daObjSnowSoup_Delete(daObjSnowSoup_c* i_this) {
    return i_this->Delete();
}

/* 80CE01F4-80CE0214 000A14 0020+00 1/0 0/0 0/0 .text daObjSnowSoup_execute__FP15daObjSnowSoup_c
 */
static int daObjSnowSoup_execute(daObjSnowSoup_c* i_this) {
    return i_this->execute();
}

/* 80CE0214-80CE0234 000A34 0020+00 1/0 0/0 0/0 .text daObjSnowSoup_draw__FP15daObjSnowSoup_c */
static int daObjSnowSoup_draw(daObjSnowSoup_c* i_this) {
    return i_this->draw();
}

/* 80CE0284-80CE02A4 -00001 0020+00 1/0 0/0 0/0 .data            daObjSnowSoup_METHODS */
static actor_method_class daObjSnowSoup_METHODS = {
    (process_method_func)daObjSnowSoup_create,
    (process_method_func)daObjSnowSoup_Delete,
    (process_method_func)daObjSnowSoup_execute,
    (process_method_func)NULL,
    (process_method_func)daObjSnowSoup_draw,
};

/* 80CE02A4-80CE02D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SnowSoup */
extern actor_process_profile_definition g_profile_Obj_SnowSoup = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_SnowSoup,
    &g_fpcLf_Method.base,
    sizeof(daObjSnowSoup_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2E2,
    &daObjSnowSoup_METHODS,
    0x44100,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
