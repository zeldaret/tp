/**
 * @file d_a_obj_firepillar.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__14daObjFPillar_cFv();
extern "C" void setBaseMtx__14daObjFPillar_cFv();
extern "C" void Create__14daObjFPillar_cFv();
extern "C" void create__14daObjFPillar_cFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void execute__14daObjFPillar_cFv();
extern "C" void action__14daObjFPillar_cFv();
extern "C" void actionOffInit__14daObjFPillar_cFv();
extern "C" void actionOff__14daObjFPillar_cFv();
extern "C" void actionOnWaitInit__14daObjFPillar_cFv();
extern "C" void actionOnWait__14daObjFPillar_cFv();
extern "C" void actionOnInit__14daObjFPillar_cFv();
extern "C" void actionOn__14daObjFPillar_cFv();
extern "C" static void drawCylinder__FP4cXyzP4cXyzP5csXyz();
extern "C" void draw__14daObjFPillar_cFv();
extern "C" bool _delete__14daObjFPillar_cFv();
extern "C" static void daObjFPillar_Draw__FP14daObjFPillar_c();
extern "C" static void daObjFPillar_Execute__FP14daObjFPillar_c();
extern "C" static void daObjFPillar_Delete__FP14daObjFPillar_c();
extern "C" static void daObjFPillar_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80BE9A88();
extern "C" static void func_80BE9A90();

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC9cM3dGCpsS();
extern "C" void cLib_chaseF__FPfff();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 data_80BE9C30[4];

//
// Declarations:
//

/* 80BE9118-80BE9138 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/initBaseMtx__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE9138-80BE9190 000098 0058+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/setBaseMtx__14daObjFPillar_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE9ABC-80BE9AC8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BE9AC8-80BE9ADC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80BE9ADC-80BE9AF4 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC1, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};

/* 80BE9AF4-80BE9B40 000038 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x1, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 100.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};

/* 80BE9190-80BE9230 0000F0 00A0+00 1/1 0/0 0/0 .text            Create__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/Create__14daObjFPillar_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE9B40-80BE9B4C -00001 000C+00 0/1 0/0 0/0 .data            @3789 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3789[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOff__14daObjFPillar_cFv,
};
#pragma pop

/* 80BE9B4C-80BE9B58 -00001 000C+00 0/1 0/0 0/0 .data            @3790 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOnWait__14daObjFPillar_cFv,
};
#pragma pop

/* 80BE9B58-80BE9B64 -00001 000C+00 0/1 0/0 0/0 .data            @3791 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOn__14daObjFPillar_cFv,
};
#pragma pop

/* 80BE9B64-80BE9B88 0000A8 0024+00 0/1 0/0 0/0 .data            l_func$3788 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BE9B88-80BE9BA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjFPillar_Method */
static actor_method_class l_daObjFPillar_Method = {
    (process_method_func)daObjFPillar_Create__FP10fopAc_ac_c,
    (process_method_func)daObjFPillar_Delete__FP14daObjFPillar_c,
    (process_method_func)daObjFPillar_Execute__FP14daObjFPillar_c,
    0,
    (process_method_func)daObjFPillar_Draw__FP14daObjFPillar_c,
};

/* 80BE9BA8-80BE9BD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_FirePillar */
extern actor_process_profile_definition g_profile_Obj_FirePillar = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_FirePillar,    // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjFPillar_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  446,                    // mPriority
  &l_daObjFPillar_Method, // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BE9BD8-80BE9BE4 00011C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BE9BE4-80BE9BF0 000128 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BE9BF0-80BE9BFC 000134 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BE9BFC-80BE9C08 000140 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BE9C08-80BE9C2C 00014C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE9A90,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE9A88,
};

/* 80BE9230-80BE9360 000190 0130+00 1/1 0/0 0/0 .text            create__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/func_80BE9230.s"
}
#pragma pop

/* 80BE9360-80BE93A8 0002C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BE93A8-80BE9404 000308 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80BE9404-80BE9474 000364 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80BE9474-80BE94E4 0003D4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE9AA0-80BE9AA4 000000 0004+00 3/3 0/0 0/0 .rodata          @3780 */
SECTION_RODATA static u8 const lit_3780[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BE9AA0, &lit_3780);

/* 80BE9AA4-80BE9AA8 000004 0004+00 0/1 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = 1.0f;
COMPILER_STRIP_GATE(0x80BE9AA4, &lit_3781);
#pragma pop

/* 80BE9AA8-80BE9AAC 000008 0004+00 0/1 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 100.0f;
COMPILER_STRIP_GATE(0x80BE9AA8, &lit_3782);
#pragma pop

/* 80BE9AAC-80BE9AB0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 50.0f;
COMPILER_STRIP_GATE(0x80BE9AAC, &lit_3783);
#pragma pop

/* 80BE9AB0-80BE9AB4 000010 0004+00 3/4 0/0 0/0 .rodata          @3784 */
SECTION_RODATA static f32 const lit_3784 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BE9AB0, &lit_3784);

/* 80BE94E4-80BE9610 000444 012C+00 1/1 0/0 0/0 .text            execute__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/execute__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE9610-80BE96B4 000570 00A4+00 1/1 0/0 0/0 .text            action__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/action__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE96B4-80BE96E0 000614 002C+00 2/2 0/0 0/0 .text            actionOffInit__14daObjFPillar_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOffInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOffInit__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE96E0-80BE9784 000640 00A4+00 1/0 0/0 0/0 .text            actionOff__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOff() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOff__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE9784-80BE97B8 0006E4 0034+00 1/1 0/0 0/0 .text actionOnWaitInit__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOnWaitInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOnWaitInit__14daObjFPillar_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE9AB4-80BE9AB8 000014 0004+00 1/1 0/0 0/0 .rodata          @3853 */
SECTION_RODATA static f32 const lit_3853 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80BE9AB4, &lit_3853);

/* 80BE97B8-80BE986C 000718 00B4+00 1/0 0/0 0/0 .text            actionOnWait__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOnWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOnWait__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE986C-80BE98A0 0007CC 0034+00 1/1 0/0 0/0 .text            actionOnInit__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOnInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOnInit__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE98A0-80BE9980 000800 00E0+00 1/0 0/0 0/0 .text            actionOn__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::actionOn() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/actionOn__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE9980-80BE9984 0008E0 0004+00 1/1 0/0 0/0 .text            drawCylinder__FP4cXyzP4cXyzP5csXyz
 */
static void drawCylinder(cXyz* param_0, cXyz* param_1, csXyz* param_2) {
    /* empty function */
}

/* 80BE9984-80BE99B8 0008E4 0034+00 1/1 0/0 0/0 .text            draw__14daObjFPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFPillar_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/draw__14daObjFPillar_cFv.s"
}
#pragma pop

/* 80BE99B8-80BE99C0 000918 0008+00 1/1 0/0 0/0 .text            _delete__14daObjFPillar_cFv */
bool daObjFPillar_c::_delete() {
    return true;
}

/* 80BE99C0-80BE99E0 000920 0020+00 1/0 0/0 0/0 .text daObjFPillar_Draw__FP14daObjFPillar_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFPillar_Draw(daObjFPillar_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/daObjFPillar_Draw__FP14daObjFPillar_c.s"
}
#pragma pop

/* 80BE99E0-80BE9A00 000940 0020+00 1/0 0/0 0/0 .text daObjFPillar_Execute__FP14daObjFPillar_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFPillar_Execute(daObjFPillar_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/daObjFPillar_Execute__FP14daObjFPillar_c.s"
}
#pragma pop

/* 80BE9A00-80BE9A20 000960 0020+00 1/0 0/0 0/0 .text daObjFPillar_Delete__FP14daObjFPillar_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFPillar_Delete(daObjFPillar_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/daObjFPillar_Delete__FP14daObjFPillar_c.s"
}
#pragma pop

/* 80BE9A20-80BE9A40 000980 0020+00 1/0 0/0 0/0 .text            daObjFPillar_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFPillar_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/daObjFPillar_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BE9A40-80BE9A88 0009A0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80BE9A88-80BE9A90 0009E8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BE9A88() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/func_80BE9A88.s"
}
#pragma pop

/* 80BE9A90-80BE9A98 0009F0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BE9A90() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_firepillar/d_a_obj_firepillar/func_80BE9A90.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE9AB8-80BE9ABC 000018 0004+00 0/0 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3895 = 0xFF000060;
COMPILER_STRIP_GATE(0x80BE9AB8, &lit_3895);
#pragma pop
