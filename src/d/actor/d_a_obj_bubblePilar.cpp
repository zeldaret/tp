/**
 * @file d_a_obj_bubblePilar.cpp
 * 
*/

#include "d/actor/d_a_obj_bubblePilar.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daBubbPilar_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daBubbPilar_cFv();
extern "C" void CreateHeap__13daBubbPilar_cFv();
extern "C" void create__13daBubbPilar_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void Execute__13daBubbPilar_cFPPA3_A4_f();
extern "C" void initModeWait__13daBubbPilar_cFv();
extern "C" void modeWait__13daBubbPilar_cFv();
extern "C" void initModeEffOn__13daBubbPilar_cFv();
extern "C" void modeEffOn__13daBubbPilar_cFv();
extern "C" void Draw__13daBubbPilar_cFv();
extern "C" void Delete__13daBubbPilar_cFv();
extern "C" static void daBubbPilar_Draw__FP13daBubbPilar_c();
extern "C" static void daBubbPilar_Execute__FP13daBubbPilar_c();
extern "C" static void daBubbPilar_Delete__FP13daBubbPilar_c();
extern "C" static void daBubbPilar_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17daBubbPilar_HIO_cFv();
extern "C" void __sinit_d_a_obj_bubblePilar_cpp();
extern "C" u8 const mCcDObjInfo__13daBubbPilar_c[48];
extern "C" extern char const* const d_a_obj_bubblePilar__stringBase0;
extern "C" u8 mCcDCyl__13daBubbPilar_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_camera_water_in_status_check__Fv();
extern "C" void dKy_bg_MAxx_proc__FPv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BC40BC-80BC40C8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BC40C8-80BC40DC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BC40DC-80BC4120 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__13daBubbPilar_c */
SECTION_DATA u8 daBubbPilar_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BC4120-80BC412C -00001 000C+00 0/1 0/0 0/0 .data            @3843 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3843[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daBubbPilar_cFv,
};
#pragma pop

/* 80BC412C-80BC4138 -00001 000C+00 0/1 0/0 0/0 .data            @3844 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3844[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEffOn__13daBubbPilar_cFv,
};
#pragma pop

/* 80BC4138-80BC4150 00007C 0018+00 0/1 0/0 0/0 .data            mode_proc$3842 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BC4150-80BC4170 -00001 0020+00 1/0 0/0 0/0 .data            l_daBubbPilar_Method */
static actor_method_class l_daBubbPilar_Method = {
    (process_method_func)daBubbPilar_Create__FP10fopAc_ac_c,
    (process_method_func)daBubbPilar_Delete__FP13daBubbPilar_c,
    (process_method_func)daBubbPilar_Execute__FP13daBubbPilar_c,
    0,
    (process_method_func)daBubbPilar_Draw__FP13daBubbPilar_c,
};

/* 80BC4170-80BC41A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_awaPlar */
extern actor_process_profile_definition g_profile_Obj_awaPlar = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_awaPlar,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daBubbPilar_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  659,                    // mPriority
  &l_daBubbPilar_Method,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BC41A0-80BC41AC 0000E4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BC41AC-80BC41B8 0000F0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BC41B8-80BC41C4 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BC41C4-80BC41D0 000108 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BC41D0-80BC41F8 000114 0028+00 1/1 0/0 0/0 .data            __vt__13daBubbPilar_c */
SECTION_DATA extern void* __vt__13daBubbPilar_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daBubbPilar_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daBubbPilar_cFPPA3_A4_f,
    (void*)Draw__13daBubbPilar_cFv,
    (void*)Delete__13daBubbPilar_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BC41F8-80BC4204 00013C 000C+00 2/2 0/0 0/0 .data            __vt__17daBubbPilar_HIO_c */
SECTION_DATA extern void* __vt__17daBubbPilar_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daBubbPilar_HIO_cFv,
};

/* 80BC4204-80BC4210 000148 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80BC33EC-80BC3418 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__17daBubbPilar_HIO_cFv */
daBubbPilar_HIO_c::daBubbPilar_HIO_c() {
    // NONMATCHING
}

/* 80BC3418-80BC3460 000118 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC4070-80BC40A0 000000 0030+00 3/3 0/0 0/0 .rodata          mCcDObjInfo__13daBubbPilar_c */
SECTION_RODATA u8 const daBubbPilar_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC4070, &daBubbPilar_c::mCcDObjInfo);

/* 80BC40A0-80BC40A4 000030 0004+00 1/3 0/0 0/0 .rodata          @3654 */
SECTION_RODATA static f32 const lit_3654 = 1.0f;
COMPILER_STRIP_GATE(0x80BC40A0, &lit_3654);

