/**
 * d_a_obj_chandelier.cpp
 * Object - Chandelier (Hyrule Castle)
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_chandelier.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

static char* l_arcName = "L9Chand";

/* 80BC8DA4-80BC8DE0 000060 003C+00 1/2 0/0 0/0 .data            s_exeProc__17daObjChandelier_c */
daObjChandelier_proc daObjChandelier_c::s_exeProc[5] = {
    &exeModeWait,
    &exeModeStartSwg,
    &exeModeDown,
    &exeModeEndSwg,
    &exeModeHookSwg,
};

/* 80BC7F38-80BC7F74 000078 003C+00 2/2 0/0 0/0 .text            __ct__17daObjChandelier_cFv */
daObjChandelier_c::daObjChandelier_c() {
    /* empty function */
}

/* 80BC7F74-80BC8008 0000B4 0094+00 1/0 0/0 0/0 .text            __dt__17daObjChandelier_cFv */
daObjChandelier_c::~daObjChandelier_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80BC8008-80BC8078 000148 0070+00 1/0 0/0 0/0 .text            CreateHeap__17daObjChandelier_cFv
 */
int daObjChandelier_c::CreateHeap() {
    J3DModelData* bmd = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(bmd, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80BC8078-80BC8160 0001B8 00E8+00 1/0 0/0 0/0 .text            create1st__17daObjChandelier_cFv */
cPhs__Step daObjChandelier_c::create1st() {
    fopAcM_SetupActor(this, daObjChandelier_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(this, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x4500, &mMtx);
        if (step == cPhs_ERROR_e) {
            return step;
        }
        init();
        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    }
    return step;
}

/* 80BC8160-80BC8194 0002A0 0034+00 1/0 0/0 0/0 .text            Delete__17daObjChandelier_cFv */
int daObjChandelier_c::Delete() {
    this->~daObjChandelier_c();
    return 1;
}

/* 80BC8194-80BC8238 0002D4 00A4+00 1/0 0/0 0/0 .text            Draw__17daObjChandelier_cFv */
int daObjChandelier_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BC8238-80BC82C0 000378 0088+00 1/0 0/0 0/0 .text Execute__17daObjChandelier_cFPPA3_A4_f */
int daObjChandelier_c::Execute(f32 (**param_0)[3][4]) {
    if (s_exeProc[mMode] != NULL) {
        (this->*s_exeProc[mMode])();
    }
    setModelMtx();
    *param_0 = &mMtx;
    return 1;
}

/* 80BC82C0-80BC834C 000400 008C+00 1/0 0/0 0/0 .text            exeModeWait__17daObjChandelier_cFv
 */
void daObjChandelier_c::exeModeWait() {
    exeModeHookSwg();
    u8 sw = getSW_0();
    if (fopAcM_isSwitch(this, sw)) {
        mMode = MODE_START_SWG;
        field_0x5ec = 0.5f;
        field_0x5f0 = 0.0f;
        field_0x5fc = 0;
        mTimer = 0;
        field_0x5f8 = 20.0f;
    }
}

/* 80BC834C-80BC83E4 00048C 0098+00 1/0 0/0 0/0 .text exeModeStartSwg__17daObjChandelier_cFv */
void daObjChandelier_c::exeModeStartSwg() {
    moveSwing(20.0f, 300.0f, 50.0f, 0.3f);
    if (mTimer >= 90) {
        mMode = MODE_DOWN;
        field_0x5fc = 0;
        mTimer = 0;
        shape_angle.y = home.angle.y;
        shape_angle.z = home.angle.z;
        current.pos = field_0x5a8;
    } else {
        mTimer++;
    }
}

/* 80BC83E4-80BC84C0 000524 00DC+00 1/0 0/0 0/0 .text            exeModeDown__17daObjChandelier_cFv
 */
void daObjChandelier_c::exeModeDown() {
    current.pos.y += speed.y;
    speed.y += gravity;
    if (current.pos.y <= field_0x5f4) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_CHANDLV9_DOWN, 0);
        mMode = MODE_END_SWG;
        field_0x5ec = 1.0f;
        field_0x5a8 = current.pos;
    }
}

/* 80BC84C0-80BC851C 000600 005C+00 1/0 0/0 0/0 .text exeModeEndSwg__17daObjChandelier_cFv */
void daObjChandelier_c::exeModeEndSwg() {
    moveSwingFall();
    if (mTimer >= 60) {
        mMode = MODE_HOOK_SWG;
        mTimer = 0;
        hookSwingInitParm();
    } else {
        mTimer++;
    }
}

/* 80BC851C-80BC85E4 00065C 00C8+00 2/1 0/0 0/0 .text exeModeHookSwg__17daObjChandelier_cFv */
void daObjChandelier_c::exeModeHookSwg() {
    if (field_0x60a != 0 || fopAcM_checkHookCarryNow(this)) {
        f32 f1 = 10.0f;
        f32 f2 = 0.5f;
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        if (player != NULL) {
            f32 delta_y = current.pos.y - player->current.pos.y;
            if (delta_y > 0.0f) {
                f2 = 250.0f / delta_y;
                f1 = 5000.0f / delta_y;
            }
        }
        moveSwing(f2, f1, 15.0f, 0.2f);
    } else if (field_0x60b != 0 && field_0x60a == 0) {
        hookSwingInitParm();
    }
    field_0x60b = field_0x60a;
    field_0x60a = 0;
}

/* 80BC85E4-80BC86FC 000724 0118+00 1/1 0/0 0/0 .text            init__17daObjChandelier_cFv */
void daObjChandelier_c::init() {
    mMode = MODE_WAIT;
    if (getArg_0() == 1) {
        mMode = MODE_HOOK_SWG;
    }
    field_0x5a8 = current.pos;
    field_0x60a = 0;
    field_0x60b = field_0x60a;
    gravity = -3.0f;
    speed.x = 0.0f;
    speed.y = -1.0f;
    speed.z = 0.0f;
    field_0x5fc = 0;
    field_0x608 = 1;
    field_0x606 = 0;
    hookSwingInitParm();
    field_0x5f4 = current.pos.y - 800.0f;
    if (getArg_0() == 0) {
        u8 sw = getSW_0();
        if (fopAcM_isSwitch(this, sw)) {
            mMode = MODE_HOOK_SWG;
            current.pos.y = field_0x5f4;
            field_0x5a8 = current.pos;
        }
    }
}

/* 80BC86FC-80BC8780 00083C 0084+00 2/2 0/0 0/0 .text            setModelMtx__17daObjChandelier_cFv
 */
void daObjChandelier_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZrotM(shape_angle.z);
    PSMTXCopy(mDoMtx_stack_c::get(), mMtx);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BC8780-80BC89B0 0008C0 0230+00 2/2 0/0 0/0 .text            moveSwing__17daObjChandelier_cFffff
 */
void daObjChandelier_c::moveSwing(f32 param_0, f32 param_1, f32 param_2, f32 param_3) {
    f32 f1 = -param_1 + param_0 * field_0x5fc;
    shape_angle.z += (s16)(field_0x608 * (f1 * field_0x5ec));
    shape_angle.y += (s16)(field_0x608 * field_0x604 * field_0x5ec);
    if (f1 > param_1) {
        field_0x5fc = 0;
        field_0x608 *= -1;
        field_0x604 = cM_rndFX(param_2);
        if (cLib_chaseF(&field_0x5ec, field_0x5f0, 0.1f)) {
            field_0x5f0 = param_3 + cM_rndF(param_3);
        }
    }
    field_0x606 += field_0x608 * 0x200;
    current.pos.x = home.pos.x + cM_ssin(field_0x606) * 3.0f;
    current.pos.z = home.pos.z + cM_scos(field_0x606) * 3.0f;
    u32 u1 = field_0x5f8 * field_0x5ec * 127.0f * 0.1f;
    if (u1 > 0x7f) {
        u1 = 0x7f;
    }
    Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_CHANDLV9_SWING, &current.pos, u1,
                                  0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    field_0x5fc++;
}

/* 80BC89B0-80BC8B20 000AF0 0170+00 1/1 0/0 0/0 .text moveSwingFall__17daObjChandelier_cFv */
void daObjChandelier_c::moveSwingFall() {
    static Vec TOP_POS_Y_OFFSET = { 0.0f, 3000.0f, 0.0f };
    cLib_chaseF(&field_0x5ec, 0.0f, 0.04f);
    field_0x608 *= -1;
    shape_angle.z = field_0x608 * 50.0f * field_0x5ec;
    shape_angle.y += (s16)cM_rndFX(50.0f);
    cXyz vec1 = field_0x5a8;
    mDoMtx_stack_c::transS(vec1);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    cXyz vec2;
    mDoMtx_stack_c::multVec(&TOP_POS_Y_OFFSET, &vec2);
    cXyz vec3 = vec1 + TOP_POS_Y_OFFSET;
    cXyz vec4 = vec3 - vec2;
    current.pos = vec1 + vec4;
}

/* 80BC8B20-80BC8B7C 000C60 005C+00 3/3 0/0 0/0 .text hookSwingInitParm__17daObjChandelier_cFv */
void daObjChandelier_c::hookSwingInitParm() {
    field_0x5ec = 1.2f;
    field_0x5f0 = 0.7f;
    shape_angle.y = home.angle.y;
    shape_angle.z = home.angle.z;
    current.pos = field_0x5a8;
    field_0x604 = 30;
    field_0x5fc = 0;
    field_0x5f8 = 5.0f;
}

/* 80BC8B7C-80BC8BDC 000CBC 0060+00 1/0 0/0 0/0 .text
 * daObjChandelier_create1st__FP17daObjChandelier_c             */
static cPhs__Step daObjChandelier_create1st(daObjChandelier_c* i_this) {
    fopAcM_SetupActor(i_this, daObjChandelier_c);
    return i_this->create1st();
}

/* 80BC8BDC-80BC8BFC 000D1C 0020+00 1/0 0/0 0/0 .text
 * daObjChandelier_MoveBGDelete__FP17daObjChandelier_c          */
static int daObjChandelier_MoveBGDelete(daObjChandelier_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BC8BFC-80BC8C1C 000D3C 0020+00 1/0 0/0 0/0 .text
 * daObjChandelier_MoveBGExecute__FP17daObjChandelier_c         */
static int daObjChandelier_MoveBGExecute(daObjChandelier_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BC8C1C-80BC8C48 000D5C 002C+00 1/0 0/0 0/0 .text
 * daObjChandelier_MoveBGDraw__FP17daObjChandelier_c            */
static int daObjChandelier_MoveBGDraw(daObjChandelier_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BC8DEC-80BC8E0C -00001 0020+00 1/0 0/0 0/0 .data            daObjChandelier_METHODS */
static actor_method_class daObjChandelier_METHODS = {
    (process_method_func)daObjChandelier_create1st,
    (process_method_func)daObjChandelier_MoveBGDelete,
    (process_method_func)daObjChandelier_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjChandelier_MoveBGDraw,
};

/* 80BC8E0C-80BC8E3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Chandelier */
extern actor_process_profile_definition g_profile_Obj_Chandelier = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Chandelier,
    &g_fpcLf_Method.base,
    sizeof(daObjChandelier_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2E5,
    &daObjChandelier_METHODS,
    0x40080,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
