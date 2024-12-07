/**
 * @file d_a_obj_lv4CandleDemoTag.cpp
 * 
*/

#include "d/actor/d_a_obj_lv4CandleDemoTag.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_event_lib.h"
#include "dol2asm.h"
#include "m_Do/m_Do_hostIO.h"

//
// Forward References:
//

extern "C" void __ct__24dalv4CandleDemoTag_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__20dalv4CandleDemoTag_cFv();
extern "C" void create__20dalv4CandleDemoTag_cFv();
extern "C" void Execute__20dalv4CandleDemoTag_cFv();
extern "C" void procMain__20dalv4CandleDemoTag_cFv();
extern "C" void init_modeWatch__20dalv4CandleDemoTag_cFv();
extern "C" void modeWatch__20dalv4CandleDemoTag_cFv();
extern "C" void init_modeEnemyCreate__20dalv4CandleDemoTag_cFv();
extern "C" void modeEnemyCreate__20dalv4CandleDemoTag_cFv();
extern "C" void init_modeNG__20dalv4CandleDemoTag_cFv();
extern "C" void modeNG__20dalv4CandleDemoTag_cFv();
extern "C" void init_modeEnd__20dalv4CandleDemoTag_cFv();
extern "C" void modeEnd__20dalv4CandleDemoTag_cFv();
extern "C" void eventStart__20dalv4CandleDemoTag_cFv();
extern "C" void searchShutterAct__20dalv4CandleDemoTag_cFPvPv();
extern "C" bool Draw__20dalv4CandleDemoTag_cFv();
extern "C" bool Delete__20dalv4CandleDemoTag_cFv();
extern "C" static void dalv4CandleDemoTag_Draw__FP20dalv4CandleDemoTag_c();
extern "C" static void dalv4CandleDemoTag_Execute__FP20dalv4CandleDemoTag_c();
extern "C" static void dalv4CandleDemoTag_Delete__FP20dalv4CandleDemoTag_c();
extern "C" static void dalv4CandleDemoTag_Create__FP10fopAc_ac_c();
extern "C" void __dt__24dalv4CandleDemoTag_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv4CandleDemoTag_cpp();
extern "C" static void func_80C5D114();
extern "C" static void func_80C5D11C();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" void __dt__20dalv4CandleDemoTag_cFv();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_myRoomSearchEnemy__FSc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C5D218-80C5D224 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C5D224-80C5D238 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C5D238-80C5D244 -00001 000C+00 0/1 0/0 0/0 .data            @3702 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3702[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWatch__20dalv4CandleDemoTag_cFv,
};
#pragma pop

/* 80C5D244-80C5D250 -00001 000C+00 0/1 0/0 0/0 .data            @3703 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3703[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnemyCreate__20dalv4CandleDemoTag_cFv,
};
#pragma pop

/* 80C5D250-80C5D25C -00001 000C+00 0/1 0/0 0/0 .data            @3704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeNG__20dalv4CandleDemoTag_cFv,
};
#pragma pop

/* 80C5D25C-80C5D268 -00001 000C+00 0/1 0/0 0/0 .data            @3705 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3705[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__20dalv4CandleDemoTag_cFv,
};
#pragma pop

/* 80C5D268-80C5D298 000050 0030+00 0/1 0/0 0/0 .data            mode_proc$3701 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C5D298-80C5D2B8 -00001 0020+00 1/0 0/0 0/0 .data            l_dalv4CandleDemoTag_Method */
static actor_method_class l_dalv4CandleDemoTag_Method = {
    (process_method_func)dalv4CandleDemoTag_Create__FP10fopAc_ac_c,
    (process_method_func)dalv4CandleDemoTag_Delete__FP20dalv4CandleDemoTag_c,
    (process_method_func)dalv4CandleDemoTag_Execute__FP20dalv4CandleDemoTag_c,
    0,
    (process_method_func)dalv4CandleDemoTag_Draw__FP20dalv4CandleDemoTag_c,
};

/* 80C5D2B8-80C5D2E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv4CandleDm */
extern actor_process_profile_definition g_profile_Tag_Lv4CandleDm = {
  fpcLy_CURRENT_e,              // mLayerID
  7,                            // mListID
  fpcPi_CURRENT_e,              // mListPrio
  PROC_Tag_Lv4CandleDm,         // mProcName
  &g_fpcLf_Method.base,        // sub_method
  sizeof(dalv4CandleDemoTag_c), // mSize
  0,                            // mSizeOther
  0,                            // mParameters
  &g_fopAc_Method.base,         // sub_method
  541,                          // mPriority
  &l_dalv4CandleDemoTag_Method, // sub_method
  0x00044000,                   // mStatus
  fopAc_ACTOR_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,       // cullType
};

/* 80C5D2E8-80C5D310 0000D0 0028+00 2/2 0/0 0/0 .data            __vt__20dalv4CandleDemoTag_c */
SECTION_DATA extern void* __vt__20dalv4CandleDemoTag_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C5D11C,
    (void*)func_80C5D114,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__20dalv4CandleDemoTag_cFv,
    (void*)eventStart__20dalv4CandleDemoTag_cFv,
};

/* 80C5D310-80C5D328 0000F8 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C5C9EC-80C5CA10 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__24dalv4CandleDemoTag_HIO_cFv
 */
dalv4CandleDemoTag_HIO_c::dalv4CandleDemoTag_HIO_c() {
    mEnemyWaitTime = 60;
}

/* 80C5CA58-80C5CA90 000158 0038+00 2/2 0/0 0/0 .text setBaseMtx__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
}

/* 80C5CA90-80C5CBA4 000190 0114+00 1/1 0/0 0/0 .text            create__20dalv4CandleDemoTag_cFv */
// vtables need work
#ifdef NONMATCHING
int dalv4CandleDemoTag_c::create() {
    fopAcM_SetupActor(this, dalv4CandleDemoTag_c);

    mPathID = getPathID();

    if (dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this)) == NULL) {
        return 0;
    }

    mSwNG = getSwNG();
    mSwDest = getSwDest();
    fopAcM_offSwitch(this, mSwDest);

    setBaseMtx();

    if (fopAcM_isSwitch(this, getSwOK())) {
        init_modeEnd();
    } else {
        init_modeWatch();
    }

    return cPhs_COMPLEATE_e;
}
#else
int dalv4CandleDemoTag_c::create() {
    // NONMATCHING
}
#endif

/* 80C5CBA4-80C5CBE8 0002A4 0044+00 1/1 0/0 0/0 .text            Execute__20dalv4CandleDemoTag_cFv
 */
int dalv4CandleDemoTag_c::Execute() {
    eventUpdate();
    procMain();
    setBaseMtx();
    return 1;
}

/* ############################################################################################## */
/* 80C5D348-80C5D354 000008 000C+00 1/1 0/0 0/0 .bss             @3632 */
static u8 lit_3632[12];

/* 80C5D354-80C5D35C 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80C5D35C-80C5D360 00001C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C5D35C[4];

/* 80C5CBE8-80C5CCA4 0002E8 00BC+00 1/1 0/0 0/0 .text            procMain__20dalv4CandleDemoTag_cFv
 */
// need virtuals to match so sinit can also be matched
#ifdef NONMATCHING
void dalv4CandleDemoTag_c::procMain() {
    (this->*mode_proc[mMode])();
}
#else
void dalv4CandleDemoTag_c::procMain() {
    // NONMATCHING
}
#endif

/* 80C5CCA4-80C5CCC0 0003A4 001C+00 2/2 0/0 0/0 .text init_modeWatch__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeWatch() {
    mEnemyWaitTime = (*(dalv4CandleDemoTag_HIO_c*)l_HIO).mEnemyWaitTime;
    mMode = 0;
}

/* 80C5CCC0-80C5CDC0 0003C0 0100+00 1/0 0/0 0/0 .text            modeWatch__20dalv4CandleDemoTag_cFv
 */
void dalv4CandleDemoTag_c::modeWatch() {
    mpShutterActor = (daLv4EdShutter_c*)fopAcM_Search(searchShutterAct, this);

    u8 var3;
    if (mpShutterActor == NULL) {
        var3 = 1;
    } else {
        var3 = mpShutterActor->getStatus();
    }

    if (fopAcM_isSwitch(this, mSwNG) && var3 != 0) {
        if (mEnemyWaitTime == 0) {
            if (getEventID() != 0xFF) {
                orderEvent(getEventID(), 0xFF, 1);
            } else {
                eventStart();
            }
        } else {
            mEnemyWaitTime--;
        }
    }

    if (fopAcM_isSwitch(this, getSwOK())) {
        init_modeEnd();
    }
}

/* 80C5CDC0-80C5CE70 0004C0 00B0+00 1/1 0/0 0/0 .text
 * init_modeEnemyCreate__20dalv4CandleDemoTag_cFv               */
void dalv4CandleDemoTag_c::init_modeEnemyCreate() {
    dPath* path_p = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));

    for (int i = 0; i < path_p->m_num; i++) {
        dStage_dPnt_c* pnt = &path_p->m_points[i];

        cXyz pos;
        pos.x = pnt->m_position.x;
        pos.y = pnt->m_position.y;
        pos.z = pnt->m_position.z;

        fopAcM_create(PROC_E_BS, 0xFFFFFEFF, &pos, fopAcM_GetRoomNo(this), NULL, NULL, -1);
    }

    mMode = 1;
}

/* 80C5CE70-80C5CEB4 000570 0044+00 1/0 0/0 0/0 .text modeEnemyCreate__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::modeEnemyCreate() {
    if (fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this))) {
        init_modeNG();
    }
}

/* 80C5CEB4-80C5CEC0 0005B4 000C+00 1/1 0/0 0/0 .text init_modeNG__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeNG() {
    mMode = 2;
}

/* 80C5CEC0-80C5CF34 0005C0 0074+00 1/0 0/0 0/0 .text            modeNG__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::modeNG() {
    if (!fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this))) {
        fopAcM_onSwitch(this, mSwDest);
        fopAcM_offSwitch(this, mSwNG);
        init_modeWatch();
    }
}

/* 80C5CF34-80C5CF40 000634 000C+00 2/2 0/0 0/0 .text init_modeEnd__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeEnd() {
    mMode = 3;
}

/* 80C5CF40-80C5CF78 000640 0038+00 1/0 0/0 0/0 .text            modeEnd__20dalv4CandleDemoTag_cFv
 */
void dalv4CandleDemoTag_c::modeEnd() {
    fopAcM_offSwitch(this, mSwNG);
}

/* 80C5CF78-80C5CF9C 000678 0024+00 2/1 0/0 0/0 .text eventStart__20dalv4CandleDemoTag_cFv */
BOOL dalv4CandleDemoTag_c::eventStart() {
    init_modeEnemyCreate();
    return 1;
}

/* 80C5CF9C-80C5CFEC 00069C 0050+00 1/1 0/0 0/0 .text
 * searchShutterAct__20dalv4CandleDemoTag_cFPvPv                */
void* dalv4CandleDemoTag_c::searchShutterAct(void* param_0, void* param_1) {
    if (param_0 != NULL && fopAcM_IsActor(param_0) &&
        fopAcM_GetProfName(param_0) == PROC_Obj_Lv4EdShutter)
    {
        return param_0;
    }

    return NULL;
}

/* 80C5CFEC-80C5CFF4 0006EC 0008+00 1/1 0/0 0/0 .text            Draw__20dalv4CandleDemoTag_cFv */
int dalv4CandleDemoTag_c::Draw() {
    return 1;
}

/* 80C5CFF4-80C5CFFC 0006F4 0008+00 1/1 0/0 0/0 .text            Delete__20dalv4CandleDemoTag_cFv */
int dalv4CandleDemoTag_c::Delete() {
    return 1;
}

/* 80C5CFFC-80C5D01C 0006FC 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Draw__FP20dalv4CandleDemoTag_c            */
static int dalv4CandleDemoTag_Draw(dalv4CandleDemoTag_c* i_this) {
    return i_this->Draw();
}

/* 80C5D01C-80C5D03C 00071C 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Execute__FP20dalv4CandleDemoTag_c         */
static int dalv4CandleDemoTag_Execute(dalv4CandleDemoTag_c* i_this) {
    return i_this->Execute();
}

/* 80C5D03C-80C5D05C 00073C 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Delete__FP20dalv4CandleDemoTag_c          */
static int dalv4CandleDemoTag_Delete(dalv4CandleDemoTag_c* i_this) {
    return i_this->Delete();
}

/* 80C5D05C-80C5D07C 00075C 0020+00 1/0 0/0 0/0 .text dalv4CandleDemoTag_Create__FP10fopAc_ac_c */
static int dalv4CandleDemoTag_Create(fopAc_ac_c* i_this) {
    return static_cast<dalv4CandleDemoTag_c*>(i_this)->create();
}

/* 80C5D07C-80C5D0D8 00077C 005C+00 2/1 0/0 0/0 .text            __dt__24dalv4CandleDemoTag_HIO_cFv
 */
dalv4CandleDemoTag_HIO_c::~dalv4CandleDemoTag_HIO_c() {}

/* 80C5D0D8-80C5D114 0007D8 003C+00 0/0 1/0 0/0 .text __sinit_d_a_obj_lv4CandleDemoTag_cpp */
void __sinit_d_a_obj_lv4CandleDemoTag_cpp(){// NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C5D0D8, __sinit_d_a_obj_lv4CandleDemoTag_cpp);
#pragma pop

/* 80C5D114-80C5D11C 000814 0008+00 1/0 0/0 0/0 .text @1392@eventStart__20dalv4CandleDemoTag_cFv
 */
static void func_80C5D114() {
    // NONMATCHING
}

/* 80C5D11C-80C5D124 00081C 0008+00 1/0 0/0 0/0 .text @1392@__dt__20dalv4CandleDemoTag_cFv */
static void func_80C5D11C() {
    // NONMATCHING
}

/* 80C5D124-80C5D16C 000824 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C5D16C-80C5D174 00086C 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5D174-80C5D17C 000874 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5D17C-80C5D184 00087C 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart()() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5D184-80C5D204 000884 0080+00 2/1 0/0 0/0 .text            __dt__20dalv4CandleDemoTag_cFv */
// dalv4CandleDemoTag_c::~dalv4CandleDemoTag_c() {
extern "C" void __dt__20dalv4CandleDemoTag_cFv() {
    // NONMATCHING
}