/* 80BC3460-80BC3518 000160 00B8+00 2/2 0/0 0/0 .text            setBaseMtx__13daBubbPilar_cFv */
void daBubbPilar_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC40B4-80BC40B4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BC40B4 = "M_Crack";
#pragma pop

/* 80BC3518-80BC35D0 000218 00B8+00 1/0 0/0 0/0 .text            CreateHeap__13daBubbPilar_cFv */
void daBubbPilar_c::CreateHeap() {
    // NONMATCHING
}

/* 80BC35D0-80BC3848 0002D0 0278+00 1/1 0/0 0/0 .text            create__13daBubbPilar_cFv */
void daBubbPilar_c::create() {
    // NONMATCHING
}

/* 80BC3848-80BC3890 000548 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BC3890-80BC38D8 000590 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BC38D8-80BC3934 0005D8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC4218-80BC4224 000008 000C+00 1/1 0/0 0/0 .bss             @3623 */
static u8 lit_3623[12];

/* 80BC4224-80BC422C 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80BC422C-80BC4230 00001C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80BC422C[4];

/* 80BC3934-80BC3AB8 000634 0184+00 1/0 0/0 0/0 .text            Execute__13daBubbPilar_cFPPA3_A4_f
 */
void daBubbPilar_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BC3AB8-80BC3AC4 0007B8 000C+00 2/2 0/0 0/0 .text            initModeWait__13daBubbPilar_cFv */
void daBubbPilar_c::initModeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC40A4-80BC40A8 000034 0004+00 0/2 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = -1.0f;
COMPILER_STRIP_GATE(0x80BC40A4, &lit_3939);
#pragma pop

/* 80BC40A8-80BC40AC 000038 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 100.0f;
COMPILER_STRIP_GATE(0x80BC40A8, &lit_3940);
#pragma pop

/* 80BC3AC4-80BC3C74 0007C4 01B0+00 1/0 0/0 0/0 .text            modeWait__13daBubbPilar_cFv */
void daBubbPilar_c::modeWait() {
    // NONMATCHING
}

/* 80BC3C74-80BC3C98 000974 0024+00 2/2 0/0 0/0 .text            initModeEffOn__13daBubbPilar_cFv */
void daBubbPilar_c::initModeEffOn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC40AC-80BC40B4 00003C 0006+02 0/1 0/0 0/0 .rodata          particle_id$3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const particle_id[6 + 2 /* padding */] = {
    0x88,
    0xBE,
    0x88,
    0xBF,
    0x88,
    0xC0,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BC40AC, &particle_id);
#pragma pop

/* 80BC3C98-80BC3DB0 000998 0118+00 1/0 0/0 0/0 .text            modeEffOn__13daBubbPilar_cFv */
void daBubbPilar_c::modeEffOn() {
    // NONMATCHING
}

/* 80BC3DB0-80BC3E8C 000AB0 00DC+00 1/0 0/0 0/0 .text            Draw__13daBubbPilar_cFv */
void daBubbPilar_c::Draw() {
    // NONMATCHING
}

/* 80BC3E8C-80BC3EBC 000B8C 0030+00 1/0 0/0 0/0 .text            Delete__13daBubbPilar_cFv */
void daBubbPilar_c::Delete() {
    // NONMATCHING
}

/* 80BC3EBC-80BC3EE8 000BBC 002C+00 1/0 0/0 0/0 .text            daBubbPilar_Draw__FP13daBubbPilar_c
 */
static void daBubbPilar_Draw(daBubbPilar_c* param_0) {
    // NONMATCHING
}

/* 80BC3EE8-80BC3F08 000BE8 0020+00 1/0 0/0 0/0 .text daBubbPilar_Execute__FP13daBubbPilar_c */
static void daBubbPilar_Execute(daBubbPilar_c* param_0) {
    // NONMATCHING
}

/* 80BC3F08-80BC3F28 000C08 0020+00 1/0 0/0 0/0 .text daBubbPilar_Delete__FP13daBubbPilar_c */
static void daBubbPilar_Delete(daBubbPilar_c* param_0) {
    // NONMATCHING
}

/* 80BC3F28-80BC3F48 000C28 0020+00 1/0 0/0 0/0 .text            daBubbPilar_Create__FP10fopAc_ac_c
 */
static void daBubbPilar_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BC3F48-80BC3F90 000C48 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BC3F90-80BC3FEC 000C90 005C+00 2/1 0/0 0/0 .text            __dt__17daBubbPilar_HIO_cFv */
daBubbPilar_HIO_c::~daBubbPilar_HIO_c() {
    // NONMATCHING
}

/* 80BC3FEC-80BC405C 000CEC 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_bubblePilar_cpp */
void __sinit_d_a_obj_bubblePilar_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BC3FEC, __sinit_d_a_obj_bubblePilar_cpp);
#pragma pop

/* 80BC40B4-80BC40B4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */