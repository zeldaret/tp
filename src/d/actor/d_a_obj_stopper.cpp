/**
 * @file d_a_obj_stopper.cpp
 * 
*/

#include "d/actor/d_a_obj_stopper.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void getStopModelData__Fv();
extern "C" void initBaseMtx__14daObjStopper_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void setBaseMtx__14daObjStopper_cFv();
extern "C" void Create__14daObjStopper_cFv();
extern "C" void CreateHeap__14daObjStopper_cFv();
extern "C" void create__14daObjStopper_cFv();
extern "C" void __dt__19dPa_followEcallBackFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __defctor__19dPa_followEcallBackFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void Execute__14daObjStopper_cFPPA3_A4_f();
extern "C" void action__14daObjStopper_cFv();
extern "C" void actionWait__14daObjStopper_cFv();
extern "C" void actionWaitOrderEvent__14daObjStopper_cFv();
extern "C" void actionOrderEvent__14daObjStopper_cFv();
extern "C" void actionEvent__14daObjStopper_cFv();
extern "C" void actionDead__14daObjStopper_cFv();
extern "C" void actionWaitClose__14daObjStopper_cFv();
extern "C" void actionCloseInit__14daObjStopper_cFv();
extern "C" void actionClose__14daObjStopper_cFv();
extern "C" void hint_action1__14daObjStopper_cFv();
extern "C" void hint_action2__14daObjStopper_cFv();
extern "C" void hint_action3__14daObjStopper_cFv();
extern "C" void Draw__14daObjStopper_cFv();
extern "C" void Delete__14daObjStopper_cFv();
extern "C" static void daObjStopper_Draw__FP14daObjStopper_c();
extern "C" static void daObjStopper_Execute__FP14daObjStopper_c();
extern "C" static void daObjStopper_Delete__FP14daObjStopper_c();
extern "C" static void daObjStopper_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void func_80CEEF48(void* _this, u16*);
extern "C" void func_80CEEF64(void* _this, u8*);
extern "C" static void func_80CEEF80();
extern "C" static void func_80CEEF88();
extern "C" extern char const* const d_a_obj_stopper__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void __ct__19dPa_followEcallBackFUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19dPa_followEcallBack[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CEEFF0-80CEEFF0 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CEEFF0 = "door-stop.bmd";
#pragma pop

/* 80CECF0C-80CECF34 0000EC 0028+00 1/1 0/0 0/0 .text            getStopModelData__Fv */
static void getStopModelData() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFA0-80CEEFA4 000000 0004+00 7/7 0/0 0/0 .rodata          @3635 */
SECTION_RODATA static u8 const lit_3635[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CEEFA0, &lit_3635);

/* 80CEEFA4-80CEEFA8 000004 0004+00 1/1 0/0 0/0 .rodata          @3636 */
SECTION_RODATA static f32 const lit_3636 = 100.0f;
COMPILER_STRIP_GATE(0x80CEEFA4, &lit_3636);

/* 80CEF1E8-80CEF1EC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80CEF1EC-80CEF1F0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80CEF1F0-80CEF1F4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80CEF1F4-80CEF1F8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80CEF1F8-80CEF1FC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80CEF1FC-80CEF200 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80CEF200-80CEF204 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80CEF204-80CEF208 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80CEF208-80CEF20C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80CEF20C-80CEF210 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80CEF210-80CEF214 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80CEF214-80CEF218 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80CEF218-80CEF21C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80CEF21C-80CEF220 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80CEF220-80CEF224 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80CEF224-80CEF228 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80CEF228-80CEF238 000048 000C+04 0/1 0/0 0/0 .bss             @3627 */
#pragma push
#pragma force_active on
static u8 lit_3627[12 + 4 /* padding */];
#pragma pop

/* 80CEF238-80CEF244 000058 000C+00 0/1 0/0 0/0 .bss             l_offset$3626 */
#pragma push
#pragma force_active on
static u8 l_offset[12];
#pragma pop

/* 80CECF34-80CECFE8 000114 00B4+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjStopper_cFv */
void daObjStopper_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CECFE8-80CED024 0001C8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
void __dt__4cXyzFv() {
//asm cXyz::~cXyz() {
    // NONMATCHING
}

/* 80CED024-80CED0B8 000204 0094+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjStopper_cFv */
void daObjStopper_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFA8-80CEEFAC 000008 0004+00 1/2 0/0 0/0 .rodata          @3692 */
SECTION_RODATA static f32 const lit_3692 = 300.0f;
COMPILER_STRIP_GATE(0x80CEEFA8, &lit_3692);

/* 80CEEFAC-80CEEFB0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3693 = 30.0f;
COMPILER_STRIP_GATE(0x80CEEFAC, &lit_3693);
#pragma pop

/* 80CEEFB0-80CEEFB4 000010 0004+00 0/2 0/0 0/0 .rodata          @3694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3694 = 2.0f;
COMPILER_STRIP_GATE(0x80CEEFB0, &lit_3694);
#pragma pop

/* 80CED0B8-80CED20C 000298 0154+00 1/0 0/0 0/0 .text            Create__14daObjStopper_cFv */
void daObjStopper_c::Create() {
    // NONMATCHING
}

/* 80CED20C-80CED258 0003EC 004C+00 1/0 0/0 0/0 .text            CreateHeap__14daObjStopper_cFv */
void daObjStopper_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEF000-80CEF00C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CEF00C-80CEF020 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CEF020-80CEF02C -00001 000C+00 0/1 0/0 0/0 .data            @3843 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3843[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF02C-80CEF038 -00001 000C+00 0/1 0/0 0/0 .data            @3844 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3844[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitOrderEvent__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF038-80CEF044 -00001 000C+00 0/1 0/0 0/0 .data            @3845 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3845[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF044-80CEF050 -00001 000C+00 0/1 0/0 0/0 .data            @3846 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3846[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF050-80CEF05C -00001 000C+00 0/1 0/0 0/0 .data            @3847 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3847[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF05C-80CEF068 -00001 000C+00 0/1 0/0 0/0 .data            @3848 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3848[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitClose__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF068-80CEF074 -00001 000C+00 0/1 0/0 0/0 .data            @3849 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3849[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionClose__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF074-80CEF080 -00001 000C+00 0/1 0/0 0/0 .data            @3850 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3850[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionCloseInit__14daObjStopper_cFv,
};
#pragma pop

/* 80CEF080-80CEF0E0 000080 0060+00 0/1 0/0 0/0 .data            l_func$3842 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CEF0E0-80CEF100 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStopper_Method */
static actor_method_class l_daObjStopper_Method = {
    (process_method_func)daObjStopper_Create__FP10fopAc_ac_c,
    (process_method_func)daObjStopper_Delete__FP14daObjStopper_c,
    (process_method_func)daObjStopper_Execute__FP14daObjStopper_c,
    0,
    (process_method_func)daObjStopper_Draw__FP14daObjStopper_c,
};

/* 80CEF100-80CEF130 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stopper */
extern actor_process_profile_definition g_profile_Obj_Stopper = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Stopper,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjStopper_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  454,                    // mPriority
  &l_daObjStopper_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CEF130-80CEF13C 000130 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CEF13C-80CEF148 00013C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CEF148-80CEF154 000148 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CEF154-80CEF178 000154 0024+00 2/2 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
SECTION_DATA extern void* __vt__18dPa_levelEcallBack[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18dPa_levelEcallBackFv,
    (void*)execute__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)draw__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)NULL,
    (void*)cleanup__18dPa_levelEcallBackFv,
};

/* 80CEF178-80CEF184 000178 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CEF184-80CEF190 000184 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CEF190-80CEF1B4 000190 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CEEF88,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CEEF80,
};

/* 80CEF1B4-80CEF1DC 0001B4 0028+00 1/1 0/0 0/0 .data            __vt__14daObjStopper_c */
SECTION_DATA extern void* __vt__14daObjStopper_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjStopper_cFv,
    (void*)Create__14daObjStopper_cFv,
    (void*)Execute__14daObjStopper_cFPPA3_A4_f,
    (void*)Draw__14daObjStopper_cFv,
    (void*)Delete__14daObjStopper_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CED258-80CED440 000438 01E8+00 1/1 0/0 0/0 .text            create__14daObjStopper_cFv */
void daObjStopper_c::create() {
    // NONMATCHING
}

/* 80CED440-80CED4C4 000620 0084+00 1/1 0/0 0/0 .text            __dt__19dPa_followEcallBackFv */
// dPa_followEcallBack::~dPa_followEcallBack() {
extern "C" void __dt__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80CED4C4-80CED4C8 0006A4 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 80CED4C8-80CED4F0 0006A8 0028+00 1/1 0/0 0/0 .text            __defctor__19dPa_followEcallBackFv
 */
// void dPa_followEcallBack::__defctor() {
extern "C" void __defctor__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80CED4F0-80CED538 0006D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CED538-80CED580 000718 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CED580-80CED5DC 000760 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CED5DC-80CED64C 0007BC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CED64C-80CED6BC 00082C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CED6BC-80CED708 00089C 004C+00 1/0 0/0 0/0 .text            Execute__14daObjStopper_cFPPA3_A4_f
 */
void daObjStopper_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEF244-80CEF248 000064 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CEF244[4];

/* 80CED708-80CED824 0008E8 011C+00 1/1 0/0 0/0 .text            action__14daObjStopper_cFv */
void daObjStopper_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFB4-80CEEFB8 000014 0004+00 0/2 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3876 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CEEFB4, &lit_3876);
#pragma pop

/* 80CEEFB8-80CEEFBC 000018 0004+00 2/6 0/0 0/0 .rodata          @3877 */
SECTION_RODATA static f32 const lit_3877 = 1.0f;
COMPILER_STRIP_GATE(0x80CEEFB8, &lit_3877);

/* 80CEEFBC-80CEEFC0 00001C 0004+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = -0.25f;
COMPILER_STRIP_GATE(0x80CEEFBC, &lit_3878);
#pragma pop

/* 80CEEFC0-80CEEFC4 000020 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 25.0f;
COMPILER_STRIP_GATE(0x80CEEFC0, &lit_3879);
#pragma pop

/* 80CEEFC4-80CEEFC8 000024 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CEEFC4, &lit_3880);
#pragma pop

/* 80CEEFC8-80CEEFCC 000028 0004+00 0/2 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 60.0f;
COMPILER_STRIP_GATE(0x80CEEFC8, &lit_3881);
#pragma pop

/* 80CEEFCC-80CEEFD0 00002C 0004+00 0/2 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3882 = 350.0f;
COMPILER_STRIP_GATE(0x80CEEFCC, &lit_3882);
#pragma pop

/* 80CED824-80CEDA24 000A04 0200+00 1/0 0/0 0/0 .text            actionWait__14daObjStopper_cFv */
void daObjStopper_c::actionWait() {
    // NONMATCHING
}

/* 80CEDA24-80CEDAAC 000C04 0088+00 1/0 0/0 0/0 .text actionWaitOrderEvent__14daObjStopper_cFv */
void daObjStopper_c::actionWaitOrderEvent() {
    // NONMATCHING
}

/* 80CEDAAC-80CEDB2C 000C8C 0080+00 1/0 0/0 0/0 .text actionOrderEvent__14daObjStopper_cFv */
void daObjStopper_c::actionOrderEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFD0-80CEEFD4 000030 0004+00 2/5 0/0 0/0 .rodata          @4025 */
SECTION_RODATA static f32 const lit_4025 = -1.0f;
COMPILER_STRIP_GATE(0x80CEEFD0, &lit_4025);

/* 80CEDB2C-80CEE048 000D0C 051C+00 1/0 0/0 0/0 .text            actionEvent__14daObjStopper_cFv */
void daObjStopper_c::actionEvent() {
    // NONMATCHING
}

/* 80CEE048-80CEE04C 001228 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjStopper_cFv */
void daObjStopper_c::actionDead() {
    /* empty function */
}

/* 80CEE04C-80CEE05C 00122C 0010+00 1/0 0/0 0/0 .text            actionWaitClose__14daObjStopper_cFv
 */
void daObjStopper_c::actionWaitClose() {
    // NONMATCHING
}

/* 80CEE05C-80CEE0E0 00123C 0084+00 1/0 0/0 0/0 .text            actionCloseInit__14daObjStopper_cFv
 */
void daObjStopper_c::actionCloseInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFD4-80CEEFD8 000034 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = 6.0f;
COMPILER_STRIP_GATE(0x80CEEFD4, &lit_4053);
#pragma pop

/* 80CEE0E0-80CEE148 0012C0 0068+00 1/0 0/0 0/0 .text            actionClose__14daObjStopper_cFv */
void daObjStopper_c::actionClose() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFD8-80CEEFE0 000038 0004+04 0/2 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CEEFD8, &lit_4166);
#pragma pop

/* 80CEEFE0-80CEEFE8 000040 0008+00 0/3 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4168[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CEEFE0, &lit_4168);
#pragma pop

/* 80CEE148-80CEE5D0 001328 0488+00 1/1 0/0 0/0 .text            hint_action1__14daObjStopper_cFv */
void daObjStopper_c::hint_action1() {
    // NONMATCHING
}

/* 80CEE5D0-80CEEA28 0017B0 0458+00 1/1 0/0 0/0 .text            hint_action2__14daObjStopper_cFv */
void daObjStopper_c::hint_action2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEEFE8-80CEEFEC 000048 0004+00 0/1 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CEEFE8, &lit_4311);
#pragma pop

/* 80CEEFEC-80CEEFF0 00004C 0004+00 0/1 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 115.0f;
COMPILER_STRIP_GATE(0x80CEEFEC, &lit_4312);
#pragma pop

/* 80CEEA28-80CEECFC 001C08 02D4+00 1/1 0/0 0/0 .text            hint_action3__14daObjStopper_cFv */
void daObjStopper_c::hint_action3() {
    // NONMATCHING
}

/* 80CEECFC-80CEED60 001EDC 0064+00 1/0 0/0 0/0 .text            Draw__14daObjStopper_cFv */
void daObjStopper_c::Draw() {
    // NONMATCHING
}

/* 80CEED60-80CEEDF0 001F40 0090+00 1/0 0/0 0/0 .text            Delete__14daObjStopper_cFv */
void daObjStopper_c::Delete() {
    // NONMATCHING
}

/* 80CEEDF0-80CEEE1C 001FD0 002C+00 1/0 0/0 0/0 .text daObjStopper_Draw__FP14daObjStopper_c */
static void daObjStopper_Draw(daObjStopper_c* param_0) {
    // NONMATCHING
}

/* 80CEEE1C-80CEEE3C 001FFC 0020+00 1/0 0/0 0/0 .text daObjStopper_Execute__FP14daObjStopper_c */
static void daObjStopper_Execute(daObjStopper_c* param_0) {
    // NONMATCHING
}

/* 80CEEE3C-80CEEE5C 00201C 0020+00 1/0 0/0 0/0 .text daObjStopper_Delete__FP14daObjStopper_c */
static void daObjStopper_Delete(daObjStopper_c* param_0) {
    // NONMATCHING
}

/* 80CEEE5C-80CEEE7C 00203C 0020+00 1/0 0/0 0/0 .text            daObjStopper_Create__FP10fopAc_ac_c
 */
static void daObjStopper_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CEEE7C-80CEEEC4 00205C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CEEEC4-80CEEF38 0020A4 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
// dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" void __dt__18dPa_levelEcallBackFv() {
    // NONMATCHING
}

/* 80CEEF38-80CEEF3C 002118 0004+00 1/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CEEF3C-80CEEF40 00211C 0004+00 1/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CEEF40-80CEEF44 002120 0004+00 1/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CEEF44-80CEEF48 002124 0004+00 1/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CEEF48-80CEEF64 002128 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<Us>__FPUs */
extern "C" void func_80CEEF48(void* _this, u16* param_0) {
    // NONMATCHING
}

/* 80CEEF64-80CEEF80 002144 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CEEF64(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80CEEF80-80CEEF88 002160 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CEEF80() {
    // NONMATCHING
}

/* 80CEEF88-80CEEF90 002168 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CEEF88() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CEF248-80CEF24C 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80CEF248[4];
#pragma pop

/* 80CEF24C-80CEF250 00006C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80CEF24C[4];
#pragma pop

/* 80CEF250-80CEF254 000070 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80CEF250[4];
#pragma pop

/* 80CEF254-80CEF258 000074 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80CEF254[4];
#pragma pop

/* 80CEF258-80CEF25C 000078 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF258[4];
#pragma pop

/* 80CEF25C-80CEF260 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF25C[4];
#pragma pop

/* 80CEF260-80CEF264 000080 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF260[4];
#pragma pop

/* 80CEF264-80CEF268 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80CEF264[4];
#pragma pop

/* 80CEF268-80CEF26C 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80CEF268[4];
#pragma pop

/* 80CEF26C-80CEF270 00008C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80CEF26C[4];
#pragma pop

/* 80CEF270-80CEF274 000090 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80CEF270[4];
#pragma pop

/* 80CEF274-80CEF278 000094 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80CEF274[4];
#pragma pop

/* 80CEF278-80CEF27C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80CEF278[4];
#pragma pop

/* 80CEF27C-80CEF280 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF27C[4];
#pragma pop

/* 80CEF280-80CEF284 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80CEF280[4];
#pragma pop

/* 80CEF284-80CEF288 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80CEF284[4];
#pragma pop

/* 80CEF288-80CEF28C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80CEF288[4];
#pragma pop

/* 80CEF28C-80CEF290 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80CEF28C[4];
#pragma pop

/* 80CEF290-80CEF294 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF290[4];
#pragma pop

/* 80CEF294-80CEF298 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80CEF294[4];
#pragma pop

/* 80CEF298-80CEF29C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF298[4];
#pragma pop

/* 80CEF29C-80CEF2A0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF29C[4];
#pragma pop

/* 80CEF2A0-80CEF2A4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF2A0[4];
#pragma pop

/* 80CEF2A4-80CEF2A8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80CEF2A4[4];
#pragma pop

/* 80CEF2A8-80CEF2AC 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80CEF2A8[4];
#pragma pop

/* 80CEEFF0-80CEEFF0 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
