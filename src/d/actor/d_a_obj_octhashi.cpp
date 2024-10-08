/**
 * @file d_a_obj_octhashi.cpp
 * 
*/

#include "d/actor/d_a_obj_octhashi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initCcCylinder__15daObjOCTHASHI_cFv();
extern "C" static void daObjOCTHASHI_Create__FP10fopAc_ac_c();
extern "C" static void daObjOCTHASHI_Delete__FP15daObjOCTHASHI_c();
extern "C" void SetCoSph__15daObjOCTHASHI_cFv();
extern "C" void SetCoCyl__15daObjOCTHASHI_cFv();
extern "C" void HakaiSet2__15daObjOCTHASHI_cFi();
extern "C" void HakaiMotion2__15daObjOCTHASHI_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void CylAction__15daObjOCTHASHI_cFv();
extern "C" void SphAction__15daObjOCTHASHI_cFv();
extern "C" void SphAction2__15daObjOCTHASHI_cFv();
extern "C" void Action__15daObjOCTHASHI_cFv();
extern "C" void setBaseMtx__15daObjOCTHASHI_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjOCTHASHI_Draw__FP15daObjOCTHASHI_c();
extern "C" static void daObjOCTHASHI_Execute__FP15daObjOCTHASHI_c();
extern "C" void CreateHeap__15daObjOCTHASHI_cFv();
extern "C" void create__15daObjOCTHASHI_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__9dCcD_SttsFv();
extern "C" void __ct__9dCcD_SttsFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void Create__15daObjOCTHASHI_cFv();
extern "C" void Execute__15daObjOCTHASHI_cFPPA3_A4_f();
extern "C" void Draw__15daObjOCTHASHI_cFv();
extern "C" void Delete__15daObjOCTHASHI_cFv();
extern "C" extern char const* const d_a_obj_octhashi__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void __apl__5csXyzFR5csXyz();
extern "C" void cM_rndFX__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CA6680[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CA6480-80CA64C0 000000 0040+00 6/6 0/0 0/0 .rodata          ccSphSrc$3655 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x13}, {0x104002, 0x1f}, 0x7f}}, // mObj
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 400.0f} // mSph
    } // mSphAttr
};

/* 80CA64C0-80CA64C4 000040 0004+00 0/1 0/0 0/0 .rodata          @3681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3681 = 800.0f;
COMPILER_STRIP_GATE(0x80CA64C0, &lit_3681);
#pragma pop

/* 80CA64C4-80CA64C8 000044 0004+00 0/2 0/0 0/0 .rodata          @3682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3682 = 100.0f;
COMPILER_STRIP_GATE(0x80CA64C4, &lit_3682);
#pragma pop

/* 80CA64C8-80CA64CC 000048 0004+00 1/5 0/0 0/0 .rodata          @3683 */
SECTION_RODATA static u8 const lit_3683[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CA64C8, &lit_3683);

/* 80CA64CC-80CA64D0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3684 = 400.0f;
COMPILER_STRIP_GATE(0x80CA64CC, &lit_3684);
#pragma pop

/* 80CA64D0-80CA64D8 000050 0008+00 1/3 0/0 0/0 .rodata          @3686 */
SECTION_RODATA static u8 const lit_3686[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA64D0, &lit_3686);

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA6550 = "Octhashi";
#pragma pop

/* 80CA6584-80CA6588 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_octhashi__stringBase0;

/* 80CA6588-80CA65CC 000004 0044+00 1/1 0/0 0/0 .data            ccCylSrc$3656 */
static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0x104002, 0x1f}, 0x75}}, // mObj
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        400.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80CA4BB8-80CA4D98 000078 01E0+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::initCcCylinder() {
    // NONMATCHING
}

