/**
 * @file d_a_obj_laundry_rope.cpp
 * 
*/

#include "d/actor/d_a_obj_laundry_rope.h"
#include "d/d_cc_d.h"
#include "d/d_path.h"
#include "dol2asm.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_kankyo_wether.h"


//
// Forward References:
//

extern "C" void create_init__14daObjLndRope_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void initBaseMtx__14daObjLndRope_cFv();
extern "C" void setBaseMtx__14daObjLndRope_cFv();
extern "C" void setNormalRopePos__14daObjLndRope_cFv();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" static void daObjLndRope_Draw__FP14daObjLndRope_c();
extern "C" static void daObjLndRope_Execute__FP14daObjLndRope_c();
extern "C" static bool daObjLndRope_IsDelete__FP14daObjLndRope_c();
extern "C" static void daObjLndRope_Delete__FP14daObjLndRope_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" static void daObjLndRope_Create__FP10fopAc_ac_c();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const M_attr__14daObjLndRope_c[20];
extern "C" extern char const* const d_a_obj_laundry_rope__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyw_get_AllWind_vecpow__FP4cXyz();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
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
/* 80C53304-80C53318 000000 0014+00 3/3 0/0 0/0 .rodata          M_attr__14daObjLndRope_c */
daObjLndRope_Attr_c const daObjLndRope_c::mAttr = {-5.0f, 0.2f, 0.5f, 0.8f, 0.0f};

/* 80C53318-80C53328 000014 000D+03 0/1 0/0 0/0 .rodata          l_laundryList */
static const s8 l_laundryList[13] = {-1, -1, 3, 0, -1, 1, 1, -1, 2, 2, -1, 2, -1};

u8 daObjLndRope_c::getPathId() {
    return fopAcM_GetParamBit(this, 8, 8);;
}

/* 80C521F8-80C52820 000078 0628+00 1/1 0/0 0/0 .text            create_init__14daObjLndRope_cFv */
void daObjLndRope_c::create_init() {
    gravity = mAttr.mGravity;
    dPath* roomPath = dPath_GetRoomPath(getPathId(), fopAcM_GetRoomNo(this));

    dPnt* pathPoints = roomPath->m_points;
    cXyz startPoint = pathPoints[0].m_position;
    cXyz endPoint = pathPoints[1].m_position;
    current.pos = (startPoint + endPoint) * 0.5f;
    mPos = endPoint - startPoint;

    if (fabsf(mPos.x) > fabsf(mPos.z)){
        mScale = 1.0f / mPos.x;
        mFlag = 1;
    }
    else{
        mScale = 1.0f / mPos.z;
        mFlag = 0;
    }

    shape_angle.y = cM_atan2s(mPos.x, mPos.z);
    shape_angle.x = cM_atan2s(-mPos.y, mPos.absXZ());
    f32 cullSizeBoxZ = mPos.absXZ() * 0.5f + 3.0f;
    fopAcM_setCullSizeBox(this, -75.0f, -200.0f, -cullSizeBoxZ, 75.0f, 50.0f, cullSizeBoxZ);
    
    f32 totalLength = mPos.abs();
    const f32 segmentFraction = 1.0f / 14.0f;
    mSegmentLength = totalLength * segmentFraction;
    cXyz segmentOffset = mPos * (mSegmentLength / totalLength);    

    cXyz* ropePosition = mRopeMat.getPos(0);
    cXyz* loopPos = &mPositions2[0];
    *ropePosition = startPoint;    
    ropePosition++;
    
    for (int i = 1; i < 14; i++){
        *ropePosition = *(ropePosition - 1) + segmentOffset;
        *loopPos = *ropePosition;
        ropePosition++;
        loopPos++;
    }

    *ropePosition = endPoint;
    setNormalRopePos();
    initBaseMtx();
    
    fpc_ProcID* procId = &mProcIds[0];
    ropePosition = mRopeMat.getPos(0) + 1;
    const s8* laundryEntry = &l_laundryList[0];
    
    for (int i = 1; i < 14; i++){
        if (*laundryEntry == -1){
            *procId = -1;
        }
        else{
            *procId = fopAcM_createChild(
                PROC_Obj_Laundry,
                fopAcM_GetID(this),
                *laundryEntry,
                ropePosition,
                fopAcM_GetRoomNo(this), &csXyz(0, cLib_targetAngleY(ropePosition, ropePosition+1) + 0x4000, -cLib_targetAngleX(ropePosition, ropePosition+1)),
                NULL, -1, 0);
        }

        ropePosition++;
        procId++;
        laundryEntry++;
    }
}

