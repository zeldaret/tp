/**
 * @file d_a_obj_lv3Water.cpp
 * 
*/

#include "d/actor/d_a_obj_lv3Water.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daLv3Water_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daLv3Water_cFv();
extern "C" void CreateHeap__12daLv3Water_cFv();
extern "C" void create__12daLv3Water_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Execute__12daLv3Water_cFPPA3_A4_f();
extern "C" void effectSet__12daLv3Water_cFv();
extern "C" void mode_proc_wait__12daLv3Water_cFv();
extern "C" void mode_init_levelCtrl__12daLv3Water_cFv();
extern "C" void mode_proc_levelCtrl__12daLv3Water_cFv();
extern "C" void Draw__12daLv3Water_cFv();
extern "C" void Delete__12daLv3Water_cFv();
extern "C" void eventStart__12daLv3Water_cFv();
extern "C" static void daLv3Water_Draw__FP12daLv3Water_c();
extern "C" static void daLv3Water_Execute__FP12daLv3Water_c();
extern "C" static void daLv3Water_Delete__FP12daLv3Water_c();
extern "C" static void daLv3Water_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daLv3Water_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv3Water_cpp();
extern "C" static void func_80C59D10();
extern "C" static void func_80C59D18();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__12daLv3Water_cFv();
extern "C" extern char const* const d_a_obj_lv3Water__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopMsgM_valueIncrease__FiiUc();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void setEffectMtx__13J3DTexMtxInfoFPA4_f();
extern "C" void simpleCalcMaterial__12J3DModelDataFUsPA4_f();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C5A068-80C5A068 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C5A068 = "Kr10water";
SECTION_DEAD static char const* const stringBase_80C5A072 = "Kr10wat01";
SECTION_DEAD static char const* const stringBase_80C5A07C = "Kr02wat00";
SECTION_DEAD static char const* const stringBase_80C5A086 = "Kr03wat00";
SECTION_DEAD static char const* const stringBase_80C5A090 = "Kr03wat01";
SECTION_DEAD static char const* const stringBase_80C5A09A = "Kr03wat02";
SECTION_DEAD static char const* const stringBase_80C5A0A4 = "Kr03wat03";
SECTION_DEAD static char const* const stringBase_80C5A0AE = "Kr03wat04";
SECTION_DEAD static char const* const stringBase_80C5A0B8 = "Kr07wat00";
SECTION_DEAD static char const* const stringBase_80C5A0C2 = "Kr08wat00";
SECTION_DEAD static char const* const stringBase_80C5A0CC = "Kr08wat01";
SECTION_DEAD static char const* const stringBase_80C5A0D6 = "Kr02wat01";
SECTION_DEAD static char const* const stringBase_80C5A0E0 = "Kr02wat02";
SECTION_DEAD static char const* const stringBase_80C5A0EA = "Kr02wat03";
SECTION_DEAD static char const* const stringBase_80C5A0F4 = "Kr11wat00";
SECTION_DEAD static char const* const stringBase_80C5A0FE = "Kr12wat00";
SECTION_DEAD static char const* const stringBase_80C5A108 = "Kr13wat00";
SECTION_DEAD static char const* const stringBase_80C5A112 = "Kr13wat01";
SECTION_DEAD static char const* const stringBase_80C5A11C = "Kr13wat02";
SECTION_DEAD static char const* const stringBase_80C5A126 = "Kr03wat05";
SECTION_DEAD static char const* const stringBase_80C5A130 = "Kr03wat06";
#pragma pop

/* 80C5A13C-80C5A148 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C5A148-80C5A15C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C5A15C-80C5A1B0 -00001 0054+00 3/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[21] = {
    (void*)&d_a_obj_lv3Water__stringBase0,
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xA),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x14),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x28),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x32),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x3C),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x46),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x50),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x5A),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x64),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x6E),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x78),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x82),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x8C),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0x96),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xAA),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xB4),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xBE),
    (void*)(((char*)&d_a_obj_lv3Water__stringBase0) + 0xC8),
};

/* 80C5A1B0-80C5A1BC -00001 000C+00 0/1 0/0 0/0 .data            @3830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_wait__12daLv3Water_cFv,
};
#pragma pop

/* 80C5A1BC-80C5A1C8 -00001 000C+00 0/1 0/0 0/0 .data            @3831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_levelCtrl__12daLv3Water_cFv,
};
#pragma pop

/* 80C5A1C8-80C5A1E0 00008C 0018+00 1/2 0/0 0/0 .data            l_mode_func */
SECTION_DATA static u8 l_mode_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C5A1E0-80C5A228 -00001 0048+00 1/1 0/0 0/0 .data            @4043 */
SECTION_DATA static void* lit_4043[18] = {
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x290),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x3C),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x118),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x474),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x8BC),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x778),
    (void*)(((char*)effectSet__12daLv3Water_cFv) + 0x600),
};

