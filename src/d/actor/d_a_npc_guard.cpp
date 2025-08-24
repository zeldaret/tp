/**
 * @file d_a_npc_guard.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_guard.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e();
extern "C" void callInit__12daNpcGuard_cFv();
extern "C" void callExecute__12daNpcGuard_cFv();
extern "C" void initPath__12daNpcGuard_cFv();
extern "C" void executePath__12daNpcGuard_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void __dt__4cXyzFv();
extern "C" void initRun__12daNpcGuard_cFv();
extern "C" void executeRun__12daNpcGuard_cFv();
extern "C" void initFightWait__12daNpcGuard_cFv();
extern "C" void executeFightWait__12daNpcGuard_cFv();
extern "C" void initFightStep__12daNpcGuard_cFv();
extern "C" void executeFightStep__12daNpcGuard_cFv();
extern "C" void initFightMenace__12daNpcGuard_cFv();
extern "C" void executeFightMenace__12daNpcGuard_cFv();
extern "C" void initFear__12daNpcGuard_cFv();
extern "C" void executeFear__12daNpcGuard_cFv();
extern "C" void initEscape__12daNpcGuard_cFv();
extern "C" void executeEscape__12daNpcGuard_cFv();
extern "C" void setAngle__12daNpcGuard_cFv();
extern "C" void setSpeed__12daNpcGuard_cFffPfi();
extern "C" void pathMoveF__12daNpcGuard_cFv();
extern "C" static void daNpcGuard_Create__FPv();
extern "C" void create__12daNpcGuard_cFv();
extern "C" void create_init__12daNpcGuard_cFv();
extern "C" void setMtx__12daNpcGuard_cFv();
extern "C" void lookat__12daNpcGuard_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" static void daNpcGuard_Delete__FPv();
extern "C" void __dt__12daNpcGuard_cFv();
extern "C" static void daNpcGuard_Execute__FPv();
extern "C" void execute__12daNpcGuard_cFv();
extern "C" static void daNpcGuard_Draw__FPv();
extern "C" static bool daNpcGuard_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_809F24B4(void* _this, int*);
extern "C" void func_809F24D0(void* _this, f32, f32);
extern "C" void func_809F250C(void* _this, int, int);
extern "C" void __sinit_d_a_npc_guard_cpp();
extern "C" static void func_809F26E8();
extern "C" static void func_809F26F0();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__10daNpcCd2_cFv();
extern "C" void __dt__16dNpcLib_lookat_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" extern char const* const d_a_npc_guard__stringBase0;
extern "C" u8 ActionTable__12daNpcGuard_c[168];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void NpcCreate__10daNpcCd2_cFi();
extern "C" void ObjCreate__10daNpcCd2_cFi();
extern "C" void isM___10daNpcCd2_cFv();
extern "C" void getAnmP__10daNpcCd2_cFii();
extern "C" void setAttention__10daNpcCd2_cFi();
extern "C" void loadResrc__10daNpcCd2_cFii();
extern "C" void removeResrc__10daNpcCd2_cFii();
extern "C" void setEnvTevCol__10daNpcCd2_cFv();
extern "C" void setRoomNo__10daNpcCd2_cFv();
extern "C" void setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii();
extern "C" void drawShadow__10daNpcCd2_cFf();
extern "C" void drawObj__10daNpcCd2_cFiP8J3DModelf();
extern "C" void drawNpc__10daNpcCd2_cFv();
extern "C" void setPath__11PathTrace_cFiiiP4cXyzb();
extern "C" void checkPoint__11PathTrace_cF4cXyzf();
extern "C" void checkPathEnd__11PathTrace_cF4cXyzf();
extern "C" void getTargetPoint__11PathTrace_cFP3Vec();
extern "C" void setNextPoint__11PathTrace_cFR4cXyz();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__16dNpcLib_lookat_cFv();
extern "C" void init__16dNpcLib_lookat_cFP8J3DModelPiP5csXyzP5csXyz();
extern "C" void action__16dNpcLib_lookat_cF4cXyz4cXyzP10fopAc_ac_cPA4_fi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const m_cylDat__10daNpcCd2_c[68];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 l_Cd2_HIO[16396];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* ############################################################################################## */
/* 809F2D48-809F2D48 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809F2D48 = "object";
#pragma pop

/* 809EFD58-809EFE20 000078 00C8+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static void createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809F2D70-809F2D7C -00001 000C+00 0/1 0/0 0/0 .data            @3824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initPath__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2D7C-809F2D88 -00001 000C+00 0/1 0/0 0/0 .data            @3825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executePath__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2D88-809F2D94 -00001 000C+00 0/1 0/0 0/0 .data            @3826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initRun__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2D94-809F2DA0 -00001 000C+00 0/1 0/0 0/0 .data            @3827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeRun__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DA0-809F2DAC -00001 000C+00 0/1 0/0 0/0 .data            @3828 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3828[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFightWait__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DAC-809F2DB8 -00001 000C+00 0/1 0/0 0/0 .data            @3829 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFightWait__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DB8-809F2DC4 -00001 000C+00 0/1 0/0 0/0 .data            @3830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFightStep__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DC4-809F2DD0 -00001 000C+00 0/1 0/0 0/0 .data            @3831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFightStep__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DD0-809F2DDC -00001 000C+00 0/1 0/0 0/0 .data            @3832 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3832[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFightMenace__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DDC-809F2DE8 -00001 000C+00 0/1 0/0 0/0 .data            @3833 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFightMenace__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DE8-809F2DF4 -00001 000C+00 0/1 0/0 0/0 .data            @3834 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initFear__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2DF4-809F2E00 -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFear__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2E00-809F2E0C -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initEscape__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2E0C-809F2E18 -00001 000C+00 0/1 0/0 0/0 .data            @3837 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3837[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeEscape__12daNpcGuard_cFv,
};
#pragma pop

/* 809F2E18-809F2EC0 0000C8 00A8+00 1/2 0/0 0/0 .data            ActionTable__12daNpcGuard_c */
SECTION_DATA u8 daNpcGuard_c::ActionTable[168] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809EFE20-809EFE64 000140 0044+00 8/8 0/0 0/0 .text
 * setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e            */
