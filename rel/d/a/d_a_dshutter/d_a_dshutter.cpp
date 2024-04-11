/**
 * d_a_dshutter.cpp
 * Gates that shutter open / close
 */

#include "rel/d/a/d_a_dshutter/d_a_dshutter.h"
#include "SSystem/SComponent/c_math.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void callInit__7daDsh_cFv();
extern "C" void callExecute__7daDsh_cFv();
extern "C" void initOpenWait__7daDsh_cFv();
extern "C" void executeOpenWait__7daDsh_cFv();
extern "C" void initOpen__7daDsh_cFv();
extern "C" void executeOpen__7daDsh_cFv();
extern "C" void initCloseWait__7daDsh_cFv();
extern "C" void executeCloseWait__7daDsh_cFv();
extern "C" void initClose__7daDsh_cFv();
extern "C" void executeClose__7daDsh_cFv();
extern "C" s16 func_80467DF8(s16*);

//
// External References:
//

//
// Declarations:
//

/* ############################################################################################## */

/* 80467F5C-80467F68 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80467F68-80467F7C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80467F7C-80467F88 -00001 000C+00 2/2 0/0 0/0 .data            l_arcName */
SECTION_DATA static char* l_arcName[] = {
    "K_tetd",
    "S_bsaku00",
    "S_lv7saku",
};

/* 80467F88-80467F94 -00001 000C+00 0/1 0/0 0/0 .data            @3631 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3631[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initOpenWait__7daDsh_cFv,
};
#pragma pop

/* 80467F94-80467FA0 -00001 000C+00 0/1 0/0 0/0 .data            @3632 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3632[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeOpenWait__7daDsh_cFv,
};
#pragma pop

/* 80467FA0-80467FAC -00001 000C+00 0/1 0/0 0/0 .data            @3635 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3635[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initOpen__7daDsh_cFv,
};
#pragma pop

/* 80467FAC-80467FB8 -00001 000C+00 0/1 0/0 0/0 .data            @3636 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3636[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeOpen__7daDsh_cFv,
};
#pragma pop

/* 80467FB8-80467FC4 -00001 000C+00 0/1 0/0 0/0 .data            @3639 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3639[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initCloseWait__7daDsh_cFv,
};
#pragma pop

/* 80467FC4-80467FD0 -00001 000C+00 0/1 0/0 0/0 .data            @3640 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3640[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeCloseWait__7daDsh_cFv,
};
#pragma pop

/* 80467FD0-80467FDC -00001 000C+00 0/1 0/0 0/0 .data            @3643 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3643[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initClose__7daDsh_cFv,
};
#pragma pop

/* 80467FDC-80467FE8 -00001 000C+00 0/1 0/0 0/0 .data            @3644 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3644[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeClose__7daDsh_cFv,
};
#pragma pop

/* 80467498-8046751C 000078 0084+00 1/1 0/0 0/0 .text            __dt__7daDsh_cFv */
daDsh_c::~daDsh_c() {}

/* ############################################################################################## */
/* 80467F04-80467F10 000000 000C+00 2/2 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static int const l_bmd[] = {
    4,
    4,
    4,
};
COMPILER_STRIP_GATE(0x80467F04, &l_bmd);

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
    func_80467DF8(&mTiltTime);
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

/* ############################################################################################## */
/* 80468070-80468074 000000 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80468074-80468078 000004 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80468078-8046807C 000008 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8046807C-80468080 00000C 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80468080-80468084 000010 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80468084-80468088 000014 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80468088-8046808C 000018 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8046808C-80468090 00001C 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80468090-80468094 000020 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80468094-80468098 000024 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80468098-8046809C 000028 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8046809C-804680A0 00002C 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 804680A0-804680A4 000030 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 804680A4-804680A8 000034 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 804680A8-804680AC 000038 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 804680AC-804680B0 00003C 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 804680B0-804680C8 000040 0018+00 2/3 0/0 0/0 .bss             l_openWaitAction */
static daDsh_c::action_c l_openWaitAction /* (&daDsh_c::initOpenWait, &daDsh_c::executeOpenWait) */;

/* 804680C8-804680E0 000058 0018+00 1/2 0/0 0/0 .bss             l_openAction */
static daDsh_c::action_c l_openAction /* (&daDsh_c::initOpen, &daDsh_c::executeOpen) */;

/* 804677E4-80467840 0003C4 005C+00 1/0 0/0 0/0 .text            executeOpenWait__7daDsh_cFv */
int daDsh_c::executeOpenWait() {
    if (fopAcM_isSwitch(this, mSw)) {
        setAction(&l_openAction);
    }

    return 1;
}

/* ############################################################################################## */
/* 80467F10-80467F1C 00000C 000C+00 1/1 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static int const l_dzb[] = {7, 7, 7};
COMPILER_STRIP_GATE(0x80467F10, &l_dzb);

/* 80467F1C-80467F28 000018 000C+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u32 const l_heap_size[] = {0xC10, 0xC10, 0x3D60};
COMPILER_STRIP_GATE(0x80467F1C, &l_heap_size);

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
static daDsh_c::action_c
    l_closeWaitAction /* (&daDsh_c::initCloseWait, &daDsh_c::executeCloseWait) */;

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

/* ############################################################################################## */
/* 804680F8-80468110 000088 0018+00 1/2 0/0 0/0 .bss             l_closeAction */
static daDsh_c::action_c l_closeAction /* (&daDsh_c::initClose, &daDsh_c::executeClose) */;

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

/* ############################################################################################## */
/* 80468110-80468114 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80468110[4];
#pragma pop

/* 80468114-80468118 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80468114[4];
#pragma pop

/* 80468118-8046811C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80468118[4];
#pragma pop

/* 8046811C-80468120 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8046811C[4];
#pragma pop

/* 80468120-80468124 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80468120[4];
#pragma pop

/* 80468124-80468128 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80468124[4];
#pragma pop

/* 80468128-8046812C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80468128[4];
#pragma pop

/* 8046812C-80468130 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8046812C[4];
#pragma pop

/* 80468130-80468134 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80468130[4];
#pragma pop

/* 80468134-80468138 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80468134[4];
#pragma pop

/* 80468138-8046813C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80468138[4];
#pragma pop

/* 8046813C-80468140 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8046813C[4];
#pragma pop

/* 80468140-80468144 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80468140[4];
#pragma pop

/* 80468144-80468148 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80468144[4];
#pragma pop

/* 80468148-8046814C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80468148[4];
#pragma pop

/* 8046814C-80468150 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8046814C[4];
#pragma pop

/* 80468150-80468154 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80468150[4];
#pragma pop

/* 80468154-80468158 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80468154[4];
#pragma pop

/* 80468158-8046815C 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80468158[4];
#pragma pop

/* 8046815C-80468160 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8046815C[4];
#pragma pop

/* 80468160-80468164 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80468160[4];
#pragma pop

/* 80468164-80468168 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80468164[4];
#pragma pop

/* 80468168-8046816C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80468168[4];
#pragma pop

/* 8046816C-80468170 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8046816C[4];
#pragma pop

/* 80468170-80468174 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80468170[4];
#pragma pop

/* 80468174-80468178 000104 0004+00 1/1 0/0 0/0 .bss             None */
static s8 data_80468174[4];

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

/* 80467DF8-80467E14 0009D8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm s16 func_80467DF8(s16* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_dshutter/d_a_dshutter/func_80467DF8.s"
}
#pragma pop

/* 80467E14-80467EF8 0009F4 00E4+00 0/0 1/0 0/0 .text            __sinit_d_a_dshutter_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_dshutter_cpp(){nofralloc
#include "asm/rel/d/a/d_a_dshutter/d_a_dshutter/__sinit_d_a_dshutter_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80467E14, __sinit_d_a_dshutter_cpp);
#pragma pop

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
        &g_fpcLf_Method.mBase,  // sub_method
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

