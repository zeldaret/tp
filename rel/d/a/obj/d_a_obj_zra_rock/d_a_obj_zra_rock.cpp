/**
 * d_a_obj_zra_rock.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daObjZraRock_c : public dBgS_MoveBgActor {
public:
    /* 80D44CB8 */ void setAttnPos();
    /* 80D44D3C */ void setBaseMtx();
    /* 80D44DCC */ void setEnvTevColor();
    /* 80D44E28 */ void setRoomNo();
    /* 80D44E68 */ int Create();
    /* 80D44FB0 */ int CreateHeap();
    /* 80D450E0 */ int create();
    /* 80D4531C */ int Execute(Mtx**);
    /* 80D45374 */ int Draw();
    /* 80D454AC */ int Delete();

    void setDemoStart() { mDemoStart = 1; }

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ J3DModel* mpModel2;
    /* 0x5B0 */ mDoExt_brkAnm mBrkAnm;
    /* 0x5C8 */ dBgS_ObjAcch mObjAcch;
    /* 0x7A0 */ dBgS_AcchCir mAcchCir;
    /* 0x7E0 */ cBgS_GndChk mGndChk;
    /* 0x81C */ u8 mDemoStart;
};  // Size: 0x820

//
// Forward References:
//

extern "C" void setAttnPos__14daObjZraRock_cFv();
extern "C" void setBaseMtx__14daObjZraRock_cFv();
extern "C" void setEnvTevColor__14daObjZraRock_cFv();
extern "C" void setRoomNo__14daObjZraRock_cFv();
extern "C" void Create__14daObjZraRock_cFv();
extern "C" void CreateHeap__14daObjZraRock_cFv();
extern "C" void create__14daObjZraRock_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Execute__14daObjZraRock_cFPPA3_A4_f();
extern "C" void Draw__14daObjZraRock_cFv();
extern "C" void Delete__14daObjZraRock_cFv();
extern "C" static void daObjZraRock_Draw__FP14daObjZraRock_c();
extern "C" static void daObjZraRock_Execute__FP14daObjZraRock_c();
extern "C" static bool daObjZraRock_IsDelete__FP14daObjZraRock_c();
extern "C" static void daObjZraRock_Delete__FP14daObjZraRock_c();
extern "C" static void daObjZraRock_create__FP10fopAc_ac_c();
extern "C" static void func_80D455AC();
extern "C" static void func_80D455B4();
extern "C" extern char const* const d_a_obj_zra_rock__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D455C4-80D455C8 000000 0004+00 1/1 0/0 0/0 .rodata          @3814 */
SECTION_RODATA static f32 const lit_3814 = 10.0f;
COMPILER_STRIP_GATE(0x80D455C4, &lit_3814);

/* 80D455C8-80D455CC 000004 0004+00 0/1 0/0 0/0 .rodata          @3815 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3815 = 0x43184CCD;
COMPILER_STRIP_GATE(0x80D455C8, &lit_3815);
#pragma pop

/* 80D455CC-80D455D0 000008 0004+00 2/3 0/0 0/0 .rodata          @3816 */
SECTION_RODATA static u8 const lit_3816[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D455CC, &lit_3816);

/* 80D44CB8-80D44D3C 000078 0084+00 1/1 0/0 0/0 .text            setAttnPos__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjZraRock_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/setAttnPos__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D44D3C-80D44DCC 0000FC 0090+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjZraRock_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/setBaseMtx__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D44DCC-80D44E28 00018C 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__14daObjZraRock_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjZraRock_c::setEnvTevColor() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/setEnvTevColor__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D44E28-80D44E68 0001E8 0040+00 1/1 0/0 0/0 .text            setRoomNo__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjZraRock_c::setRoomNo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/setRoomNo__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D44E68-80D44FB0 000228 0148+00 1/0 0/0 0/0 .text            Create__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/Create__14daObjZraRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D455D0-80D455D4 00000C 0004+00 1/1 0/0 0/0 .rodata          @3903 */
SECTION_RODATA static f32 const lit_3903 = 1.0f;
COMPILER_STRIP_GATE(0x80D455D0, &lit_3903);

/* 80D455F0-80D455F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_ZraRock";

/* 80D44FB0-80D450E0 000370 0130+00 1/0 0/0 0/0 .text            CreateHeap__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/CreateHeap__14daObjZraRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D455D4-80D455D4 000010 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D455DE = "H_ZoraRock.dzb";
#pragma pop

/* 80D455F4-80D45614 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjZraRock_Method */
SECTION_DATA static void* l_daObjZraRock_Method[8] = {
    (void*)daObjZraRock_create__FP10fopAc_ac_c,
    (void*)daObjZraRock_Delete__FP14daObjZraRock_c,
    (void*)daObjZraRock_Execute__FP14daObjZraRock_c,
    (void*)daObjZraRock_IsDelete__FP14daObjZraRock_c,
    (void*)daObjZraRock_Draw__FP14daObjZraRock_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D45614-80D45644 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ZraRock */
SECTION_DATA extern void* g_profile_Obj_ZraRock[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00880000, (void*)&g_fpcLf_Method,
    (void*)0x00000820, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02600000, (void*)&l_daObjZraRock_Method,
    (void*)0x00044100, (void*)0x000E0000,
};

/* 80D45644-80D45668 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D455B4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D455AC,
};

/* 80D45668-80D45674 000078 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D45674-80D4569C 000084 0028+00 1/1 0/0 0/0 .data            __vt__14daObjZraRock_c */
SECTION_DATA extern void* __vt__14daObjZraRock_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjZraRock_cFv,
    (void*)Create__14daObjZraRock_cFv,
    (void*)Execute__14daObjZraRock_cFPPA3_A4_f,
    (void*)Draw__14daObjZraRock_cFv,
    (void*)Delete__14daObjZraRock_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D450E0-80D45264 0004A0 0184+00 1/1 0/0 0/0 .text            create__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/func_80D450E0.s"
}
#pragma pop

/* 80D45264-80D452D4 000624 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// dBgS_ObjAcch::~dBgS_ObjAcch()
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80D452D4-80D4531C 000694 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// J3DFrameCtrl::~J3DFrameCtrl()
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80D4531C-80D45374 0006DC 0058+00 1/0 0/0 0/0 .text            Execute__14daObjZraRock_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::Execute(Mtx** i_mtx) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/Execute__14daObjZraRock_cFPPA3_A4_f.s"
}
#pragma pop

/* 80D45374-80D454AC 000734 0138+00 1/0 0/0 0/0 .text            Draw__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/Draw__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D454AC-80D45518 00086C 006C+00 1/0 0/0 0/0 .text            Delete__14daObjZraRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjZraRock_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/Delete__14daObjZraRock_cFv.s"
}
#pragma pop

/* 80D45518-80D45544 0008D8 002C+00 1/0 0/0 0/0 .text daObjZraRock_Draw__FP14daObjZraRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjZraRock_Draw(daObjZraRock_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/daObjZraRock_Draw__FP14daObjZraRock_c.s"
}
#pragma pop

/* 80D45544-80D45564 000904 0020+00 1/0 0/0 0/0 .text daObjZraRock_Execute__FP14daObjZraRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjZraRock_Execute(daObjZraRock_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/daObjZraRock_Execute__FP14daObjZraRock_c.s"
}
#pragma pop

/* 80D45564-80D4556C 000924 0008+00 1/0 0/0 0/0 .text daObjZraRock_IsDelete__FP14daObjZraRock_c */
static int daObjZraRock_IsDelete(daObjZraRock_c* i_this) {
    return 1;
}

/* 80D4556C-80D4558C 00092C 0020+00 1/0 0/0 0/0 .text daObjZraRock_Delete__FP14daObjZraRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjZraRock_Delete(daObjZraRock_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/daObjZraRock_Delete__FP14daObjZraRock_c.s"
}
#pragma pop

/* 80D4558C-80D455AC 00094C 0020+00 1/0 0/0 0/0 .text            daObjZraRock_create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjZraRock_create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/daObjZraRock_create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D455AC-80D455B4 00096C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D455AC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/func_80D455AC.s"
}
#pragma pop

/* 80D455B4-80D455BC 000974 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D455B4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock/func_80D455B4.s"
}
#pragma pop

/* 80D455D4-80D455D4 000010 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