void daNpcGuard_c::setAction(daNpcGuard_c::Mode_e param_0) {
    // NONMATCHING
}

/* 809EFE64-809EFE8C 000184 0028+00 1/1 0/0 0/0 .text            callInit__12daNpcGuard_cFv */
void daNpcGuard_c::callInit() {
    // NONMATCHING
}

/* 809EFE8C-809EFEB8 0001AC 002C+00 1/1 0/0 0/0 .text            callExecute__12daNpcGuard_cFv */
void daNpcGuard_c::callExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C50-809F2C54 000000 0004+00 15/15 0/0 0/0 .rodata          @3900 */
SECTION_RODATA static f32 const lit_3900 = 1.0f;
COMPILER_STRIP_GATE(0x809F2C50, &lit_3900);

/* 809F2C54-809F2C58 000004 0004+00 3/6 0/0 0/0 .rodata          @3901 */
SECTION_RODATA static f32 const lit_3901 = 12.0f;
COMPILER_STRIP_GATE(0x809F2C54, &lit_3901);

/* 809EFEB8-809EFF1C 0001D8 0064+00 1/0 0/0 0/0 .text            initPath__12daNpcGuard_cFv */
void daNpcGuard_c::initPath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C58-809F2C60 000008 0008+00 2/4 0/0 0/0 .rodata          @3951 */
SECTION_RODATA static u8 const lit_3951[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2C58, &lit_3951);

/* 809F2C60-809F2C68 000010 0008+00 2/5 0/0 0/0 .rodata          @3952 */
SECTION_RODATA static u8 const lit_3952[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2C60, &lit_3952);

