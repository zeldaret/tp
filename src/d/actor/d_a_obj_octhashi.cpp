/**
 * @file d_a_obj_octhashi.cpp
 * 
*/

#include "d/actor/d_a_obj_octhashi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_resorce.h"
#include "SSystem/SComponent/c_math.h"


//
// Forward References:
//

extern "C" void initCcCylinder__15daObjOCTHASHI_cFv();
extern "C" static void daObjOCTHASHI_Create__FP10fopAc_ac_c();
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
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetH__8cM3dGCylFf();
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

/* 80CA64C8-80CA64CC 000048 0004+00 1/5 0/0 0/0 .rodata          @3683 */
SECTION_RODATA static u8 const lit_3683[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CA64C8, &lit_3683);

/* 80CA64D0-80CA64D8 000050 0008+00 1/3 0/0 0/0 .rodata          @3686 */
SECTION_RODATA static u8 const lit_3686[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA64D0, &lit_3686);

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static const char* l_arcName[1] = {
    "Octhashi"
};

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

static u8 lbl_584_bss_0 = 0;

/* 80CA4BB8-80CA4D98 000078 01E0+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::initCcCylinder() {
    // NONMATCHING
    if (lbl_584_bss_0 == 0) {
        ccCylSrc.mCyl.mHeight = (f32)(field_0x6e0 + 1) * 800.0f - 100.f;
        lbl_584_bss_0 = 1;
    }
    for (int idx = 0; idx < field_0x6e0; ++idx) {
        field_0x7ac[idx].Init(200, 0xff, this);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::transM(0.0f, (f32)idx * 800.0f + 400.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&field_0x5a0[idx]);
        field_0x98c[idx].Set(ccSphSrc);
        field_0x98c[idx].SetStts(&field_0x7ac[idx]);
        field_0x98c[idx].SetC(field_0x5a0[idx]); // Correct? Incorrect?
        field_0x98c[idx].OnCoSameActorHit();
    }
    field_0x134c.Set(ccCylSrc);
    field_0x134c.SetC(current.pos);
    field_0x134c.OnCoSameActorHit();
}

/* 80CA4D98-80CA4DB8 000258 0020+00 1/0 0/0 0/0 .text daObjOCTHASHI_Create__FP10fopAc_ac_c */
static int daObjOCTHASHI_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjOCTHASHI_c*>(i_this)->create();
}

