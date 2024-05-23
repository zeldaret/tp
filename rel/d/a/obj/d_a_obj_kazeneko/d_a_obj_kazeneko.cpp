/**
 * @file d_a_obj_kazeneko.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void create_init__15daObjKazeNeko_cFv();
extern "C" void initBaseMtx__15daObjKazeNeko_cFv();
extern "C" void setBaseMtx__15daObjKazeNeko_cFv();
extern "C" void initCcCylinder__15daObjKazeNeko_cFv();
extern "C" void setCcCylinder__15daObjKazeNeko_cFv();
extern "C" void swingHead__15daObjKazeNeko_cFv();
extern "C" void getFirstVec__15daObjKazeNeko_cFP4cXyzi();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" static void daObjKazeNeko_Draw__FP15daObjKazeNeko_c();
extern "C" static void daObjKazeNeko_Execute__FP15daObjKazeNeko_c();
extern "C" static bool daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c();
extern "C" static void daObjKazeNeko_Delete__FP15daObjKazeNeko_c();
extern "C" static void daObjKazeNeko_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const M_attr__15daObjKazeNeko_c[44];
extern "C" extern char const* const d_a_obj_kazeneko__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void dKyw_get_wind_pow__Fv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void endHawkCamera__10daNPC_TK_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C3D3DC-80C3D408 000000 002C+00 7/7 0/0 0/0 .rodata          M_attr__15daObjKazeNeko_c */
SECTION_RODATA u8 const daObjKazeNeko_c::M_attr[44] = {
    0x41, 0xF0, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x45, 0x3B, 0x80, 0x00, 0x45, 0xDA, 0xC0,
    0x00, 0x42, 0xB4, 0x00, 0x00, 0x44, 0xE1, 0x00, 0x00, 0x43, 0x34, 0x00, 0x00, 0x41, 0xD8,
    0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x01, 0x70, 0x64, 0x00, 0x00, 0x19, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C3D3DC, &daObjKazeNeko_c::M_attr);

/* 80C3D408-80C3D40C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3853 = -100.0f;
COMPILER_STRIP_GATE(0x80C3D408, &lit_3853);
#pragma pop

/* 80C3D40C-80C3D410 000030 0004+00 0/1 0/0 0/0 .rodata          @3854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3854 = -10.0f;
COMPILER_STRIP_GATE(0x80C3D40C, &lit_3854);
#pragma pop

/* 80C3D410-80C3D414 000034 0004+00 0/1 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3855 = 100.0f;
COMPILER_STRIP_GATE(0x80C3D410, &lit_3855);
#pragma pop

/* 80C3D414-80C3D418 000038 0004+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = 200.0f;
COMPILER_STRIP_GATE(0x80C3D414, &lit_3856);
#pragma pop

/* 80C3C8D8-80C3C968 000078 0090+00 1/1 0/0 0/0 .text            create_init__15daObjKazeNeko_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::create_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/create_init__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* 80C3C968-80C3C988 000108 0020+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjKazeNeko_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/initBaseMtx__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C3D418-80C3D41C 00003C 0004+00 2/3 0/0 0/0 .rodata          @3890 */
SECTION_RODATA static u8 const lit_3890[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C3D418, &lit_3890);

/* 80C3C988-80C3CA8C 000128 0104+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjKazeNeko_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/setBaseMtx__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C3D41C-80C3D460 000040 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3894 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2048, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        10.0f, // mRadius
        30.0f // mHeight
    } // mCyl
};

/* 80C3CA8C-80C3CB10 00022C 0084+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjKazeNeko_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::initCcCylinder() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/initCcCylinder__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* 80C3CB10-80C3CB7C 0002B0 006C+00 1/1 0/0 0/0 .text            setCcCylinder__15daObjKazeNeko_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::setCcCylinder() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/setCcCylinder__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* 80C3CB7C-80C3CC40 00031C 00C4+00 1/1 0/0 0/0 .text            swingHead__15daObjKazeNeko_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::swingHead() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/swingHead__15daObjKazeNeko_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C3D460-80C3D464 000084 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 1.0f;
COMPILER_STRIP_GATE(0x80C3D460, &lit_3947);
#pragma pop

/* 80C3D464-80C3D468 000088 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3948 = -1.0f;
COMPILER_STRIP_GATE(0x80C3D464, &lit_3948);
#pragma pop

/* 80C3D468-80C3D46C 00008C 0004+00 1/1 0/0 0/0 .rodata          @3962 */
SECTION_RODATA static f32 const lit_3962 = 30.0f;
COMPILER_STRIP_GATE(0x80C3D468, &lit_3962);

/* 80C3CC40-80C3CC90 0003E0 0050+00 0/0 0/0 1/1 .text getFirstVec__15daObjKazeNeko_cFP4cXyzi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKazeNeko_c::getFirstVec(cXyz* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/getFirstVec__15daObjKazeNeko_cFP4cXyzi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C3D474-80C3D474 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C3D474 = "J_Kazami";
SECTION_DEAD static char const* const stringBase_80C3D47D = "pole.bmd";
SECTION_DEAD static char const* const stringBase_80C3D486 = "arm.bmd";
#pragma pop

/* 80C3D490-80C3D494 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_kazeneko__stringBase0;

/* 80C3CC90-80C3CD90 000430 0100+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void createSolidHeap(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/createSolidHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C3CD90-80C3CEA8 000530 0118+00 1/0 0/0 0/0 .text daObjKazeNeko_Draw__FP15daObjKazeNeko_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKazeNeko_Draw(daObjKazeNeko_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/daObjKazeNeko_Draw__FP15daObjKazeNeko_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C3D46C-80C3D474 000090 0008+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4119[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C3D46C, &lit_4119);
#pragma pop

/* 80C3CEA8-80C3D030 000648 0188+00 1/0 0/0 0/0 .text daObjKazeNeko_Execute__FP15daObjKazeNeko_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKazeNeko_Execute(daObjKazeNeko_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/daObjKazeNeko_Execute__FP15daObjKazeNeko_c.s"
}
#pragma pop

/* 80C3D030-80C3D038 0007D0 0008+00 1/0 0/0 0/0 .text daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c
 */
static bool daObjKazeNeko_IsDelete(daObjKazeNeko_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C3D494-80C3D4B4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKazeNeko_Method */
static actor_method_class l_daObjKazeNeko_Method = {
    (process_method_func)daObjKazeNeko_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKazeNeko_Delete__FP15daObjKazeNeko_c,
    (process_method_func)daObjKazeNeko_Execute__FP15daObjKazeNeko_c,
    (process_method_func)daObjKazeNeko_IsDelete__FP15daObjKazeNeko_c,
    (process_method_func)daObjKazeNeko_Draw__FP15daObjKazeNeko_c,
};

/* 80C3D4B4-80C3D4E4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KazeNeko */
extern actor_process_profile_definition g_profile_Obj_KazeNeko = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_KazeNeko,       // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObjKazeNeko_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  30,                      // mPriority
  &l_daObjKazeNeko_Method, // sub_method
  0x00044180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C3D4E4-80C3D4F0 000054 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C3D4F0-80C3D4FC 000060 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C3D4FC-80C3D508 00006C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C3D508-80C3D514 000078 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C3D038-80C3D168 0007D8 0130+00 1/0 0/0 0/0 .text daObjKazeNeko_Delete__FP15daObjKazeNeko_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKazeNeko_Delete(daObjKazeNeko_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/daObjKazeNeko_Delete__FP15daObjKazeNeko_c.s"
}
#pragma pop

/* 80C3D168-80C3D2A0 000908 0138+00 1/0 0/0 0/0 .text daObjKazeNeko_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKazeNeko_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/daObjKazeNeko_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C3D2A0-80C3D2E8 000A40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80C3D2E8-80C3D330 000A88 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80C3D330-80C3D38C 000AD0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80C3D38C-80C3D3D4 000B2C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_kazeneko/d_a_obj_kazeneko/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80C3D474-80C3D474 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
