/**
 * @file d_a_obj_master_sword.cpp
 * 
*/

#include "d/actor/d_a_obj_master_sword.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initWait__18daObjMasterSword_cFv();
extern "C" void executeWait__18daObjMasterSword_cFv();
extern "C" void createHeapCallBack__18daObjMasterSword_cFP10fopAc_ac_c();
extern "C" void CreateHeap__18daObjMasterSword_cFv();
extern "C" static void daObjMasterSword_Create__FP10fopAc_ac_c();
extern "C" void create__18daObjMasterSword_cFv();
extern "C" void create_init__18daObjMasterSword_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjMasterSword_Delete__FP18daObjMasterSword_c();
extern "C" void __dt__18daObjMasterSword_cFv();
extern "C" static void daObjMasterSword_Execute__FP18daObjMasterSword_c();
extern "C" static void daObjMasterSword_Draw__FP18daObjMasterSword_c();
extern "C" void draw__18daObjMasterSword_cFv();
extern "C" static bool daObjMasterSword_IsDelete__FP18daObjMasterSword_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_master_sword_cpp();
extern "C" static void func_80C91924();
extern "C" static void func_80C9192C();
extern "C" f32 const mAttr__18daObjMasterSword_c;
extern "C" extern char const* const d_a_obj_master_sword__stringBase0;
extern "C" u8 ActionTable__18daObjMasterSword_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_setSelectEquipSword__FUc();
extern "C" void onFirstBit__21dSv_player_get_item_cFUc();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getActionBtnB__12dAttention_cFv();
extern "C" void ActionTarget__12dAttention_cFl();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dMeter2Info_setCloth__FUcb();
extern "C" void dMeter2Info_setSword__FUcb();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const tempBitLabels__20dSv_event_tmp_flag_c[370 + 2 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 data_80C91AD0[4];

//
// Declarations:
//

/* 80C90AF8-80C90B50 000078 0058+00 1/0 0/0 0/0 .text            initWait__18daObjMasterSword_cFv */
void daObjMasterSword_c::initWait() {
    cLib_onBit<u32>(attention_info.flags, 0x10);
    current.pos = home.pos;
    current.angle = home.angle;
    shape_angle = home.angle;
}

/* 80C90B50-80C90C50 0000D0 0100+00 1/0 0/0 0/0 .text            executeWait__18daObjMasterSword_cFv
 */
void daObjMasterSword_c::executeWait() {
    if (daPy_getPlayerActorClass()->checkPriActorOwn(this)) {
        for (int i = 0; i < dComIfGp_getAttention().GetActionCount(); i++) {
            if (dComIfGp_getAttention().ActionTarget(i) == this) {
                if (dComIfGp_getAttention().getActionBtnB() != NULL &&
                    dComIfGp_getAttention().getActionBtnB()->mType == 4)
                {
                    dComIfGp_setDoStatusForce(8, 0);
                }
            }
        }
    }

    if (fopAcM_checkCarryNow(this)) {
        dMeter2Info_setCloth(WEAR_KOKIRI, false);
        fopAcM_orderMapToolEvent(this, getEventID(), 0xFF, 0xFFFF, 1, 0);
    }
}

/* 80C90C50-80C90C70 0001D0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__18daObjMasterSword_cFP10fopAc_ac_c       */
int daObjMasterSword_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObjMasterSword_c*>(i_this)->CreateHeap();
}

/* ############################################################################################## */
/* 80C91940-80C91944 000000 0004+00 2/2 0/0 0/0 .rodata          mAttr__18daObjMasterSword_c */
SECTION_RODATA f32 const daObjMasterSword_c::mAttr = 1.0f;
COMPILER_STRIP_GATE(0x80C91940, &daObjMasterSword_c::mAttr);

/* 80C91944-80C91950 000004 000C+00 0/1 0/0 0/0 .rodata          @3710 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3710[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C91944, &lit_3710);
#pragma pop

/* 80C91950-80C91954 000010 0004+00 1/2 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static f32 const lit_3759 = 1.0f;
COMPILER_STRIP_GATE(0x80C91950, &lit_3759);

/* 80C91970-80C91970 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C91970 = "MstrSword";
#pragma pop

/* 80C9197C-80C91988 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C91988-80C9199C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C9199C-80C919A0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static char* l_arcName = "MstrSword";

/* 80C90C70-80C90D98 0001F0 0128+00 1/1 0/0 0/0 .text            CreateHeap__18daObjMasterSword_cFv
 */
int daObjMasterSword_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 11);
    if (!mBtk.init(modelData, pbtk, TRUE, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1)) {
        return 0;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 8);
    if (!mBrk.init(modelData, pbrk, TRUE, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 80C90D98-80C90DB8 000318 0020+00 1/0 0/0 0/0 .text daObjMasterSword_Create__FP10fopAc_ac_c */
static int daObjMasterSword_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjMasterSword_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80C919A0-80C919AC -00001 000C+00 0/1 0/0 0/0 .data            @3655 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3655[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initWait__18daObjMasterSword_cFv,
};
#pragma pop

/* 80C919AC-80C919B8 -00001 000C+00 0/1 0/0 0/0 .data            @3656 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3656[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeWait__18daObjMasterSword_cFv,
};
#pragma pop

/* 80C919B8-80C919D0 00003C 0018+00 1/2 0/0 0/0 .data            ActionTable__18daObjMasterSword_c
 */
SECTION_DATA u8 daObjMasterSword_c::ActionTable[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* static actionFunc daObjMasterSword_c::ActionTable[] = {
    &daObjMasterSword_c::initWait, &daObjMasterSword_c::executeWait,
}; */

/* 80C919D0-80C91A14 000054 0044+00 1/1 0/0 0/0 .data
 * ccCylSrc$localstatic3$initCollision__18daObjMasterSword_cFv  */
SECTION_DATA static u8 data_80C919D0[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00, 0x43, 0x34, 0x00, 0x00,
};

/* 80C91A14-80C91A34 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMasterSword_Method */
static actor_method_class l_daObjMasterSword_Method = {
    (process_method_func)daObjMasterSword_Create__FP10fopAc_ac_c,
    (process_method_func)daObjMasterSword_Delete__FP18daObjMasterSword_c,
    (process_method_func)daObjMasterSword_Execute__FP18daObjMasterSword_c,
    (process_method_func)daObjMasterSword_IsDelete__FP18daObjMasterSword_c,
    (process_method_func)daObjMasterSword_Draw__FP18daObjMasterSword_c,
};

/* 80C91A34-80C91A64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MasterSword */
extern actor_process_profile_definition g_profile_Obj_MasterSword = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_Obj_MasterSword,       // mProcName
  &g_fpcLf_Method.mBase,      // sub_method
  sizeof(daObjMasterSword_c), // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  562,                        // mPriority
  &l_daObjMasterSword_Method, // sub_method
  0x00040000,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80C91A64-80C91A70 0000E8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C91A70-80C91A7C 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C91A7C-80C91A88 000100 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C91A88-80C91AAC 00010C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C9192C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C91924,
};

/* 80C91AAC-80C91AB8 000130 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C91AB8-80C91AC4 00013C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C91AC4-80C91AD0 000148 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C90DB8-80C90F6C 000338 01B4+00 1/1 0/0 0/0 .text            create__18daObjMasterSword_cFv */
int daObjMasterSword_c::create() {
    fopAcM_SetupActor(this, daObjMasterSword_c);

    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[getFlagNo()])) {
        return cPhs_ERROR_e;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daObjMasterSword_c::createHeapCallBack, 0x1830)) {
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase;
}


/* ############################################################################################## */
/* 80C91954-80C91958 000014 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 100.0f;
COMPILER_STRIP_GATE(0x80C91954, &lit_3861);
#pragma pop

/* 80C91958-80C9195C 000018 0004+00 0/2 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 10.0f;
COMPILER_STRIP_GATE(0x80C91958, &lit_3862);
#pragma pop

/* 80C9195C-80C91960 00001C 0004+00 0/1 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 30.0f;
COMPILER_STRIP_GATE(0x80C9195C, &lit_3863);
#pragma pop

void daObjMasterSword_c::initCollision() {
    static dCcD_SrcCyl ccCylSrc = {
        {
            {0, {{0, 0, 0}, {0, 0}, 0x79}},  // mObj
            {dCcD_SE_NONE, 0, 0, 0, 0},      // mGObjAt
            {dCcD_SE_NONE, 0, 0, 0, 4},      // mGObjTg
            {0},                             // mGObjCo
        },                                   // mObjInf
        {
            {current.pos.x, current.pos.y, current.pos.z},  // mCenter
            18.0f,                                          // mRadius
            180.0f                                          // mHeight
        }                                                   // mCyl
    };

    mCcStts.Init(0xFF, 0xFF, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mCcStts);
}

void daObjMasterSword_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    Vec scale = {attr(), attr(), attr()};
    mpModel->setBaseScale(scale);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

void daObjMasterSword_c::callInit() {
    (this->**mActionFunc)();
}

void daObjMasterSword_c::setAction(daObjMasterSword_c::Mode_e i_mode) {
    mMode = i_mode;
    // mActionFunc = &ActionTable[mMode];
    callInit();
}

/* 80C90F6C-80C9120C 0004EC 02A0+00 1/1 0/0 0/0 .text            create_init__18daObjMasterSword_cFv
 */
// matches, but weak function emission is hella weird. cant be linked til its fixed
#ifdef NONMATCHING
void daObjMasterSword_c::create_init() {
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    initCollision();
    initBaseMtx();

    fopAcM_OnCarryType(this, fopAcM_CARRY_UNK_30);
    cLib_onBit<u32>(attention_info.flags, 0x10);
    attention_info.distances[fopAc_attn_SPEAK_e] = 74;
    attention_info.position = current.pos;
    attention_info.position.y += 100.0f;
    eyePos = attention_info.position;

    dBgS_AcchCir cir_check;
    dBgS_ObjAcch obj_check;

    cir_check.SetWall(10.0f, 30.0f);
    obj_check.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &cir_check,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
    obj_check.CrrPos(dComIfG_Bgsp());

    field_0x738 = obj_check.GetGroundH();
    field_0x728 = obj_check.m_gnd;

    setAction(MODE_0_e);
}
#else
void daObjMasterSword_c::create_init() {
    // NONMATCHING
}
#endif

/* 80C9120C-80C9127C 00078C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C9127C-80C912EC 0007FC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C912EC-80C91334 00086C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C91334-80C9137C 0008B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C9137C-80C913D8 0008FC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C913D8-80C91420 000958 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C91420-80C91448 0009A0 0028+00 1/0 0/0 0/0 .text
 * daObjMasterSword_Delete__FP18daObjMasterSword_c              */
static int daObjMasterSword_Delete(daObjMasterSword_c* i_this) {
    i_this->~daObjMasterSword_c();
    return 1;
}

/* 80C91448-80C915E8 0009C8 01A0+00 1/1 0/0 0/0 .text            __dt__18daObjMasterSword_cFv */
// vtables issues
#ifdef NONMATCHING
daObjMasterSword_c::~daObjMasterSword_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}
#else
daObjMasterSword_c::~daObjMasterSword_c() {
    // NONMATCHING
}
#endif

/* ############################################################################################## */
/* 80C91960-80C91968 000020 0008+00 1/1 0/0 0/0 .rodata          @4030 */
SECTION_RODATA static u8 const lit_4030[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C91960, &lit_4030);

void daObjMasterSword_c::callExecute() {
    (this->*mActionFunc[1])();
}

void daObjMasterSword_c::setCollision() {
    dComIfG_Ccsp()->Set(&mCyl);
}

int daObjMasterSword_c::execute() {
    callExecute();
    setCollision();

    mBtk.play();
    mBrk.play();

    if (dComIfGs_isTmpBit(dSv_event_tmp_flag_c::tempBitLabels[73])) {
        dComIfGs_onItemFirstBit(MASTER_SWORD);
        dMeter2Info_setSword(MASTER_SWORD, false);
        dComIfGs_setSelectEquipSword(MASTER_SWORD);

        dComIfGp_setItemLifeCount(dComIfGs_getMaxLife(), 0);
        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[getFlagNo()]);
        fopAcM_delete(this);
    }

    return 1;
}

/* 80C915E8-80C916F4 000B68 010C+00 1/0 0/0 0/0 .text
 * daObjMasterSword_Execute__FP18daObjMasterSword_c             */
static int daObjMasterSword_Execute(daObjMasterSword_c* i_this) {
    return i_this->execute();
}

/* 80C916F4-80C91714 000C74 0020+00 1/0 0/0 0/0 .text
 * daObjMasterSword_Draw__FP18daObjMasterSword_c                */
static int daObjMasterSword_Draw(daObjMasterSword_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80C91968-80C9196C 000028 0004+00 0/1 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 50.0f;
COMPILER_STRIP_GATE(0x80C91968, &lit_4091);
#pragma pop

/* 80C9196C-80C91970 00002C 0004+00 0/1 0/0 0/0 .rodata          @4092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4092 = 200.0f;
COMPILER_STRIP_GATE(0x80C9196C, &lit_4092);
#pragma pop

/* 80C91714-80C91894 000C94 0180+00 1/1 0/0 0/0 .text            draw__18daObjMasterSword_cFv */
int daObjMasterSword_c::draw() {
    if (dComIfGs_isTmpBit(dSv_event_tmp_flag_c::tempBitLabels[73])) {
        return 1;
    }

    J3DModelData* modelData = mpModel->getModelData();
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mBtk.entry(modelData);
    mBrk.entry(modelData);
    mDoExt_modelUpdateDL(mpModel);

    mBtk.remove(modelData);
    mBrk.remove(modelData);
    dComIfGd_setList();

    cXyz sp8 = cXyz(current.pos.x, current.pos.y + 50.0f, current.pos.z);
    mShadowKey =
        dComIfGd_setShadow(mShadowKey, 1, mpModel, &sp8, 200.0f, 10.0f, current.pos.y, field_0x738,
                           field_0x728, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    return 1;
}


/* 80C91894-80C9189C 000E14 0008+00 1/0 0/0 0/0 .text
 * daObjMasterSword_IsDelete__FP18daObjMasterSword_c            */
static int daObjMasterSword_IsDelete(daObjMasterSword_c* param_0) {
    return 1;
}

/* 80C9189C-80C918E4 000E1C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C918E4-80C91924 000E64 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_master_sword_cpp */
void __sinit_d_a_obj_master_sword_cpp(){// NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C918E4, __sinit_d_a_obj_master_sword_cpp);
#pragma pop

/* 80C91924-80C9192C 000EA4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C91924() {
    // NONMATCHING
}

/* 80C9192C-80C91934 000EAC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C9192C() {
    // NONMATCHING
}

/* 80C91970-80C91970 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */