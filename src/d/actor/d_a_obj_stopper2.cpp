/**
 * d_a_obj_stopper2.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stopper2.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" static void getStopName__Fv();
extern "C" void getStopModelData__15daObjStopper2_cFv();
extern "C" void initBaseMtx__15daObjStopper2_cFv();
extern "C" void setBaseMtx__15daObjStopper2_cFv();
extern "C" void getMaxOffsetY__15daObjStopper2_cFv();
extern "C" void Create__15daObjStopper2_cFv();
extern "C" void CreateHeap__15daObjStopper2_cFv();
extern "C" void create__15daObjStopper2_cFv();
extern "C" void execute__15daObjStopper2_cFv();
extern "C" void event_proc_call__15daObjStopper2_cFv();
extern "C" void actionWait__15daObjStopper2_cFv();
extern "C" void actionOrderEvent__15daObjStopper2_cFv();
extern "C" void actionEvent__15daObjStopper2_cFv();
extern "C" void actionDead__15daObjStopper2_cFv();
extern "C" void demoProc__15daObjStopper2_cFv();
extern "C" void draw__15daObjStopper2_cFv();
extern "C" void _delete__15daObjStopper2_cFv();
extern "C" static void daObjStopper2_Draw__FP15daObjStopper2_c();
extern "C" static void daObjStopper2_Execute__FP15daObjStopper2_c();
extern "C" static void daObjStopper2_Delete__FP15daObjStopper2_c();
extern "C" static void daObjStopper2_Create__FP15daObjStopper2_c();
extern "C" void func_80CEFE6C(void* _this, u8*);
extern "C" extern char const* const d_a_obj_stopper2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void searchMapEventData__14dEvt_control_cFUc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CEFFF8[4];

//
// Declarations:
//

/* 80CEF338-80CEF358 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEFEB0-80CEFEB0 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CEFEB0 = "Stop00";
SECTION_DEAD static char const* const stringBase_80CEFEB7 = "STOP_OPEN";
SECTION_DEAD static char const* const stringBase_80CEFEC1 = "STOP_CLOSE";
SECTION_DEAD static char const* const stringBase_80CEFECC = "STOP_OPEN2";
SECTION_DEAD static char const* const stringBase_80CEFED7 = "STOP_CLOSE2";
SECTION_DEAD static char const* const stringBase_80CEFEE3 = "dstop";
SECTION_DEAD static char const* const stringBase_80CEFEE9 = "door-stop.bmd";
#pragma pop

/* 80CEF358-80CEF368 000098 0010+00 1/1 0/0 0/0 .text            getStopName__Fv */
static char* getStopName() {
    // NONMATCHING
}

/* 80CEF368-80CEF38C 0000A8 0024+00 1/1 0/0 0/0 .text getStopModelData__15daObjStopper2_cFv */
J3DModelData* daObjStopper2_c::getStopModelData() {
    // NONMATCHING
}

/* 80CEF38C-80CEF3C8 0000CC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjStopper2_cFv */
void daObjStopper2_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CEF3C8-80CEF434 000108 006C+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjStopper2_cFv */
void daObjStopper2_c::setBaseMtx() {
    // NONMATCHING
}

/* 80CEF434-80CEF44C 000174 0018+00 2/2 0/0 0/0 .text            getMaxOffsetY__15daObjStopper2_cFv
 */
float daObjStopper2_c::getMaxOffsetY() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEFE90-80CEFE94 000000 0004+00 3/3 0/0 0/0 .rodata          @3722 */
SECTION_RODATA static u8 const lit_3722[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CEFE90, &lit_3722);

/* 80CEFE94-80CEFE98 000004 0004+00 1/1 0/0 0/0 .rodata          @3723 */
SECTION_RODATA static f32 const lit_3723 = 150.0f;
COMPILER_STRIP_GATE(0x80CEFE94, &lit_3723);

/* 80CEFF24-80CEFF28 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_stopper2__stringBase0;

/* 80CEFF28-80CEFF38 -00001 0010+00 1/1 0/0 0/0 .data            l_evName */
SECTION_DATA static void* l_evName[4] = {
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x7),
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x11),
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x27),
};

/* 80CEF44C-80CEF57C 00018C 0130+00 1/1 0/0 0/0 .text            Create__15daObjStopper2_cFv */
int daObjStopper2_c::Create() {
    // NONMATCHING
}

/* 80CEF57C-80CEF5C8 0002BC 004C+00 1/1 0/0 0/0 .text            CreateHeap__15daObjStopper2_cFv */
int daObjStopper2_c::CreateHeap() {
    // NONMATCHING
}

/* 80CEF5C8-80CEF66C 000308 00A4+00 1/1 0/0 0/0 .text            create__15daObjStopper2_cFv */
int daObjStopper2_c::create() {
    // NONMATCHING
}

/* 80CEF66C-80CEF6A4 0003AC 0038+00 1/1 0/0 0/0 .text            execute__15daObjStopper2_cFv */
int daObjStopper2_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEFF38-80CEFF3C -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x33);

/* 80CEFF3C-80CEFF48 -00001 000C+00 0/1 0/0 0/0 .data            @3769 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3769[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__15daObjStopper2_cFv,
};
#pragma pop

/* 80CEFF48-80CEFF54 -00001 000C+00 0/1 0/0 0/0 .data            @3770 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3770[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__15daObjStopper2_cFv,
};
#pragma pop

/* 80CEFF54-80CEFF60 -00001 000C+00 0/1 0/0 0/0 .data            @3771 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3771[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__15daObjStopper2_cFv,
};
#pragma pop

/* 80CEFF60-80CEFF6C -00001 000C+00 0/1 0/0 0/0 .data            @3772 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3772[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__15daObjStopper2_cFv,
};
#pragma pop

/* 80CEFF6C-80CEFF9C 000068 0030+00 0/1 0/0 0/0 .data            l_func$3768 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CEF6A4-80CEF760 0003E4 00BC+00 1/1 0/0 0/0 .text event_proc_call__15daObjStopper2_cFv */
void daObjStopper2_c::event_proc_call() {
    // NONMATCHING
}

/* 80CEF760-80CEF98C 0004A0 022C+00 1/0 0/0 0/0 .text            actionWait__15daObjStopper2_cFv */
void daObjStopper2_c::actionWait() {
    // NONMATCHING
}

/* 80CEF98C-80CEFA60 0006CC 00D4+00 1/0 0/0 0/0 .text actionOrderEvent__15daObjStopper2_cFv */
void daObjStopper2_c::actionOrderEvent() {
    // NONMATCHING
}

/* 80CEFA60-80CEFAD4 0007A0 0074+00 1/0 0/0 0/0 .text            actionEvent__15daObjStopper2_cFv */
void daObjStopper2_c::actionEvent() {
    // NONMATCHING
}

/* 80CEFAD4-80CEFAD8 000814 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjStopper2_cFv */
void daObjStopper2_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CEFE98-80CEFE9C 000008 0004+00 0/1 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 1.0f;
COMPILER_STRIP_GATE(0x80CEFE98, &lit_3921);
#pragma pop

/* 80CEFE9C-80CEFEA0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = -1.0f;
COMPILER_STRIP_GATE(0x80CEFE9C, &lit_3922);
#pragma pop

/* 80CEFEA0-80CEFEA4 000010 0004+00 0/1 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 30.0f;
COMPILER_STRIP_GATE(0x80CEFEA0, &lit_3923);
#pragma pop

/* 80CEFEA4-80CEFEA8 000014 0004+00 0/1 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 4.0f;
COMPILER_STRIP_GATE(0x80CEFEA4, &lit_3924);
#pragma pop

/* 80CEFEA8-80CEFEAC 000018 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 60.0f;
COMPILER_STRIP_GATE(0x80CEFEA8, &lit_3925);
#pragma pop

/* 80CEFEAC-80CEFEB0 00001C 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 6.0f;
COMPILER_STRIP_GATE(0x80CEFEAC, &lit_3926);
#pragma pop

/* 80CEFEB0-80CEFEB0 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CEFEF7 = "WAIT";
SECTION_DEAD static char const* const stringBase_80CEFEFC = "Timer";
#pragma pop

/* 80CEFF9C-80CEFFA8 -00001 000C+00 1/1 0/0 0/0 .data            action_table$3859 */
SECTION_DATA static void* action_table[3] = {
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x47),
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x7),
    (void*)(((char*)&d_a_obj_stopper2__stringBase0) + 0x11),
};

/* 80CEFAD8-80CEFD40 000818 0268+00 2/2 0/0 0/0 .text            demoProc__15daObjStopper2_cFv */
void daObjStopper2_c::demoProc() {
    // NONMATCHING
}

/* 80CEFD40-80CEFDB8 000A80 0078+00 1/1 0/0 0/0 .text            draw__15daObjStopper2_cFv */
int daObjStopper2_c::draw() {
    // NONMATCHING
}

/* 80CEFDB8-80CEFDEC 000AF8 0034+00 1/1 0/0 0/0 .text            _delete__15daObjStopper2_cFv */
int daObjStopper2_c::_delete() {
    // NONMATCHING
}

/* 80CEFDEC-80CEFE0C 000B2C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Draw__FP15daObjStopper2_c */
static int daObjStopper2_Draw(daObjStopper2_c* i_this) {
    // NONMATCHING
}

/* 80CEFE0C-80CEFE2C 000B4C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Execute__FP15daObjStopper2_c
 */
static int daObjStopper2_Execute(daObjStopper2_c* i_this) {
    // NONMATCHING
}

/* 80CEFE2C-80CEFE4C 000B6C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Delete__FP15daObjStopper2_c */
static int daObjStopper2_Delete(daObjStopper2_c* i_this) {
    // NONMATCHING
}

/* 80CEFE4C-80CEFE6C 000B8C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Create__FP15daObjStopper2_c */
static int daObjStopper2_Create(daObjStopper2_c* i_this) {
    // NONMATCHING
}

/* 80CEFE6C-80CEFE88 000BAC 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CEFE6C(void* _this, u8* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEFFA8-80CEFFC8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStopper2_Method */
static actor_method_class l_daObjStopper2_Method = {
    (process_method_func)daObjStopper2_Create__FP15daObjStopper2_c,
    (process_method_func)daObjStopper2_Delete__FP15daObjStopper2_c,
    (process_method_func)daObjStopper2_Execute__FP15daObjStopper2_c,
    0,
    (process_method_func)daObjStopper2_Draw__FP15daObjStopper2_c,
};

/* 80CEFFC8-80CEFFF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stopper2 */
extern actor_process_profile_definition g_profile_Obj_Stopper2 = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Stopper2,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjStopper2_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  564,                     // mPriority
  &l_daObjStopper2_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