/* 80C5285C-80C52890 0006DC 0034+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLndRope_cFv */
void daObjLndRope_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C52890-80C528E0 000710 0050+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjLndRope_cFv */
void daObjLndRope_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C53364-80C533A4 000060 0040+00 0/0 0/0 0/0 .rodata          ccSphSrc$3837 */
#pragma push
#pragma force_active on
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x1607a, 0x11}, 0x149}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80C533A4-80C533A8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4012 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C533A4, &lit_4012);
#pragma pop

/* 80C533A8-80C533AC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4013 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C533A8, &lit_4013);
#pragma pop

/* 80C528E0-80C52CC8 000760 03E8+00 2/2 0/0 0/0 .text setNormalRopePos__14daObjLndRope_cFv */
void daObjLndRope_c::setNormalRopePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C533AC-80C533B0 0000A8 0004+00 1/1 0/0 0/0 .rodata          @4036 */
SECTION_RODATA static f32 const lit_4036 = 2.0f;
COMPILER_STRIP_GATE(0x80C533AC, &lit_4036);

/* 80C533B0-80C533B0 0000AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C533B0 = "Obj_SRope";
SECTION_DEAD static char const* const stringBase_80C533BA = "Obj_ItaRope.bti";
#pragma pop

/* 80C533CC-80C533D0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_SRope";

/* 80C52CC8-80C52D70 000B48 00A8+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* param_0) {
    return 1;
}

/* ############################################################################################## */
/* 80C533D0-80C533D4 000004 0004+00 1/1 0/0 0/0 .data
 * l_color$localstatic3$draw__14daObjLndRope_cFv                */
SECTION_DATA static u8 data_80C533D0[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 80C52D70-80C52E04 000BF0 0094+00 1/0 0/0 0/0 .text daObjLndRope_Draw__FP14daObjLndRope_c */
static void daObjLndRope_Draw(daObjLndRope_c* param_0) {
    // NONMATCHING
}

/* 80C52E04-80C52E34 000C84 0030+00 1/0 0/0 0/0 .text daObjLndRope_Execute__FP14daObjLndRope_c */
static void daObjLndRope_Execute(daObjLndRope_c* param_0) {
    // NONMATCHING
}

/* 80C52E34-80C52E3C 000CB4 0008+00 1/0 0/0 0/0 .text daObjLndRope_IsDelete__FP14daObjLndRope_c */
static bool daObjLndRope_IsDelete(daObjLndRope_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C533D4-80C533F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLndRope_Method */
static actor_method_class l_daObjLndRope_Method = {
    (process_method_func)daObjLndRope_Create__FP10fopAc_ac_c,
    (process_method_func)daObjLndRope_Delete__FP14daObjLndRope_c,
    (process_method_func)daObjLndRope_Execute__FP14daObjLndRope_c,
    (process_method_func)daObjLndRope_IsDelete__FP14daObjLndRope_c,
    (process_method_func)daObjLndRope_Draw__FP14daObjLndRope_c,
};

/* 80C533F4-80C53424 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_LndRope */
extern actor_process_profile_definition g_profile_Obj_LndRope = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_LndRope,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLndRope_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  34,                     // mPriority
  &l_daObjLndRope_Method, // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C53424-80C53438 000058 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80C53438-80C53444 00006C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C53444-80C53450 000078 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C53450-80C5345C 000084 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C5345C-80C53468 000090 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C52E3C-80C52F2C 000CBC 00F0+00 1/0 0/0 0/0 .text daObjLndRope_Delete__FP14daObjLndRope_c */
static void daObjLndRope_Delete(daObjLndRope_c* param_0) {
    // NONMATCHING
}

/* 80C52F2C-80C52FF8 000DAC 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

int daObjLndRope_c::create() {
    fopAcM_SetupActor(this, daObjLndRope_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x6c0)) {
            phase = cPhs_ERROR_e;
        } else {
            create_init();
        }
    }

    return phase;
}

/* 80C52FF8-80C53140 000E78 0148+00 1/0 0/0 0/0 .text            daObjLndRope_Create__FP10fopAc_ac_c
 */
static int daObjLndRope_Create(fopAc_ac_c* i_this) {
    return ((daObjLndRope_c*)i_this)->create();
}
