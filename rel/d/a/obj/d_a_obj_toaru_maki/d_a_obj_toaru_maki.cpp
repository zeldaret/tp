/**
 * d_a_obj_toaru_maki.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki.h"
#include "d/bg/d_bg_s.h"
#include "d/bg/d_bg_w.h"
#include "dol2asm.h"

class daObjToaruMaki_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80D13098 */ daObjToaruMaki_c();
    /* 80D130E0 */ virtual ~daObjToaruMaki_c();
    /* 80D1316C */ int createHeap();
    /* 80D132B4 */ int create();
    /* 80D133C0 */ int Delete();
    /* 80D1343C */ void setModelMtx();
    /* 80D134A0 */ int draw();
    /* 80D13524 */ int execute();

    u32 getNameArg_0() { return fopAcM_GetParamBit(this, 0, 4); }

    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ s32 field_0x578;
    /* 0x57C */ Mtx mMtx;
};  // Size: 0x5AC

//
// Forward References:
//

extern "C" static void daObjToaruMaki_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__16daObjToaruMaki_cFv();
extern "C" void __dt__16daObjToaruMaki_cFv();
extern "C" void createHeap__16daObjToaruMaki_cFv();
extern "C" void create__16daObjToaruMaki_cFv();
extern "C" void Delete__16daObjToaruMaki_cFv();
extern "C" void setModelMtx__16daObjToaruMaki_cFv();
extern "C" void draw__16daObjToaruMaki_cFv();
extern "C" void execute__16daObjToaruMaki_cFv();
extern "C" static void daObjToaruMaki_create__FP16daObjToaruMaki_c();
extern "C" static void daObjToaruMaki_Delete__FP16daObjToaruMaki_c();
extern "C" static void daObjToaruMaki_execute__FP16daObjToaruMaki_c();
extern "C" static void daObjToaruMaki_draw__FP16daObjToaruMaki_c();
extern "C" extern char const* const d_a_obj_toaru_maki__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* 80D13078-80D13098 000078 0020+00 1/1 0/0 0/0 .text daObjToaruMaki_c_createHeap__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjToaruMaki_c_createHeap(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/daObjToaruMaki_c_createHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D13624-80D1362C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {"T_Maki1", "T_Maki2"};

/* 80D1362C-80D1364C -00001 0020+00 1/0 0/0 0/0 .data            daObjToaruMaki_METHODS */
SECTION_DATA static void* daObjToaruMaki_METHODS[8] = {
    (void*)daObjToaruMaki_create__FP16daObjToaruMaki_c,
    (void*)daObjToaruMaki_Delete__FP16daObjToaruMaki_c,
    (void*)daObjToaruMaki_execute__FP16daObjToaruMaki_c,
    (void*)NULL,
    (void*)daObjToaruMaki_draw__FP16daObjToaruMaki_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D1364C-80D1367C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ToaruMaki */
SECTION_DATA extern void* g_profile_Obj_ToaruMaki[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01A90000, (void*)&g_fpcLf_Method,
    (void*)0x000005AC, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02ED0000, (void*)&daObjToaruMaki_METHODS,
    (void*)0x00040000, (void*)0x030E0000,
};

/* 80D1367C-80D13688 000058 000C+00 2/2 0/0 0/0 .data            __vt__16daObjToaruMaki_c */
SECTION_DATA extern void* __vt__16daObjToaruMaki_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObjToaruMaki_cFv,
};

/* 80D13098-80D130E0 000098 0048+00 2/2 0/0 0/0 .text            __ct__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjToaruMaki_c::daObjToaruMaki_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/__ct__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D130E0-80D1316C 0000E0 008C+00 1/0 0/0 0/0 .text            __dt__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjToaruMaki_c::~daObjToaruMaki_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/__dt__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D13604-80D1360C 000000 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const u32 l_bmdIdx[2] = {4, 3};

/* 80D1316C-80D132B4 00016C 0148+00 1/1 0/0 0/0 .text            createHeap__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjToaruMaki_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/createHeap__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D1360C-80D13614 000008 0008+00 1/1 0/0 0/0 .rodata          l_heapSize */
static const u32 l_heapSize[2] = {
    0x2000,
    0x0EB0,
};

/* 80D132B4-80D133C0 0002B4 010C+00 1/1 0/0 0/0 .text            create__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjToaruMaki_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/create__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D133C0-80D1343C 0003C0 007C+00 1/1 0/0 0/0 .text            Delete__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjToaruMaki_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/Delete__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D1343C-80D134A0 00043C 0064+00 2/2 0/0 0/0 .text            setModelMtx__16daObjToaruMaki_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjToaruMaki_c::setModelMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/setModelMtx__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D134A0-80D13524 0004A0 0084+00 1/1 0/0 0/0 .text            draw__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjToaruMaki_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/draw__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D13524-80D13548 000524 0024+00 1/1 0/0 0/0 .text            execute__16daObjToaruMaki_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjToaruMaki_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/execute__16daObjToaruMaki_cFv.s"
}
#pragma pop

/* 80D13548-80D1359C 000548 0054+00 1/0 0/0 0/0 .text daObjToaruMaki_create__FP16daObjToaruMaki_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjToaruMaki_create(daObjToaruMaki_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/daObjToaruMaki_create__FP16daObjToaruMaki_c.s"
}
#pragma pop

/* 80D1359C-80D135BC 00059C 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_Delete__FP16daObjToaruMaki_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjToaruMaki_Delete(daObjToaruMaki_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/daObjToaruMaki_Delete__FP16daObjToaruMaki_c.s"
}
#pragma pop

/* 80D135BC-80D135DC 0005BC 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_execute__FP16daObjToaruMaki_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjToaruMaki_execute(daObjToaruMaki_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/daObjToaruMaki_execute__FP16daObjToaruMaki_c.s"
}
#pragma pop

/* 80D135DC-80D135FC 0005DC 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_draw__FP16daObjToaruMaki_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjToaruMaki_draw(daObjToaruMaki_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_toaru_maki/d_a_obj_toaru_maki/daObjToaruMaki_draw__FP16daObjToaruMaki_c.s"
}
#pragma pop
