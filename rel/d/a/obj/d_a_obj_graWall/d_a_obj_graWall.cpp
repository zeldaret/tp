/**
 * d_a_obj_graWall.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daObjGraWall_c : public fopAc_ac_c {
public:
    /* 80C10BF8 */ int Create();
    /* 80C10DD8 */ int Execute();
    /* 80C10E78 */ int Delete();
    /* 80C10E80 */ void col_init();
    /* 80C10ED4 */ void col_set();

    /* 0x568 */ dCcD_Stts mStts;
    /* 0x5A4 */ dCcD_Cyl mCyl;
    /* 0x6E0 */ u8 field_0x6e0;
};  // Size: 0x6E4

//
// Forward References:
//

extern "C" void Create__14daObjGraWall_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void Execute__14daObjGraWall_cFv();
extern "C" bool Delete__14daObjGraWall_cFv();
extern "C" void col_init__14daObjGraWall_cFv();
extern "C" void col_set__14daObjGraWall_cFv();
extern "C" static void daObjGraWall_Execute__FP14daObjGraWall_c();
extern "C" static bool daObjGraWall_IsDelete__FP14daObjGraWall_c();
extern "C" static void daObjGraWall_Delete__FP14daObjGraWall_c();
extern "C" static void daObjGraWall_create__FP10fopAc_ac_c();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __dl__FPv();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C10FFC-80C1101C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGraWall_Method */
SECTION_DATA static void* l_daObjGraWall_Method[8] = {
    (void*)daObjGraWall_create__FP10fopAc_ac_c,
    (void*)daObjGraWall_Delete__FP14daObjGraWall_c,
    (void*)daObjGraWall_Execute__FP14daObjGraWall_c,
    (void*)daObjGraWall_IsDelete__FP14daObjGraWall_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80C1101C-80C1104C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_GRA_WALL */
SECTION_DATA extern void* g_profile_GRA_WALL[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x008B0000, (void*)&g_fpcLf_Method,
    (void*)0x000006E4, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02630000, (void*)&l_daObjGraWall_Method,
    (void*)0x00040000, (void*)0x000E0000,
};

/* 80C1104C-80C11058 000050 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C11058-80C11064 00005C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C10BF8-80C10D48 000078 0150+00 1/1 0/0 0/0 .text            Create__14daObjGraWall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjGraWall_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/Create__14daObjGraWall_cFv.s"
}
#pragma pop

/* 80C10D48-80C10D90 0001C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80C10D90-80C10DD8 000210 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80C10DD8-80C10E78 000258 00A0+00 1/1 0/0 0/0 .text            Execute__14daObjGraWall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjGraWall_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/Execute__14daObjGraWall_cFv.s"
}
#pragma pop

/* 80C10E78-80C10E80 0002F8 0008+00 1/1 0/0 0/0 .text            Delete__14daObjGraWall_cFv */
int daObjGraWall_c::Delete() {
    return 1;
}

/* ############################################################################################## */
/* 80C10FB0-80C10FB8 000000 0008+00 1/1 0/0 0/0 .rodata          l_DATA */
SECTION_RODATA static u8 const l_DATA[8] = {
    0x43, 0x34, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C10FB0, &l_DATA);

/* 80C10FB8-80C10FFC 000008 0044+00 1/1 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x19}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8},          // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},          // mGObjTg
        {0x0},                                       // mGObjCo
    },                                               // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }                        // mCyl
};

/* 80C10E80-80C10ED4 000300 0054+00 1/1 0/0 0/0 .text            col_init__14daObjGraWall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjGraWall_c::col_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/col_init__14daObjGraWall_cFv.s"
}
#pragma pop

/* 80C10ED4-80C10F40 000354 006C+00 1/1 0/0 0/0 .text            col_set__14daObjGraWall_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjGraWall_c::col_set() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/col_set__14daObjGraWall_cFv.s"
}
#pragma pop

/* 80C10F40-80C10F60 0003C0 0020+00 1/0 0/0 0/0 .text daObjGraWall_Execute__FP14daObjGraWall_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjGraWall_Execute(daObjGraWall_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/daObjGraWall_Execute__FP14daObjGraWall_c.s"
}
#pragma pop

/* 80C10F60-80C10F68 0003E0 0008+00 1/0 0/0 0/0 .text daObjGraWall_IsDelete__FP14daObjGraWall_c */
static int daObjGraWall_IsDelete(daObjGraWall_c* i_this) {
    return 1;
}

/* 80C10F68-80C10F88 0003E8 0020+00 1/0 0/0 0/0 .text daObjGraWall_Delete__FP14daObjGraWall_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjGraWall_Delete(daObjGraWall_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/daObjGraWall_Delete__FP14daObjGraWall_c.s"
}
#pragma pop

/* 80C10F88-80C10FA8 000408 0020+00 1/0 0/0 0/0 .text            daObjGraWall_create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjGraWall_create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_graWall/d_a_obj_graWall/daObjGraWall_create__FP10fopAc_ac_c.s"
}
#pragma pop
