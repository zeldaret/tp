/**
 * d_a_obj_tornado.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daObjTrnd_c : public fopAc_ac_c {
public:
    /* 80D1B998 */ void setPntWind();
    /* 80D1BA0C */ void cutPntWind();
    /* 80D1BA30 */ void movePntWind();
    /* 80D1BC40 */ void setCpsInfo();
    /* 80D1BE04 */ void initBaseMtx();
    /* 80D1BE24 */ void setBaseMtx();
    /* 80D1BE6C */ int Create();
    /* 80D1BFB0 */ int create();
    /* 80D1C0F0 */ int execute();
    /* 80D1C290 */ int draw();
    /* 80D1C298 */ int _delete();

    u32 checkSE() { return fopAcM_GetParamBit(this, 8, 1); }
    u32 getTimer() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 0x18, 8); }

    /* 0x568 */ dCcD_Stts mStts;
    /* 0x5A4 */ dCcD_Cps mCps;
    /* 0x6E8 */ Vec field_0x6e8;
    /* 0x6F4 */ f32 field_0x6f4;
    /* 0x6F8 */ f32 field_0x6f8;
    /* 0x6FC */ f32 field_0x6fc;
    /* 0x700 */ f32 field_0x700;
    /* 0x704 */ f32 field_0x704;
    /* 0x708 */ Mtx field_0x708;
    /* 0x738 */ s16 field_0x738;
    /* 0x73C */ f32 field_0x73c;
    /* 0x740 */ WIND_INFLUENCE mWindInfluence;
    /* 0x76C */ f32 field_0x76c;
};  // Size: 0x770

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::setPntWind() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/setPntWind__11daObjTrnd_cFv.s"
}
#pragma pop

/* 80D1BA0C-80D1BA30 0000EC 0024+00 2/2 0/0 0/0 .text            cutPntWind__11daObjTrnd_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::cutPntWind() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/cutPntWind__11daObjTrnd_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::movePntWind() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/movePntWind__11daObjTrnd_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::setCpsInfo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/setCpsInfo__11daObjTrnd_cFv.s"
}
#pragma pop

/* 80D1BE04-80D1BE24 0004E4 0020+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjTrnd_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/initBaseMtx__11daObjTrnd_cFv.s"
}
#pragma pop

/* 80D1BE24-80D1BE6C 000504 0048+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjTrnd_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTrnd_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/setBaseMtx__11daObjTrnd_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/Create__11daObjTrnd_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/func_80D1BFB0.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/execute__11daObjTrnd_cFv.s"
}
#pragma pop

/* 80D1C290-80D1C298 000970 0008+00 1/1 0/0 0/0 .text            draw__11daObjTrnd_cFv */
int daObjTrnd_c::draw() {
    return 1;
}

/* 80D1C298-80D1C2CC 000978 0034+00 1/1 0/0 0/0 .text            _delete__11daObjTrnd_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTrnd_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/_delete__11daObjTrnd_cFv.s"
}
#pragma pop

/* 80D1C2CC-80D1C2EC 0009AC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Draw__FP11daObjTrnd_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjTrnd_Draw(daObjTrnd_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/daObjTrnd_Draw__FP11daObjTrnd_c.s"
}
#pragma pop

/* 80D1C2EC-80D1C30C 0009CC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Execute__FP11daObjTrnd_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjTrnd_Execute(daObjTrnd_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/daObjTrnd_Execute__FP11daObjTrnd_c.s"
}
#pragma pop

/* 80D1C30C-80D1C32C 0009EC 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Delete__FP11daObjTrnd_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjTrnd_Delete(daObjTrnd_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/daObjTrnd_Delete__FP11daObjTrnd_c.s"
}
#pragma pop

/* 80D1C32C-80D1C34C 000A0C 0020+00 1/0 0/0 0/0 .text            daObjTrnd_Create__FP11daObjTrnd_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjTrnd_Create(daObjTrnd_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tornado/d_a_obj_tornado/daObjTrnd_Create__FP11daObjTrnd_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1C3B0-80D1C3B1 00005C 0001+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1C3B0 = "";
#pragma pop
