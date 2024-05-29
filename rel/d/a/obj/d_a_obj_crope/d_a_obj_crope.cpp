/**
 * @file d_a_obj_crope.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_crope/d_a_obj_crope.h"
#include "d/cc/d_cc_d.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_path.h"
#include "SSystem/SComponent/c_math.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void createHeap__12daObjCrope_cFv();
extern "C" static void daObjCrope_createHeap__FP10fopAc_ac_c();
extern "C" void create__12daObjCrope_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObjCrope_Create__FP10fopAc_ac_c();
extern "C" void __dt__12daObjCrope_cFv();
extern "C" static void daObjCrope_Delete__FP12daObjCrope_c();
extern "C" void setNormalRopePos__12daObjCrope_cFv();
extern "C" void setRideRopePos__12daObjCrope_cFv();
extern "C" void execute__12daObjCrope_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" static void daObjCrope_Execute__FP12daObjCrope_c();
extern "C" void draw__12daObjCrope_cFv();
extern "C" static void daObjCrope_Draw__FP12daObjCrope_c();
extern "C" void __dt__10cCcD_GSttsFv();

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_rnd__Fv();
extern "C" void cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf();
extern "C" void __ct__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BCEACC-80BCEAD4 000000 0006+02 6/6 0/0 0/0 .rodata          l_arcName */
SECTION_RODATA static char const l_arcName[] = "Crope";

/* 80BCCCD8-80BCCD44 000078 006C+00 1/1 0/0 0/0 .text            createHeap__12daObjCrope_cFv */
int daObjCrope_c::createHeap() {
    ResTIMG* texImg = (ResTIMG*) dComIfG_getObjectRes(l_arcName, 3);
    JUT_ASSERT(80, texImg != 0);
    return mLineMat.init(1, 100, texImg, 0) != 0 ? 1 : 0;
}

/* 80BCCD44-80BCCD64 0000E4 0020+00 1/1 0/0 0/0 .text daObjCrope_createHeap__FP10fopAc_ac_c */
static int daObjCrope_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjCrope_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 80BCEAD4-80BCEAD8 000008 0004+00 0/1 0/0 0/0 .rodata          @3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3870 = -5.0f;
COMPILER_STRIP_GATE(0x80BCEAD4, &lit_3870);
#pragma pop

/* 80BCEAD8-80BCEADC 00000C 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = 0.5f;
COMPILER_STRIP_GATE(0x80BCEAD8, &lit_3871);
#pragma pop

/* 80BCEADC-80BCEAE0 000010 0004+00 0/2 0/0 0/0 .rodata          @3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3872 = 1.0f;
COMPILER_STRIP_GATE(0x80BCEADC, &lit_3872);
#pragma pop

/* 80BCEAE0-80BCEAE4 000014 0004+00 0/4 0/0 0/0 .rodata          @3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3873[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BCEAE0, &lit_3873);
#pragma pop

/* 80BCEAE4-80BCEAEC 000018 0008+00 0/3 0/0 0/0 .rodata          @3874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3874[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BCEAE4, &lit_3874);
#pragma pop

/* 80BCEAEC-80BCEAF4 000020 0008+00 0/3 0/0 0/0 .rodata          @3875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3875[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BCEAEC, &lit_3875);
#pragma pop

/* 80BCEAF4-80BCEAFC 000028 0008+00 0/3 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3876[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BCEAF4, &lit_3876);
#pragma pop

/* 80BCEAFC-80BCEB00 000030 0004+00 0/1 0/0 0/0 .rodata          @3877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3877 = 3.0f;
COMPILER_STRIP_GATE(0x80BCEAFC, &lit_3877);
#pragma pop

/* 80BCEB00-80BCEB04 000034 0004+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 75.0f;
COMPILER_STRIP_GATE(0x80BCEB00, &lit_3878);
#pragma pop

/* 80BCEB04-80BCEB08 000038 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 50.0f;
COMPILER_STRIP_GATE(0x80BCEB04, &lit_3879);
#pragma pop

/* 80BCEB08-80BCEB0C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = -75.0f;
COMPILER_STRIP_GATE(0x80BCEB08, &lit_3880);
#pragma pop

/* 80BCEB0C-80BCEB10 000040 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = -200.0f;
COMPILER_STRIP_GATE(0x80BCEB0C, &lit_3881);
#pragma pop

/* 80BCEB10-80BCEB14 000044 0004+00 0/1 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3882 = 1.0f / 99.0f;
COMPILER_STRIP_GATE(0x80BCEB10, &lit_3882);
#pragma pop

/* 80BCEB3C-80BCEB7C 000000 0040+00 1/1 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 80BCEB7C-80BCEB80 000040 0004+00 1/1 0/0 0/0 .data            color$4550 */
SECTION_DATA static u8 color[4] = {
    0x00,
    0x00,
    0x00,
    0xFF,
};

/* 80BCEB80-80BCEBA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCrope_Method */
static actor_method_class l_daObjCrope_Method = {
    (process_method_func)daObjCrope_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCrope_Delete__FP12daObjCrope_c,
    (process_method_func)daObjCrope_Execute__FP12daObjCrope_c,
    0,
    (process_method_func)daObjCrope_Draw__FP12daObjCrope_c,
};

/* 80BCEBA0-80BCEBD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Crope */
extern actor_process_profile_definition g_profile_Obj_Crope = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Crope,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjCrope_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  248,                    // mPriority
  &l_daObjCrope_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BCEBD0-80BCEBDC 000094 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80BCEBDC-80BCEBE8 0000A0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BCEBE8-80BCEBF4 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BCEBF4-80BCEC08 0000B8 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80BCEC08-80BCEC14 0000CC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BCEC14-80BCEC20 0000D8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BCCD64-80BCD3D8 000104 0674+00 1/1 0/0 0/0 .text            create__12daObjCrope_cFv */
// Matches with literals
#ifdef NONMATCHING
int daObjCrope_c::create() {
    fopAcM_SetupActor(this, daObjCrope_c);
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, daObjCrope_createHeap, 0x2900) == 0) {
            return cPhs_ERROR_e;
        }
        attention_info.position = home.pos;
        eyePos = home.pos;
        mCcStts.Init(0, 0xff, this);
        mCcStts.SetRoomId(fopAcM_GetRoomNo(this));
        mCollider.Set(l_sphSrc);
        mCollider.SetStts(&mCcStts);
        tevStr.mRoomNo = fopAcM_GetRoomNo(this);
        gravity = -5.0f;
        cXyz cStack_68;
        cXyz cStack_74;
        if (fopAcM_GetParam(this) == 0xff) {
            return cPhs_ERROR_e;
        } 
        dPath* pPath = dPath_GetRoomPath(fopAcM_GetParam(this), fopAcM_GetRoomNo(this));
        if (pPath == NULL || pPath->m_num != 2) {
            return cPhs_ERROR_e;
        }
        cStack_68 = pPath->m_points[0].m_position;
        cStack_74 = pPath->m_points[1].m_position;
        current.pos = (cStack_68 + cStack_74) * 0.5f;
        mRopeVec = cStack_74 - cStack_68;
        if (fabsf(mRopeVec.x) > fabsf(mRopeVec.z)) {
            field_0x724 = 1.0f / mRopeVec.x;
            field_0x714 = 1;
        } else {
            field_0x724 = 1.0f / mRopeVec.z;
            field_0x714 = 0;
        }
        shape_angle.y = mRopeVec.atan2sX_Z();
        shape_angle.x = mRopeVec.atan2sY_XZ();
        mDoMtx_trans(field_0x6e4, current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_ZXYrotM(field_0x6e4, shape_angle.x,
                                    shape_angle.y, 0);
        f32 dVar12 = mRopeVec.absXZ() * 0.5f + 3.0f;
        fopAcM_SetMtx(this, field_0x6e4);
        fopAcM_SetMax(this, 75.0f, 50.0f, dVar12);
        fopAcM_SetMin(this, -75.0f, -200.0f, -dVar12);
        f32 fVar1 = mRopeVec.abs();
        field_0x720 = fVar1 * (1.0f / 99.0f);
        f32 fVar13 = field_0x720 / fVar1;
        cXyz cStack_80(mRopeVec.x * fVar13,
                        mRopeVec.y * fVar13,
                        mRopeVec.z * fVar13);
        cXyz* posItr;
        cXyz* pos = mLineMat.getPos(0);
        cXyz* this_02 = field_0xbd8;
        *pos =  cStack_68;
        int i;
        for (i = 1, posItr = pos + 1; i < 99; i++, posItr++, this_02++) {
            posItr[0] = posItr[-1] + cStack_80;
            this_02[0] = posItr[0];
        }
        *posItr = cStack_74;
        offRide();
        setNormalRopePos();
    }
    return rv;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjCrope_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/create__12daObjCrope_cFv.s"
}
#pragma pop
#endif

/* 80BCD3D8-80BCD3DC 000778 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BCD3DC-80BCD424 00077C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80BCD424-80BCD46C 0007C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BCD46C-80BCD4C8 00080C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80BCD4C8-80BCD504 000868 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__4cXyzFv.s"
}
#pragma pop

/* 80BCD504-80BCD524 0008A4 0020+00 1/0 0/0 0/0 .text            daObjCrope_Create__FP10fopAc_ac_c
 */
static int daObjCrope_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjCrope_c*>(i_this)->create();
}

/* 80BCD524-80BCD69C 0008C4 0178+00 1/1 0/0 0/0 .text            __dt__12daObjCrope_cFv */
#ifdef NONMATCHING
daObjCrope_c::~daObjCrope_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjCrope_c::~daObjCrope_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__12daObjCrope_cFv.s"
}
#pragma pop
#endif

/* 80BCD69C-80BCD6C4 000A3C 0028+00 1/0 0/0 0/0 .text            daObjCrope_Delete__FP12daObjCrope_c
 */
static int daObjCrope_Delete(daObjCrope_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daObjCrope_c();
    return 1;
}

/* ############################################################################################## */
/* 80BCEB14-80BCEB18 000048 0004+00 0/1 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4115 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BCEB14, &lit_4115);
#pragma pop

/* 80BCEB18-80BCEB1C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4116 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BCEB18, &lit_4116);
#pragma pop

/* 80BCEB1C-80BCEB20 000050 0004+00 0/1 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BCEB1C, &lit_4117);
#pragma pop

/* 80BCEB20-80BCEB24 000054 0004+00 0/2 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 49.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BCEB20, &lit_4118);
#pragma pop

/* 80BCEB24-80BCEB28 000058 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BCEB24, &lit_4119);
#pragma pop

/* 80BCD6C4-80BCD9EC 000A64 0328+00 3/3 0/0 0/0 .text            setNormalRopePos__12daObjCrope_cFv
 */
// Horrible regalloc
#ifdef NONMATCHING
void daObjCrope_c::setNormalRopePos() {
    cXyz* pdVar4;
    cXyz* pVVar5;
    cXyz* pVVar3;
    cXyz* pcVar8;
    cXyz* ptr740;
    cXyz* this_00;
    cXyz* this_01;
    pVVar3 = mLineMat.getPos(0) + 1;
    pVVar5 = field_0x740;
    pdVar4 = field_0xbd8;
    cXyz cStack_34;
    cXyz cStack_40;
    cXyz cStack_4c;
    f32 local_c8;
    int i;
    dKyw_get_AllWind_vec(&current.pos, &cStack_4c, &local_c8);
    if (cM_rnd() < 0.1f) {
        cStack_4c *= local_c8 * field_0x720 * 0.2f;
    } else {
        cStack_4c *= 0.0f;
    }
    for (i = 1; i < 99; i++) {
        pVVar3[0].y = pdVar4[0].y;
        cStack_34 = pVVar3[0] - pVVar3[-1];
        cStack_34.y += maxFallSpeed;
        cStack_34 += pVVar5[0];
        if (cM_rnd() < 0.6f) {
            cStack_34 += cStack_4c;
        }
        cStack_34.normalizeZP();
        pVVar3[0] = pVVar3[-1] + cStack_34 * field_0x720;
        pVVar3++;
        pdVar4++;
        pVVar5++;
    }
    pcVar8 = mLineMat.getPos(0) + 98;
    ptr740 = field_0x740 + 97;
    for (i = 98; i > 0; i--) {
        cStack_34 = pcVar8[0] - pcVar8[1];
        cStack_34.y += gravity;
        cStack_34 += ptr740[0];
        cStack_34.normalizeZP();
        pcVar8[0] = pcVar8[1] + cStack_34 * field_0x720;
        pcVar8--;
        ptr740--;
    }
    
    cXyz* pos = mLineMat.getPos(0);
    cXyz* this_02 = pos + 1;
    this_01 = field_0x740;
    this_00 = field_0xbd8;
    cXyz* iVar6 = mLineMat.getPos(0);
    for (i = 1; i < 99; i++) {
        f32 dVar9 = iVar6->y + (mRopeVec.y * getStartRate(this_02));
        this_01[0] = (this_02[0] - this_00[0]) * 0.49f;
        this_00[0] = this_02[0];
        this_02[0].y += (dVar9 - this_02[0].y) * 0.8f;
        this_02++;
        this_00++;
        this_01++;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjCrope_c::setNormalRopePos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/setNormalRopePos__12daObjCrope_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80BCEB28-80BCEB2C 00005C 0004+00 1/2 0/0 0/0 .rodata          @4407 */
SECTION_RODATA static f32 const lit_4407 = 5.0f;
COMPILER_STRIP_GATE(0x80BCEB28, &lit_4407);

/* 80BCEB2C-80BCEB34 000060 0004+04 0/1 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4408[1 + 1 /* padding */] = {
    0x40A00001,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80BCEB2C, &lit_4408);
#pragma pop

/* 80BCEB34-80BCEB3C 000068 0008+00 0/1 0/0 0/0 .rodata          @4410 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4410[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BCEB34, &lit_4410);
#pragma pop

/* 80BCD9EC-80BCE4FC 000D8C 0B10+00 1/1 0/0 0/0 .text            setRideRopePos__12daObjCrope_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjCrope_c::setRideRopePos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/setRideRopePos__12daObjCrope_cFv.s"
}
#pragma pop

/* 80BCE4FC-80BCE954 00189C 0458+00 1/1 0/0 0/0 .text            execute__12daObjCrope_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjCrope_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/execute__12daObjCrope_cFv.s"
}
#pragma pop

/* 80BCE954-80BCE99C 001CF4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGLin::~cM3dGLin() {
extern "C" asm void __dt__8cM3dGLinFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__8cM3dGLinFv.s"
}
#pragma pop

/* 80BCE99C-80BCE9BC 001D3C 0020+00 1/0 0/0 0/0 .text daObjCrope_Execute__FP12daObjCrope_c */
static int daObjCrope_Execute(daObjCrope_c* i_this) {
    return i_this->execute();
}

/* 80BCE9BC-80BCEA5C 001D5C 00A0+00 1/1 0/0 0/0 .text            draw__12daObjCrope_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjCrope_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/draw__12daObjCrope_cFv.s"
}
#pragma pop

/* 80BCEA5C-80BCEA7C 001DFC 0020+00 1/0 0/0 0/0 .text            daObjCrope_Draw__FP12daObjCrope_c
 */
static int daObjCrope_Draw(daObjCrope_c* i_this) {
    return i_this->draw();
}

/* 80BCEA7C-80BCEAC4 001E1C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_crope/d_a_obj_crope/__dt__10cCcD_GSttsFv.s"
}
#pragma pop