/* 80C5A228-80C5A248 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv3Water_Method */
static actor_method_class l_daLv3Water_Method = {
    (process_method_func)daLv3Water_Create__FP10fopAc_ac_c,
    (process_method_func)daLv3Water_Delete__FP12daLv3Water_c,
    (process_method_func)daLv3Water_Execute__FP12daLv3Water_c,
    0,
    (process_method_func)daLv3Water_Draw__FP12daLv3Water_c,
};

/* 80C5A248-80C5A278 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv3Water */
extern actor_process_profile_definition g_profile_Obj_Lv3Water = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv3Water,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv3Water_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  616,                    // mPriority
  &l_daLv3Water_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C5A278-80C5A284 00013C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C5A284-80C5A29C 000148 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C5A29C-80C5A2E4 000160 0048+00 2/2 0/0 0/0 .data            __vt__12daLv3Water_c */
SECTION_DATA extern void* __vt__12daLv3Water_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daLv3Water_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__12daLv3Water_cFPPA3_A4_f,
    (void*)Draw__12daLv3Water_cFv,
    (void*)Delete__12daLv3Water_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C59D18,
    (void*)func_80C59D10,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__12daLv3Water_cFv,
    (void*)eventStart__12daLv3Water_cFv,
};

/* 80C5A2E4-80C5A2F0 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__16daLv3Water_HIO_c */
SECTION_DATA extern void* __vt__16daLv3Water_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daLv3Water_HIO_cFv,
};

/* 80C5A2F0-80C5A2FC 0001B4 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C587CC-80C587F0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daLv3Water_HIO_cFv */
daLv3Water_HIO_c::daLv3Water_HIO_c() {
    // NONMATCHING
}

/* 80C587F0-80C58838 000110 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C58838-80C5891C 000158 00E4+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv3Water_cFv */
void daLv3Water_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C59E70-80C59EC4 000000 0054+00 2/2 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[84] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80C59E70, &l_bmdIdx);

/* 80C59EC4-80C59F18 000054 0054+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[84] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0B,
};
COMPILER_STRIP_GATE(0x80C59EC4, &l_dzbIdx);

/* 80C59F18-80C59F6C 0000A8 0054+00 0/1 0/0 0/0 .rodata          l_btkIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btkIdx[84] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80C59F18, &l_btkIdx);
#pragma pop

/* 80C59F6C-80C59FC0 0000FC 0054+00 0/1 0/0 0/0 .rodata          l_bmdIdrIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdIdrIdx[84] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80C59F6C, &l_bmdIdrIdx);
#pragma pop

/* 80C59FC0-80C5A014 000150 0054+00 0/1 0/0 0/0 .rodata          l_btkIdrIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btkIdrIdx[84] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80C59FC0, &l_btkIdrIdx);
#pragma pop

/* 80C5A014-80C5A018 0001A4 0004+00 3/5 0/0 0/0 .rodata          @3737 */
SECTION_RODATA static f32 const lit_3737 = 1.0f;
COMPILER_STRIP_GATE(0x80C5A014, &lit_3737);

/* 80C5891C-80C58ABC 00023C 01A0+00 1/0 0/0 0/0 .text            CreateHeap__12daLv3Water_cFv */
void daLv3Water_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5A018-80C5A048 0001A8 002A+06 1/1 0/0 0/0 .rodata          estimateSizeTbl$3746 */
SECTION_RODATA static u8 const estimateSizeTbl[42 + 6 /* padding */] = {
    0x1C,
    0xE0,
    0x4F,
    0x90,
    0x1C,
    0x80,
    0x1C,
    0x30,
    0x1C,
    0x30,
    0x1C,
    0x30,
    0x1C,
    0x30,
    0x80,
    0x00,
    0x27,
    0xD0,
    0x24,
    0x90,
    0x1E,
    0x60,
    0x1C,
    0x80,
    0x1C,
    0x80,
    0x1C,
    0x80,
    0x4F,
    0x90,
    0x28,
    0x80,
    0x29,
    0xD0,
    0x2B,
    0x00,
    0x20,
    0x40,
    0x13,
    0x60,
    0x13,
    0x60,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C5A018, &estimateSizeTbl);

/* 80C5A048-80C5A050 0001D8 0008+00 1/1 0/0 0/0 .rodata          @3812 */
SECTION_RODATA static u8 const lit_3812[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C5A048, &lit_3812);

/* 80C58ABC-80C58D20 0003DC 0264+00 1/1 0/0 0/0 .text            create__12daLv3Water_cFv */
void daLv3Water_c::create() {
    // NONMATCHING
}

/* 80C58D20-80C58D68 000640 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C58D68-80C58E20 000688 00B8+00 1/0 0/0 0/0 .text            Execute__12daLv3Water_cFPPA3_A4_f
 */