/* 809F2EC0-809F2EE0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcGuard_METHODS */
static actor_method_class daNpcGuard_METHODS = {
    (process_method_func)daNpcGuard_Create__FPv,
    (process_method_func)daNpcGuard_Delete__FPv,
    (process_method_func)daNpcGuard_Execute__FPv,
    (process_method_func)daNpcGuard_IsDelete__FPv,
    (process_method_func)daNpcGuard_Draw__FPv,
};

/* 809F2EE0-809F2F10 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GUARD */
extern actor_process_profile_definition g_profile_NPC_GUARD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GUARD,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcGuard_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  406,                    // mPriority
  &daNpcGuard_METHODS,    // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809F2F10-809F2F1C 0001C0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809F2F1C-809F2F28 0001CC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809F2F28-809F2F34 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809F2F34-809F2F40 0001E4 000C+00 2/2 0/0 0/0 .data            __vt__16dNpcLib_lookat_c */
SECTION_DATA extern void* __vt__16dNpcLib_lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16dNpcLib_lookat_cFv,
};

/* 809F2F40-809F2F4C 0001F0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 809F2F4C-809F2F58 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809F2F58-809F2F64 000208 000C+00 2/2 0/0 0/0 .data            __vt__12daNpcGuard_c */
SECTION_DATA extern void* __vt__12daNpcGuard_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpcGuard_cFv,
};

/* 809F2F64-809F2F70 000214 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809F2F70-809F2F7C 000220 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809F2F7C-809F2FA0 00022C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809F26F0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809F26E8,
};

/* 809F2FA0-809F2FAC 000250 000C+00 2/2 0/0 0/0 .data            __vt__10daNpcCd2_c */
SECTION_DATA extern void* __vt__10daNpcCd2_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10daNpcCd2_cFv,
};

/* 809F2FAC-809F2FB8 00025C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 809EFF1C-809F0100 00023C 01E4+00 1/0 0/0 0/0 .text            executePath__12daNpcGuard_cFv */
void daNpcGuard_c::executePath() {
    // NONMATCHING
}

/* 809F0100-809F0148 000420 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 809F0148-809F0184 000468 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809F0184-809F01E8 0004A4 0064+00 1/0 0/0 0/0 .text            initRun__12daNpcGuard_cFv */
void daNpcGuard_c::initRun() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C68-809F2C6C 000018 0004+00 0/2 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x809F2C68, &lit_4002);
#pragma pop

/* 809F2C6C-809F2C70 00001C 0004+00 0/2 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x809F2C6C, &lit_4003);
#pragma pop

/* 809F2C70-809F2C74 000020 0004+00 0/9 0/0 0/0 .rodata          @4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4004[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809F2C70, &lit_4004);
#pragma pop

/* 809F2C74-809F2C78 000024 0004+00 0/2 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F2C74, &lit_4005);
#pragma pop

/* 809F2C78-809F2C7C 000028 0004+00 1/5 0/0 0/0 .rodata          @4006 */
SECTION_RODATA static f32 const lit_4006 = 0.25f;
COMPILER_STRIP_GATE(0x809F2C78, &lit_4006);

/* 809F2C7C-809F2C80 00002C 0004+00 0/2 0/0 0/0 .rodata          @4007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4007 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F2C7C, &lit_4007);
#pragma pop

/* 809F01E8-809F03FC 000508 0214+00 1/0 0/0 0/0 .text            executeRun__12daNpcGuard_cFv */
void daNpcGuard_c::executeRun() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C80-809F2C84 000030 0004+00 0/1 0/0 0/0 .rodata          @4016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4016 = 300.0f;
COMPILER_STRIP_GATE(0x809F2C80, &lit_4016);
#pragma pop

