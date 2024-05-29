/**
 * @file d_a_obj_sword.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_sword/d_a_obj_sword.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__12daObjSword_cFv();
extern "C" void setBaseMtx__12daObjSword_cFv();
extern "C" void Create__12daObjSword_cFv();
extern "C" void create__12daObjSword_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void actionWait__12daObjSword_cFv();
extern "C" void initActionOrderGetDemo__12daObjSword_cFv();
extern "C" void actionOrderGetDemo__12daObjSword_cFv();
extern "C" void actionGetDemo__12daObjSword_cFv();
extern "C" void execute__12daObjSword_cFv();
extern "C" void draw__12daObjSword_cFv();
extern "C" void _delete__12daObjSword_cFv();
extern "C" static void daObjSword_Draw__FP12daObjSword_c();
extern "C" static void daObjSword_Execute__FP12daObjSword_c();
extern "C" static void daObjSword_Delete__FP12daObjSword_c();
extern "C" static void daObjSword_Create__FP12daObjSword_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80CFDE6C();
extern "C" static void func_80CFDE74();
extern "C" extern char const* const d_a_obj_sword__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void onItem__10dSv_info_cFii();
extern "C" void isItem__10dSv_info_cCFii();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void chkDraw__12daItemBase_cFv();
extern "C" void CheckFieldItemCreateHeap__FP10fopAc_ac_c();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheckOld__16dEvent_manager_cFPCc();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void DeleteBase__12daItemBase_cFPCc();
extern "C" bool clothCreate__12daItemBase_cFv();
extern "C" bool __CreateHeap__12daItemBase_cFv();
extern "C" void DrawBase__12daItemBase_cFv();
extern "C" void RotateYBase__12daItemBase_cFv();
extern "C" void setListStart__12daItemBase_cFv();
extern "C" void settingBeforeDraw__12daItemBase_cFv();
extern "C" void setTevStr__12daItemBase_cFv();
extern "C" void setShadow__12daItemBase_cFv();
extern "C" void animEntry__12daItemBase_cFv();
extern "C" void chkFlag__12daItemBase_cFi();
extern "C" void getTevFrm__12daItemBase_cFv();
extern "C" void getBtpFrm__12daItemBase_cFv();
extern "C" void getShadowSize__12daItemBase_cFv();
extern "C" void getCollisionH__12daItemBase_cFv();
extern "C" void getCollisionR__12daItemBase_cFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" void* field_item_res__10dItem_data[1020];
extern "C" extern void* __vt__12daItemBase_c[17 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 data_80CFE008[4];

//
// Declarations:
//

/* 80CFD558-80CFD594 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/initBaseMtx__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFD594-80CFD600 0000B4 006C+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/setBaseMtx__12daObjSword_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CFDE94-80CFDEA0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CFDEA0-80CFDEB4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CFDEB4-80CFDECC 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};

/* 80CFD600-80CFD67C 000120 007C+00 1/1 0/0 0/0 .text            Create__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/Create__12daObjSword_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CFDECC-80CFDED8 -00001 000C+00 0/1 0/0 0/0 .data            @3900 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3900[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__12daObjSword_cFv,
};
#pragma pop

/* 80CFDED8-80CFDEE4 -00001 000C+00 0/1 0/0 0/0 .data            @3901 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3901[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderGetDemo__12daObjSword_cFv,
};
#pragma pop

/* 80CFDEE4-80CFDEF0 -00001 000C+00 0/1 0/0 0/0 .data            @3902 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3902[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionGetDemo__12daObjSword_cFv,
};
#pragma pop

/* 80CFDEF0-80CFDF14 00005C 0024+00 0/1 0/0 0/0 .data            l_demoFunc$3899 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoFunc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CFDF14-80CFDF34 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSword_Method */
static actor_method_class l_daObjSword_Method = {
    (process_method_func)daObjSword_Create__FP12daObjSword_c,
    (process_method_func)daObjSword_Delete__FP12daObjSword_c,
    (process_method_func)daObjSword_Execute__FP12daObjSword_c,
    0,
    (process_method_func)daObjSword_Draw__FP12daObjSword_c,
};

/* 80CFDF34-80CFDF64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Sword */
extern actor_process_profile_definition g_profile_Obj_Sword = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Sword,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjSword_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  586,                    // mPriority
  &l_daObjSword_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CFDF64-80CFDF70 0000D0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CFDF70-80CFDF7C 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CFDF7C-80CFDF88 0000E8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CFDF88-80CFDFCC 0000F4 0044+00 1/1 0/0 0/0 .data            __vt__12daObjSword_c */
SECTION_DATA extern void* __vt__12daObjSword_c[17] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)DrawBase__12daItemBase_cFv,
    (void*)setListStart__12daItemBase_cFv,
    (void*)settingBeforeDraw__12daItemBase_cFv,
    (void*)setTevStr__12daItemBase_cFv,
    (void*)setShadow__12daItemBase_cFv,
    (void*)animEntry__12daItemBase_cFv,
    (void*)RotateYBase__12daItemBase_cFv,
    (void*)clothCreate__12daItemBase_cFv,
    (void*)__CreateHeap__12daItemBase_cFv,
    (void*)chkFlag__12daItemBase_cFi,
    (void*)getTevFrm__12daItemBase_cFv,
    (void*)getBtpFrm__12daItemBase_cFv,
    (void*)getShadowSize__12daItemBase_cFv,
    (void*)getCollisionH__12daItemBase_cFv,
    (void*)getCollisionR__12daItemBase_cFv,
};

/* 80CFDFCC-80CFDFD8 000138 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CFDFD8-80CFDFE4 000144 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CFDFE4-80CFE008 000150 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CFDE74,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CFDE6C,
};

/* 80CFD67C-80CFD848 00019C 01CC+00 1/1 0/0 0/0 .text            create__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/func_80CFD67C.s"
}
#pragma pop

/* 80CFD848-80CFD890 000368 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80CFD890-80CFD8D8 0003B0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80CFD8D8-80CFD934 0003F8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80CFD934-80CFD9A4 000454 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80CFD9A4-80CFDA14 0004C4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80CFDA14-80CFDA8C 000534 0078+00 1/0 0/0 0/0 .text            actionWait__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::actionWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/actionWait__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDA8C-80CFDB04 0005AC 0078+00 1/1 0/0 0/0 .text initActionOrderGetDemo__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::initActionOrderGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/initActionOrderGetDemo__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDB04-80CFDB80 000624 007C+00 1/0 0/0 0/0 .text actionOrderGetDemo__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::actionOrderGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/actionOrderGetDemo__12daObjSword_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CFDE84-80CFDE84 000000 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFDE84 = "DEFAULT_GETITEM";
#pragma pop

/* 80CFDB80-80CFDC1C 0006A0 009C+00 1/0 0/0 0/0 .text            actionGetDemo__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::actionGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/actionGetDemo__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDC1C-80CFDD18 00073C 00FC+00 2/2 0/0 0/0 .text            execute__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/execute__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDD18-80CFDD6C 000838 0054+00 1/1 0/0 0/0 .text            draw__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/draw__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDD6C-80CFDDA4 00088C 0038+00 1/1 0/0 0/0 .text            _delete__12daObjSword_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSword_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/_delete__12daObjSword_cFv.s"
}
#pragma pop

/* 80CFDDA4-80CFDDC4 0008C4 0020+00 1/0 0/0 0/0 .text            daObjSword_Draw__FP12daObjSword_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSword_Draw(daObjSword_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/daObjSword_Draw__FP12daObjSword_c.s"
}
#pragma pop

/* 80CFDDC4-80CFDDE4 0008E4 0020+00 1/0 0/0 0/0 .text daObjSword_Execute__FP12daObjSword_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSword_Execute(daObjSword_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/daObjSword_Execute__FP12daObjSword_c.s"
}
#pragma pop

/* 80CFDDE4-80CFDE04 000904 0020+00 1/0 0/0 0/0 .text            daObjSword_Delete__FP12daObjSword_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSword_Delete(daObjSword_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/daObjSword_Delete__FP12daObjSword_c.s"
}
#pragma pop

/* 80CFDE04-80CFDE24 000924 0020+00 1/0 0/0 0/0 .text            daObjSword_Create__FP12daObjSword_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSword_Create(daObjSword_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/daObjSword_Create__FP12daObjSword_c.s"
}
#pragma pop

/* 80CFDE24-80CFDE6C 000944 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80CFDE6C-80CFDE74 00098C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CFDE6C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/func_80CFDE6C.s"
}
#pragma pop

/* 80CFDE74-80CFDE7C 000994 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CFDE74() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sword/d_a_obj_sword/func_80CFDE74.s"
}
#pragma pop

/* 80CFDE84-80CFDE84 000000 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