void daLv3Water_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C58E20-80C596F4 000740 08D4+00 2/1 0/0 0/0 .text            effectSet__12daLv3Water_cFv */
void daLv3Water_c::effectSet() {
    // NONMATCHING
}

/* 80C596F4-80C59754 001014 0060+00 1/0 0/0 0/0 .text            mode_proc_wait__12daLv3Water_cFv */
void daLv3Water_c::mode_proc_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5A050-80C5A058 0001E0 0004+04 1/1 0/0 0/0 .rodata          @4068 */
SECTION_RODATA static f32 const lit_4068[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C5A050, &lit_4068);

/* 80C5A308-80C5A314 000008 000C+00 1/1 0/0 0/0 .bss             @3657 */
static u8 lit_3657[12];

/* 80C5A314-80C5A31C 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80C59754-80C597FC 001074 00A8+00 1/1 0/0 0/0 .text mode_init_levelCtrl__12daLv3Water_cFv */
void daLv3Water_c::mode_init_levelCtrl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5A058-80C5A060 0001E8 0008+00 1/1 0/0 0/0 .rodata          @4080 */
SECTION_RODATA static u8 const lit_4080[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C5A058, &lit_4080);

/* 80C597FC-80C598BC 00111C 00C0+00 1/0 0/0 0/0 .text mode_proc_levelCtrl__12daLv3Water_cFv */
void daLv3Water_c::mode_proc_levelCtrl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5A060-80C5A064 0001F0 0004+00 0/1 0/0 0/0 .rodata          @4173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4173 = -1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C5A060, &lit_4173);
#pragma pop

/* 80C5A064-80C5A068 0001F4 0004+00 0/1 0/0 0/0 .rodata          @4174 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4174[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C5A064, &lit_4174);
#pragma pop

/* 80C598BC-80C59AA0 0011DC 01E4+00 1/0 0/0 0/0 .text            Draw__12daLv3Water_cFv */
void daLv3Water_c::Draw() {
    // NONMATCHING
}

/* 80C59AA0-80C59AE0 0013C0 0040+00 1/0 0/0 0/0 .text            Delete__12daLv3Water_cFv */
void daLv3Water_c::Delete() {
    // NONMATCHING
}

/* 80C59AE0-80C59BA8 001400 00C8+00 2/1 0/0 0/0 .text            eventStart__12daLv3Water_cFv */
void daLv3Water_c::eventStart() {
    // NONMATCHING
}

/* 80C59BA8-80C59BD4 0014C8 002C+00 1/0 0/0 0/0 .text            daLv3Water_Draw__FP12daLv3Water_c
 */
static void daLv3Water_Draw(daLv3Water_c* param_0) {
    // NONMATCHING
}

/* 80C59BD4-80C59BF4 0014F4 0020+00 1/0 0/0 0/0 .text daLv3Water_Execute__FP12daLv3Water_c */
static void daLv3Water_Execute(daLv3Water_c* param_0) {
    // NONMATCHING
}

/* 80C59BF4-80C59C14 001514 0020+00 1/0 0/0 0/0 .text            daLv3Water_Delete__FP12daLv3Water_c
 */
static void daLv3Water_Delete(daLv3Water_c* param_0) {
    // NONMATCHING
}

/* 80C59C14-80C59C34 001534 0020+00 1/0 0/0 0/0 .text            daLv3Water_Create__FP10fopAc_ac_c
 */
static void daLv3Water_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C59C34-80C59C90 001554 005C+00 2/1 0/0 0/0 .text            __dt__16daLv3Water_HIO_cFv */
daLv3Water_HIO_c::~daLv3Water_HIO_c() {
    // NONMATCHING
}

/* 80C59C90-80C59D10 0015B0 0080+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv3Water_cpp */
void __sinit_d_a_obj_lv3Water_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C59C90, __sinit_d_a_obj_lv3Water_cpp);
#pragma pop

/* 80C59D10-80C59D18 001630 0008+00 1/0 0/0 0/0 .text            @1448@eventStart__12daLv3Water_cFv
 */
static void func_80C59D10() {
    // NONMATCHING
}

/* 80C59D18-80C59D20 001638 0008+00 1/0 0/0 0/0 .text            @1448@__dt__12daLv3Water_cFv */
static void func_80C59D18() {
    // NONMATCHING
}

/* 80C59D20-80C59D68 001640 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C59D68-80C59D70 001688 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C59D70-80C59D78 001690 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C59D78-80C59D80 001698 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C59D80-80C59E5C 0016A0 00DC+00 2/1 0/0 0/0 .text            __dt__12daLv3Water_cFv */
daLv3Water_c::~daLv3Water_c() {
    // NONMATCHING
}

/* 80C5A068-80C5A068 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