/* 809F2C84-809F2C88 000034 0004+00 0/2 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = 200.0f;
COMPILER_STRIP_GATE(0x809F2C84, &lit_4017);
#pragma pop

/* 809F03FC-809F04B4 00071C 00B8+00 1/0 0/0 0/0 .text            initFightWait__12daNpcGuard_cFv */
void daNpcGuard_c::initFightWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C88-809F2C8C 000038 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F2C88, &lit_4065);
#pragma pop

/* 809F2C8C-809F2C90 00003C 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 10.0f;
COMPILER_STRIP_GATE(0x809F2C8C, &lit_4066);
#pragma pop

/* 809F2C90-809F2C94 000040 0004+00 0/1 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 500.0f;
COMPILER_STRIP_GATE(0x809F2C90, &lit_4067);
#pragma pop

/* 809F04B4-809F06F4 0007D4 0240+00 1/0 0/0 0/0 .text            executeFightWait__12daNpcGuard_cFv
 */
void daNpcGuard_c::executeFightWait() {
    // NONMATCHING
}

/* 809F06F4-809F0700 000A14 000C+00 1/0 0/0 0/0 .text            initFightStep__12daNpcGuard_cFv */
void daNpcGuard_c::initFightStep() {
    // NONMATCHING
}

/* 809F0700-809F0778 000A20 0078+00 1/0 0/0 0/0 .text            executeFightStep__12daNpcGuard_cFv
 */
void daNpcGuard_c::executeFightStep() {
    // NONMATCHING
}

/* 809F0778-809F07F8 000A98 0080+00 1/0 0/0 0/0 .text            initFightMenace__12daNpcGuard_cFv
 */
void daNpcGuard_c::initFightMenace() {
    // NONMATCHING
}

/* 809F07F8-809F08DC 000B18 00E4+00 1/0 0/0 0/0 .text executeFightMenace__12daNpcGuard_cFv */
void daNpcGuard_c::executeFightMenace() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C94-809F2C98 000044 0004+00 0/1 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 4.0f;
COMPILER_STRIP_GATE(0x809F2C94, &lit_4111);
#pragma pop

/* 809F08DC-809F0960 000BFC 0084+00 1/0 0/0 0/0 .text            initFear__12daNpcGuard_cFv */
void daNpcGuard_c::initFear() {
    // NONMATCHING
}

/* 809F0960-809F0A50 000C80 00F0+00 1/0 0/0 0/0 .text            executeFear__12daNpcGuard_cFv */
void daNpcGuard_c::executeFear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2C98-809F2C9C 000048 0004+00 0/2 0/0 0/0 .rodata          @4141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4141 = 2.0f;
COMPILER_STRIP_GATE(0x809F2C98, &lit_4141);
#pragma pop

/* 809F2C9C-809F2CA0 00004C 0004+00 0/1 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = 8.0f;
COMPILER_STRIP_GATE(0x809F2C9C, &lit_4142);
#pragma pop

/* 809F2CA0-809F2CA8 000050 0004+04 0/2 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143[1 + 1 /* padding */] = {
    20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809F2CA0, &lit_4143);
#pragma pop

/* 809F0A50-809F0B20 000D70 00D0+00 1/0 0/0 0/0 .text            initEscape__12daNpcGuard_cFv */
void daNpcGuard_c::initEscape() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2CA8-809F2CB0 000058 0008+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4203[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2CA8, &lit_4203);
#pragma pop

/* 809F2CB0-809F2CB8 000060 0008+00 0/1 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4204[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2CB0, &lit_4204);
#pragma pop

/* 809F2CB8-809F2CC0 000068 0008+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4205[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2CB8, &lit_4205);
#pragma pop

/* 809F0B20-809F0DD4 000E40 02B4+00 1/0 0/0 0/0 .text            executeEscape__12daNpcGuard_cFv */
void daNpcGuard_c::executeEscape() {
    // NONMATCHING
}