/* 80CA4D98-80CA4DB8 000258 0020+00 1/0 0/0 0/0 .text daObjOCTHASHI_Create__FP10fopAc_ac_c */
static void daObjOCTHASHI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CA4DB8-80CA4DFC 000278 0044+00 1/0 0/0 0/0 .text daObjOCTHASHI_Delete__FP15daObjOCTHASHI_c */
static void daObjOCTHASHI_Delete(daObjOCTHASHI_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA64D8-80CA64DC 000058 0004+00 1/1 0/0 0/0 .rodata          @3713 */
SECTION_RODATA static f32 const lit_3713 = 470.0f;
COMPILER_STRIP_GATE(0x80CA64D8, &lit_3713);

/* 80CA4DFC-80CA4EA4 0002BC 00A8+00 1/1 0/0 0/0 .text            SetCoSph__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA64DC-80CA64E0 00005C 0004+00 1/1 0/0 0/0 .rodata          @3718 */
SECTION_RODATA static f32 const lit_3718 = 790.0f;
COMPILER_STRIP_GATE(0x80CA64DC, &lit_3718);

/* 80CA4EA4-80CA4F24 000364 0080+00 1/1 0/0 0/0 .text            SetCoCyl__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoCyl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA64E0-80CA64E4 000060 0004+00 0/2 0/0 0/0 .rodata          @3776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3776 = 10.0f;
COMPILER_STRIP_GATE(0x80CA64E0, &lit_3776);
#pragma pop

/* 80CA64E4-80CA64E8 000064 0004+00 0/1 0/0 0/0 .rodata          @3777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3777 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA64E4, &lit_3777);
#pragma pop

/* 80CA64E8-80CA64EC 000068 0004+00 0/1 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = 8000.0f;
COMPILER_STRIP_GATE(0x80CA64E8, &lit_3778);
#pragma pop

/* 80CA64EC-80CA64F0 00006C 0004+00 0/1 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA64EC, &lit_3779);
#pragma pop

/* 80CA64F0-80CA64F4 000070 0004+00 0/3 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = 1.0f;
COMPILER_STRIP_GATE(0x80CA64F0, &lit_3780);
#pragma pop

/* 80CA64F4-80CA64F8 000074 0004+00 0/1 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CA64F4, &lit_3781);
#pragma pop

/* 80CA4F24-80CA52F0 0003E4 03CC+00 1/1 0/0 0/0 .text            HakaiSet2__15daObjOCTHASHI_cFi */
void daObjOCTHASHI_c::HakaiSet2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA64F8-80CA6500 000078 0004+04 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823[1 + 1 /* padding */] = {
    7.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CA64F8, &lit_3823);
#pragma pop

/* 80CA52F0-80CA546C 0007B0 017C+00 1/1 0/0 0/0 .text            HakaiMotion2__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::HakaiMotion2() {
    // NONMATCHING
}

/* 80CA546C-80CA54A8 00092C 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80CA54A8-80CA54E4 000968 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80CA54E4-80CA55C4 0009A4 00E0+00 1/1 0/0 0/0 .text            CylAction__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::CylAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA6500-80CA6508 000080 0008+00 0/0 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3887[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6500, &lit_3887);
#pragma pop

/* 80CA6508-80CA6510 000088 0008+00 0/0 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3888[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6508, &lit_3888);
#pragma pop

/* 80CA6510-80CA6518 000090 0008+00 0/0 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3889[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6510, &lit_3889);
#pragma pop

/* 80CA6518-80CA651C 000098 0004+00 0/0 0/0 0/0 .rodata          @3890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3890 = 2000.0f;
COMPILER_STRIP_GATE(0x80CA6518, &lit_3890);
#pragma pop

/* 80CA651C-80CA6520 00009C 0004+00 0/0 0/0 0/0 .rodata          @3903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3903 = 608.0f;
COMPILER_STRIP_GATE(0x80CA651C, &lit_3903);
#pragma pop

/* 80CA6520-80CA6524 0000A0 0004+00 0/0 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = 448.0f;
COMPILER_STRIP_GATE(0x80CA6520, &lit_3904);
#pragma pop

/* 80CA6524-80CA6528 0000A4 0004+00 0/1 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3989 = -40.0f;
COMPILER_STRIP_GATE(0x80CA6524, &lit_3989);
#pragma pop

/* 80CA6528-80CA652C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x80CA6528, &lit_3990);
#pragma pop

/* 80CA652C-80CA6530 0000AC 0004+00 0/2 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = -1.0f;
COMPILER_STRIP_GATE(0x80CA652C, &lit_3991);
#pragma pop

/* 80CA6530-80CA6534 0000B0 0004+00 0/3 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 500.0f;
COMPILER_STRIP_GATE(0x80CA6530, &lit_3992);
#pragma pop

/* 80CA6534-80CA6538 0000B4 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 15.0f;
COMPILER_STRIP_GATE(0x80CA6534, &lit_3993);
#pragma pop

/* 80CA6538-80CA653C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = -15.0f;
COMPILER_STRIP_GATE(0x80CA6538, &lit_3994);
#pragma pop

/* 80CA653C-80CA6540 0000BC 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 0.5f;
COMPILER_STRIP_GATE(0x80CA653C, &lit_3995);
#pragma pop

/* 80CA55C4-80CA5844 000A84 0280+00 1/1 0/0 0/0 .text            SphAction__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SphAction() {
    // NONMATCHING
}

/* 80CA5844-80CA58F4 000D04 00B0+00 1/1 0/0 0/0 .text            SphAction2__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SphAction2() {
    // NONMATCHING
}

/* 80CA58F4-80CA59BC 000DB4 00C8+00 1/1 0/0 0/0 .text            Action__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA6540-80CA6544 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4057 */
SECTION_RODATA static f32 const lit_4057 = -400.0f;
COMPILER_STRIP_GATE(0x80CA6540, &lit_4057);

/* 80CA59BC-80CA5A88 000E7C 00CC+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::setBaseMtx() {
    // NONMATCHING
}

/* 80CA5A88-80CA5A94 000F48 000C+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80CA5A94-80CA5AC0 000F54 002C+00 1/0 0/0 0/0 .text daObjOCTHASHI_Draw__FP15daObjOCTHASHI_c */
static void daObjOCTHASHI_Draw(daObjOCTHASHI_c* param_0) {
    // NONMATCHING
}

/* 80CA5AC0-80CA5AE0 000F80 0020+00 2/1 0/0 0/0 .text daObjOCTHASHI_Execute__FP15daObjOCTHASHI_c
 */
static void daObjOCTHASHI_Execute(daObjOCTHASHI_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA6559 = "S_octhashi00.bmd";
#pragma pop

/* 80CA5AE0-80CA5B98 000FA0 00B8+00 1/0 0/0 0/0 .text            CreateHeap__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA6544-80CA6548 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = -1000.0f;
COMPILER_STRIP_GATE(0x80CA6544, &lit_4165);
#pragma pop

/* 80CA6548-80CA654C 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = -500.0f;
COMPILER_STRIP_GATE(0x80CA6548, &lit_4166);
#pragma pop

/* 80CA654C-80CA6550 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 1000.0f;
COMPILER_STRIP_GATE(0x80CA654C, &lit_4167);
#pragma pop

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA656A = "D_MN01A";
SECTION_DEAD static char const* const stringBase_80CA6572 = "S_octhashi00.dzb";
#pragma pop

/* 80CA65CC-80CA65EC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOCTHASHI_Method */
static actor_method_class l_daObjOCTHASHI_Method = {
    (process_method_func)daObjOCTHASHI_Create__FP10fopAc_ac_c,
    (process_method_func)daObjOCTHASHI_Delete__FP15daObjOCTHASHI_c,
    (process_method_func)daObjOCTHASHI_Execute__FP15daObjOCTHASHI_c,
    (process_method_func)daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c,
    (process_method_func)daObjOCTHASHI_Draw__FP15daObjOCTHASHI_c,
};

/* 80CA65EC-80CA661C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OCTHASHI */
extern actor_process_profile_definition g_profile_OCTHASHI = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OCTHASHI,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObjOCTHASHI_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  465,                     // mPriority
  &l_daObjOCTHASHI_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80CA661C-80CA6628 000098 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CA6628-80CA6634 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CA6634-80CA6640 0000B0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CA6640-80CA664C 0000BC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CA664C-80CA6658 0000C8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CA6658-80CA6680 0000D4 0028+00 1/1 0/0 0/0 .data            __vt__15daObjOCTHASHI_c */
SECTION_DATA extern void* __vt__15daObjOCTHASHI_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjOCTHASHI_cFv,
    (void*)Create__15daObjOCTHASHI_cFv,
    (void*)Execute__15daObjOCTHASHI_cFPPA3_A4_f,
    (void*)Draw__15daObjOCTHASHI_cFv,
    (void*)Delete__15daObjOCTHASHI_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CA5B98-80CA5EE4 001058 034C+00 1/1 0/0 0/0 .text            create__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::create() {
    // NONMATCHING
}

/* 80CA5EE4-80CA5F2C 0013A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CA5F2C-80CA5F74 0013EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CA5F74-80CA6040 001434 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CA6040-80CA60C4 001500 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CA60C4-80CA610C 001584 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CA610C-80CA619C 0015CC 0090+00 1/1 0/0 0/0 .text            __dt__9dCcD_SttsFv */
// dCcD_Stts::~dCcD_Stts() {
extern "C" void __dt__9dCcD_SttsFv() {
    // NONMATCHING
}

/* 80CA619C-80CA61F0 00165C 0054+00 1/1 0/0 0/0 .text            __ct__9dCcD_SttsFv */
// dCcD_Stts::dCcD_Stts() {
extern "C" void __ct__9dCcD_SttsFv() {
    // NONMATCHING
}

/* 80CA61F0-80CA624C 0016B0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA624C-80CA6250 00170C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80CA6250-80CA6254 001710 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80CA6254-80CA625C 001714 0008+00 1/0 0/0 0/0 .text daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c
 */
static bool daObjOCTHASHI_IsDelete(daObjOCTHASHI_c* param_0) {
    return true;
}

/* 80CA625C-80CA62A4 00171C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA62A4-80CA62F8 001764 0054+00 1/0 0/0 0/0 .text            Create__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::Create() {
    // NONMATCHING
}

/* 80CA62F8-80CA636C 0017B8 0074+00 1/0 0/0 0/0 .text Execute__15daObjOCTHASHI_cFPPA3_A4_f */
void daObjOCTHASHI_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CA636C-80CA6444 00182C 00D8+00 1/0 0/0 0/0 .text            Draw__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::Draw() {
    // NONMATCHING
}

/* 80CA6444-80CA6478 001904 0034+00 1/0 0/0 0/0 .text            Delete__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::Delete() {
    // NONMATCHING
}

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */