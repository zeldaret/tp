/**
 * d_a_obj_tornado.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "d/kankyo/d_kankyo_rain.h"

//
// Forward References:
//

extern "C" void setPntWind__11daObjTrnd_cFv();
extern "C" void cutPntWind__11daObjTrnd_cFv();
extern "C" void movePntWind__11daObjTrnd_cFv();
extern "C" void setCpsInfo__11daObjTrnd_cFv();
extern "C" void initBaseMtx__11daObjTrnd_cFv();
extern "C" void setBaseMtx__11daObjTrnd_cFv();
extern "C" void Create__11daObjTrnd_cFv();
extern "C" void create__11daObjTrnd_cFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void execute__11daObjTrnd_cFv();
extern "C" bool draw__11daObjTrnd_cFv();
extern "C" void _delete__11daObjTrnd_cFv();
extern "C" static void daObjTrnd_Draw__FP11daObjTrnd_c();
extern "C" static void daObjTrnd_Execute__FP11daObjTrnd_c();
extern "C" static void daObjTrnd_Delete__FP11daObjTrnd_c();
extern "C" static void daObjTrnd_Create__FP11daObjTrnd_c();
extern "C" extern char const* const d_a_obj_tornado__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void dKyw_pntwind_set__FP14WIND_INFLUENCE();
extern "C" void dKyw_pntwind_cut__FP14WIND_INFLUENCE();
extern "C" void dKyw_custom_windpower__Ff();
extern "C" void dKyw_evt_wind_set__Fss();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void normalize__4cXyzFv();
extern "C" void isZero__4cXyzCFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC9cM3dGCpsS();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __cvt_fp2unsigned();
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D1C354-80D1C358 000000 0004+00 5/5 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static u8 const lit_3628[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D1C354, &lit_3628);

/* 80D1C358-80D1C35C 000004 0004+00 0/2 0/0 0/0 .rodata          @3629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3629 = 1.0f;
COMPILER_STRIP_GATE(0x80D1C358, &lit_3629);
#pragma pop

/* 80D1C35C-80D1C360 000008 0004+00 0/2 0/0 0/0 .rodata          @3630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3630 = 300.0f;
COMPILER_STRIP_GATE(0x80D1C35C, &lit_3630);
#pragma pop

/* 80D1C360-80D1C364 00000C 0004+00 0/2 0/0 0/0 .rodata          @3631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3631 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D1C360, &lit_3631);
#pragma pop

/* 80D1B998-80D1BA0C 000078 0074+00 2/2 0/0 0/0 .text            setPntWind__11daObjTrnd_cFv */
// Matches with literals
#ifdef NONMATCHING
void daObjTrnd_c::setPntWind() {
    mWindInfluence.position = current.pos;
    mWindInfluence.mDirection.x = 0.0f;
    mWindInfluence.mDirection.y = 1.0f;
    mWindInfluence.mDirection.z = 0.0f;
    mWindInfluence.mRadius = 300.0f * scale.x;
    mWindInfluence.field_0x20 = 0.0f;
    mWindInfluence.mStrength = 0.2f;
    dKyw_pntwind_set(&mWindInfluence);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::setPntWind() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/setPntWind__11daObjTrnd_cFv.s"
}
#pragma pop
#endif

/* 80D1BA0C-80D1BA30 0000EC 0024+00 2/2 0/0 0/0 .text            cutPntWind__11daObjTrnd_cFv */
void daObjTrnd_c::cutPntWind() {
    dKyw_pntwind_cut(&mWindInfluence);
}

/* ############################################################################################## */
/* 80D1C364-80D1C368 000010 0004+00 0/1 0/0 0/0 .rodata          @3679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3679 = 2.0f;
COMPILER_STRIP_GATE(0x80D1C364, &lit_3679);
#pragma pop

/* 80D1C368-80D1C36C 000014 0004+00 0/2 0/0 0/0 .rodata          @3680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3680 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1C368, &lit_3680);
#pragma pop

/* 80D1C36C-80D1C374 000018 0004+04 0/2 0/0 0/0 .rodata          @3681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3681[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D1C36C, &lit_3681);
#pragma pop

/* 80D1C374-80D1C37C 000020 0008+00 0/1 0/0 0/0 .rodata          @3682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3682[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1C374, &lit_3682);
#pragma pop

/* 80D1C37C-80D1C384 000028 0008+00 0/1 0/0 0/0 .rodata          @3683 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3683[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1C37C, &lit_3683);
#pragma pop

/* 80D1C384-80D1C38C 000030 0008+00 0/1 0/0 0/0 .rodata          @3684 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3684[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1C384, &lit_3684);
#pragma pop

/* 80D1BA30-80D1BC40 000110 0210+00 1/1 0/0 0/0 .text            movePntWind__11daObjTrnd_cFv */
// Matches with literals
#ifdef NONMATCHING
void daObjTrnd_c::movePntWind() {
    cXyz local_20;
    cXyz local_2c;
    cXyz cStack_38;
    local_20.x = field_0x6e8.mStart.x;
    local_20.y = field_0x6e8.mStart.y;
    local_20.z = field_0x6e8.mStart.z;
    local_2c.x = field_0x6e8.mEnd.x;
    local_2c.y = field_0x6e8.mEnd.y;
    local_2c.z = field_0x6e8.mEnd.z;
    dKyr_get_vectle_calc(&local_20, &local_2c, &cStack_38);
    mWindInfluence.mDirection = cStack_38;
    mWindInfluence.mRadius = field_0x6e8.mRadius * 2.0f;
    mWindInfluence.field_0x20 = 0.0f;
    cLib_addCalc(&mWindInfluence.position.x, field_0x6e8.mEnd.x, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.y, field_0x6e8.mEnd.y, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.z, field_0x6e8.mEnd.z, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    if (mWindInfluence.position.abs(field_0x6e8.mEnd) < mWindInfluence.mRadius) {
        mWindInfluence.position = field_0x6e8.mStart;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::movePntWind() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/movePntWind__11daObjTrnd_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80D1C38C-80D1C390 000038 0004+00 0/1 0/0 0/0 .rodata          @3724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3724 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D1C38C, &lit_3724);
#pragma pop

/* 80D1C390-80D1C394 00003C 0004+00 0/3 0/0 0/0 .rodata          @3725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3725 = 3000.0f;
COMPILER_STRIP_GATE(0x80D1C390, &lit_3725);
#pragma pop

/* 80D1C394-80D1C398 000040 0004+00 0/1 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3726 = 30.0f;
COMPILER_STRIP_GATE(0x80D1C394, &lit_3726);
#pragma pop

/* 80D1C398-80D1C39C 000044 0004+00 0/1 0/0 0/0 .rodata          @3727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3727 = 127.0f;
COMPILER_STRIP_GATE(0x80D1C398, &lit_3727);
#pragma pop

/* 80D1C39C-80D1C3A0 000048 0004+00 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = -1.0f;
COMPILER_STRIP_GATE(0x80D1C39C, &lit_3728);
#pragma pop

/* 80D1BC40-80D1BE04 000320 01C4+00 1/1 0/0 0/0 .text            setCpsInfo__11daObjTrnd_cFv */
// Matches with literals
#ifdef NONMATCHING
void daObjTrnd_c::setCpsInfo() {
    cLib_chaseF(&field_0x704, field_0x73c, scale.y * 3000.0f * 0.05f);
    field_0x6e8.mEnd.x = 0;
    field_0x6e8.mEnd.y = field_0x704;
    field_0x6e8.mEnd.z = 0;
    mDoMtx_stack_c::transS(field_0x6e8.mStart);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&field_0x6e8.mEnd, &field_0x6e8.mEnd);
    mCps.cM3dGCps::Set(field_0x6e8);
    cXyz local_20;
    local_20.x = field_0x6e8.mEnd.x - field_0x6e8.mStart.x;
    local_20.y = field_0x6e8.mEnd.y - field_0x6e8.mStart.y;
    local_20.z = field_0x6e8.mEnd.z - field_0x6e8.mStart.z;
    if (!local_20.isZero()) {
        local_20.normalize();
    } else {
        local_20 = cXyz::Zero;
    }
    local_20 *= scale.z * 30.0f;
    mCps.SetAtVec(local_20);
    movePntWind();
    if (!checkSE()) {
        mDoAud_seStartLevel(Z2SE_ENV_WIND_SARUDAN, 0, (field_0x704 / (scale.y * 3000.0f)) * 127.0f, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::setCpsInfo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/setCpsInfo__11daObjTrnd_cFv.s"
}
#pragma pop
#endif

/* 80D1BE04-80D1BE24 0004E4 0020+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjTrnd_cFv */
void daObjTrnd_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D1BE24-80D1BE6C 000504 0048+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjTrnd_cFv */
void daObjTrnd_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), field_0x708);
}

/* ############################################################################################## */
/* 80D1C3A0-80D1C3A4 00004C 0004+00 0/1 0/0 0/0 .rodata          @3762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3762 = -300.0f;
COMPILER_STRIP_GATE(0x80D1C3A0, &lit_3762);
#pragma pop

/* 80D1C3B4-80D1C400 000000 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{AT_TYPE_LANTERN_SWING, 0x0, 0x11}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x3, 0x2},                            // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                            // mGObjTg
        {0x0},                                                         // mGObjCo
    },                                                                 // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 3000.0f, 0.0f}, 300.0f},  // mCps
    }                                                         // mCpsAttr
};

/* 80D1BE6C-80D1BFB0 00054C 0144+00 1/1 0/0 0/0 .text            Create__11daObjTrnd_cFv */
// Matches with literals
#ifdef NONMATCHING
int daObjTrnd_c::Create() {
    current.angle.z = 0;
    shape_angle.z = 0;
    home.angle.z = 0;
    initBaseMtx();
    fopAcM_SetMtx(this, field_0x708);
    mStts.Init(0xff, 0xff, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    cXyz local_1c;
    cXyz local_28;
    local_1c.x = scale.x * -300.0f;
    local_1c.y = 0.0;
    local_1c.z = scale.x * -300.0f;
    local_28.x = scale.x * 300.0f;
    local_28.y = scale.y * 3000.0f;
    local_28.z = scale.x * 300.0f;
    fopAcM_setCullSizeBox(this, local_1c.x, 0, local_1c.z,
                                          local_28.x, local_28.y,
                                          local_28.z);
    u32 timer = getTimer();
    if (timer == 0xff || timer == 0) {
        field_0x738 = 0xffff;
    } else {
        field_0x738 = timer * 15;
    }
    field_0x6e8.mRadius = scale.x * 300.0f;
    field_0x6e8.mStart = current.pos;
    field_0x73c = scale.y * 3000.0f;
    field_0x704 = field_0x73c;
    setPntWind();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/Create__11daObjTrnd_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80D1C400-80D1C420 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTrnd_Method */
SECTION_DATA static void* l_daObjTrnd_Method[8] = {
    (void*)daObjTrnd_Create__FP11daObjTrnd_c,
    (void*)daObjTrnd_Delete__FP11daObjTrnd_c,
    (void*)daObjTrnd_Execute__FP11daObjTrnd_c,
    (void*)NULL,
    (void*)daObjTrnd_Draw__FP11daObjTrnd_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D1C420-80D1C450 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Tornado */
SECTION_DATA extern void* g_profile_Obj_Tornado[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x015B0000, (void*)&g_fpcLf_Method,
    (void*)0x00000770, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01BC0000, (void*)&l_daObjTrnd_Method,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80D1C450-80D1C45C 00009C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D1BFB0-80D1C0A8 000690 00F8+00 1/1 0/0 0/0 .text            create__11daObjTrnd_cFv */
int daObjTrnd_c::create() {
    fopAcM_SetupActor(this, daObjTrnd_c);
    if (Create() == 0) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80D1C0A8-80D1C0F0 000788 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1C3A4-80D1C3A8 000050 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1C3A4, &lit_3908);
#pragma pop

/* 80D1C3A8-80D1C3AC 000054 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3909 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80D1C3A8, &lit_3909);
#pragma pop

/* 80D1C3AC-80D1C3B0 000058 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1C3AC, &lit_3910);
#pragma pop

/* 80D1C0F0-80D1C290 0007D0 01A0+00 1/1 0/0 0/0 .text            execute__11daObjTrnd_cFv */
// regalloc
#ifdef NONMATCHING
int daObjTrnd_c::execute() {
    if (getSwbit() != 0xff && !fopAcM_isSwitch(this, getSwbit())) {
        if (field_0x73c != 0.0f) {
            field_0x73c = 0;
            cutPntWind();
        }
        cLib_addCalc(&mWindPower, 0.3f, 0.2f, 0.1f, 0.001f);
    } else if (field_0x738 > 0) {
        field_0x738--;
        if (field_0x73c == 0.0f) {
            cLib_addCalc(&mWindPower, 0.3f, 0.2f, 0.1f, 0.001f);
        } else {
            cLib_addCalc(&mWindPower, 0.9f, 0.5f, 0.1f, 0.001f);
        }
    } else if (field_0x738 == 0) {
        field_0x738 = 15 * getTimer();
        if (field_0x73c == 0.0f) {
            field_0x73c = scale.y * 3000.0f;
            setPntWind();
        } else {
            field_0x73c = 0.0f;
            cutPntWind();
        }
    }
    dKyw_evt_wind_set(0, home.angle.y);
    dKyw_custom_windpower(mWindPower);
    setCpsInfo();
    setBaseMtx();
    if (field_0x704 != 0.0f) {
        mCps.cM3dGCps::Set(field_0x6e8);
        dComIfG_Ccsp()->Set(&mCps);
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/execute__11daObjTrnd_cFv.s"
}
#pragma pop
#endif

/* 80D1C290-80D1C298 000970 0008+00 1/1 0/0 0/0 .text            draw__11daObjTrnd_cFv */
int daObjTrnd_c::draw() {
    return 1;
}

/* 80D1C298-80D1C2CC 000978 0034+00 1/1 0/0 0/0 .text            _delete__11daObjTrnd_cFv */
int daObjTrnd_c::_delete() {
    dKy_getEnvlight()->mEvtWindSet = 0;
    cutPntWind();
    return 1;
}

/* 80D1C2CC-80D1C2EC 0009AC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Draw__FP11daObjTrnd_c */
static int daObjTrnd_Draw(daObjTrnd_c* i_this) {
    return i_this->draw();
}

/* 80D1C2EC-80D1C30C 0009CC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Execute__FP11daObjTrnd_c
 */
static int daObjTrnd_Execute(daObjTrnd_c* i_this) {
    return i_this->execute();
}

/* 80D1C30C-80D1C32C 0009EC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Delete__FP11daObjTrnd_c
 */
static int daObjTrnd_Delete(daObjTrnd_c* i_this) {
    return i_this->_delete();
}

/* 80D1C32C-80D1C34C 000A0C 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Create__FP11daObjTrnd_c
 */
static int daObjTrnd_Create(daObjTrnd_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80D1C3B0-80D1C3B1 00005C 0001+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1C3B0 = "";
#pragma pop
