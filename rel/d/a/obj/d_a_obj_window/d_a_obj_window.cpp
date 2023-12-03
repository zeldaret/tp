/**
 * d_a_obj_window.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_window/d_a_obj_window.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daObjWindow_c : public dBgS_MoveBgActor {
public:
    /* 80D38758 */ void initBaseMtx();
    /* 80D387B8 */ void setBaseMtx();
    /* 80D38840 */ int Create();
    /* 80D388F0 */ int CreateHeap();
    /* 80D38A68 */ int create1st();
    /* 80D38B04 */ int Execute(Mtx**);
    /* 80D38F28 */ int Draw();
    /* 80D39000 */ int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ mDoExt_bckAnm* mpBckAnm;
    /* 0x5B0 */ u8 mIdx;
    /* 0x5B4 */ dCcD_Stts mStts;
    /* 0x5F0 */ dCcD_Cyl mCyl;
};  // Size: 0x72C

//
// Forward References:
//

extern "C" void initBaseMtx__13daObjWindow_cFv();
extern "C" void setBaseMtx__13daObjWindow_cFv();
extern "C" void Create__13daObjWindow_cFv();
extern "C" void CreateHeap__13daObjWindow_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__13daObjWindow_cFv();
extern "C" void Execute__13daObjWindow_cFPPA3_A4_f();
extern "C" void Draw__13daObjWindow_cFv();
extern "C" void Delete__13daObjWindow_cFv();
extern "C" static void daObjWindow_create1st__FP13daObjWindow_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static void daObjWindow_MoveBGDelete__FP13daObjWindow_c();
extern "C" static void daObjWindow_MoveBGExecute__FP13daObjWindow_c();
extern "C" static void daObjWindow_MoveBGDraw__FP13daObjWindow_c();
extern "C" extern char const* const d_a_obj_window__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
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
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80D38758-80D387B8 000078 0060+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWindow_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/initBaseMtx__13daObjWindow_cFv.s"
}
#pragma pop

/* 80D387B8-80D38840 0000D8 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWindow_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/setBaseMtx__13daObjWindow_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3922C-80D39238 000000 000C+00 3/3 0/0 0/0 .rodata          l_bck */
SECTION_RODATA static u8 const l_bck[12] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80D3922C, &l_bck);

/* 80D39238-80D3923C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3661 = -250.0f;
COMPILER_STRIP_GATE(0x80D39238, &lit_3661);
#pragma pop

/* 80D3923C-80D39240 000010 0004+00 0/1 0/0 0/0 .rodata          @3662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3662 = 600.0f;
COMPILER_STRIP_GATE(0x80D3923C, &lit_3662);
#pragma pop

/* 80D39240-80D39244 000014 0004+00 0/1 0/0 0/0 .rodata          @3663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3663 = 250.0f;
COMPILER_STRIP_GATE(0x80D39240, &lit_3663);
#pragma pop

/* 80D39244-80D39248 000018 0004+00 0/2 0/0 0/0 .rodata          @3664 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3664[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D39244, &lit_3664);
#pragma pop

/* 80D39284-80D39288 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "J_KazeD";

/* 80D39288-80D392CC 000004 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        40.0f,               // mRadius
        400.0f               // mHeight
    }                        // mCyl
};

/* 80D38840-80D388F0 000160 00B0+00 1/0 0/0 0/0 .text            Create__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/Create__13daObjWindow_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D39248-80D3924C 00001C 0004+00 1/2 0/0 0/0 .rodata          @3696 */
SECTION_RODATA static f32 const lit_3696 = 1.0f;
COMPILER_STRIP_GATE(0x80D39248, &lit_3696);

/* 80D392CC-80D392EC -00001 0020+00 1/0 0/0 0/0 .data            daObjWindow_METHODS */
SECTION_DATA static void* daObjWindow_METHODS[8] = {
    (void*)daObjWindow_create1st__FP13daObjWindow_c,
    (void*)daObjWindow_MoveBGDelete__FP13daObjWindow_c,
    (void*)daObjWindow_MoveBGExecute__FP13daObjWindow_c,
    (void*)NULL,
    (void*)daObjWindow_MoveBGDraw__FP13daObjWindow_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D392EC-80D3931C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Window */
SECTION_DATA extern void* g_profile_Obj_Window[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00780000, (void*)&g_fpcLf_Method,
    (void*)0x0000072C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01EB0000, (void*)&daObjWindow_METHODS,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80D3931C-80D39328 000098 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D39328-80D39334 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D39334-80D39340 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D388F0-80D38A20 000210 0130+00 1/0 0/0 0/0 .text            CreateHeap__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/CreateHeap__13daObjWindow_cFv.s"
}
#pragma pop

/* 80D38A20-80D38A68 000340 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// J3DFrameCtrl::~J3DFrameCtrl()
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80D38A68-80D38B04 000388 009C+00 1/1 0/0 0/0 .text            create1st__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/create1st__13daObjWindow_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3924C-80D39250 000020 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 164.0f;
COMPILER_STRIP_GATE(0x80D3924C, &lit_3821);
#pragma pop

/* 80D39250-80D39254 000024 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 757.0f;
COMPILER_STRIP_GATE(0x80D39250, &lit_3822);
#pragma pop

/* 80D39254-80D39258 000028 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = -1.0f;
COMPILER_STRIP_GATE(0x80D39254, &lit_3823);
#pragma pop

/* 80D39258-80D3925C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 125.0f;
COMPILER_STRIP_GATE(0x80D39258, &lit_3824);
#pragma pop

/* 80D3925C-80D39260 000030 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 264.0f;
COMPILER_STRIP_GATE(0x80D3925C, &lit_3825);
#pragma pop

/* 80D39260-80D39264 000034 0004+00 0/1 0/0 0/0 .rodata          @3826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3826 = 364.0f;
COMPILER_STRIP_GATE(0x80D39260, &lit_3826);
#pragma pop

/* 80D39264-80D39268 000038 0004+00 0/1 0/0 0/0 .rodata          @3827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3827 = 464.0f;
COMPILER_STRIP_GATE(0x80D39264, &lit_3827);
#pragma pop

/* 80D39268-80D3926C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3828 = 544.0f;
COMPILER_STRIP_GATE(0x80D39268, &lit_3828);
#pragma pop

/* 80D3926C-80D39270 000040 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = 714.0f;
COMPILER_STRIP_GATE(0x80D3926C, &lit_3829);
#pragma pop

/* 80D39270-80D39274 000044 0004+00 0/1 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3830 = 829.0f;
COMPILER_STRIP_GATE(0x80D39270, &lit_3830);
#pragma pop

/* 80D39274-80D39278 000048 0004+00 0/1 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3831 = -50.0f;
COMPILER_STRIP_GATE(0x80D39274, &lit_3831);
#pragma pop

/* 80D39278-80D3927C 00004C 0004+00 0/1 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3832 = 80.0f;
COMPILER_STRIP_GATE(0x80D39278, &lit_3832);
#pragma pop

/* 80D38B04-80D38F28 000424 0424+00 1/0 0/0 0/0 .text            Execute__13daObjWindow_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::Execute(Mtx** i_mtx) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/Execute__13daObjWindow_cFPPA3_A4_f.s"
}
#pragma pop

/* 80D38F28-80D39000 000848 00D8+00 1/0 0/0 0/0 .text            Draw__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/Draw__13daObjWindow_cFv.s"
}
#pragma pop

/* 80D39000-80D39034 000920 0034+00 1/0 0/0 0/0 .text            Delete__13daObjWindow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWindow_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/Delete__13daObjWindow_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D39340-80D39368 0000BC 0028+00 1/1 0/0 0/0 .data            __vt__13daObjWindow_c */
SECTION_DATA extern void* __vt__13daObjWindow_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjWindow_cFv,
    (void*)Create__13daObjWindow_cFv,
    (void*)Execute__13daObjWindow_cFPPA3_A4_f,
    (void*)Draw__13daObjWindow_cFv,
    (void*)Delete__13daObjWindow_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D39034-80D39128 000954 00F4+00 1/0 0/0 0/0 .text daObjWindow_create1st__FP13daObjWindow_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjWindow_create1st(daObjWindow_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/daObjWindow_create1st__FP13daObjWindow_c.s"
}
#pragma pop

/* 80D39128-80D39170 000A48 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80D39170-80D391B8 000A90 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D391B8-80D391D8 000AD8 0020+00 1/0 0/0 0/0 .text daObjWindow_MoveBGDelete__FP13daObjWindow_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjWindow_MoveBGDelete(daObjWindow_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/daObjWindow_MoveBGDelete__FP13daObjWindow_c.s"
}
#pragma pop

/* 80D391D8-80D391F8 000AF8 0020+00 1/0 0/0 0/0 .text daObjWindow_MoveBGExecute__FP13daObjWindow_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjWindow_MoveBGExecute(daObjWindow_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/daObjWindow_MoveBGExecute__FP13daObjWindow_c.s"
}
#pragma pop

/* 80D391F8-80D39224 000B18 002C+00 1/0 0/0 0/0 .text daObjWindow_MoveBGDraw__FP13daObjWindow_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjWindow_MoveBGDraw(daObjWindow_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_window/d_a_obj_window/daObjWindow_MoveBGDraw__FP13daObjWindow_c.s"
}
#pragma pop
