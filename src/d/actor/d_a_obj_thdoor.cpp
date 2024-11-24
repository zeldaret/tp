/**
 * @file d_a_obj_thdoor.cpp
 * 
*/

#include "d/actor/d_a_obj_thdoor.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void checkPlayerPos__FP13daObjThDoor_c();
extern "C" static void
doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void initBaseMtx__13daObjThDoor_cFv();
extern "C" void setBaseMtx__13daObjThDoor_cFv();
extern "C" void Create__13daObjThDoor_cFv();
extern "C" void CreateHeap__13daObjThDoor_cFv();
extern "C" void create1st__13daObjThDoor_cFv();
extern "C" void Execute__13daObjThDoor_cFPPA3_A4_f();
extern "C" void set_cyl__13daObjThDoor_cFv();
extern "C" void action__13daObjThDoor_cFv();
extern "C" void event_proc_call__13daObjThDoor_cFv();
extern "C" void actionWait__13daObjThDoor_cFv();
extern "C" void actionOrderEvent__13daObjThDoor_cFv();
extern "C" void actionEvent__13daObjThDoor_cFv();
extern "C" void actionDead__13daObjThDoor_cFv();
extern "C" void demoProc__13daObjThDoor_cFv();
extern "C" void checkArea__13daObjThDoor_cFv();
extern "C" void Draw__13daObjThDoor_cFv();
extern "C" void Delete__13daObjThDoor_cFv();
extern "C" static void daObjThDoor_create1st__FP13daObjThDoor_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjThDoor_MoveBGDelete__FP13daObjThDoor_c();
extern "C" static void daObjThDoor_MoveBGExecute__FP13daObjThDoor_c();
extern "C" static void daObjThDoor_MoveBGDraw__FP13daObjThDoor_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80D0E5D4(void* _this, u8*);
extern "C" extern char const* const d_a_obj_thdoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80D0E7E0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D0E5F8-80D0E5FC 000000 0004+00 4/4 0/0 0/0 .rodata          @3663 */
SECTION_RODATA static u8 const lit_3663[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D0E5F8, &lit_3663);

/* 80D0D4F8-80D0D59C 000078 00A4+00 1/1 0/0 0/0 .text            checkPlayerPos__FP13daObjThDoor_c
 */
static void checkPlayerPos(daObjThDoor_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E5FC-80D0E600 000004 0004+00 1/1 0/0 0/0 .rodata          @3681 */
SECTION_RODATA static f32 const lit_3681 = 3.0f;
COMPILER_STRIP_GATE(0x80D0E5FC, &lit_3681);

/* 80D0D59C-80D0D618 00011C 007C+00 1/1 0/0 0/0 .text
 * doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void doorCoHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80D0D618-80D0D654 000198 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjThDoor_cFv */
void daObjThDoor_c::initBaseMtx() {
    // NONMATCHING
}

/* 80D0D654-80D0D6B8 0001D4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjThDoor_cFv */
void daObjThDoor_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E620-80D0E620 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D0E620 = "V_CTDoor";
SECTION_DEAD static char const* const stringBase_80D0E629 = "CHASE_AWAY_WOLF";
SECTION_DEAD static char const* const stringBase_80D0E639 = "thdoor";
#pragma pop

/* 80D0E658-80D0E664 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D0E664-80D0E678 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D0E678-80D0E67C -00001 0004+00 3/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_thdoor__stringBase0;

/* 80D0E67C-80D0E680 -00001 0004+00 0/1 0/0 0/0 .data            l_evName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evName = (void*)(((char*)&d_a_obj_thdoor__stringBase0) + 0x9);
#pragma pop

/* 80D0E680-80D0E684 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)(((char*)&d_a_obj_thdoor__stringBase0) + 0x19);

/* 80D0E684-80D0E6C8 00002C 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        37.5f, // mRadius
        250.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80D0D6B8-80D0D7F8 000238 0140+00 1/0 0/0 0/0 .text            Create__13daObjThDoor_cFv */
void daObjThDoor_c::Create() {
    // NONMATCHING
}

/* 80D0D7F8-80D0D868 000378 0070+00 1/0 0/0 0/0 .text            CreateHeap__13daObjThDoor_cFv */
void daObjThDoor_c::CreateHeap() {
    // NONMATCHING
}

/* 80D0D868-80D0D8E8 0003E8 0080+00 1/1 0/0 0/0 .text            create1st__13daObjThDoor_cFv */
void daObjThDoor_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E600-80D0E604 000008 0004+00 1/2 0/0 0/0 .rodata          @3765 */
SECTION_RODATA static f32 const lit_3765 = 1.0f;
COMPILER_STRIP_GATE(0x80D0E600, &lit_3765);

/* 80D0E604-80D0E608 00000C 0004+00 1/2 0/0 0/0 .rodata          @3766 */
SECTION_RODATA static f32 const lit_3766 = -1.0f;
COMPILER_STRIP_GATE(0x80D0E604, &lit_3766);

/* 80D0D8E8-80D0D9B4 000468 00CC+00 1/0 0/0 0/0 .text            Execute__13daObjThDoor_cFPPA3_A4_f
 */
void daObjThDoor_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E608-80D0E60C 000010 0004+00 0/1 0/0 0/0 .rodata          @3807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3807 = 37.5f;
COMPILER_STRIP_GATE(0x80D0E608, &lit_3807);
#pragma pop

/* 80D0E60C-80D0E610 000014 0004+00 0/1 0/0 0/0 .rodata          @3808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3808 = 112.5f;
COMPILER_STRIP_GATE(0x80D0E60C, &lit_3808);
#pragma pop

/* 80D0D9B4-80D0DAC8 000534 0114+00 1/1 0/0 0/0 .text            set_cyl__13daObjThDoor_cFv */
void daObjThDoor_c::set_cyl() {
    // NONMATCHING
}

/* 80D0DAC8-80D0DB90 000648 00C8+00 1/1 0/0 0/0 .text            action__13daObjThDoor_cFv */
void daObjThDoor_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E6C8-80D0E6D4 -00001 000C+00 0/1 0/0 0/0 .data            @3829 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__13daObjThDoor_cFv,
};
#pragma pop

/* 80D0E6D4-80D0E6E0 -00001 000C+00 0/1 0/0 0/0 .data            @3830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__13daObjThDoor_cFv,
};
#pragma pop

/* 80D0E6E0-80D0E6EC -00001 000C+00 0/1 0/0 0/0 .data            @3831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__13daObjThDoor_cFv,
};
#pragma pop

/* 80D0E6EC-80D0E6F8 -00001 000C+00 0/1 0/0 0/0 .data            @3832 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3832[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__13daObjThDoor_cFv,
};
#pragma pop

/* 80D0E6F8-80D0E728 0000A0 0030+00 0/1 0/0 0/0 .data            l_func$3828 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D0DB90-80D0DC4C 000710 00BC+00 1/1 0/0 0/0 .text            event_proc_call__13daObjThDoor_cFv
 */
void daObjThDoor_c::event_proc_call() {
    // NONMATCHING
}

/* 80D0DC4C-80D0DCC8 0007CC 007C+00 1/0 0/0 0/0 .text            actionWait__13daObjThDoor_cFv */
void daObjThDoor_c::actionWait() {
    // NONMATCHING
}

/* 80D0DCC8-80D0DD90 000848 00C8+00 1/0 0/0 0/0 .text            actionOrderEvent__13daObjThDoor_cFv
 */
void daObjThDoor_c::actionOrderEvent() {
    // NONMATCHING
}

/* 80D0DD90-80D0DE30 000910 00A0+00 1/0 0/0 0/0 .text            actionEvent__13daObjThDoor_cFv */
void daObjThDoor_c::actionEvent() {
    // NONMATCHING
}

/* 80D0DE30-80D0DE34 0009B0 0004+00 1/0 0/0 0/0 .text            actionDead__13daObjThDoor_cFv */
void daObjThDoor_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D0E620-80D0E620 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D0E640 = "WAIT";
SECTION_DEAD static char const* const stringBase_80D0E645 = "MSG";
SECTION_DEAD static char const* const stringBase_80D0E649 = "CLOSE";
SECTION_DEAD static char const* const stringBase_80D0E64F = "Timer";
#pragma pop

/* 80D0E728-80D0E734 -00001 000C+00 1/1 0/0 0/0 .data            action_table$3895 */
SECTION_DATA static void* action_table[3] = {
    (void*)(((char*)&d_a_obj_thdoor__stringBase0) + 0x20),
    (void*)(((char*)&d_a_obj_thdoor__stringBase0) + 0x25),
    (void*)(((char*)&d_a_obj_thdoor__stringBase0) + 0x29),
};

/* 80D0DE34-80D0E06C 0009B4 0238+00 2/2 0/0 0/0 .text            demoProc__13daObjThDoor_cFv */
void daObjThDoor_c::demoProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E610-80D0E614 000018 0004+00 0/1 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = -50.0f;
COMPILER_STRIP_GATE(0x80D0E610, &lit_3988);
#pragma pop

/* 80D0E614-80D0E618 00001C 0004+00 0/1 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3989 = -300.0f;
COMPILER_STRIP_GATE(0x80D0E614, &lit_3989);
#pragma pop

/* 80D0E618-80D0E61C 000020 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = -100.0f;
COMPILER_STRIP_GATE(0x80D0E618, &lit_3990);
#pragma pop

/* 80D0E61C-80D0E620 000024 0004+00 0/1 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 100.0f;
COMPILER_STRIP_GATE(0x80D0E61C, &lit_3991);
#pragma pop

/* 80D0E06C-80D0E150 000BEC 00E4+00 1/1 0/0 0/0 .text            checkArea__13daObjThDoor_cFv */
void daObjThDoor_c::checkArea() {
    // NONMATCHING
}

/* 80D0E150-80D0E1F4 000CD0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjThDoor_cFv */
void daObjThDoor_c::Draw() {
    // NONMATCHING
}

/* 80D0E1F4-80D0E228 000D74 0034+00 1/0 0/0 0/0 .text            Delete__13daObjThDoor_cFv */
void daObjThDoor_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0E734-80D0E754 -00001 0020+00 1/0 0/0 0/0 .data            daObjThDoor_METHODS */
static actor_method_class daObjThDoor_METHODS = {
    (process_method_func)daObjThDoor_create1st__FP13daObjThDoor_c,
    (process_method_func)daObjThDoor_MoveBGDelete__FP13daObjThDoor_c,
    (process_method_func)daObjThDoor_MoveBGExecute__FP13daObjThDoor_c,
    0,
    (process_method_func)daObjThDoor_MoveBGDraw__FP13daObjThDoor_c,
};

/* 80D0E754-80D0E784 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TDoor */
extern actor_process_profile_definition g_profile_Obj_TDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TDoor,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjThDoor_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  560,                    // mPriority
  &daObjThDoor_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D0E784-80D0E790 00012C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D0E790-80D0E79C 000138 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D0E79C-80D0E7A8 000144 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D0E7A8-80D0E7B4 000150 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D0E7B4-80D0E7DC 00015C 0028+00 1/1 0/0 0/0 .data            __vt__13daObjThDoor_c */
SECTION_DATA extern void* __vt__13daObjThDoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjThDoor_cFv,
    (void*)Create__13daObjThDoor_cFv,
    (void*)Execute__13daObjThDoor_cFPPA3_A4_f,
    (void*)Draw__13daObjThDoor_cFv,
    (void*)Delete__13daObjThDoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D0E228-80D0E2E4 000DA8 00BC+00 1/0 0/0 0/0 .text daObjThDoor_create1st__FP13daObjThDoor_c */
static void daObjThDoor_create1st(daObjThDoor_c* param_0) {
    // NONMATCHING
}

/* 80D0E2E4-80D0E3B0 000E64 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D0E3B0-80D0E434 000F30 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D0E434-80D0E47C 000FB4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D0E47C-80D0E4C4 000FFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D0E4C4-80D0E520 001044 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D0E520-80D0E540 0010A0 0020+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGDelete__FP13daObjThDoor_c
 */
static void daObjThDoor_MoveBGDelete(daObjThDoor_c* param_0) {
    // NONMATCHING
}

/* 80D0E540-80D0E560 0010C0 0020+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGExecute__FP13daObjThDoor_c
 */
static void daObjThDoor_MoveBGExecute(daObjThDoor_c* param_0) {
    // NONMATCHING
}

/* 80D0E560-80D0E58C 0010E0 002C+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGDraw__FP13daObjThDoor_c */
static void daObjThDoor_MoveBGDraw(daObjThDoor_c* param_0) {
    // NONMATCHING
}

/* 80D0E58C-80D0E5D4 00110C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D0E5D4-80D0E5F0 001154 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80D0E5D4(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80D0E620-80D0E620 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
