/**
 * @file d_a_obj_drop.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_drop/d_a_obj_drop.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" static void searchParentSub__FPvPv();
extern "C" void Create__11daObjDrop_cFv();
extern "C" void create__11daObjDrop_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__19dPa_followEcallBackFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __defctor__19dPa_followEcallBackFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void dropGet__11daObjDrop_cFv();
extern "C" void checkGetArea__11daObjDrop_cFv();
extern "C" void checkCompleteDemo__11daObjDrop_cFv();
extern "C" void createLineEffect__11daObjDrop_cFv();
extern "C" void removeLineEffect__11daObjDrop_cFv();
extern "C" void createBodyEffect__11daObjDrop_cFv();
extern "C" void removeBodyEffect__11daObjDrop_cFv();
extern "C" void modeInit__11daObjDrop_cFv();
extern "C" void modeNoParent__11daObjDrop_cFv();
extern "C" void modeParentWait__11daObjDrop_cFv();
extern "C" void modeWait__11daObjDrop_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" bool actionCompleteWait__11daObjDrop_cFv();
extern "C" void actionOrderCompleteDemo__11daObjDrop_cFv();
extern "C" void actionCompleateDemo__11daObjDrop_cFv();
extern "C" void actionWaitCompleteGetDemo__11daObjDrop_cFv();
extern "C" void actionCompleteGetDemo__11daObjDrop_cFv();
extern "C" void execute__11daObjDrop_cFv();
extern "C" void _delete__11daObjDrop_cFv();
extern "C" static void daObjDrop_Execute__FP11daObjDrop_c();
extern "C" static void daObjDrop_Delete__FP11daObjDrop_c();
extern "C" static void daObjDrop_Create__FP10fopAc_ac_c();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80BE1F38(void* _this, u8*);
extern "C" void func_80BE1F54(void* _this, s8*);
extern "C" static void func_80BE1F70();
extern "C" static void func_80BE1F78();
extern "C" extern char const* const d_a_obj_drop__stringBase0;

//
// External References:
//

extern "C" void fadeOut_f__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void setLightDropNum__16dSv_light_drop_cFUcUc();
extern "C" void getLightDropNum__16dSv_light_drop_cCFUc();
extern "C" void isLightDropGetFlag__16dSv_light_drop_cCFUc();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void isTbox__12dSv_memBit_cCFi();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheckOld__16dEvent_manager_cFPCc();
extern "C" void __ct__19dPa_followEcallBackFUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void execItemGet__FUc();
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void SetTrimTypeForce__9dCamera_cFl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void isZero__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void Set__8cM3dGSphFRC4cXyzf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_18();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__19dPa_followEcallBack[10];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u32 g_saftyWhiteColor;
extern "C" u8 Zero__5csXyz[4];
extern "C" extern u8 struct_80BE2238[4];

//
// Declarations:
//

/* 80BDFCD8-80BDFD8C 000078 00B4+00 2/2 0/0 0/0 .text            searchParentSub__FPvPv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void searchParentSub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/searchParentSub__FPvPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE1F88-80BE1F94 000000 000C+00 4/4 0/0 0/0 .rodata          l_sizuku_body_effect_list */
SECTION_RODATA static u8 const l_sizuku_body_effect_list[12] = {
    0x83, 0x8B, 0x83, 0x8C, 0x83, 0x8D, 0x83, 0x8E, 0x83, 0x8F, 0x84, 0x2B,
};
COMPILER_STRIP_GATE(0x80BE1F88, &l_sizuku_body_effect_list);

/* 80BE1F94-80BE1F98 00000C 0004+00 0/1 0/0 0/0 .rodata          l_sizuku_app_effect_list */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_sizuku_app_effect_list = 0x83888389;
COMPILER_STRIP_GATE(0x80BE1F94, &l_sizuku_app_effect_list);
#pragma pop

/* 80BE1F98-80BE1FD8 000010 0040+00 1/1 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 80BE1FD8-80BE1FDC 000050 0004+00 1/2 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static f32 const lit_3825 = 50.0f;
COMPILER_STRIP_GATE(0x80BE1FD8, &lit_3825);

/* 80BDFD8C-80BDFE58 00012C 00CC+00 1/1 0/0 0/0 .text            Create__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/Create__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2060-80BE206C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BE206C-80BE2080 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BE2080-80BE208C -00001 000C+00 0/1 0/0 0/0 .data            @4815 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeInit__11daObjDrop_cFv,
};
#pragma pop

/* 80BE208C-80BE2098 -00001 000C+00 0/1 0/0 0/0 .data            @4816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeParentWait__11daObjDrop_cFv,
};
#pragma pop

/* 80BE2098-80BE20A4 -00001 000C+00 0/1 0/0 0/0 .data            @4817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeNoParent__11daObjDrop_cFv,
};
#pragma pop

/* 80BE20A4-80BE20B0 -00001 000C+00 0/1 0/0 0/0 .data            @4818 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4818[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__11daObjDrop_cFv,
};
#pragma pop

/* 80BE20B0-80BE20E0 000050 0030+00 0/1 0/0 0/0 .data            l_exeFunc$4814 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_exeFunc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BE20E0-80BE20EC -00001 000C+00 0/1 0/0 0/0 .data            @4822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionCompleteWait__11daObjDrop_cFv,
};
#pragma pop

/* 80BE20EC-80BE20F8 -00001 000C+00 0/1 0/0 0/0 .data            @4823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderCompleteDemo__11daObjDrop_cFv,
};
#pragma pop

/* 80BE20F8-80BE2104 -00001 000C+00 0/1 0/0 0/0 .data            @4824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionCompleateDemo__11daObjDrop_cFv,
};
#pragma pop

/* 80BE2104-80BE2110 -00001 000C+00 0/1 0/0 0/0 .data            @4825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitCompleteGetDemo__11daObjDrop_cFv,
};
#pragma pop

/* 80BE2110-80BE211C -00001 000C+00 0/1 0/0 0/0 .data            @4826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionCompleteGetDemo__11daObjDrop_cFv,
};
#pragma pop

/* 80BE211C-80BE2158 0000BC 003C+00 0/1 0/0 0/0 .data            l_completeDemoFunc$4821 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_completeDemoFunc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BE2158-80BE2178 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjDrop_Method */
static actor_method_class l_daObjDrop_Method = {
    (process_method_func)daObjDrop_Create__FP10fopAc_ac_c,
    (process_method_func)daObjDrop_Delete__FP11daObjDrop_c,
    (process_method_func)daObjDrop_Execute__FP11daObjDrop_c,
};

/* 80BE2178-80BE21A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Drop */
extern actor_process_profile_definition g_profile_Obj_Drop = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Drop,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjDrop_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  243,                    // mPriority
  &l_daObjDrop_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BE21A8-80BE21B4 000148 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80BE21B4-80BE21D8 000154 0024+00 2/2 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
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

/* 80BE21D8-80BE21E4 000178 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BE21E4-80BE21F0 000184 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BE21F0-80BE21FC 000190 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BE21FC-80BE2208 00019C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BE2208-80BE2214 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BE2214-80BE2238 0001B4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE1F78,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE1F70,
};

/* 80BDFE58-80BE005C 0001F8 0204+00 1/1 0/0 0/0 .text            create__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/func_80BDFE58.s"
}
#pragma pop

/* 80BE005C-80BE00A4 0003FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80BE00A4-80BE00EC 000444 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BE00EC-80BE0148 00048C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80BE0148-80BE01B8 0004E8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80BE01B8-80BE0228 000558 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80BE0228-80BE02AC 0005C8 0084+00 1/1 0/0 0/0 .text            __dt__19dPa_followEcallBackFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dPa_followEcallBack::~dPa_followEcallBack() {
extern "C" asm void __dt__19dPa_followEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__19dPa_followEcallBackFv.s"
}
#pragma pop

/* 80BE02AC-80BE02B0 00064C 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" asm void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 80BE02B0-80BE02D8 000650 0028+00 1/1 0/0 0/0 .text            __defctor__19dPa_followEcallBackFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dPa_followEcallBack::__defctor() {
extern "C" asm void __defctor__19dPa_followEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__defctor__19dPa_followEcallBackFv.s"
}
#pragma pop

/* 80BE02D8-80BE0314 000678 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__5csXyzFv.s"
}
#pragma pop

/* 80BE0314-80BE0318 0006B4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80BE0318-80BE0354 0006B8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__4cXyzFv.s"
}
#pragma pop

/* 80BE0354-80BE0358 0006F4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BE0358-80BE0430 0006F8 00D8+00 2/2 0/0 0/0 .text            dropGet__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::dropGet() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/dropGet__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE1FDC-80BE1FE0 000054 0004+00 0/0 0/0 0/0 .rodata          @4037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4037 = -4.0f;
COMPILER_STRIP_GATE(0x80BE1FDC, &lit_4037);
#pragma pop

/* 80BE1FE0-80BE1FE8 000058 0004+04 0/2 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4082[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BE1FE0, &lit_4082);
#pragma pop

/* 80BE1FE8-80BE1FF0 000060 0008+00 0/2 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4083[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE1FE8, &lit_4083);
#pragma pop

/* 80BE1FF0-80BE1FF8 000068 0008+00 0/2 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4084[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE1FF0, &lit_4084);
#pragma pop

/* 80BE1FF8-80BE2000 000070 0008+00 0/2 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4085[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE1FF8, &lit_4085);
#pragma pop

/* 80BE2000-80BE2004 000078 0004+00 0/2 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 250.0f;
COMPILER_STRIP_GATE(0x80BE2000, &lit_4086);
#pragma pop

/* 80BE2048-80BE2048 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BE2048 = "F_SP112";
#pragma pop

/* 80BE0430-80BE05DC 0007D0 01AC+00 1/1 0/0 0/0 .text            checkGetArea__11daObjDrop_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daObjDrop_c::checkGetArea() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/checkGetArea__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE05DC-80BE0658 00097C 007C+00 1/1 0/0 0/0 .text            checkCompleteDemo__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::checkCompleteDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/checkCompleteDemo__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2004-80BE2008 00007C 0004+00 2/4 0/0 0/0 .rodata          @4119 */
SECTION_RODATA static f32 const lit_4119 = 1.0f;
COMPILER_STRIP_GATE(0x80BE2004, &lit_4119);

/* 80BE0658-80BE071C 0009F8 00C4+00 1/1 0/0 0/0 .text            createLineEffect__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::createLineEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/createLineEffect__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE071C-80BE077C 000ABC 0060+00 2/2 0/0 0/0 .text            removeLineEffect__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::removeLineEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/removeLineEffect__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE077C-80BE0840 000B1C 00C4+00 2/2 0/0 0/0 .text            createBodyEffect__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::createBodyEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/createBodyEffect__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE0840-80BE08A0 000BE0 0060+00 2/2 0/0 0/0 .text            removeBodyEffect__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjDrop_c::removeBodyEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/removeBodyEffect__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2008-80BE200C 000080 0004+00 1/1 0/0 0/0 .rodata          @4183 */
SECTION_RODATA static f32 const lit_4183 = 75.0f;
COMPILER_STRIP_GATE(0x80BE2008, &lit_4183);

/* 80BE08A0-80BE0994 000C40 00F4+00 2/1 0/0 0/0 .text            modeInit__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::modeInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/modeInit__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE0994-80BE09F4 000D34 0060+00 1/0 0/0 0/0 .text            modeNoParent__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::modeNoParent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/modeNoParent__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE200C-80BE2010 000084 0004+00 0/1 0/0 0/0 .rodata          @4252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4252 = 300.0f;
COMPILER_STRIP_GATE(0x80BE200C, &lit_4252);
#pragma pop

/* 80BE09F4-80BE0C08 000D94 0214+00 1/0 0/0 0/0 .text            modeParentWait__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::modeParentWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/modeParentWait__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2010-80BE2018 000088 0006+02 0/1 0/0 0/0 .rodata          target_rel_angle$4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const target_rel_angle[6 + 2 /* padding */] = {
    0xC0,
    0x00,
    0x00,
    0x00,
    0x40,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BE2010, &target_rel_angle);
#pragma pop

/* 80BE2018-80BE2020 000090 0006+02 0/1 0/0 0/0 .rodata          target_angle_x$4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const target_angle_x[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0x20,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BE2018, &target_angle_x);
#pragma pop

/* 80BE2020-80BE2024 000098 0004+00 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4722 = 7.5f;
COMPILER_STRIP_GATE(0x80BE2020, &lit_4722);
#pragma pop

/* 80BE2024-80BE2028 00009C 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BE2024, &lit_4723);
#pragma pop

/* 80BE2028-80BE202C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4724 = 2.5f;
COMPILER_STRIP_GATE(0x80BE2028, &lit_4724);
#pragma pop

/* 80BE202C-80BE2030 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4725 = 30.0f;
COMPILER_STRIP_GATE(0x80BE202C, &lit_4725);
#pragma pop

/* 80BE2030-80BE2034 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4726 */
// matches with literals/weaks
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4726 = 60.0f;
COMPILER_STRIP_GATE(0x80BE2030, &lit_4726);
#pragma pop

/* 80BE2034-80BE2038 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4727 = 0.5f;
COMPILER_STRIP_GATE(0x80BE2034, &lit_4727);
#pragma pop

/* 80BE2038-80BE203C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = 5.0f;
COMPILER_STRIP_GATE(0x80BE2038, &lit_4728);
#pragma pop

/* 80BE203C-80BE2040 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = 500.0f;
COMPILER_STRIP_GATE(0x80BE203C, &lit_4729);
#pragma pop

/* 80BE2040-80BE2044 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 10.0f;
COMPILER_STRIP_GATE(0x80BE2040, &lit_4730);
#pragma pop

/* 80BE0C08-80BE18E0 000FA8 0CD8+00 1/0 0/0 0/0 .text            modeWait__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/modeWait__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE18E0-80BE1928 001C80 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGLin::~cM3dGLin() {
extern "C" asm void __dt__8cM3dGLinFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__8cM3dGLinFv.s"
}
#pragma pop

/* 80BE1928-80BE1930 001CC8 0008+00 1/0 0/0 0/0 .text            actionCompleteWait__11daObjDrop_cFv
 */
int daObjDrop_c::actionCompleteWait() {
    return 1;
}

/* 80BE1930-80BE19D0 001CD0 00A0+00 1/0 0/0 0/0 .text actionOrderCompleteDemo__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::actionOrderCompleteDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/actionOrderCompleteDemo__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2044-80BE2048 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4787 */
SECTION_RODATA static f32 const lit_4787 = 1.0f / 30.0f;
COMPILER_STRIP_GATE(0x80BE2044, &lit_4787);

/* 80BE19D0-80BE1ACC 001D70 00FC+00 1/0 0/0 0/0 .text actionCompleateDemo__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::actionCompleateDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/actionCompleateDemo__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE1ACC-80BE1B5C 001E6C 0090+00 1/0 0/0 0/0 .text actionWaitCompleteGetDemo__11daObjDrop_cFv
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::actionWaitCompleteGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/actionWaitCompleteGetDemo__11daObjDrop_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE2048-80BE2048 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BE2050 = "DEFAULT_GETITEM";
#pragma pop

/* 80BE1B5C-80BE1BC4 001EFC 0068+00 1/0 0/0 0/0 .text actionCompleteGetDemo__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::actionCompleteGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/actionCompleteGetDemo__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE1BC4-80BE1DCC 001F64 0208+00 1/1 0/0 0/0 .text            execute__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/execute__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE1DCC-80BE1E0C 00216C 0040+00 1/1 0/0 0/0 .text            _delete__11daObjDrop_cFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjDrop_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/_delete__11daObjDrop_cFv.s"
}
#pragma pop

/* 80BE1E0C-80BE1E2C 0021AC 0020+00 1/0 0/0 0/0 .text            daObjDrop_Execute__FP11daObjDrop_c
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjDrop_Execute(daObjDrop_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/daObjDrop_Execute__FP11daObjDrop_c.s"
}
#pragma pop

/* 80BE1E2C-80BE1E4C 0021CC 0020+00 1/0 0/0 0/0 .text            daObjDrop_Delete__FP11daObjDrop_c
 */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjDrop_Delete(daObjDrop_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/daObjDrop_Delete__FP11daObjDrop_c.s"
}
#pragma pop

/* 80BE1E4C-80BE1E6C 0021EC 0020+00 1/0 0/0 0/0 .text            daObjDrop_Create__FP10fopAc_ac_c */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjDrop_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/daObjDrop_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BE1E6C-80BE1EE0 00220C 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" asm void __dt__18dPa_levelEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__18dPa_levelEcallBackFv.s"
}
#pragma pop

/* 80BE1EE0-80BE1EE4 002280 0004+00 1/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" asm void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80BE1EE4-80BE1EE8 002284 0004+00 1/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" asm void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80BE1EE8-80BE1EEC 002288 0004+00 1/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" asm void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80BE1EEC-80BE1EF0 00228C 0004+00 1/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" asm void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80BE1EF0-80BE1F38 002290 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80BE1F38-80BE1F54 0022D8 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80BE1F38(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/func_80BE1F38.s"
}
#pragma pop

/* 80BE1F54-80BE1F70 0022F4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Sc>__FPSc */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80BE1F54(void* _this, s8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/func_80BE1F54.s"
}
#pragma pop

/* 80BE1F70-80BE1F78 002310 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BE1F70() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/func_80BE1F70.s"
}
#pragma pop

/* 80BE1F78-80BE1F80 002318 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// matches with literals/weaks
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BE1F78() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_drop/d_a_obj_drop/func_80BE1F78.s"
}
#pragma pop

/* 80BE2048-80BE2048 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