/* 809F0DD4-809F0DE0 0010F4 000C+00 5/5 0/0 0/0 .text            setAngle__12daNpcGuard_cFv */
void daNpcGuard_c::setAngle() {
    // NONMATCHING
}

/* 809F0DE0-809F0ED4 001100 00F4+00 1/1 0/0 0/0 .text            setSpeed__12daNpcGuard_cFffPfi */
void daNpcGuard_c::setSpeed(f32 param_0, f32 param_1, f32* param_2, int param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2CC0-809F2CC4 000070 0004+00 0/1 0/0 0/0 .rodata          @4335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4335 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F2CC0, &lit_4335);
#pragma pop

/* 809F2CC4-809F2CC8 000074 0004+00 0/2 0/0 0/0 .rodata          @4336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4336 = 1.5f;
COMPILER_STRIP_GATE(0x809F2CC4, &lit_4336);
#pragma pop

/* 809F0ED4-809F12D0 0011F4 03FC+00 1/1 0/0 0/0 .text            pathMoveF__12daNpcGuard_cFv */
void daNpcGuard_c::pathMoveF() {
    // NONMATCHING
}

/* 809F12D0-809F12F0 0015F0 0020+00 1/0 0/0 0/0 .text            daNpcGuard_Create__FPv */
static void daNpcGuard_Create(void* param_0) {
    // NONMATCHING
}

/* 809F12F0-809F14CC 001610 01DC+00 1/1 0/0 0/0 .text            create__12daNpcGuard_cFv */
void daNpcGuard_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2CC8-809F2D08 000078 0040+00 0/0 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4351[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2CC8, &lit_4351);
#pragma pop

/* 809F2D08-809F2D0C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4480 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4480 = -3.0f;
COMPILER_STRIP_GATE(0x809F2D08, &lit_4480);
#pragma pop

/* 809F2D0C-809F2D10 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4481 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4481 = -40.0f;
COMPILER_STRIP_GATE(0x809F2D0C, &lit_4481);
#pragma pop

/* 809F2D10-809F2D14 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4482 = -10.0f;
COMPILER_STRIP_GATE(0x809F2D10, &lit_4482);
#pragma pop

/* 809F2D14-809F2D18 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4483 = -80.0f;
COMPILER_STRIP_GATE(0x809F2D14, &lit_4483);
#pragma pop

/* 809F2D18-809F2D1C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4484 = 40.0f;
COMPILER_STRIP_GATE(0x809F2D18, &lit_4484);
#pragma pop

/* 809F2D1C-809F2D20 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4485 = 190.0f;
COMPILER_STRIP_GATE(0x809F2D1C, &lit_4485);
#pragma pop

/* 809F2D20-809F2D24 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 90.0f;
COMPILER_STRIP_GATE(0x809F2D20, &lit_4486);
#pragma pop

/* 809F2D24-809F2D28 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487 = 45.0f;
COMPILER_STRIP_GATE(0x809F2D24, &lit_4487);
#pragma pop

/* 809F2D28-809F2D2C 0000D8 0004+00 1/2 0/0 0/0 .rodata          @4488 */
SECTION_RODATA static f32 const lit_4488 = 60.0f;
COMPILER_STRIP_GATE(0x809F2D28, &lit_4488);

/* 809F14CC-809F17D0 0017EC 0304+00 1/1 0/0 0/0 .text            create_init__12daNpcGuard_cFv */
void daNpcGuard_c::create_init() {
    // NONMATCHING
}

/* 809F17D0-809F1878 001AF0 00A8+00 2/2 0/0 0/0 .text            setMtx__12daNpcGuard_cFv */
void daNpcGuard_c::setMtx() {
    // NONMATCHING
}

/* 809F1878-809F1D6C 001B98 04F4+00 1/1 0/0 0/0 .text            lookat__12daNpcGuard_cFv */
void daNpcGuard_c::lookat() {
    // NONMATCHING
}

/* 809F1D6C-809F1DA8 00208C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809F1DA8-809F1E74 0020C8 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 809F1E74-809F1EF8 002194 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 809F1EF8-809F1F40 002218 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 809F1F40-809F1F74 002260 0034+00 1/0 0/0 0/0 .text            daNpcGuard_Delete__FPv */
static void daNpcGuard_Delete(void* param_0) {
    // NONMATCHING
}

/* 809F1F74-809F2024 002294 00B0+00 1/0 0/0 0/0 .text            __dt__12daNpcGuard_cFv */
daNpcGuard_c::~daNpcGuard_c() {
    // NONMATCHING
}

/* 809F2024-809F2044 002344 0020+00 1/0 0/0 0/0 .text            daNpcGuard_Execute__FPv */
static void daNpcGuard_Execute(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2D2C-809F2D30 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4924 = 150.0f;
COMPILER_STRIP_GATE(0x809F2D2C, &lit_4924);
#pragma pop

/* 809F2D30-809F2D34 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4925 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x809F2D30, &lit_4925);
#pragma pop

/* 809F2D34-809F2D38 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4926 = 25.0f;
COMPILER_STRIP_GATE(0x809F2D34, &lit_4926);
#pragma pop

/* 809F2D38-809F2D40 0000E8 0004+04 0/1 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4927[1 + 1 /* padding */] = {
    -150.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809F2D38, &lit_4927);
#pragma pop

/* 809F2044-809F2374 002364 0330+00 1/1 0/0 0/0 .text            execute__12daNpcGuard_cFv */
void daNpcGuard_c::execute() {
    // NONMATCHING
}

/* 809F2374-809F2464 002694 00F0+00 1/0 0/0 0/0 .text            daNpcGuard_Draw__FPv */
static void daNpcGuard_Draw(void* param_0) {
    // NONMATCHING
}

/* 809F2464-809F246C 002784 0008+00 1/0 0/0 0/0 .text            daNpcGuard_IsDelete__FPv */
static bool daNpcGuard_IsDelete(void* param_0) {
    return true;
}

/* 809F246C-809F24B4 00278C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809F24B4-809F24D0 0027D4 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809F24B4(void* _this, int* param_0) {
    // NONMATCHING
}

/* 809F24D0-809F250C 0027F0 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_809F24D0(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809F2D40-809F2D48 0000F0 0008+00 1/1 0/0 0/0 .rodata          @4990 */
SECTION_RODATA static u8 const lit_4990[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809F2D40, &lit_4990);

/* 809F250C-809F2588 00282C 007C+00 4/4 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_809F250C(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* 809F2588-809F26E8 0028A8 0160+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_guard_cpp */
void __sinit_d_a_npc_guard_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809F2588, __sinit_d_a_npc_guard_cpp);
#pragma pop

/* 809F26E8-809F26F0 002A08 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809F26E8() {
    // NONMATCHING
}

/* 809F26F0-809F26F8 002A10 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809F26F0() {
    // NONMATCHING
}

/* 809F26F8-809F2740 002A18 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809F2740-809F2990 002A60 0250+00 2/1 0/0 0/0 .text            __dt__10daNpcCd2_cFv */
// daNpcCd2_c::~daNpcCd2_c() {
extern "C" void __dt__10daNpcCd2_cFv() {
    // NONMATCHING
}

/* 809F2990-809F2A78 002CB0 00E8+00 1/0 0/0 0/0 .text            __dt__16dNpcLib_lookat_cFv */
// dNpcLib_lookat_c::~dNpcLib_lookat_c() {
extern "C" void __dt__16dNpcLib_lookat_cFv() {
    // NONMATCHING
}

/* 809F2A78-809F2AC0 002D98 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809F2AC0-809F2B08 002DE0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809F2B08-809F2B64 002E28 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809F2B64-809F2BD4 002E84 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809F2BD4-809F2C44 002EF4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809F2D48-809F2D48 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