/* 80CA4DB8-80CA4DFC 000278 0044+00 1/0 0/0 0/0 .text daObjOCTHASHI_Delete__FP15daObjOCTHASHI_c */
static int daObjOCTHASHI_Delete(daObjOCTHASHI_c* i_this) {
    // NONMATCHING
    fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

/* 80CA4DFC-80CA4EA4 0002BC 00A8+00 1/1 0/0 0/0 .text            SetCoSph__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoSph() {
    // NONMATCHING
    for (unsigned idx = 0; idx < field_0x6e0; ++idx) {
        field_0x98c[idx].OffCoSameActorHit();
        field_0x98c[idx].SetR(470.0f);
        field_0x98c[idx].SetC(field_0x5a0[idx]);
        dComIfG_Ccsp()->Set(&field_0x98c[idx]);
    }
}

/* ############################################################################################## */
/* 80CA64DC-80CA64E0 00005C 0004+00 1/1 0/0 0/0 .rodata          @3718 */
SECTION_RODATA static f32 const lit_3718 = 790.0f;
COMPILER_STRIP_GATE(0x80CA64DC, &lit_3718);

/* 80CA4EA4-80CA4F24 000364 0080+00 1/1 0/0 0/0 .text            SetCoCyl__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoCyl() {
    // NONMATCHING
}

/* 80CA4F24-80CA52F0 0003E4 03CC+00 1/1 0/0 0/0 .text            HakaiSet2__15daObjOCTHASHI_cFi */
void daObjOCTHASHI_c::HakaiSet2(int param_0) {
    // NONMATCHING
    for (int idx = param_0 - 1; idx >= 0; --idx) {
        field_0x6d8 += 10.0f;
        field_0x600[idx].set(0.0f, field_0x600[idx + 1].y * 0.8f, field_0x6d8);

        int spA = field_0x6cc + cM_rndFX(8000.0f);
        mDoMtx_stack_c::YrotS(spA);
        mDoMtx_stack_c::multVec(&field_0x600[idx], &field_0x600[idx]);
        if (field_0x600[idx].y > 0.0f) {
            field_0x600[idx].y = -field_0x600[idx].y;
        }
        field_0x6dc = field_0x6dc * 0.8f;
        field_0x6de = field_0x6de * 0.8f;
        field_0x690[idx].set(field_0x6dc, 0, field_0x690[idx + 1].z * 0.6f);
        field_0x660[idx].y = spA - shape_angle.y;
        dComIfGp_particle_set(0x87eb, &field_0x5a0[idx], NULL, &field_0x660[idx], NULL);
    }

    for (int idx = param_0 + 1; idx < field_0x6e0; ++idx) {
        field_0x6d4 += 10.0f;
        field_0x600[idx].set(0.0f, -field_0x600[idx-1].y * 0.8f, field_0x6d4);

        int sp8 = field_0x6cc + cM_rndFX(8000.0f);
        mDoMtx_stack_c::multVec(&field_0x600[idx], &field_0x600[idx]);
        if (field_0x600[idx].y < 0.0f) {
            field_0x600[idx].y = -field_0x600[idx].y;
        }
        field_0x690[idx].set(field_0x690[idx - 1].x * 0.7f, 0, field_0x690[idx - 1].z * 0.7f);
        field_0x660[idx].y = sp8 - shape_angle.y;
        dComIfGp_particle_set(0x87eb, &field_0x5a0[idx], NULL, &field_0x660[idx], NULL);
    }

    field_0x6c8 = 1;
}

/* 80CA52F0-80CA546C 0007B0 017C+00 1/1 0/0 0/0 .text            HakaiMotion2__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::HakaiMotion2() {
    // NONMATCHING
    cXyz cStack_20(7.0f, 7.0f, 7.0f);
    csXyz cStack_28(0, 0, 0);
    int num_processed = 0;
    for (int idx = 0; idx < field_0x6e0; ++idx) {
        field_0x660[idx] += field_0x690[idx];
        field_0x600[idx].y += gravity;
        field_0x5a0[idx] += field_0x600[idx];
        if (field_0x5a0[idx].y < field_0x6d0) {
            if (field_0x6c0[idx] == 0) {
                dComIfGp_particle_set(0x8c6e, &field_0x5a0[idx], &tevStr, &cStack_28, &cStack_20);
            }
            field_0x6c0[idx] = 1;
            field_0x5a0[idx].y = field_0x6d0;
            field_0x600[idx].set(0.0f, 0.0f, 0.0f);
            field_0x690[idx].set(0, 0, 0);
            ++num_processed;
            if (num_processed == field_0x6e0) {
                ++field_0x6cb;
            }
        }
    }
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
static int daObjOCTHASHI_Execute(daObjOCTHASHI_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CA5AE0-80CA5B98 000FA0 00B8+00 1/0 0/0 0/0 .text            CreateHeap__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], "S_octhashi00.bmd");

    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }

    int idx = 0;
    while (field_0x6e0 <= idx) {
        mpModel[idx] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpModel[idx] == NULL) {
            return 0;
        }
        ++idx;
    }

    return 1;
}

/* 80CA65CC-80CA65EC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOCTHASHI_Method */
static actor_method_class l_daObjOCTHASHI_Method = {
    (process_method_func)daObjOCTHASHI_Create__FP10fopAc_ac_c,
    (process_method_func)daObjOCTHASHI_Delete,
    (process_method_func)daObjOCTHASHI_Execute,
    (process_method_func)daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c,
    (process_method_func)daObjOCTHASHI_Draw__FP15daObjOCTHASHI_c,
};

/* 80CA65EC-80CA661C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OCTHASHI */
extern actor_process_profile_definition g_profile_OCTHASHI = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OCTHASHI,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
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

/* 80CA5B98-80CA5EE4 001058 034C+00 1/1 0/0 0/0 .text            create__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daObjOCTHASHI_c);
    field_0x6e0 = fopAcM_GetParam(this) & 0xff;
    if (field_0x6e0 == 0xff) {
        field_0x6e0 = 0;
    }
    field_0x6e0 = field_0x6e0 - 8;
    int iVar1 = field_0x6e0 * 0x8d3;
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName[0]);
    if (phase == cPhs_COMPLEATE_e) {
        BOOL is_stage_boss_enemy = dComIfGs_isStageBossEnemy();
        if (is_stage_boss_enemy && dComIfGp_getStartStageRoomNo() == 2) {
            if (strcmp("D_MN01A", dComIfGp_getStartStageName()) == 0) {
                return cPhs_ERROR_e;
            }
        }
        gravity = -1.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName[0], "S_octhashi100.dzb");
        JUT_ASSERT(958, dzb_id != -1);
        phase = MoveBGCreate(l_arcName[0], dzb_id, dBgS_MoveBGProc_TypicalRotY, iVar1, NULL);
        if (phase == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        field_0x6ec.init(&eyePos, &eyePos, 3, 1);
        field_0x6cb = 0;
        fopAcM_SetMtx(this, mpModel[0]->getBaseTRMtx());
        initCcCylinder();
        cXyz pos(current.pos.x, current.pos.y + 100, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&pos) & 0xff) {
            field_0x6d0 = fopAcM_gc_c::mGroundY;
        }
        fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
        field_0x6e4 = 7;
        daObjOCTHASHI_Execute(this);
    }
    return phase;
}

/* 80CA6254-80CA625C 001714 0008+00 1/0 0/0 0/0 .text daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c
 */
static bool daObjOCTHASHI_IsDelete(daObjOCTHASHI_c* param_0) {
    return true;
}

/* 80CA62A4-80CA62F8 001764 0054+00 1/0 0/0 0/0 .text            Create__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Create() {
    // NONMATCHING
    return 0;
}

/* 80CA62F8-80CA636C 0017B8 0074+00 1/0 0/0 0/0 .text Execute__15daObjOCTHASHI_cFPPA3_A4_f */
int daObjOCTHASHI_c::Execute(Mtx **i_mtx) {
    Action();
    *i_mtx = &mpModel[0]->getBaseTRMtx();
    setBaseMtx();
    // NONMATCHING
    return 0;
}

/* 80CA636C-80CA6444 00182C 00D8+00 1/0 0/0 0/0 .text            Draw__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Draw() {
    // NONMATCHING
    return 0;
}

/* 80CA6444-80CA6478 001904 0034+00 1/0 0/0 0/0 .text            Delete__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName[0]);
    return 1;
}

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
