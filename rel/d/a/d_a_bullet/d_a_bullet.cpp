/**
 * @file d_a_bullet.cpp
 * 
*/

#include "rel/d/a/d_a_bullet/d_a_bullet.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__10daBullet_cFv();
extern "C" void create__10daBullet_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__10daBullet_cFv();
extern "C" void Delete__10daBullet_cFv();
extern "C" void Execute__10daBullet_cFv();
extern "C" void Draw__10daBullet_cFv();
extern "C" void createHeapCallBack__10daBullet_cFP10fopAc_ac_c();
extern "C" void getResName__10daBullet_cFv();
extern "C" void getBmdName__10daBullet_cFv();
extern "C" void getTypeFromParam__10daBullet_cFv();
extern "C" void initialize__10daBullet_cFv();
extern "C" void setProcess__10daBullet_cFM10daBullet_cFPCvPvPv_i();
extern "C" void wait__10daBullet_cFPv();
extern "C" void move__10daBullet_cFPv();
extern "C" static void daBullet_Create__FPv();
extern "C" static void daBullet_Delete__FPv();
extern "C" static void daBullet_Execute__FPv();
extern "C" static void daBullet_Draw__FPv();
extern "C" static bool daBullet_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80656618(void* _this, int*);
extern "C" void __sinit_d_a_bullet_cpp();
extern "C" void __dt__16daBullet_Param_cFv();
extern "C" static void func_806566F0();
extern "C" static void func_806566F8();
extern "C" u8 const mCcDObjInfo__10daBullet_c[48];
extern "C" u8 const m__16daBullet_Param_c[24];
extern "C" extern char const* const d_a_bullet__stringBase0;
extern "C" u8 mCcDSph__10daBullet_c[64];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __dl__FPv();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80656774-80656774 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80656774 = "Hanjo1";
SECTION_DEAD static char const* const stringBase_8065677B = "hanjo_stone.bmd";
#pragma pop

/* 8065678C-80656790 -00001 0004+00 1/1 0/0 0/0 .data            l_resFileNameList */
SECTION_DATA static void* l_resFileNameList = (void*)&d_a_bullet__stringBase0;

/* 80656790-80656794 -00001 0004+00 1/2 0/0 0/0 .data            l_bmdFileNameList */
SECTION_DATA static void* l_bmdFileNameList = (void*)(((char*)&d_a_bullet__stringBase0) + 0x7);

/* 80656794-806567D4 000008 0040+00 2/2 0/0 0/0 .data            mCcDSph__10daBullet_c */
SECTION_DATA u8 daBullet_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806567D4-806567E0 -00001 000C+00 1/1 0/0 0/0 .data            @3878 */
SECTION_DATA static void* lit_3878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daBullet_cFPv,
};

/* 806567E0-806567EC -00001 000C+00 1/1 0/0 0/0 .data            @3933 */
SECTION_DATA static void* lit_3933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)move__10daBullet_cFPv,
};

/* 806567EC-8065680C -00001 0020+00 1/0 0/0 0/0 .data            daBullet_MethodTable */
static actor_method_class daBullet_MethodTable = {
    (process_method_func)daBullet_Create__FPv,
    (process_method_func)daBullet_Delete__FPv,
    (process_method_func)daBullet_Execute__FPv,
    (process_method_func)daBullet_IsDelete__FPv,
    (process_method_func)daBullet_Draw__FPv,
};

/* 8065680C-8065683C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BULLET */
extern actor_process_profile_definition g_profile_BULLET = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_BULLET,            // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daBullet_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  751,                    // mPriority
  &daBullet_MethodTable,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8065683C-80656860 0000B0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806566F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806566F0,
};

/* 80656860-8065686C 0000D4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8065686C-80656878 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80656878-80656884 0000EC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80656884-80656890 0000F8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80656890-8065689C 000104 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8065689C-806568A8 000110 000C+00 2/2 0/0 0/0 .data            __vt__10daBullet_c */
SECTION_DATA extern void* __vt__10daBullet_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daBullet_cFv,
};

/* 8065594C-80655B08 0000EC 01BC+00 1/0 0/0 0/0 .text            __dt__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBullet_c::~daBullet_c() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__10daBullet_cFv.s"
}
#pragma pop

/* 80655B08-80655C90 0002A8 0188+00 1/1 0/0 0/0 .text            create__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::create() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/create__10daBullet_cFv.s"
}
#pragma pop

/* 80655C90-80655CD8 000430 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80655CD8-80655D20 000478 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80655D20-80655D90 0004C0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80655D90-80655DEC 000530 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80655DEC-80655E5C 00058C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80655E5C-80655EDC 0005FC 0080+00 1/1 0/0 0/0 .text            CreateHeap__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/CreateHeap__10daBullet_cFv.s"
}
#pragma pop

/* 80655EDC-80655F10 00067C 0034+00 1/1 0/0 0/0 .text            Delete__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::Delete() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/Delete__10daBullet_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80656714-80656744 000000 0030+00 2/2 0/0 0/0 .rodata          mCcDObjInfo__10daBullet_c */
SECTION_RODATA u8 const daBullet_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80656714, &daBullet_c::mCcDObjInfo);

/* 80656744-8065675C 000030 0018+00 1/2 0/0 0/0 .rodata          m__16daBullet_Param_c */
SECTION_RODATA u8 const daBullet_Param_c::m[24] = {
    0xC0, 0x40, 0x00, 0x00, 0x43, 0x7F, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x3F, 0xC0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x07, 0x08, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80656744, &daBullet_Param_c::m);

/* 8065675C-80656760 000048 0004+00 1/1 0/0 0/0 .rodata          @3824 */
SECTION_RODATA static f32 const lit_3824 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8065675C, &lit_3824);

/* 80655F10-806560FC 0006B0 01EC+00 2/2 0/0 0/0 .text            Execute__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::Execute() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/Execute__10daBullet_cFv.s"
}
#pragma pop

/* 806560FC-80656160 00089C 0064+00 1/1 0/0 0/0 .text            Draw__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::Draw() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/Draw__10daBullet_cFv.s"
}
#pragma pop

/* 80656160-80656180 000900 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daBullet_cFP10fopAc_ac_c               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/createHeapCallBack__10daBullet_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80656180-80656198 000920 0018+00 3/3 0/0 0/0 .text            getResName__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::getResName() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/getResName__10daBullet_cFv.s"
}
#pragma pop

/* 80656198-806561B0 000938 0018+00 1/1 0/0 0/0 .text            getBmdName__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::getBmdName() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/getBmdName__10daBullet_cFv.s"
}
#pragma pop

/* 806561B0-806561D0 000950 0020+00 1/1 0/0 0/0 .text            getTypeFromParam__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::getTypeFromParam() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/getTypeFromParam__10daBullet_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80656760-80656764 00004C 0004+00 0/0 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80656760, &lit_3843);
#pragma pop

/* 80656764-80656768 000050 0004+00 0/0 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = 0.5f;
COMPILER_STRIP_GATE(0x80656764, &lit_3844);
#pragma pop

/* 80656768-8065676C 000054 0004+00 0/0 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3845[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80656768, &lit_3845);
#pragma pop

/* 8065676C-80656770 000058 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = -10.0f;
COMPILER_STRIP_GATE(0x8065676C, &lit_3908);
#pragma pop

/* 80656770-80656774 00005C 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 10.0f;
COMPILER_STRIP_GATE(0x80656770, &lit_3909);
#pragma pop

/* 806561D0-80656378 000970 01A8+00 1/1 0/0 0/0 .text            initialize__10daBullet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::initialize() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/initialize__10daBullet_cFv.s"
}
#pragma pop

/* 80656378-80656420 000B18 00A8+00 2/2 0/0 0/0 .text
 * setProcess__10daBullet_cFM10daBullet_cFPCvPvPv_i             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::setProcess(int (daBullet_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/setProcess__10daBullet_cFM10daBullet_cFPCvPvPv_i.s"
}
#pragma pop

/* 80656420-806564B8 000BC0 0098+00 1/0 0/0 0/0 .text            wait__10daBullet_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/wait__10daBullet_cFPv.s"
}
#pragma pop

/* 806564B8-80656548 000C58 0090+00 1/0 0/0 0/0 .text            move__10daBullet_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBullet_c::move(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/move__10daBullet_cFPv.s"
}
#pragma pop

/* 80656548-80656568 000CE8 0020+00 1/0 0/0 0/0 .text            daBullet_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBullet_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/daBullet_Create__FPv.s"
}
#pragma pop

/* 80656568-80656588 000D08 0020+00 1/0 0/0 0/0 .text            daBullet_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBullet_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/daBullet_Delete__FPv.s"
}
#pragma pop

/* 80656588-806565A8 000D28 0020+00 1/0 0/0 0/0 .text            daBullet_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBullet_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/daBullet_Execute__FPv.s"
}
#pragma pop

/* 806565A8-806565C8 000D48 0020+00 1/0 0/0 0/0 .text            daBullet_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBullet_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/daBullet_Draw__FPv.s"
}
#pragma pop

/* 806565C8-806565D0 000D68 0008+00 1/0 0/0 0/0 .text            daBullet_IsDelete__FPv */
static bool daBullet_IsDelete(void* param_0) {
    return true;
}

/* 806565D0-80656618 000D70 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80656618-80656634 000DB8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80656618(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/func_80656618.s"
}
#pragma pop

/* ############################################################################################## */
/* 806568A8-806568B4 00011C 000C+00 2/2 0/0 0/0 .data            __vt__16daBullet_Param_c */
SECTION_DATA extern void* __vt__16daBullet_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daBullet_Param_cFv,
};

/* 806568C0-806568CC 000008 000C+00 1/1 0/0 0/0 .bss             @3619 */
static u8 lit_3619[12];

/* 806568CC-806568D0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80656634-806566A8 000DD4 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_bullet_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_bullet_cpp() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__sinit_d_a_bullet_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80656634, __sinit_d_a_bullet_cpp);
#pragma pop

/* 806566A8-806566F0 000E48 0048+00 2/1 0/0 0/0 .text            __dt__16daBullet_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBullet_Param_c::~daBullet_Param_c() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/__dt__16daBullet_Param_cFv.s"
}
#pragma pop

/* 806566F0-806566F8 000E90 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806566F0() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/func_806566F0.s"
}
#pragma pop

/* 806566F8-80656700 000E98 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806566F8() {
    nofralloc
#include "asm/rel/d/a/d_a_bullet/d_a_bullet/func_806566F8.s"
}
#pragma pop

/* 80656774-80656774 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
