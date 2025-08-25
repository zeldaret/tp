/**
 * d_a_dshutter.cpp
 * Gates that shutter open / close
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_dshutter.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Instances.h"

/* 80467F7C-80467F88 -00001 000C+00 2/2 0/0 0/0 .data            l_arcName */
static char* l_arcName[] = {
    "K_tetd",
    "S_bsaku00",
    "S_lv7saku",
};

/* 80467498-8046751C 000078 0084+00 1/1 0/0 0/0 .text            __dt__7daDsh_cFv */
daDsh_c::~daDsh_c() {}

/* 80467F04-80467F10 000000 000C+00 2/2 0/0 0/0 .rodata          l_bmd */
static int const l_bmd[] = {
    4,
    4,
    4,
};

/* 8046751C-8046759C 0000FC 0080+00 1/0 0/0 0/0 .text            CreateHeap__7daDsh_cFv */
int daDsh_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd[mType]);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 8046759C-80467640 00017C 00A4+00 1/0 0/0 0/0 .text            Draw__7daDsh_cFv */
int daDsh_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80467640-80467694 000220 0054+00 1/0 0/0 0/0 .text            Execute__7daDsh_cFPPA3_A4_f */
int daDsh_c::Execute(f32 (**param_0)[3][4]) {
    callExecute();
    setMtx();
    *param_0 = &mBgMtx;
    cLib_calcTimer(&mTiltTime);
    return 1;
}

/* 80467694-80467708 000274 0074+00 2/2 0/0 0/0 .text            setMtx__7daDsh_cFv */
void daDsh_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80467708-8046772C 0002E8 0024+00 5/5 0/0 0/0 .text setAction__7daDsh_cFPQ27daDsh_c8action_c */
void daDsh_c::setAction(daDsh_c::action_c* i_action) {
    mpAction = i_action;
    callInit();
}

/* 8046772C-8046777C 00030C 0050+00 1/1 0/0 0/0 .text            callInit__7daDsh_cFv */
int daDsh_c::callInit() {
    if (mpAction->getInit() == NULL) {
        return 1;
    }

    return (this->*mpAction->getInit())();
}

/* 8046777C-804677D4 00035C 0058+00 1/1 0/0 0/0 .text            callExecute__7daDsh_cFv */
int daDsh_c::callExecute() {
    if (mpAction->getExecute() == NULL) {
        return 1;
    }

    return (this->*mpAction->getExecute())();
}

/* 804677D4-804677E4 0003B4 0010+00 1/0 0/0 0/0 .text            initOpenWait__7daDsh_cFv */
int daDsh_c::initOpenWait() {
    current.pos.y = home.pos.y;
    return 1;
}

/* 804680B0-804680C8 000040 0018+00 2/3 0/0 0/0 .bss             l_openWaitAction */
static daDsh_c::action_c l_openWaitAction(&daDsh_c::initOpenWait, &daDsh_c::executeOpenWait);

/* 804680C8-804680E0 000058 0018+00 1/2 0/0 0/0 .bss             l_openAction */
static daDsh_c::action_c l_openAction(&daDsh_c::initOpen, &daDsh_c::executeOpen);

/* 804677E4-80467840 0003C4 005C+00 1/0 0/0 0/0 .text            executeOpenWait__7daDsh_cFv */
int daDsh_c::executeOpenWait() {
    if (fopAcM_isSwitch(this, mSw)) {
        setAction(&l_openAction);
    }

    return 1;
}

/* 80467F10-80467F1C 00000C 000C+00 1/1 0/0 0/0 .rodata          l_dzb */
static int const l_dzb[] = {7, 7, 7};

/* 80467F1C-80467F28 000018 000C+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[] = {0xC10, 0xC10, 0x3D60};

/* 80467840-80467988 000420 0148+00 1/0 0/0 0/0 .text            initOpen__7daDsh_cFv */
int daDsh_c::initOpen() {
    mTiltTime = getOpenTiltTime();
    speed.y = 0.0f;
    gravity = getOpenAccel();

    cXyz check_pos(home.pos.x, home.pos.y + 100.0f, home.pos.z);
    bool water_check = fopAcM_wt_c::waterCheck(&check_pos);
    bool gnd_check = fopAcM_gc_c::gndCheck(&check_pos);

    if (water_check && fopAcM_wt_c::getWaterY() > fopAcM_gc_c::getGroundY()) {
        fopAcM_seStart(this, Z2SE_OBJ_SW_FENCE_DWN_WTR, 0);
    } else {
        fopAcM_seStart(this, Z2SE_OBJ_SW_FENCE_DOWN, 0);
    }

    return 1;
}

/* 804680E0-804680F8 000070 0018+00 2/3 0/0 0/0 .bss             l_closeWaitAction */
static daDsh_c::action_c l_closeWaitAction(&daDsh_c::initCloseWait, &daDsh_c::executeCloseWait);

/* 80467988-80467A64 000568 00DC+00 1/0 0/0 0/0 .text            executeOpen__7daDsh_cFv */
int daDsh_c::executeOpen() {
    if (mTiltTime != 0) {
        current.pos.y = home.pos.y + cM_rndFX(2.0f);
    } else {
        cLib_chaseF(&speed.y, getOpenSpeed(), gravity);
        current.pos.y += speed.y;

        f32 closed_y_pos = home.pos.y - OPEN_SIZE;
        if (current.pos.y < closed_y_pos) {
            current.pos.y = closed_y_pos;

            if (speed.y < getOpenBoundSpeed()) {
                speed.y *= getOpenBoundRatio();
                gravity = 8.0f;
            } else {
                setAction(&l_closeWaitAction);
            }
        }
    }

    return 1;
}

/* 80467A64-80467A80 000644 001C+00 1/0 0/0 0/0 .text            initCloseWait__7daDsh_cFv */
int daDsh_c::initCloseWait() {
    current.pos.y = home.pos.y - OPEN_SIZE;
    return 1;
}

/* 804680F8-80468110 000088 0018+00 1/2 0/0 0/0 .bss             l_closeAction */
static daDsh_c::action_c l_closeAction(&daDsh_c::initClose, &daDsh_c::executeClose);

/* 80467A80-80467ADC 000660 005C+00 1/0 0/0 0/0 .text            executeCloseWait__7daDsh_cFv */
int daDsh_c::executeCloseWait() {
    if (!fopAcM_isSwitch(this, mSw)) {
        setAction(&l_closeAction);
    }

    return 1;
}

/* 80467ADC-80467B04 0006BC 0028+00 1/0 0/0 0/0 .text            initClose__7daDsh_cFv */
int daDsh_c::initClose() {
    mTiltTime = getCloseTiltTime();
    speed.y = 0.0f;
    gravity = getCloseAccel();

    return 1;
}

/* 80467B04-80467BE0 0006E4 00DC+00 1/0 0/0 0/0 .text            executeClose__7daDsh_cFv */
int daDsh_c::executeClose() {
    if (mTiltTime != 0) {
        current.pos.y = (home.pos.y - OPEN_SIZE) + cM_rndFX(2.0f);
    } else {
        cLib_chaseF(&speed.y, getCloseSpeed(), gravity);
        current.pos.y += speed.y;

        if (current.pos.y > home.pos.y) {
            current.pos.y = home.pos.y;

            if (speed.y > getCloseBoundSpeed()) {
                speed.y *= getCloseBoundRatio();
                gravity = 8.0f;
            } else {
                setAction(&l_openWaitAction);
            }
        }
    }

    return 1;
}

/* 80467BE0-80467C0C 0007C0 002C+00 1/0 0/0 0/0 .text            daDsh_Draw__FP7daDsh_c */
static int daDsh_Draw(daDsh_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80467C0C-80467C2C 0007EC 0020+00 1/0 0/0 0/0 .text            daDsh_Execute__FP7daDsh_c */
static int daDsh_Execute(daDsh_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80467C2C-80467C34 00080C 0008+00 1/0 0/0 0/0 .text            daDsh_IsDelete__FP7daDsh_c */
static int daDsh_IsDelete(daDsh_c* i_this) {
    return 1;
}

/* 80467C34-80467C7C 000814 0048+00 1/0 0/0 0/0 .text            daDsh_Delete__FP7daDsh_c */
static int daDsh_Delete(daDsh_c* i_this) {
    int ret = i_this->MoveBGDelete();
    i_this->~daDsh_c();
    return ret;
}

AUDIO_INSTANCES;

/* 80467C7C-80467DF8 00085C 017C+00 1/0 0/0 0/0 .text            daDsh_Create__FP10fopAc_ac_c */
int daDsh_c::create() {
    fopAcM_SetupActor(this, daDsh_c);

    mType = getType();

    static const char* l_resName[] = {l_arcName[mType], ""};

    int phase = mResLoader.load(l_resName, NULL);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName[mType], l_dzb[mType], dBgS_MoveBGProc_Typical,
                             l_heap_size[mType], NULL);
        if (phase == cPhs_ERROR_e) {
            phase = cPhs_ERROR_e;
        } else {
            mSw = getSw();

            setAction(dComIfGs_isSwitch(mSw, fopAcM_GetHomeRoomNo(this)) ? &l_closeWaitAction : &l_openWaitAction);
            setMtx();
            fopAcM_SetMtx(this, model->getBaseTRMtx());
        }
    }

    return phase;
}

static int daDsh_Create(fopAc_ac_c* i_this) {
    return static_cast<daDsh_c*>(i_this)->create();
}

/* 80467FF0-80468010 -00001 0020+00 1/0 0/0 0/0 .data            l_daDsh_Method */
static actor_method_class l_daDsh_Method = {
    (process_method_func)daDsh_Create,  (process_method_func)daDsh_Delete,
    (process_method_func)daDsh_Execute, (process_method_func)daDsh_IsDelete,
    (process_method_func)daDsh_Draw,
};

/* 80468010-80468044 -00001 0034+00 0/0 0/0 1/0 .data            g_profile_DSHUTTER */
extern actor_process_profile_definition2 g_profile_DSHUTTER = {
    {
        fpcLy_CURRENT_e,        // mLayerID
        7,                      // mListID
        fpcPi_CURRENT_e,        // mListPrio
        PROC_DSHUTTER,          // mProcName
        &g_fpcLf_Method.base,  // sub_method
        sizeof(daDsh_c),        // mSize
        0,                      // mSizeOther
        0,                      // mParameters
        &g_fopAc_Method.base,   // sub_method
        296,                    // mPriority
        &l_daDsh_Method,        // sub_method
        0x44000,                // mStatus
        fopAc_ACTOR_e,          // mActorType
        fopAc_CULLBOX_0_e,      // cullType
    },
    0,
};
