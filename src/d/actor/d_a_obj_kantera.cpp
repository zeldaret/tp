/**
 * @file d_a_obj_kantera.cpp
 * 
*/

#include "d/actor/d_a_obj_kantera.h"
#include "d/d_com_inf_game.h"
#include "d/d_item_data.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

//
// Forward References:
//

extern "C" static void Reflect__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void initBaseMtx__15daItemKantera_cFv();
extern "C" void setBaseMtx__15daItemKantera_cFv();
extern "C" void Create__15daItemKantera_cFv();
extern "C" bool __CreateHeap__15daItemKantera_cFv();
extern "C" void create__15daItemKantera_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void bg_check__15daItemKantera_cFv();
extern "C" void actionInit__15daItemKantera_cFv();
extern "C" void actionWaitInit__15daItemKantera_cFv();
extern "C" void actionWait__15daItemKantera_cFv();
extern "C" void initActionOrderGetDemo__15daItemKantera_cFv();
extern "C" void actionOrderGetDemo__15daItemKantera_cFv();
extern "C" void actionGetDemo__15daItemKantera_cFv();
extern "C" void execute__15daItemKantera_cFv();
extern "C" void draw__15daItemKantera_cFv();
extern "C" void _delete__15daItemKantera_cFv();
extern "C" static void daItemKantera_Draw__FP15daItemKantera_c();
extern "C" static void daItemKantera_Execute__FP15daItemKantera_c();
extern "C" static void daItemKantera_Delete__FP15daItemKantera_c();
extern "C" static void daItemKantera_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80C39630();
extern "C" static void func_80C39638();
extern "C" extern char const* const d_a_obj_kantera__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void chkDraw__12daItemBase_cFv();
extern "C" void CheckFieldItemCreateHeap__FP10fopAc_ac_c();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheckOld__16dEvent_manager_cFPCc();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void checkItemGet__FUci();
extern "C" void DeleteBase__12daItemBase_cFPCc();
extern "C" bool clothCreate__12daItemBase_cFv();
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
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" void* field_item_res__10dItem_data[1020];
extern "C" u8 item_info__10dItem_data[1020 + 4 /* padding */];
extern "C" extern void* __vt__12daItemBase_c[17 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 data_80C39860[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C39648-80C3968C 000000 0044+00 4/4 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xffffffff, 0x11}, 0x59}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        20.0f,               // mRadius
        40.0f                // mHeight
    }                        // mCyl
};

/* 80C3968C-80C39690 000044 0004+00 0/3 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3855[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C3968C, &lit_3855);
#pragma pop

/* 80C39690-80C39698 000048 0008+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3856[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C39690, &lit_3856);
#pragma pop

/* 80C39698-80C396A0 000050 0008+00 0/1 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3857[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C39698, &lit_3857);
#pragma pop

/* 80C396A0-80C396A8 000058 0008+00 0/1 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3858[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C396A0, &lit_3858);
#pragma pop

/* 80C396DC-80C396E8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C396E8-80C396FC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C396FC-80C39708 -00001 000C+00 0/1 0/0 0/0 .data            @4184 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionInit__15daItemKantera_cFv,
};
#pragma pop

/* 80C39708-80C39714 -00001 000C+00 0/1 0/0 0/0 .data            @4185 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4185[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__15daItemKantera_cFv,
};
#pragma pop

/* 80C39714-80C39720 -00001 000C+00 0/1 0/0 0/0 .data            @4186 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderGetDemo__15daItemKantera_cFv,
};
#pragma pop

/* 80C39720-80C3972C -00001 000C+00 0/1 0/0 0/0 .data            @4187 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4187[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionGetDemo__15daItemKantera_cFv,
};
#pragma pop

/* 80C3972C-80C3975C 000050 0030+00 0/1 0/0 0/0 .data            l_demoFunc$4183 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoFunc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C3975C-80C3977C -00001 0020+00 1/0 0/0 0/0 .data            l_daItemKantera_Method */
static actor_method_class l_daItemKantera_Method = {
    (process_method_func)daItemKantera_Create__FP10fopAc_ac_c,
    (process_method_func)daItemKantera_Delete__FP15daItemKantera_c,
    (process_method_func)daItemKantera_Execute__FP15daItemKantera_c,
    0,
    (process_method_func)daItemKantera_Draw__FP15daItemKantera_c,
};

/* 80C3977C-80C397AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kantera */
extern actor_process_profile_definition g_profile_Obj_Kantera = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Kantera,        // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daItemKantera_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  238,                     // mPriority
  &l_daItemKantera_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C397AC-80C397B8 0000D0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C397B8-80C397C4 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C397C4-80C397D0 0000E8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C397D0-80C397DC 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C397DC-80C397E8 000100 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C397E8-80C3980C 00010C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C39638,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C39630,
};

/* 80C3980C-80C39850 000130 0044+00 1/1 0/0 0/0 .data            __vt__15daItemKantera_c */
SECTION_DATA extern void* __vt__15daItemKantera_c[17] = {
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
    (void*)__CreateHeap__15daItemKantera_cFv,
    (void*)chkFlag__12daItemBase_cFi,
    (void*)getTevFrm__12daItemBase_cFv,
    (void*)getBtpFrm__12daItemBase_cFv,
    (void*)getShadowSize__12daItemBase_cFv,
    (void*)getCollisionH__12daItemBase_cFv,
    (void*)getCollisionR__12daItemBase_cFv,
};

/* 80C39850-80C3985C 000174 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C38678-80C38974 000078 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* i_xyz, cBgS_PolyInfo const& param_1, f32 param_2) {
    // NONMATCHING
}

/* 80C38974-80C389BC 000374 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80C389BC-80C389F8 0003BC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__15daItemKantera_cFv */
#ifdef NONMATCHING
void daItemKantera_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}
#else
void daItemKantera_c::initBaseMtx() {
    // NONMATCHING
}
#endif

/* 80C389F8-80C38A64 0003F8 006C+00 2/2 0/0 0/0 .text            setBaseMtx__15daItemKantera_cFv */
#ifdef NONMATCHING
void daItemKantera_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);
}
#else
void daItemKantera_c::setBaseMtx() {
    // NONMATCHING
}
#endif

/* ############################################################################################## */
/* 80C396A8-80C396AC 000060 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 30.0f;
COMPILER_STRIP_GATE(0x80C396A8, &lit_3910);
#pragma pop

/* 80C396AC-80C396B0 000064 0004+00 0/1 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = -6.0f;
COMPILER_STRIP_GATE(0x80C396AC, &lit_3911);
#pragma pop

/* 80C396B0-80C396B8 000068 0008+00 0/1 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C396B0, &lit_3913);
#pragma pop

/* 80C38A64-80C38BA8 000464 0144+00 1/1 0/0 0/0 .text            Create__15daItemKantera_cFv */
#ifdef NONMATCHING
int daItemKantera_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), NULL, NULL);
    mColStatus.Init(0, 0xff, this);
    mCollider.Set(l_cyl_src);
    mCollider.SetStts(&mColStatus);
    mCollider.SetR(dItem_data::getR(m_itemNo));
    mCollider.SetH(dItem_data::getH(m_itemNo));
    fopAcM_SetCullSize(this, 0x10);
    actionWaitInit();
    fopAcM_SetGravity(this, -6.0f);
    fopAcM_OnCarryType(this, fopAcM_CARRY_ITEM);
    return 1;
}
#else
int daItemKantera_c::Create() {
    // NONMATCHING
}
#endif

/* 80C38BA8-80C38BB0 0005A8 0008+00 1/0 0/0 0/0 .text            __CreateHeap__15daItemKantera_cFv
 */
int daItemKantera_c::__CreateHeap() {
    return 1;
}

/* 80C38BB0-80C38DAC 0005B0 01FC+00 1/1 0/0 0/0 .text            create__15daItemKantera_cFv */
#ifdef NONMATCHING
// vtable
int daItemKantera_c::create() {
    fopAcM_SetupActor(this, daItemKantera_c);

    if (field_0x937 == 0) {
        field_0x938 = home.angle.x;
        field_0x93a = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0x937 = 1;
    }
    m_itemNo = 0x48;
    if (checkItemGet(m_itemNo, 1)) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckFieldItemCreateHeap, 0x1940)) {
            return cPhs_ERROR_e;
        }
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}
#else
int daItemKantera_c::create() {
    // NONMATCHING
}
#endif

/* 80C38DAC-80C38DF4 0007AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C38DF4-80C38E3C 0007F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C38E3C-80C38E98 00083C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C38E98-80C38F08 000898 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir()
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C38F08-80C38F78 000908 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch()
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C396B8-80C396BC 000070 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = 5.0f;
COMPILER_STRIP_GATE(0x80C396B8, &lit_4076);
#pragma pop

/* 80C396BC-80C396C0 000074 0004+00 0/2 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 1.0f;
COMPILER_STRIP_GATE(0x80C396BC, &lit_4077);
#pragma pop

/* 80C396C0-80C396C4 000078 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C396C0, &lit_4078);
#pragma pop

/* 80C396C4-80C396C8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 3.0f;
COMPILER_STRIP_GATE(0x80C396C4, &lit_4079);
#pragma pop

/* 80C38F78-80C39068 000978 00F0+00 1/1 0/0 0/0 .text            bg_check__15daItemKantera_cFv */
#ifdef NONMATCHING
// lfs not correct
void daItemKantera_c::bg_check() {
    if (mAcch.ChkWallHit()) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }
        current.angle.y = cM_atan2s(speed.x, speed.z);
    }
    if (mAcch.ChkGroundLanding()) {
        cXyz l_speed = speed;
        if (speedF > 5.0f) {
            Reflect(&l_speed, mAcchCir, 0.7f);
        }
        speed.y = -field_0x93c.y * 0.7f;
        if (speed.y < 3.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
        }
        field_0x936++;
    }
}
#else
void daItemKantera_c::bg_check() {
    // NONMATCHING
}
#endif

/* 80C39068-80C390A0 000A68 0038+00 1/0 0/0 0/0 .text            actionInit__15daItemKantera_cFv */
#ifdef NONMATCHING
int daItemKantera_c::actionInit() {
    show();
    actionWaitInit();
    return 1;
}
#else
int daItemKantera_c::actionInit() {
    // NONMATCHING
}
#endif

/* 80C390A0-80C3911C 000AA0 007C+00 2/2 0/0 0/0 .text            actionWaitInit__15daItemKantera_cFv
 */
#ifdef NONMATCHING
int daItemKantera_c::actionWaitInit() {
    mCollider.OffTgSPrmBit(1);
    mCollider.OffCoSPrmBit(1);
    cLib_offBit<u32>(attention_info.flags, 0x10);
    attention_info.distances[fopAc_attn_SPEAK_e] = 16;
    attention_info.position = current.pos;
    show();
    setStatus(1);
    return 1;
}
#else
int daItemKantera_c::actionWaitInit() {
    // NONMATCHING
}
#endif

/* ############################################################################################## */
/* 80C396C8-80C396CC 000080 0004+00 0/1 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C396C8, &lit_4145);
#pragma pop

/* 80C3911C-80C39234 000B1C 0118+00 1/0 0/0 0/0 .text            actionWait__15daItemKantera_cFv */
int daItemKantera_c::actionWait() {
    // NONMATCHING
}

/* 80C39234-80C392D0 000C34 009C+00 1/1 0/0 0/0 .text initActionOrderGetDemo__15daItemKantera_cFv
 */
#ifdef NONMATCHING
int daItemKantera_c::initActionOrderGetDemo() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCollider.OffTgSPrmBit(1);
    mCollider.OffCoSPrmBit(1);
    hide();
    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.i_onCondition(8);
    field_0x92c = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this),
                                                NULL, NULL);
    setStatus(2);
    return 1;
}
#else
int daItemKantera_c::initActionOrderGetDemo() {
    // NONMATCHING
}
#endif

/* 80C392D0-80C3934C 000CD0 007C+00 1/0 0/0 0/0 .text actionOrderGetDemo__15daItemKantera_cFv */
#ifdef NONMATCHING
int daItemKantera_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(3);
        if (field_0x92c != -1) {
            dComIfGp_event_setItemPartnerId(field_0x92c);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.i_onCondition(8);
    }
    return 1;
}
#else
int daItemKantera_c::actionOrderGetDemo() {
    // NONMATCHING
}
#endif

/* ############################################################################################## */
/* 80C396CC-80C396CC 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C396CC = "DEFAULT_GETITEM";
#pragma pop

/* 80C3934C-80C393B0 000D4C 0064+00 1/0 0/0 0/0 .text            actionGetDemo__15daItemKantera_cFv
 */
#ifdef NONMATCHING
int daItemKantera_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGp_event_reset();
        fopAcM_delete(this);
    }
    return 1;
}
#else
int daItemKantera_c::actionGetDemo() {
    // NONMATCHING
}
#endif

/* 80C393B0-80C394DC 000DB0 012C+00 1/1 0/0 0/0 .text            execute__15daItemKantera_cFv */
int daItemKantera_c::execute() {
    // NONMATCHING
}

/* 80C394DC-80C39530 000EDC 0054+00 1/1 0/0 0/0 .text            draw__15daItemKantera_cFv */
#ifdef NONMATCHING
int daItemKantera_c::draw() {
    if (!chkDraw()) {
        return 1;
    }
    DrawBase();
    return 1;
}
#else
int daItemKantera_c::draw() {
    // NONMATCHING
}
#endif

/* 80C39530-80C39568 000F30 0038+00 1/1 0/0 0/0 .text            _delete__15daItemKantera_cFv */
#ifdef NONMATCHING
int daItemKantera_c::_delete() {
    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}
#else
int daItemKantera_c::_delete() {
    // NONMATCHING
}
#endif

/* 80C39568-80C39588 000F68 0020+00 1/0 0/0 0/0 .text daItemKantera_Draw__FP15daItemKantera_c */
#ifdef NONMATCHING
static int daItemKantera_Draw(daItemKantera_c* i_this) {
    return i_this->draw();
}
#else
static int daItemKantera_Draw(daItemKantera_c* i_this) {
    // NONMATCHING
}
#endif

/* 80C39588-80C395A8 000F88 0020+00 1/0 0/0 0/0 .text daItemKantera_Execute__FP15daItemKantera_c
 */
#ifdef NONMATCHING
static int daItemKantera_Execute(daItemKantera_c* i_this) {
    return i_this->execute();
}
#else
static int daItemKantera_Execute(daItemKantera_c* i_this) {
    // NONMATCHING
}
#endif

/* 80C395A8-80C395C8 000FA8 0020+00 1/0 0/0 0/0 .text daItemKantera_Delete__FP15daItemKantera_c */
#ifdef NONMATCHING
static int daItemKantera_Delete(daItemKantera_c* i_this) {
    return i_this->_delete();
}
#else
static int daItemKantera_Delete(daItemKantera_c* i_this) {
    // NONMATCHING
}
#endif

/* 80C395C8-80C395E8 000FC8 0020+00 1/0 0/0 0/0 .text daItemKantera_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
static int daItemKantera_Create(fopAc_ac_c* i_this) {
    return static_cast<daItemKantera_c*>(i_this)->create();
}
#else
static int daItemKantera_Create(fopAc_ac_c* i_this) {
    // NONMATCHING
}
#endif

/* 80C395E8-80C39630 000FE8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C39630-80C39638 001030 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C39630() {
    // NONMATCHING
}

/* 80C39638-80C39640 001038 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C39638() {
    // NONMATCHING
}

/* 80C396CC-80C396CC 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */