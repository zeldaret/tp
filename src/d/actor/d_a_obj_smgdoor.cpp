/**
 * @file d_a_obj_smgdoor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_smgdoor.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void eventCallBack__FPvi();
extern "C" void initBaseMtx__14daObjSmgDoor_cFv();
extern "C" void setBaseMtx__14daObjSmgDoor_cFv();
extern "C" void Create__14daObjSmgDoor_cFv();
extern "C" void CreateHeap__14daObjSmgDoor_cFv();
extern "C" void create1st__14daObjSmgDoor_cFv();
extern "C" void Execute__14daObjSmgDoor_cFPPA3_A4_f();
extern "C" void getDemoAction__14daObjSmgDoor_cFv();
extern "C" void demoProc__14daObjSmgDoor_cFv();
extern "C" void openInit__14daObjSmgDoor_cFv();
extern "C" void openProc__14daObjSmgDoor_cFv();
extern "C" void setGoal__14daObjSmgDoor_cFv();
extern "C" void setPos__14daObjSmgDoor_cFv();
extern "C" void sceneChange__14daObjSmgDoor_cFv();
extern "C" void event_proc_call__14daObjSmgDoor_cFv();
extern "C" void actionWaitEvent__14daObjSmgDoor_cFv();
extern "C" void actionEvent__14daObjSmgDoor_cFv();
extern "C" void actionDead__14daObjSmgDoor_cFv();
extern "C" void checkArea__14daObjSmgDoor_cFv();
extern "C" void checkOpen__14daObjSmgDoor_cFv();
extern "C" void Draw__14daObjSmgDoor_cFv();
extern "C" void Delete__14daObjSmgDoor_cFv();
extern "C" static void daObjSmgDoor_create1st__FP14daObjSmgDoor_c();
extern "C" static void daObjSmgDoor_MoveBGDelete__FP14daObjSmgDoor_c();
extern "C" static void daObjSmgDoor_MoveBGExecute__FP14daObjSmgDoor_c();
extern "C" static void daObjSmgDoor_MoveBGDraw__FP14daObjSmgDoor_c();
extern "C" void func_80CDCBD0(void* _this, u8*);
extern "C" extern char const* const d_a_obj_smgdoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_change_colpat__FUc();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalize__4cXyzFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CDCDF8[4];

//
// Declarations:
//

/* 80CDBB38-80CDBB5C 000078 0024+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static void eventCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 80CDBB5C-80CDBBEC 00009C 0090+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCBF4-80CDCBF8 000000 0004+00 3/3 0/0 0/0 .rodata          @3705 */
SECTION_RODATA static f32 const lit_3705 = -145.0f;
COMPILER_STRIP_GATE(0x80CDCBF4, &lit_3705);

/* 80CDCBF8-80CDCBFC 000004 0004+00 1/4 0/0 0/0 .rodata          @3706 */
SECTION_RODATA static u8 const lit_3706[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CDCBF8, &lit_3706);

/* 80CDCBFC-80CDCC00 000008 0004+00 0/1 0/0 0/0 .rodata          @3707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3707 = 145.0f;
COMPILER_STRIP_GATE(0x80CDCBFC, &lit_3707);
#pragma pop

/* 80CDBBEC-80CDBD38 00012C 014C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCC00-80CDCC04 00000C 0004+00 1/1 0/0 0/0 .rodata          @3722 */
SECTION_RODATA static f32 const lit_3722 = 150.0f;
COMPILER_STRIP_GATE(0x80CDCC00, &lit_3722);

/* 80CDCC24-80CDCC24 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDCC24 = "A_SMGDoor";
SECTION_DEAD static char const* const stringBase_80CDCC2E = "A_SMKDoor";
SECTION_DEAD static char const* const stringBase_80CDCC38 = "A_SMGDoor.bmd";
SECTION_DEAD static char const* const stringBase_80CDCC46 = "A_SMKDoor.bmd";
SECTION_DEAD static char const* const stringBase_80CDCC54 = "A_SMGDoor.dzb";
SECTION_DEAD static char const* const stringBase_80CDCC62 = "A_SMKDoor.dzb";
SECTION_DEAD static char const* const stringBase_80CDCC70 = "NOW_DOOR_IN";
SECTION_DEAD static char const* const stringBase_80CDCC7C = "OLD_DOOR_IN";
#pragma pop

/* 80CDCCE4-80CDCCEC -00001 0008+00 3/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_smgdoor__stringBase0,
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0xA),
};

/* 80CDCCEC-80CDCCF4 -00001 0008+00 1/1 0/0 0/0 .data            l_bmd */
SECTION_DATA static void* l_bmd[2] = {
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x14),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x22),
};

/* 80CDCCF4-80CDCCFC -00001 0008+00 1/1 0/0 0/0 .data            l_dzb */
SECTION_DATA static void* l_dzb[2] = {
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x30),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x3E),
};

/* 80CDCCFC-80CDCD04 -00001 0008+00 0/1 0/0 0/0 .data            l_eventName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_eventName[2] = {
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x4C),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x58),
};
#pragma pop

/* 80CDCD04-80CDCD1C 000040 0018+00 0/1 0/0 0/0 .data            l_cull_box */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
#pragma pop

/* 80CDBD38-80CDBE1C 000278 00E4+00 1/0 0/0 0/0 .text            Create__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::Create() {
    // NONMATCHING
}

/* 80CDBE1C-80CDBED4 00035C 00B8+00 1/0 0/0 0/0 .text            CreateHeap__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::CreateHeap() {
    // NONMATCHING
}

/* 80CDBED4-80CDBFA4 000414 00D0+00 1/1 0/0 0/0 .text            create1st__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::create1st() {
    // NONMATCHING
}

/* 80CDBFA4-80CDBFF0 0004E4 004C+00 1/0 0/0 0/0 .text            Execute__14daObjSmgDoor_cFPPA3_A4_f
 */
void daObjSmgDoor_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCC24-80CDCC24 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDCC88 = "WAIT";
SECTION_DEAD static char const* const stringBase_80CDCC8D = "OPEN";
SECTION_DEAD static char const* const stringBase_80CDCC92 = "SETGOAL";
SECTION_DEAD static char const* const stringBase_80CDCC9A = "SETPOS";
SECTION_DEAD static char const* const stringBase_80CDCCA1 = "SCENE_CHG";
SECTION_DEAD static char const* const stringBase_80CDCCAB = "COLOR_CHG";
#pragma pop

/* 80CDCD1C-80CDCD34 -00001 0018+00 1/1 0/0 0/0 .data            action_table$3763 */
SECTION_DATA static void* action_table[6] = {
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x64),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x69),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x6E),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x76),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x7D),
    (void*)(((char*)&d_a_obj_smgdoor__stringBase0) + 0x87),
};

/* 80CDBFF0-80CDC038 000530 0048+00 1/1 0/0 0/0 .text            getDemoAction__14daObjSmgDoor_cFv
 */
void daObjSmgDoor_c::getDemoAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCC04-80CDCC08 000010 0004+00 3/3 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static f32 const lit_3825 = 1.0f;
COMPILER_STRIP_GATE(0x80CDCC04, &lit_3825);

/* 80CDCC08-80CDCC0C 000014 0004+00 3/3 0/0 0/0 .rodata          @3826 */
SECTION_RODATA static f32 const lit_3826 = -1.0f;
COMPILER_STRIP_GATE(0x80CDCC08, &lit_3826);

/* 80CDCC24-80CDCC24 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDCCB5 = "smgdoor";
SECTION_DEAD static char const* const stringBase_80CDCCBD = "Timer";
#pragma pop

/* 80CDC038-80CDC248 000578 0210+00 1/1 0/0 0/0 .text            demoProc__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::demoProc() {
    // NONMATCHING
}

/* 80CDC248-80CDC378 000788 0130+00 1/1 0/0 0/0 .text            openInit__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::openInit() {
    // NONMATCHING
}

/* 80CDC378-80CDC4AC 0008B8 0134+00 1/1 0/0 0/0 .text            openProc__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::openProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCC0C-80CDCC10 000018 0004+00 1/1 0/0 0/0 .rodata          @3888 */
SECTION_RODATA static f32 const lit_3888 = 60.0f;
COMPILER_STRIP_GATE(0x80CDCC0C, &lit_3888);

/* 80CDC4AC-80CDC548 0009EC 009C+00 1/1 0/0 0/0 .text            setGoal__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::setGoal() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCC10-80CDCC14 00001C 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = 300.0f;
COMPILER_STRIP_GATE(0x80CDCC10, &lit_3906);
#pragma pop

/* 80CDCC14-80CDCC18 000020 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 250.0f;
COMPILER_STRIP_GATE(0x80CDCC14, &lit_3907);
#pragma pop

/* 80CDC548-80CDC610 000A88 00C8+00 1/1 0/0 0/0 .text            setPos__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::setPos() {
    // NONMATCHING
}

/* 80CDC610-80CDC65C 000B50 004C+00 2/2 0/0 0/0 .text            sceneChange__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::sceneChange() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCD34-80CDCD40 -00001 000C+00 0/1 0/0 0/0 .data            @3924 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitEvent__14daObjSmgDoor_cFv,
};
#pragma pop

/* 80CDCD40-80CDCD4C -00001 000C+00 0/1 0/0 0/0 .data            @3925 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3925[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__14daObjSmgDoor_cFv,
};
#pragma pop

/* 80CDCD4C-80CDCD58 -00001 000C+00 0/1 0/0 0/0 .data            @3926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__14daObjSmgDoor_cFv,
};
#pragma pop

/* 80CDCD58-80CDCD7C 000094 0024+00 0/1 0/0 0/0 .data            l_func$3923 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CDC65C-80CDC700 000B9C 00A4+00 1/1 0/0 0/0 .text            event_proc_call__14daObjSmgDoor_cFv
 */
void daObjSmgDoor_c::event_proc_call() {
    // NONMATCHING
}

/* 80CDC700-80CDC790 000C40 0090+00 1/0 0/0 0/0 .text            actionWaitEvent__14daObjSmgDoor_cFv
 */
void daObjSmgDoor_c::actionWaitEvent() {
    // NONMATCHING
}

/* 80CDC790-80CDC7F4 000CD0 0064+00 1/0 0/0 0/0 .text            actionEvent__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::actionEvent() {
    // NONMATCHING
}

/* 80CDC7F4-80CDC7F8 000D34 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CDCC18-80CDCC1C 000024 0004+00 0/1 0/0 0/0 .rodata          @4054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4054 = 62500.0f;
COMPILER_STRIP_GATE(0x80CDCC18, &lit_4054);
#pragma pop

/* 80CDCC1C-80CDCC20 000028 0004+00 0/1 0/0 0/0 .rodata          @4055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4055 = 90000.0f;
COMPILER_STRIP_GATE(0x80CDCC1C, &lit_4055);
#pragma pop

/* 80CDCC20-80CDCC24 00002C 0004+00 0/1 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 12100.0f;
COMPILER_STRIP_GATE(0x80CDCC20, &lit_4056);
#pragma pop

/* 80CDC7F8-80CDC974 000D38 017C+00 1/1 0/0 0/0 .text            checkArea__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::checkArea() {
    // NONMATCHING
}

/* 80CDC974-80CDCA00 000EB4 008C+00 1/1 0/0 0/0 .text            checkOpen__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::checkOpen() {
    // NONMATCHING
}

/* 80CDCA00-80CDCAC4 000F40 00C4+00 1/0 0/0 0/0 .text            Draw__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::Draw() {
    // NONMATCHING
}

/* 80CDCAC4-80CDCB04 001004 0040+00 1/0 0/0 0/0 .text            Delete__14daObjSmgDoor_cFv */
void daObjSmgDoor_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDCD7C-80CDCD9C -00001 0020+00 1/0 0/0 0/0 .data            daObjSmgDoor_METHODS */
static actor_method_class daObjSmgDoor_METHODS = {
    (process_method_func)daObjSmgDoor_create1st__FP14daObjSmgDoor_c,
    (process_method_func)daObjSmgDoor_MoveBGDelete__FP14daObjSmgDoor_c,
    (process_method_func)daObjSmgDoor_MoveBGExecute__FP14daObjSmgDoor_c,
    0,
    (process_method_func)daObjSmgDoor_MoveBGDraw__FP14daObjSmgDoor_c,
};

/* 80CDCD9C-80CDCDCC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SmgDoor */
extern actor_process_profile_definition g_profile_Obj_SmgDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SmgDoor,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSmgDoor_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  553,                    // mPriority
  &daObjSmgDoor_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CDCDCC-80CDCDF4 000108 0028+00 1/1 0/0 0/0 .data            __vt__14daObjSmgDoor_c */
SECTION_DATA extern void* __vt__14daObjSmgDoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjSmgDoor_cFv,
    (void*)Create__14daObjSmgDoor_cFv,
    (void*)Execute__14daObjSmgDoor_cFPPA3_A4_f,
    (void*)Draw__14daObjSmgDoor_cFv,
    (void*)Delete__14daObjSmgDoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CDCB04-80CDCB64 001044 0060+00 1/0 0/0 0/0 .text daObjSmgDoor_create1st__FP14daObjSmgDoor_c
 */
static void daObjSmgDoor_create1st(daObjSmgDoor_c* param_0) {
    // NONMATCHING
}

/* 80CDCB64-80CDCB84 0010A4 0020+00 1/0 0/0 0/0 .text
 * daObjSmgDoor_MoveBGDelete__FP14daObjSmgDoor_c                */
static void daObjSmgDoor_MoveBGDelete(daObjSmgDoor_c* param_0) {
    // NONMATCHING
}

/* 80CDCB84-80CDCBA4 0010C4 0020+00 1/0 0/0 0/0 .text
 * daObjSmgDoor_MoveBGExecute__FP14daObjSmgDoor_c               */
static void daObjSmgDoor_MoveBGExecute(daObjSmgDoor_c* param_0) {
    // NONMATCHING
}

/* 80CDCBA4-80CDCBD0 0010E4 002C+00 1/0 0/0 0/0 .text daObjSmgDoor_MoveBGDraw__FP14daObjSmgDoor_c
 */
static void daObjSmgDoor_MoveBGDraw(daObjSmgDoor_c* param_0) {
    // NONMATCHING
}

/* 80CDCBD0-80CDCBEC 001110 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CDCBD0(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80CDCC24-80CDCC24 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
