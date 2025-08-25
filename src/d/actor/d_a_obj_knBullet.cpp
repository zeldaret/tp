/**
 * @file d_a_obj_knBullet.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_knBullet.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void Create__15daObjKnBullet_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void Execute__15daObjKnBullet_cFv();
extern "C" bool Draw__15daObjKnBullet_cFv();
extern "C" bool Delete__15daObjKnBullet_cFv();
extern "C" void setBaseMtx__15daObjKnBullet_cFv();
extern "C" void col_init__15daObjKnBullet_cFv();
extern "C" void col_chk__15daObjKnBullet_cFv();
extern "C" void hitPrtclSet__15daObjKnBullet_cFv();
extern "C" static void daObjKnBullet_Execute__FP15daObjKnBullet_c();
extern "C" static void daObjKnBullet_Draw__FP15daObjKnBullet_c();
extern "C" static bool daObjKnBullet_IsDelete__FP15daObjKnBullet_c();
extern "C" static void daObjKnBullet_Delete__FP15daObjKnBullet_c();
extern "C" static void daObjKnBullet_create__FP10fopAc_ac_c();
extern "C" void func_80C4792C(void* _this, s16*);

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void XYZrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C47950-80C4795C 000000 000C+00 4/4 0/0 0/0 .rodata          l_DATA */
SECTION_RODATA static u8 const l_DATA[12] = {
    0x41, 0xF0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C47950, &l_DATA);

/* 80C4795C-80C4799C 00000C 0040+00 1/1 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{AT_TYPE_THROW_OBJ, 0x0, 0xd}, {0x10, 0x1f}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x8}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};

/* 80C4799C-80C479A0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = -300.0f;
COMPILER_STRIP_GATE(0x80C4799C, &lit_3907);
#pragma pop

/* 80C479A0-80C479A4 000050 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = -50.0f;
COMPILER_STRIP_GATE(0x80C479A0, &lit_3908);
#pragma pop

/* 80C479A4-80C479A8 000054 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 300.0f;
COMPILER_STRIP_GATE(0x80C479A4, &lit_3909);
#pragma pop

/* 80C479A8-80C479AC 000058 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 450.0f;
COMPILER_STRIP_GATE(0x80C479A8, &lit_3910);
#pragma pop

/* 80C479CC-80C479EC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKnBullet_Method */
static actor_method_class l_daObjKnBullet_Method = {
    (process_method_func)daObjKnBullet_create__FP10fopAc_ac_c,
    (process_method_func)daObjKnBullet_Delete__FP15daObjKnBullet_c,
    (process_method_func)daObjKnBullet_Execute__FP15daObjKnBullet_c,
    (process_method_func)daObjKnBullet_IsDelete__FP15daObjKnBullet_c,
    (process_method_func)daObjKnBullet_Draw__FP15daObjKnBullet_c,
};

/* 80C479EC-80C47A1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KN_BULLET */
extern actor_process_profile_definition g_profile_KN_BULLET = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_KN_BULLET,          // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjKnBullet_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  348,                     // mPriority
  &l_daObjKnBullet_Method, // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C47A1C-80C47A28 000050 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C47A28-80C47A34 00005C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C47118-80C47270 000078 0158+00 1/1 0/0 0/0 .text            Create__15daObjKnBullet_cFv */
void daObjKnBullet_c::Create() {
    // NONMATCHING
}

/* 80C47270-80C472B8 0001D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C472B8-80C47300 000218 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C479AC-80C479B4 00005C 0006+02 0/1 0/0 0/0 .rodata          l_prticles_id$3986 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_prticles_id_3986[6 + 2 /* padding */] = {
    0x8B,
    0x7F,
    0x8B,
    0x80,
    0x8B,
    0x81,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C479AC, &l_prticles_id_3986);
#pragma pop

/* 80C479B4-80C479B8 000064 0004+00 1/2 0/0 0/0 .rodata          @4021 */
SECTION_RODATA static f32 const lit_4021 = 1.0f;
COMPILER_STRIP_GATE(0x80C479B4, &lit_4021);

/* 80C479B8-80C479BC 000068 0004+00 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -1.0f;
COMPILER_STRIP_GATE(0x80C479B8, &lit_4022);
#pragma pop

/* 80C47300-80C47480 000260 0180+00 1/1 0/0 0/0 .text            Execute__15daObjKnBullet_cFv */
void daObjKnBullet_c::Execute() {
    // NONMATCHING
}

/* 80C47480-80C47488 0003E0 0008+00 1/1 0/0 0/0 .text            Draw__15daObjKnBullet_cFv */
bool daObjKnBullet_c::Draw() {
    return true;
}

/* 80C47488-80C47490 0003E8 0008+00 1/1 0/0 0/0 .text            Delete__15daObjKnBullet_cFv */
bool daObjKnBullet_c::Delete() {
    return true;
}

/* 80C47490-80C474E8 0003F0 0058+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjKnBullet_cFv */
void daObjKnBullet_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C474E8-80C47558 000448 0070+00 1/1 0/0 0/0 .text            col_init__15daObjKnBullet_cFv */
void daObjKnBullet_c::col_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C479BC-80C479C0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4129[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C479BC, &lit_4129);
#pragma pop

/* 80C479C0-80C479C4 000070 0004+00 0/1 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 150.0f;
COMPILER_STRIP_GATE(0x80C479C0, &lit_4130);
#pragma pop

/* 80C47558-80C477B4 0004B8 025C+00 1/1 0/0 0/0 .text            col_chk__15daObjKnBullet_cFv */
void daObjKnBullet_c::col_chk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C479C4-80C479CA 000074 0006+00 1/1 0/0 0/0 .rodata          l_prticles_id$4141 */
SECTION_RODATA static u8 const l_prticles_id_4141[6] = {
    0x8B, 0x82, 0x8B, 0x83, 0x8B, 0x84,
};
COMPILER_STRIP_GATE(0x80C479C4, &l_prticles_id_4141);

/* 80C477B4-80C478A4 000714 00F0+00 1/1 0/0 0/0 .text            hitPrtclSet__15daObjKnBullet_cFv */
void daObjKnBullet_c::hitPrtclSet() {
    // NONMATCHING
}

/* 80C478A4-80C478C4 000804 0020+00 1/0 0/0 0/0 .text daObjKnBullet_Execute__FP15daObjKnBullet_c
 */
static void daObjKnBullet_Execute(daObjKnBullet_c* param_0) {
    // NONMATCHING
}

/* 80C478C4-80C478E4 000824 0020+00 1/0 0/0 0/0 .text daObjKnBullet_Draw__FP15daObjKnBullet_c */
static void daObjKnBullet_Draw(daObjKnBullet_c* param_0) {
    // NONMATCHING
}

/* 80C478E4-80C478EC 000844 0008+00 1/0 0/0 0/0 .text daObjKnBullet_IsDelete__FP15daObjKnBullet_c
 */
static bool daObjKnBullet_IsDelete(daObjKnBullet_c* param_0) {
    return true;
}

/* 80C478EC-80C4790C 00084C 0020+00 1/0 0/0 0/0 .text daObjKnBullet_Delete__FP15daObjKnBullet_c */
static void daObjKnBullet_Delete(daObjKnBullet_c* param_0) {
    // NONMATCHING
}

/* 80C4790C-80C4792C 00086C 0020+00 1/0 0/0 0/0 .text daObjKnBullet_create__FP10fopAc_ac_c */
static void daObjKnBullet_create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C4792C-80C47948 00088C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
extern "C" void func_80C4792C(void* _this, s16* param_0) {
    // NONMATCHING
}
