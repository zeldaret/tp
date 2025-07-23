/**
 * @file d_a_e_sw.cpp
 * 
*/

#include "d/actor/d_a_e_sw.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"
#include "d/d_bomb.h"
#include <cmath.h>
#include "Z2AudioLib/Z2Instances.h"

enum Action {
    /* 0x0 */ ACTION_EXECUTE_WAIT,
    /* 0x1 */ ACTION_EXECUTE_CHASE_SLOW,
    /* 0x2 */ ACTION_EXECUTE_CHASE_FAST,
    /* 0x3 */ ACTION_EXECUTE_ATTACK,
    /* 0x4 */ ACTION_EXECUTE_BOMB,
    /* 0x5 */ ACTION_EXECUTE_HOOK,
    /* 0x6 */ ACTION_EXECUTE_MOVE_OUT,
    /* 0x7 */ ACTION_EXECUTE_CHANCE,
    /* 0x8 */ ACTION_EXECUTE_DIVE,
    /* 0x9 */ ACTION_EXECUTE_DAMAGE,
    /* 0xA */ ACTION_EXECUTE_DIE,
    /* 0xB */ ACTION_EXECUTE_MASTER,
    /* 0xC */ ACTION_EXECUTE_SUDDEN_ATTACK,
    /* 0xD */ ACTION_EXECUTE_FALL,
};

//
// Forward References:
//

extern "C" void __ct__12daE_SW_HIO_cFv();
extern "C" void bckSet__8daE_SW_cFifUcf();
extern "C" void draw__8daE_SW_cFv();
extern "C" static void daE_SW_Draw__FP8daE_SW_c();
extern "C" void setBeforeJumpEffect__8daE_SW_cFv();
extern "C" void setJumpEffect__8daE_SW_cFv();
extern "C" void setSmokeEffect__8daE_SW_cFv();
extern "C" void setDiveEffect__8daE_SW_cFv();
extern "C" void setHideEffect__8daE_SW_cFv();
extern "C" void setActionMode__8daE_SW_cFss();
extern "C" static void s_b_sub__FPvPv();
extern "C" void search_bomb__8daE_SW_cFv();
extern "C" void bomb_check__8daE_SW_cFv();
extern "C" void setModeBack__8daE_SW_cFv();
extern "C" void checkFall__8daE_SW_cFv();
extern "C" void checkBeforeWall__8daE_SW_cFv();
extern "C" void executeWait__8daE_SW_cFv();
extern "C" void checkRunChase__8daE_SW_cFv();
extern "C" void executeChaseSlow__8daE_SW_cFv();
extern "C" void executeChaseFast__8daE_SW_cFv();
extern "C" void executeBomb__8daE_SW_cFv();
extern "C" void executeAttack__8daE_SW_cFv();
extern "C" void executeHook__8daE_SW_cFv();
extern "C" void executeMoveOut__8daE_SW_cFv();
extern "C" void executeChance__8daE_SW_cFv();
extern "C" void executeDive__8daE_SW_cFv();
extern "C" void executeDamage__8daE_SW_cFv();
extern "C" void executeDie__8daE_SW_cFv();
extern "C" static void s_child_sub__FPvPv();
extern "C" void executeMaster__8daE_SW_cFv();
extern "C" void checkSuddenAttack__8daE_SW_cFi();
extern "C" void executeSuddenAttack__8daE_SW_cFv();
extern "C" void executeFall__8daE_SW_cFv();
extern "C" void action__8daE_SW_cFv();
extern "C" void mtx_set__8daE_SW_cFv();
extern "C" void cc_set__8daE_SW_cFv();
extern "C" void damage_check__8daE_SW_cFv();
extern "C" void checkGroundSand__8daE_SW_cFv();
extern "C" void execute__8daE_SW_cFv();
extern "C" static void daE_SW_Execute__FP8daE_SW_c();
extern "C" static bool daE_SW_IsDelete__FP8daE_SW_c();
extern "C" void _delete__8daE_SW_cFv();
extern "C" static void daE_SW_Delete__FP8daE_SW_c();
extern "C" void CreateHeap__8daE_SW_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_SW_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_SW_Create__FP8daE_SW_c();
extern "C" void d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v();
extern "C" void d_checkFall__8daE_SW_cFv();
extern "C" void d_damage_check__8daE_SW_cFv();
extern "C" void d_action__8daE_SW_cFv();
extern "C" void d_bomb_check__8daE_SW_cFv();
extern "C" void d_bm_chase__8daE_SW_cFv();
extern "C" void d_wait__8daE_SW_cFv();
extern "C" void d_chaseCheck__8daE_SW_cFv();
extern "C" void d_chase__8daE_SW_cFv();
extern "C" void d_attk__8daE_SW_cFv();
extern "C" void d_chance__8daE_SW_cFv();
extern "C" void d_chance2__8daE_SW_cFv();
extern "C" void d_dive__8daE_SW_cFv();
extern "C" void d_damage__8daE_SW_cFv();
extern "C" void d_die__8daE_SW_cFv();
extern "C" void d_hook__8daE_SW_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void d_fall__8daE_SW_cFv();
extern "C" void d_execute__8daE_SW_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_SW_HIO_cFv();
extern "C" void __sinit_d_a_e_sw_cpp();
extern "C" static void func_807AF8F4();
extern "C" static void func_807AF8FC();
extern "C" extern char const* const d_a_e_sw__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

/* 807AFEB4-807AFEF4 000038 0040+00 1/1 0/0 0/0 .data cc_sph_src__22@unnamed@d_a_e_sw_cpp@ */
namespace {
static dCcD_SrcSph cc_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 1, 0}, {0xD8FBFDFF, 0x43}, 0x75}},
        {dCcD_SE_SOFT_BODY, 0, 0, 0, 0},
        {dCcD_SE_NONE, 0, 0, 0, 2},
        {0},
    },
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f},
    },
};
}

/* 807AFEF4-807AFEFC 000078 0008+00 1/1 0/0 0/0 .data            l_SW_DIVE_EFFECT_ID$4064 */
// static u16 l_SW_DIVE_EFFECT_ID[4] = {0x836F, 0x8370, 0x8371, 0x8372};

/* 807AFEFC-807AFF04 000080 0006+02 1/1 0/0 0/0 .data            l_SW_HIDE_EFFECT_ID$4083 */
// static u16 l_SW_HIDE_EFFECT_ID[3] = {0x837C, 0x837D, 0x837E};

/* 807AFF04-807AFF30 -00001 002C+00 1/1 0/0 0/0 .data            @5270 */
SECTION_DATA static void* lit_5270[11] = {
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x54),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0xB4),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0xF4),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x318),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x318),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x2B8),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x304),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x318),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x318),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x318),
    (void*)(((char*)executeChance__8daE_SW_cFv) + 0x4C),
};

/* 807AFF30-807AFF68 -00001 0038+00 1/1 0/0 0/0 .data            @5661 */
SECTION_DATA static void* lit_5661[14] = {
    (void*)(((char*)action__8daE_SW_cFv) + 0xC0),  (void*)(((char*)action__8daE_SW_cFv) + 0xCC),
    (void*)(((char*)action__8daE_SW_cFv) + 0xDC),  (void*)(((char*)action__8daE_SW_cFv) + 0xEC),
    (void*)(((char*)action__8daE_SW_cFv) + 0xFC),  (void*)(((char*)action__8daE_SW_cFv) + 0x108),
    (void*)(((char*)action__8daE_SW_cFv) + 0x114), (void*)(((char*)action__8daE_SW_cFv) + 0x120),
    (void*)(((char*)action__8daE_SW_cFv) + 0x130), (void*)(((char*)action__8daE_SW_cFv) + 0x13C),
    (void*)(((char*)action__8daE_SW_cFv) + 0x148), (void*)(((char*)action__8daE_SW_cFv) + 0x154),
    (void*)(((char*)action__8daE_SW_cFv) + 0x160), (void*)(((char*)action__8daE_SW_cFv) + 0x16C),
};

/* 807AFF68-807AFF74 -00001 000C+00 1/1 0/0 0/0 .data            @5983 */
SECTION_DATA static void* lit_5983[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};

/* 807AFFC4-807AFFD0 -00001 000C+00 0/1 0/0 0/0 .data            @6217 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6217[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_hook__8daE_SW_cFv,
};
#pragma pop

/* 807AFFD0-807AFFDC -00001 000C+00 0/1 0/0 0/0 .data            @6219 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_fall__8daE_SW_cFv,
};
#pragma pop

/* 807AFFDC-807AFFE8 -00001 000C+00 0/1 0/0 0/0 .data            @6221 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6221[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_attk__8daE_SW_cFv,
};
#pragma pop

/* 807AFFE8-807AFFF4 -00001 000C+00 0/1 0/0 0/0 .data            @6237 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6237[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_fall__8daE_SW_cFv,
};
#pragma pop

/* 807AFFF4-807B0000 -00001 000C+00 0/1 0/0 0/0 .data            @6260 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6260[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_damage__8daE_SW_cFv,
};
#pragma pop

/* 807B0000-807B000C -00001 000C+00 0/1 0/0 0/0 .data            @6262 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6262[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_die__8daE_SW_cFv,
};
#pragma pop

/* 807B000C-807B0018 -00001 000C+00 0/1 0/0 0/0 .data            @6271 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6271[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance__8daE_SW_cFv,
};
#pragma pop

/* 807B0018-807B0024 -00001 000C+00 0/1 0/0 0/0 .data            @6297 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6297[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_damage__8daE_SW_cFv,
};
#pragma pop

/* 807B0024-807B0030 -00001 000C+00 0/1 0/0 0/0 .data            @6303 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6303[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_damage__8daE_SW_cFv,
};
#pragma pop

/* 807B0030-807B003C -00001 000C+00 0/1 0/0 0/0 .data            @6307 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6307[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_hook__8daE_SW_cFv,
};
#pragma pop

/* 807B003C-807B0048 -00001 000C+00 0/1 0/0 0/0 .data            @6313 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6313[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance2__8daE_SW_cFv,
};
#pragma pop

/* 807B0048-807B0054 -00001 000C+00 0/1 0/0 0/0 .data            @6317 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6317[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance2__8daE_SW_cFv,
};
#pragma pop

/* 807B0054-807B0060 -00001 000C+00 0/1 0/0 0/0 .data            @6319 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6319[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_damage__8daE_SW_cFv,
};
#pragma pop

/* 807B0060-807B006C -00001 000C+00 1/1 0/0 0/0 .data            @6411 */
SECTION_DATA static void* lit_6411[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};

/* 807B006C-807B0078 -00001 000C+00 1/1 0/0 0/0 .data            @6426 */
SECTION_DATA static void* lit_6426[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_attk__8daE_SW_cFv,
};

/* 807B0078-807B0084 -00001 000C+00 1/1 0/0 0/0 .data            @6521 */
SECTION_DATA static void* lit_6521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_bm_chase__8daE_SW_cFv,
};

/* 807B0084-807B0090 -00001 000C+00 1/1 0/0 0/0 .data            @6527 */
SECTION_DATA static void* lit_6527[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chase__8daE_SW_cFv,
};

/* 807B0090-807B009C -00001 000C+00 0/1 0/0 0/0 .data            @6613 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6613[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};
#pragma pop

/* 807B009C-807B00A8 -00001 000C+00 0/1 0/0 0/0 .data            @6617 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6617[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};
#pragma pop

/* 807B00A8-807B00B4 -00001 000C+00 0/1 0/0 0/0 .data            @6621 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6621[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_attk__8daE_SW_cFv,
};
#pragma pop

/* 807B00B4-807B00C0 -00001 000C+00 0/1 0/0 0/0 .data            @6726 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6726[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_bm_chase__8daE_SW_cFv,
};
#pragma pop

/* 807B00C0-807B00CC -00001 000C+00 0/1 0/0 0/0 .data            @6739 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6739[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance__8daE_SW_cFv,
};
#pragma pop

/* 807B00CC-807B00D8 -00001 000C+00 0/1 0/0 0/0 .data            @6753 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6753[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};
#pragma pop

/* 807B00D8-807B00E4 -00001 000C+00 0/1 0/0 0/0 .data            @6758 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6758[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};
#pragma pop

/* 807B00E4-807B00F0 -00001 000C+00 1/1 0/0 0/0 .data            @6858 */
SECTION_DATA static void* lit_6858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_hook__8daE_SW_cFv,
};

/* 807B00F0-807B00FC -00001 000C+00 1/1 0/0 0/0 .data            @6887 */
SECTION_DATA static void* lit_6887[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_dive__8daE_SW_cFv,
};

/* 807B00FC-807B0108 -00001 000C+00 1/1 0/0 0/0 .data            @6929 */
SECTION_DATA static void* lit_6929[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance__8daE_SW_cFv,
};

/* 807B0108-807B0114 -00001 000C+00 1/1 0/0 0/0 .data            @6959 */
SECTION_DATA static void* lit_6959[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_wait__8daE_SW_cFv,
};

/* 807B0114-807B0120 -00001 000C+00 1/1 0/0 0/0 .data            @6993 */
SECTION_DATA static void* lit_6993[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_die__8daE_SW_cFv,
};

/* 807B0120-807B012C -00001 000C+00 1/1 0/0 0/0 .data            @6996 */
SECTION_DATA static void* lit_6996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance__8daE_SW_cFv,
};

/* 807B012C-807B0138 -00001 000C+00 1/1 0/0 0/0 .data            @7081 */
SECTION_DATA static void* lit_7081[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)d_chance__8daE_SW_cFv,
};

/* 807B0138-807B0144 0002BC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 807B0144-807B0150 0002C8 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807B0150-807B015C 0002D4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807B015C-807B0168 0002E0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807B0168-807B0174 0002EC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807B0174-807B0180 0002F8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807B0180-807B01A4 000304 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807AF8FC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807AF8F4,
};

/* 807B01A4-807B01B0 000328 000C+00 2/2 0/0 0/0 .data            __vt__12daE_SW_HIO_c */
SECTION_DATA extern void* __vt__12daE_SW_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_SW_HIO_cFv,
};

/* 807A740C-807A7460 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__12daE_SW_HIO_cFv */
daE_SW_HIO_c::daE_SW_HIO_c() {
    field_0x4 = -1;
    basic_size = 1.0f;
    bomb_notice_dist = 1500.0f;
    bomb_attack_start_range = 800.0f;
    human_attack_init_range = 400.0f;
    horse_attack_init_range = 800.0f;
    character_notice_dist = 1000.0f;
    movement_range_debug_display = 0;
}

/* 807A7460-807A7504 000140 00A4+00 22/22 0/0 0/0 .text            bckSet__8daE_SW_cFifUcf */
void daE_SW_c::bckSet(int i_resID, f32 i_morf, u8 i_attr, f32 i_rate) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_SW", i_resID), i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 807A7504-807A76C4 0001E4 01C0+00 1/1 0/0 0/0 .text            draw__8daE_SW_cFv */
int daE_SW_c::draw() {
    if (field_0x694 == 1) {
        return 1;
    }

    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (field_0x6e5 == 0) {
        if (field_0x6b4) {
            J3DModelData* modelData = model->getModelData();

            for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
                J3DMaterial* matNodeP = modelData->getMaterialNodePointer(i);
                matNodeP->getTevColor(0)->r = field_0x6b4;
                matNodeP->getTevColor(0)->g = field_0x6b4;
                matNodeP->getTevColor(0)->b = field_0x6b4;
            }
        }

        mpModelMorf->entryDL();
    }

    if (field_0x6e4 == 0) {
        cXyz i_pos;
        i_pos.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        field_0x6e0 = dComIfGd_setShadow(field_0x6e0, 1, model, &i_pos, 700.0f, 0.0f, current.pos.y, 
                                            mBgc.GetGroundH(), mBgc.m_gnd, &tevStr, 0, 1.0f, 
                                            dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 807A76C4-807A76E4 0003A4 0020+00 1/0 0/0 0/0 .text            daE_SW_Draw__FP8daE_SW_c */
static int daE_SW_Draw(daE_SW_c* i_this) {
    return i_this->draw();
}

/* 807A76E4-807A77CC 0003C4 00E8+00 5/5 0/0 0/0 .text            setBeforeJumpEffect__8daE_SW_cFv */
void daE_SW_c::setBeforeJumpEffect() {
    field_0xae8 = dComIfGp_particle_set(field_0xae8, 0x837F, &field_0x674, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    field_0xaec = dComIfGp_particle_set(field_0xaec, 0x8380, &field_0x674, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
}

/* 807A77CC-807A78B4 0004AC 00E8+00 2/2 0/0 0/0 .text            setJumpEffect__8daE_SW_cFv */
void daE_SW_c::setJumpEffect() {
    field_0xae8 = dComIfGp_particle_set(field_0xae8, 0x8373, &field_0x674, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    field_0xaec = dComIfGp_particle_set(field_0xaec, 0x8374, &field_0x674, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
}

/* 807A78B4-807A7A08 000594 0154+00 9/9 0/0 0/0 .text            setSmokeEffect__8daE_SW_cFv */
void daE_SW_c::setSmokeEffect() {
    if (field_0x6e4 != 0 && speedF) {
        cXyz sp14(field_0x674);
        sp14.y += 100.0f;
        field_0xaf0 = dComIfGp_particle_set(field_0xaf0, 0x8375, &sp14, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        field_0xaf4 = dComIfGp_particle_set(field_0xaf4, 0x8376, &sp14, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        mSound.startCreatureSoundLevel(Z2SE_EN_SW_MOVE, field_0x6e9, -1);
    }
}

/* 807A7A08-807A7AC0 0006E8 00B8+00 2/2 0/0 0/0 .text            setDiveEffect__8daE_SW_cFv */
void daE_SW_c::setDiveEffect() {
    // NONMATCHING
    csXyz acStack_18(0, shape_angle.y, 0);
    static u16 l_SW_DIVE_EFFECT_ID[4] = {0x836F, 0x8370, 0x8371, 0x8372};
    for (int i = 0; i < 4; i++) {
        dComIfGp_particle_set(l_SW_DIVE_EFFECT_ID[i], &current.pos, &tevStr, &acStack_18, NULL);
    }
}

/* 807A7AC0-807A7B64 0007A0 00A4+00 2/2 0/0 0/0 .text            setHideEffect__8daE_SW_cFv */
void daE_SW_c::setHideEffect() {
    // NONMATCHING
    static u16 l_SW_HIDE_EFFECT_ID[3] = {0x837C, 0x837D, 0x837E};
    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(l_SW_HIDE_EFFECT_ID[i], &current.pos, &tevStr, &shape_angle, NULL);
    }
}

UNK_REL_BSS;

namespace {
    /* 807B01F8-807B01FC 000048 0004+00 1/2 0/0 0/0 .bss target_info__22@unnamed@d_a_e_sw_cpp@ */
    static fopAc_ac_c* target_info;

    /* 807B01FC-807B0200 00004C 0004+00 1/2 0/0 0/0 .bss target_dist__22@unnamed@d_a_e_sw_cpp@ */
    static f32 target_dist;
};

/* 807B0200 */
static u8 data_807B0200;

/* 807B0201 */
static u8 data_807B0201;

/* 807B0202 */
static u8 data_807B0202;

/* 807B0203 0001+00 data_807B0203 None */
static u8 l_initHIO;

/* 807A7B64-807A7B9C 000844 0038+00 17/17 0/0 0/0 .text            setActionMode__8daE_SW_cFss */
void daE_SW_c::setActionMode(s16 i_actionMode, s16 i_moveMode) {
    if (field_0x6e6 != 0) {
        data_807B0200 = 0;
        field_0x6e6 = 0;
    }

    field_0x6f0 = 0;
    field_0x98c.SetTgType(0x4000);
    mActionMode = i_actionMode;
    mMoveMode = i_moveMode;
}

/* 807A7B9C-807A7C50 00087C 00B4+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_actor, void* i_data) {
    if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NBOMB && 
        !fopAcM_checkCarryNow((fopAc_ac_c*)i_actor) && !((dBomb_c*)i_actor)->checkStateExplode()) {
        f32 fVar1 = fopAcM_searchActorDistance((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
        if (fVar1 < target_dist) {
            target_info = (fopAc_ac_c*)i_actor;
            target_dist = fVar1;
        }
    }

    return NULL;
}

/* 807B0210-807B0234 000060 0024+00 12/13 0/0 0/0 .bss             l_HIO */
static daE_SW_HIO_c l_HIO;

/* 807A7C50-807A7CD0 000930 0080+00 2/2 0/0 0/0 .text            search_bomb__8daE_SW_cFv */
fopAc_ac_c* daE_SW_c::search_bomb() {
    target_info = NULL;
    target_dist = l_HIO.bomb_notice_dist;
    fpcM_Search(s_b_sub, this);
    field_0x688 = -1;

    if (target_info != NULL) {
        field_0x688 = fopAcM_GetID(target_info);
    }

    return target_info;
}

/* 807A7CD0-807A7D48 0009B0 0078+00 4/4 0/0 0/0 .text            bomb_check__8daE_SW_cFv */
BOOL daE_SW_c::bomb_check() {
    if (field_0x68c == 0) {
        fopAc_ac_c* bomb = search_bomb();
        if (bomb != NULL && fopAcM_searchActorDistance(this, bomb) < l_HIO.bomb_notice_dist) {
            setActionMode(4, 0);
            return TRUE;
        }
    }

    return FALSE;
}

/* 807A7D48-807A7DAC 000A28 0064+00 2/2 0/0 0/0 .text            setModeBack__8daE_SW_cFv */
bool daE_SW_c::setModeBack() {
    if ((field_0x6bc & 3) == 0) {
        setActionMode(0, 0);
        current.pos = old.pos;
        return true;
    }

    return false;
}

/* 807A7DAC-807A7EFC 000A8C 0150+00 1/1 0/0 0/0 .text            checkFall__8daE_SW_cFv */
void daE_SW_c::checkFall() {
    if (mActionMode == 11 || mActionMode == 5 || mActionMode == 13 || mActionMode == 3) {
        return;
    }

    if (mBgc.ChkGroundHit()) {
        return;
    }

    dBgS_GndChk gnd_chk;
    cXyz i_pos(current.pos);
    i_pos.y += 100.0f;
    gnd_chk.SetPos(&i_pos);
    f32 fVar1 = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if (speed.y < 0.0f) {
        if (fVar1 == -1000000000.0f || std::abs(fVar1 - current.pos.y) > 1000.0f || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 4 || 
            dComIfG_Bgsp().GetGroundCode(gnd_chk) == 10 || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 5) {
            setActionMode(13, 0);
        }
    }
}

/* 807A7EFC-807A7F88 000BDC 008C+00 1/1 0/0 0/0 .text            checkBeforeWall__8daE_SW_cFv */
bool daE_SW_c::checkBeforeWall() {
    if (field_0x6f8[0].ChkWallHit()) {
        if (abs((s16)(field_0x6f8[0].GetWallAngleY() - current.angle.y)) > 0x7000) {
            return true;
        }
    }

    if (field_0x6f8[1].ChkWallHit()) {
        if (abs((s16)(field_0x6f8[1].GetWallAngleY() - current.angle.y)) > 0x7000) {
            return true;
        }
    }

    return false;
}

/* 807A7F88-807A8290 000C68 0308+00 1/1 0/0 0/0 .text            executeWait__8daE_SW_cFv */
void daE_SW_c::executeWait() {
    if (speedF > 2.0f) {
        setSmokeEffect();
    }

    switch (mMoveMode) {
        case 0:
            field_0x6e4 = 1;
            field_0x6e5 = 1;
            bckSet(0xD, 10.0f, 2, 1.0f);
            mMoveMode = 1;
            field_0x6ea = 50;
            // fallthrough
        case 1:
            if (field_0x6ea == 0) {
                mMoveMode = 2;

                if (field_0x6d0 > 1000.0f) {
                    field_0x6ea = 90;
                } else {
                    field_0x6ea = 30;
                }

                if (field_0x6d0 > 600.0f) {
                    field_0x69e = cLib_targetAngleY(&current.pos, &home.pos);
                } else {
                    field_0x69e = cM_rndFX(60000.0f);
                }
            }

            cLib_addCalc2(&speedF, 0.0f, 0.2f, 10.0f);
            break;

        case 2:
            cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 8, 0x400);

            if (field_0x6ea == 0) {
                mMoveMode = 1;
                field_0x6ea = 50;
            }

            if (field_0x6d0 > 1000.0f) {
                cLib_chaseF(&speedF, 20.0f, 1.0f);
            } else {
                cLib_chaseF(&speedF, 10.0f, 1.0f);
            }
            break;
    }

    shape_angle.y = current.angle.y;

    if (!bomb_check()) {
        if (daPy_getPlayerActorClass()->current.pos.absXZ(home.pos) < field_0x690 && !checkSuddenAttack(0)) {
            setActionMode(1, 0);
        }
    }
}

/* 807A8290-807A831C 000F70 008C+00 2/2 0/0 0/0 .text            checkRunChase__8daE_SW_cFv */
int daE_SW_c::checkRunChase() {
    if (field_0x6ee == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        f32 fVar1;
        if (player->checkHorseRide() == 0) {
            fVar1 = 19.0f;
        } else {
            fVar1 = 30.0f;
        }

        if (player->getSpeedF() > fVar1) {
            return 1;
        }

        return -1;
    }

    return 0;
}

/* 807A831C-807A8B98 000FFC 087C+00 1/1 0/0 0/0 .text            executeChaseSlow__8daE_SW_cFv */
void daE_SW_c::executeChaseSlow() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp3c(player->current.pos);
    cXyz sp48, sp54;
    f32 fVar1 = player->getSpeedF() + 5.0f;

    if (fVar1 < 15.0f) {
        fVar1 = 15.0f;
    }
    
    if (fVar1 > 70.0f) {
        fVar1 = 70.0f;
    }

    setSmokeEffect();

    if (!bomb_check() && !checkSuddenAttack(0)) {
        if ((field_0x6bc & 1) == 0) {
            setActionMode(7, 0);
            return;
        }

        if (checkRunChase() > 0) {
            if (current.pos.absXZ(daPy_getPlayerActorClass()->current.pos) > 400.0f) {
                setActionMode(2, 0);
                return;
            }
        }

        if (home.pos.absXZ(sp3c) > field_0x690) {
            setActionMode(6, 0);
            return;
        }

        switch (mMoveMode) {
            case 0:
                field_0x6b8 = cM_rndF(100.0f) + 800.0f;
                bckSet(0xC, 10.0f, 2, 1.0f);

                if (cM_rnd() < 0.5f) {
                    field_0x6a2 = -0x200;
                } else {
                    field_0x6a2 = 0x200;
                }

                field_0x6a4 = field_0x6cc + 0x8000;
                field_0x6ea = cM_rndFX(50.0f) + 100.0f;
                field_0x6ec = cM_rndFX(50.0f) + 150.0f;
                field_0x6ee = 30;
                mMoveMode = 1;
                // fallthrough
            case 1:
                sp54.set(0.0f, 0.0f, field_0x6b8 - 200.0f);
                cLib_offsetPos(&sp48, &sp3c, field_0x6a4, &sp54);
                if (abs((s16)(field_0x6cc + 0x8000 - (s16)cLib_targetAngleY(&sp3c, &sp48))) < 0x2000) {
                    field_0x6a4 += field_0x6a2;
                }

                cLib_chaseF(&speedF, fVar1, 0.3f);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp48), 8, 0x400);

                if (checkBeforeWall()) {
                    field_0x6ea = 30;
                    mMoveMode = 2;
                    field_0x6a4 = field_0x6cc + 0x8000;
                    field_0x6a2 = -field_0x6a2;
                }

                if (field_0x6ea == 0) {
                    s16 bVar1 = 0;
                    if (dComIfGp_getAttention()->LockonTruth()) {
                        if (dComIfGp_getAttention()->LockonTarget(0) == this) {
                            bVar1 = 1;
                        }
                    }
                    
                    if (((s16)cLib_distanceAngleS(fopCamM_GetAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0))), field_0x6cc) > 0x6000 || bVar1) && data_807B0200 == 0) {
                        field_0x6ea = 60;
                        data_807B0200 = 1;
                        field_0x6e6 = 1;
                        mMoveMode = 5;
                        return;
                    }

                    field_0x6ea = cM_rndF(30.0f) + 10.0f;
                }

                if (field_0x6ec == 0) {
                    field_0x6ea = 30;
                    mMoveMode = 2;
                    field_0x6a2 = -field_0x6a2;
                }
                break;

            case 2:
                sp54.set(0.0f, 0.0f, field_0x6b8 + 300.0f);
                cLib_offsetPos(&sp48, &player->current.pos, field_0x6a4, &sp54);

                if (abs((s16)(field_0x6cc + 0x8000 - (s16)cLib_targetAngleY(&sp3c, &sp48))) < 0x2000) {
                    field_0x6a4 += field_0x6a2;
                }

                cLib_chaseF(&speedF, fVar1 - 5.0f, 0.3f);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp48), 8, 0x400);

                if (field_0x6ea == 0) {
                    field_0x6b8 = cM_rndF(100.0f) + 800.0f;
                    field_0x6ea = cM_rndFX(50.0f) + 130.0f;
                    field_0x6ec = cM_rndFX(50.0f) + 150.0f;
                    mMoveMode = 1;
                }
                break;

            case 5:
                setBeforeJumpEffect();
                sp54.set(0.0f, 0.0f, field_0x6b8 + 1000.0f + nREG_F(11));
                cLib_offsetPos(&sp48, &player->current.pos, field_0x6a4, &sp54);

                if (abs((s16)(field_0x6cc + 0x8000 - (s16)cLib_targetAngleY(&sp3c, &sp48))) < 0x2000) {
                    field_0x6a4 -= field_0x6a2;
                }

                cLib_chaseF(&speedF, fVar1 + 15.0f + nREG_F(12), 0.3f);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp48), 8, 0x400);

                if (field_0x6ea == 0) {
                    mMoveMode = 6;
                }
                break;

            case 6:
                cLib_chaseF(&speedF, fVar1 + 15.0f + nREG_F(12), 0.3f);
                cLib_addCalcAngleS2(&current.angle.y, field_0x6cc, 8, 0x400);

                if (field_0x6c8 < l_HIO.human_attack_init_range) {
                    setActionMode(3, 0);
                    field_0x69c = 0;

                    if (field_0x6e6 != 0) {
                        data_807B0200 = 0;
                        field_0x6e6 = 0;
                    }
                }
                break;
        }

        shape_angle.y = current.angle.y;
    }
}

/* 807A8B98-807A9580 001878 09E8+00 1/1 0/0 0/0 .text            executeChaseFast__8daE_SW_cFv */
void daE_SW_c::executeChaseFast() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp50(player->current.pos);
    cXyz sp5c, sp68;

    setSmokeEffect();

    if (field_0x6f0 != 0) {
        setBeforeJumpEffect();
    }

    if (!bomb_check() && !checkSuddenAttack(1)) {
        if ((field_0x6bc & 1) == 0) {
            setActionMode(7, 0);
            return;
        }

        if (checkRunChase() < 0 && mMoveMode != 0) {
            setActionMode(1, 0);
            return;
        }

        if (home.pos.absXZ(sp50) > field_0x690) {
            setActionMode(6, 0);
            return;
        }

        switch (mMoveMode) {
            case 0:
                mMoveMode = 1;
                field_0x6a0 = cM_rndFX(1.0f) * 12288.0f;
                field_0x6a4 = 0;
                field_0x6ea = cM_rndF(30.0f) + 30.0f;
                field_0x6ee = 30;
                // fallthrough
            case 1:
                if (field_0x6ea == 0) {
                    if (data_807B0200 == 0) {
                        if (field_0x6c8 < l_HIO.horse_attack_init_range) {
                            mMoveMode = 2;
                            field_0x6f0 = 60;
                            data_807B0200 = 1;
                            field_0x6e6 = 1;
                        }
                    } else {
                        field_0x6ea = cM_rndF(30.0f) + 30.0f;
                    }
                }
                // fallthrough
            case 2:
                if (mMoveMode == 2 && field_0x6f0 == 0) {
                    setActionMode(3, 0);
                    field_0x69c = 2;

                    if (field_0x6e6 == 0) {
                        return;
                    }

                    data_807B0200 = 0;
                    field_0x6e6 = 0;
                    return;
                }

                sp68.set(0.0f, 0.0f, -200.0f);
                cLib_offsetPos(&sp5c, &sp50, (s16)(field_0x6a0 + shape_angle.y), &sp68);

                if (field_0x6dc > 1.0) {
                    sp68.set(0.0f, 0.0f, 200.0f);
                } else {
                    sp68.set(0.0f, 0.0f, 350.0f);
                }

                cLib_offsetPos(&field_0x668, &sp5c, shape_angle.y, &sp68);

                f32 fVar1;
                if (abs((s16)(field_0x6cc - shape_angle.y)) < 0x4000 || field_0x6e7 == 0) {
                    if (current.pos.absXZ(field_0x668) < 150.0f) {
                        fVar1 = -3.0f;
                    } else if (current.pos.absXZ(field_0x668) < 250.0f) {
                        fVar1 = 0.0f;
                    } else if (current.pos.absXZ(field_0x668) > 500.0f) {
                        fVar1 = 15.0f;
                    } else {
                        fVar1 = 5.0f;
                    }

                    cLib_chaseF(&speedF, fVar1 + player->getSpeedF(), 0.5f);
                } else {
                    cLib_chaseF(&speedF, nREG_F(1) + 15.0f, 0.5f);
                }

                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &field_0x668), 0x10, 0x400);
                field_0x6a4 += 0x200;
                sp68.x = std::abs(cM_ssin(field_0x6a4)) * 20.0f;
                sp68.z = cM_ssin(field_0x6a4) * 3.0f;
                current.pos.x += sp68.x * cM_scos(shape_angle.y) + (sp68.z * cM_ssin(shape_angle.y));
                current.pos.z += sp68.z * cM_scos(shape_angle.y) - (sp68.x * cM_ssin(shape_angle.y));
                break;
        }

        if (current.pos.absXZ(sp50) < 500.0f) {
            cLib_addCalcAngleS2(&shape_angle.y, player->shape_angle.y, 8, 0x400);
        } else {
            shape_angle.y = current.angle.y;
        }
    }
}

/* 807A9580-807A9768 002260 01E8+00 1/1 0/0 0/0 .text            executeBomb__8daE_SW_cFv */
void daE_SW_c::executeBomb() {
    setSmokeEffect();

    if (field_0x6f0 != 0) {
        setBeforeJumpEffect();
    }

    dBomb_c* bomb = NULL;
    fopAcM_SearchByID(field_0x688, (fopAc_ac_c**)&bomb);
    if (bomb == NULL || bomb->checkStateExplode()) {
        setActionMode(0, 0);
        return;
    }

    s16 actorAngleY = fopAcM_searchActorAngleY(this, bomb);

    if (setModeBack()) {
        return;
    }

    switch (mMoveMode) {
        case 0:
            bckSet(0xC, 10.0f, 2, 1.0f);
            mMoveMode = 1;
            // fallthrough
        case 1:
            if (bomb->speedF < 0.1f && fopAcM_searchActorDistance(this, bomb) < l_HIO.bomb_attack_start_range) {
                mMoveMode = 2;
                field_0x6ea = cM_rndF(30.0f);
            }
            break;

        case 2:
            if (field_0x6ea == 0) {
                mMoveMode = 3;
                field_0x6f0 = 10;
            }
            break;

        case 3:
            if (field_0x6f0 == 0) {
                field_0x6a8 = bomb->current.pos;
                shape_angle.y = actorAngleY;
                current.angle.y = actorAngleY;
                setActionMode(3, 0);
                field_0x69c = 1;
                return;
            }
            break;
    }

    cLib_addCalc2(&speedF, 15.0f, 1.0f, 3.0f);
    cLib_addCalcAngleS2(&current.angle.y, actorAngleY, 8, 0x400);
    shape_angle.y = current.angle.y;
}

/* 807A9768-807A9E58 002448 06F0+00 1/1 0/0 0/0 .text            executeAttack__8daE_SW_cFv */
void daE_SW_c::executeAttack() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar1;
    f32 fVar1;
    cXyz sp54, sp60;
    
    switch (mMoveMode) {
        case 0:
            field_0x98c.SetTgType(0xd8fbfdff);
            field_0x6e4 = 0;
            field_0x6e5 = 0;
            setDiveEffect();
            mSound.startCreatureSound(Z2SE_EN_SW_JUMP_OUT, field_0x6e9, -1);
            gravity = -4.0f;
            bckSet(6, 0.0f, 0, 1.0f);
            shape_angle.x = -0x4000;

            if (field_0x69c == 1) {
                field_0x69e = cLib_targetAngleY(&current.pos, &field_0x6a8);
            } else {
                field_0x69e = field_0x6cc;
            }

            sVar1 = field_0x69e;
            shape_angle.y = sVar1;
            current.angle.y = sVar1;
            speed.y = 60.0f;

            switch (field_0x69c) {
                case 1:
                    speedF = current.pos.abs(field_0x6a8) / 25.0f;
                    break;

                case 0:
                    speedF = field_0x6c8 / 25.0f;
                    break;

                case 2:
                    if (player->checkHorseRide() == 0) {
                        fVar1 = 19.0f;
                    } else {
                        fVar1 = 30.0f;
                    }

                    if (player->getSpeedF() < fVar1) {
                        speedF = field_0x6c8 / 24.0f;
                    } else {
                        if (player->checkHorseRide()) {
                            speedF = field_0x6c8 / 23.0f;
                        } else {
                            speedF = field_0x6c8 / 25.0f;
                        }

                        sp54.x = player->getSpeedF() * cM_ssin(player->shape_angle.y);
                        sp54.z = player->getSpeedF() * cM_scos(player->shape_angle.y);
                        sp54.x += speedF * cM_ssin(field_0x69e);
                        sp54.z += speedF * cM_scos(field_0x69e);
                        field_0x69e = cM_atan2s(sp54.x, sp54.z);
                        speedF = sp54.absXZ();
                    }
                    break;
            }

            field_0x668 = current.pos;
            mMoveMode = 1;
            break;

        case 1:
            setJumpEffect();
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);

            if (speed.y < 0.0f) {
                field_0x6d8 = 0.0f;
                current.pos.y -= 120.0f;
                bckSet(5, 10.0f, 0, 1.0f);
                field_0x6ea = 60;
                mMoveMode = 2;
            }
            break;
            
        case 2:
            setJumpEffect();
            cLib_chaseAngleS(&shape_angle.x, 0x4000, 0x400);
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (mBgc.ChkGroundHit()) {
                gravity = -5.0f;
                field_0x6d8 = -60.0f;

                if ((field_0x6bc & 1) == 0) {
                    setActionMode(7, 0);
                } else {
                    field_0x6e4 = 1;
                    setDiveEffect();
                    mSound.startCreatureSound(Z2SE_EN_SW_JUMP_IN, field_0x6e9, -1);
                    mMoveMode = 3;
                    return;
                }

                shape_angle.x = 0;
            } else if (field_0x6ea == 0) {
                fopAcM_delete(this);
            }

            field_0x98c.OnAtSetBit();
            break;

        case 3:
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (cLib_chaseF(&field_0x6d8, -120.0f, 60.0f)) {
                field_0x6e5 = 1;
                mMoveMode = 4;
                shape_angle.x = 0;
                field_0x6ec = 60;

                if (player->checkHorseRide() == 0) {
                    fVar1 = 19.0f;
                } else {
                    fVar1 = 30.0f;
                }

                if (player->getSpeedF() < fVar1) {
                    field_0x6ea = 15;
                }
            }
            break;

        case 4:
            if (setModeBack()) {
                return;
            }

            if (field_0x6ea != 0) {
                cLib_chaseF(&speedF, 15.0f, 1.0f);
            } else {
                setActionMode(0, 0);
                field_0x6d8 = -120.0f;
                sp60 = current.pos;
                sp60.y += 200.0f;

                if (!fopAcM_gc_c::gndCheck(&sp60)) {
                    fopAcM_delete(this);
                    return;
                }

                current.pos.y = fopAcM_gc_c::getGroundY();
            }
            break;
    }

    cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 4, 0x800);
    shape_angle.y = current.angle.y;
}

/* 807A9E58-807AA050 002B38 01F8+00 2/2 0/0 0/0 .text            executeHook__8daE_SW_cFv */
void daE_SW_c::executeHook() {
    cXyz sp24;

    switch (mMoveMode) {
        case 0:
            mSound.startCreatureVoice(Z2SE_EN_SW_V_CATCH, -1);
            field_0x6e4 = 0;
            field_0x6e5 = 0;
            field_0x98c.SetTgType(0);
            bckSet(9, 1.0f, 2, 1.0f);
            field_0x6d8 = 0.0f;
            speed.y = 0.0f;
            speedF = 0.0f;
            gravity = 0.0f;
            mMoveMode = 1;

            if ((s16)(field_0x6cc - shape_angle.y) < 0) {
                field_0x6a4 = -0x4000;
            } else {
                field_0x6a4 = 0x4000;
            }

            shape_angle.y = field_0x6cc + field_0x6a4;

            if (field_0x6e8 >= 1) {
                mDoMtx_stack_c::YrotS(shape_angle.y);

                if (field_0x6a4 < 0) {
                    mDoMtx_stack_c::transM(40.0f, 15.0f, 0.0f);
                } else {
                    mDoMtx_stack_c::transM(-40.0f, 15.0f, 0.0f);
                }

                mDoMtx_stack_c::multVecZero(&sp24);
            } else {
                sp24.set(0.0f, nREG_F(0) + 15.0f, 0.0f);
            }

            daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &sp24);
            // fallthrough
        case 1:
            cLib_addCalcAngleS(&shape_angle.y, (s16)(field_0x6cc + field_0x6a4), 4, 0x1000, 0x100);
            current.angle.y = shape_angle.y;

            if (!fopAcM_checkStatus(this, 0x100000)) {
                setActionMode(7, 10);
            }
            break;
    }
}

/* 807AA050-807AA44C 002D30 03FC+00 1/1 0/0 0/0 .text            executeMoveOut__8daE_SW_cFv */
void daE_SW_c::executeMoveOut() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp3c(player->current.pos);
    cXyz sp48;
    f32 fVar1;
    s16 sVar1;

    setSmokeEffect();

    switch (mMoveMode) {
        case 0:
            bckSet(0xC, 10.0f, 2, 1.0f);
            // fallthrough
        case 1:
            sVar1 = cLib_targetAngleY(&home.pos, &current.pos) + cM_rndFX(4096.0f);
            sp48.set(0.0f, 0.0f, field_0x690 - 300.0f);
            cLib_offsetPos(&field_0x668, &home.pos, sVar1, &sp48);
            field_0x6ea = 30;
            mMoveMode = 2;
            // fallthrough
        case 2:
            cLib_chaseF(&speedF, 10.0f, 1.0f);
            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &field_0x668), 8, 0x400);
            shape_angle.y = current.angle.y;

            if (field_0x6ea == 0) {
                mMoveMode = 1;
            }

            if (home.pos.absXZ(sp3c) < field_0x690 - 100.0f) {
                setActionMode(1, 0);
            } else if (current.pos.absXZ(sp3c) > 1000.0f) {
                setActionMode(0, 0);
            }
            break;
    }
}

/* 807AA44C-807AA784 00312C 0338+00 2/1 0/0 0/0 .text            executeChance__8daE_SW_cFv */
void daE_SW_c::executeChance() {
    // NONMATCHING
    s16 sVar1;

    switch (mMoveMode) {
        case 10:
            speed.y = 20.0f;
            // fallthrough
        case 0:
            field_0x6d8 = 0.0f;
            field_0x98c.SetTgType(0xd8fbfdff);
            mMoveMode = 1;
            bckSet(8, 5.0f, 2, 1.0f);
            speedF = 0.0f;
            gravity = -5.0f;
            field_0x6ea = 100;
            field_0x6f2 = 10;
            shape_angle.x = 0;
            break;

        case 1:
            if (mBgc.ChkGroundHit()) {
                mSound.startCreatureSound(Z2SE_EN_SW_BTBT, field_0x6e9, -1);
                mMoveMode = 2;
            }
            // fallthrough
        case 2:
            if ((field_0x6bc & 1) != 0 && mBgc.ChkGroundHit()) {
                field_0xae8 = dComIfGp_particle_set(field_0xae8, 0x8378, &field_0x674, &tevStr, &shape_angle, NULL, 
                                                    0xFF, NULL, -1, NULL, NULL, NULL);
            }

            if (mpModelMorf->checkFrame(19.0f) || mpModelMorf->checkFrame(36.0F)) {
                mSound.startCreatureSound(Z2SE_EN_SW_BTBT, field_0x6e9, -1);
            }

            if (mpModelMorf->checkFrame(10.0f)) {
                speedF = 7.0f;
                sVar1 = cM_rndFX(32000.0f);

                if (field_0x6bc != 3) {
                    field_0x6ea = 0;
                    sVar1 = cLib_targetAngleY(&current.pos, &field_0x65c) + cM_rndFX(8000.0f);
                }

                current.angle.y = sVar1;
                shape_angle.y = sVar1;
            } else if (mpModelMorf->checkFrame(20.0f)) {
                speedF = 0.0f;
            }

            if (field_0x6ea == 0 && field_0x6bc == 3 && mBgc.ChkGroundHit()) {
                setActionMode(8, 0);
            }
            break;

        case 5:
            field_0x98c.SetTgType(0xd8fbfdff);
            bckSet(9, 3.0f, 2, 1.0f);
            mMoveMode = 6;
            speedF = 12.0f;
            speed.y = 35.0f;
            current.angle.y = mAtInfo.mHitDirection.y + 0x8000;
            break;

        case 6:
            if (mBgc.ChkGroundHit()) {
                mMoveMode = 0;
            }
            break;
    }
}

/* 807AA784-807AA91C 003464 0198+00 1/1 0/0 0/0 .text            executeDive__8daE_SW_cFv */
void daE_SW_c::executeDive() {
    s16 sVar1 = 0x800;
    f32 fVar1 = 14.0f;

    switch (mMoveMode) {
        case 0:
            if (field_0x6ea == 0) {
                bckSet(0xB, 5.0f, 0, 1.0f);
                mMoveMode = 1;
                setHideEffect();
            }
            break;

        case 1:
            if (mpModelMorf->checkFrame(15.0f)) {
                mSound.startCreatureSound(Z2SE_EN_SW_DIVE, field_0x6e9, -1);
            }

            if (mpModelMorf->checkFrame(20.0f)) {
                field_0x6e4 = 1;
            }

            if (mpModelMorf->isStop()) {
                field_0x6e5 = 1;
                setActionMode(0, 0);
                field_0x6d8 = -120.0f;
            }

            sVar1 = 0;
            fVar1 = 0.0f;
            break;
    }

    cLib_addCalc2(&speedF, fVar1, 1.0f, 10.0f);
    cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 4, sVar1);
    cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 8, 0x400);
}

/* 807AA91C-807AAB7C 0035FC 0260+00 1/1 0/0 0/0 .text            executeDamage__8daE_SW_cFv */
void daE_SW_c::executeDamage() {
    s16 sVar1;

    field_0x6f2 = 10;

    if (mBgc.ChkWallHit()) {
        speedF = 0.0f;
        if (speed.y > 0.0f) {
            speed.y *= 0.5f;
        }
    }

    switch (mMoveMode) {
        case 0:
            field_0x6d8 = 0.0f;
            field_0x98c.OffTgSetBit();
            field_0x6e4 = 0;
            field_0x6e5 = 0;
            bckSet(9, 3.0f, 2, 1.0f);
            speed.y = cM_rndF(3.0f) + 48.0f;
            speedF = cM_rndF(3.0f) + 15.0f;
            mMoveMode = 1;
            gravity = -5.0f;
            sVar1 = mAtInfo.mHitDirection.y + 0x8000;
            shape_angle.y = sVar1;
            current.angle.y = sVar1;
            shape_angle.x = -0x8000;
            shape_angle.z = 0x4000;
            attention_info.flags = 0;
            break;

        case 1:
            if (mBgc.ChkGroundHit()) {
                speed.y = cM_rndF(3.0f) + 28.0f;
                speedF = cM_rndF(3.0f) + 8.0f;
                mMoveMode = 2;
            }

            shape_angle.x = shape_angle.x - 1500.0f;
            break;

        case 2:
            field_0xae8 = dComIfGp_particle_set(field_0xae8, 0x8378, &field_0x674, &tevStr, &shape_angle, NULL,
                                                0xFF, NULL, -1, NULL, NULL, NULL);
            cLib_addCalcAngleS(&shape_angle.z, 0, 8, 0x800, 0x10);

            if (mBgc.ChkGroundHit()) {
                speed.y = 0.0f;
                speedF = 0.0f;
                setActionMode(10, 0);
                shape_angle.x = 0;
                shape_angle.z = 0;
                gravity = 0.0f;
                speed.y = 0.0f;
            }
            break;
    }
}

/* 807AAB7C-807AAD28 00385C 01AC+00 1/1 0/0 0/0 .text            executeDie__8daE_SW_cFv */
void daE_SW_c::executeDie() {
    switch (mMoveMode) {
        case 0:
            field_0x98c.SetTgType(0);
            field_0x684 = 0;

            if (mpModelMorf->checkFrame(2.0f)) {
                mMoveMode = 1;
                field_0x6d4 = 1.0f;
                field_0x6ea = 10;
            }
            break;

        case 1:
            cLib_addCalc2(&field_0x6b4, nREG_F(9) + -50.0f, nREG_F(8) + 1.0f, nREG_F(7) + 0.5f);

            if (field_0x6ea == 0) {
                mMoveMode = 2;
                bckSet(0xA, 10.0f, 0, 1.0f);
                gravity = -1.0f;
                field_0x6ea = 30;
            } else {
                field_0x6d4 -= 0.1f;
                mpModelMorf->setPlaySpeed(field_0x6d4);
            }
            break;

        case 2:
            cLib_addCalc2(&field_0x6b4, nREG_F(9) + -50.0f, nREG_F(8) + 1.0f, nREG_F(7) + 0.5f);

            if (mpModelMorf->isStop() && field_0x6ea == 0) {
                data_807B0202++;

                if (data_807B0202 >= 10) {
                    data_807B0202 = 10;
                }

                fopAcM_createDisappear(this, &current.pos, 10, 0, 14);
                fopAcM_delete(this);
            }
            break;
    }
}

/* 807AAD28-807AADCC 003A08 00A4+00 1/1 0/0 0/0 .text            s_child_sub__FPvPv */
static void* s_child_sub(void* i_actor, void* i_data) {
    if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_SW) {
        if (fopAcM_GetLinkId((fopAc_ac_c*)i_actor) == fopAcM_GetID(i_data)) {
            data_807B0201++;
        }
    }

    return NULL;
}

/* 807AADCC-807AAF70 003AAC 01A4+00 1/1 0/0 0/0 .text            executeMaster__8daE_SW_cFv */
void daE_SW_c::executeMaster() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
    attention_info.flags = 0;
    field_0x98c.OffTgSetBit();
    field_0x98c.OffCoSetBit();

    if (field_0x6ea == 0) {
        field_0x6ea = 30;
        if ((field_0x684 == 0 || !(field_0x6c8 < 1000.0f)) && !(field_0x6c8 > 10000.0f)) {
            int iVar1 = abs((s16)(fopCamM_GetAngleY(camera) - (fopAcM_searchPlayerAngleY(this) + 0x8000)));
            
            if (iVar1 < 0x2000) {
                data_807B0201 = 0;
                fpcM_Search(s_child_sub, this);

                if (data_807B0201 < field_0x695) {
                    iVar1 = 2;

                    if (data_807B0202 >= 4) {
                        if (cM_rnd() <= 0.1f) {
                            iVar1 = 1;
                        }
                    }

                    u32 param = (iVar1 << 24) | ((fopAcM_GetParam(this) & 0xFFF) | 0x3000);
                    fopAcM_createChild(PROC_E_SW, fopAcM_GetID(this), param,
                                       &home.pos, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
                }
            }
        }
    }
}

/* 807AAF70-807AB310 003C50 03A0+00 3/3 0/0 0/0 .text            checkSuddenAttack__8daE_SW_cFi */
bool daE_SW_c::checkSuddenAttack(int param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fVar1 = current.pos.absXZ(player->current.pos);

    if (field_0x6e7 != 0) {
        if (fVar1 > nREG_F(10) + 1500.0f && mActionMode == 0) {
            field_0x6e7 = 0;
        }

        if (param_1 != 0 && fVar1 < 300.0f && abs((s16)(player->shape_angle.y - (field_0x6cc - 0x8000))) < nREG_S(1) + 0x2000) {
            setActionMode(3, 0);
            return true;
        }
    } else {
        if (player->current.pos.absXZ(home.pos) < field_0x690 && fVar1 < nREG_F(10) + 1500.0f) {
            field_0x6e7 = 1;

            if (player->checkHorseRide() == 0) {
                fVar1 = 19.0f;
            } else {
                fVar1 = 30.0f;
            }

            if (player->getSpeedF() > fVar1 && abs((s16)(player->shape_angle.y - (field_0x6cc - 0x8000))) < nREG_S(1) + 0x1800) {
                setActionMode(12, 0);
                return true;
            }
        }
    }

    return false;
}

/* 807AB310-807AB5C4 003FF0 02B4+00 1/1 0/0 0/0 .text            executeSuddenAttack__8daE_SW_cFv */
void daE_SW_c::executeSuddenAttack() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp1c(player->current.pos);
    cXyz sp28;

    setSmokeEffect();
    setBeforeJumpEffect();

    if (bomb_check()) {
        return;
    }

    if (home.pos.absXZ(sp1c) > field_0x690) {
        setActionMode(6, 0);
        return;
    }

    if (abs(player->shape_angle.y - shape_angle.y) < 0x4000 || abs(shape_angle.y - field_0x6cc) > 0x3000) {
        setActionMode(1, 0);
        return;
    }

    switch (mMoveMode) {
        case 0:
            current.angle.y = field_0x6cc;
            mMoveMode++;
            data_807B0200 = 1;
            field_0x6e6 = 1;
            // fallthrough
        case 1:
            cLib_chaseF(&speedF, 30.0f, 0.5f);
            cLib_addCalcAngleS2(&current.angle.y, field_0x6cc, 8, 0x800);

            if (field_0x6c8 < cM_rndFX(100.0f) + 1000.0f) {
                setActionMode(3, 0);
                field_0x69c = 2;

                if (field_0x6e6 != 0) {
                    data_807B0200 = 0;
                    field_0x6e6 = 0;
                }
            }
            break;
    }

    shape_angle.y = current.angle.y;
}

/* 807AB5C4-807AB6C4 0042A4 0100+00 1/1 0/0 0/0 .text            executeFall__8daE_SW_cFv */
void daE_SW_c::executeFall() {
    switch (mMoveMode) {
        case 0:
            attention_info.flags = 0;
            field_0x684 = 0;
            field_0x98c.ClrTgHit();
            field_0x98c.OffTgSetBit();
            field_0x6ea = 90;
            mMoveMode = 1;
            field_0x6e5 = 0;
            field_0x6d8 = 0.0f;
            gravity = -3.0f;
            maxFallSpeed = -50.0f;
            // fallthrough
        case 1:
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (field_0x6ea == 0) {
                bckSet(0xC, 10.0f, 2, 1.0f);
                fopAcM_delete(this);
            }
            break;
    }

    shape_angle.x = cM_atan2s(speedF, speed.y) - 0x4000;
}

/* 807AB6C4-807AB884 0043A4 01C0+00 2/1 0/0 0/0 .text            action__8daE_SW_cFv */
void daE_SW_c::action() {
    // NONMATCHING
    field_0x98c.OffAtSetBit();
    damage_check();

    if (mpModelMorf != NULL) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&field_0x674);
    }

    fopAcM_posMoveF(this, mStts.GetCCMoveP());
    mBgc.CrrPos(dComIfG_Bgsp());
    checkFall();
    bool bVar1 = false;

    switch (mActionMode) {
        case ACTION_EXECUTE_WAIT:
            executeWait();
            break;

        case ACTION_EXECUTE_CHASE_SLOW:
            bVar1 = true;
            executeChaseSlow();
            break;

        case ACTION_EXECUTE_CHASE_FAST:
            bVar1 = true;
            executeChaseFast();
            break;

        case ACTION_EXECUTE_ATTACK:
            bVar1 = true;
            executeAttack();
            break;

        case ACTION_EXECUTE_BOMB:
            executeBomb();
            break;

        case ACTION_EXECUTE_HOOK:
            executeHook();
            break;

        case ACTION_EXECUTE_MOVE_OUT:
            executeMoveOut();
            break;

        case ACTION_EXECUTE_CHANCE:
            bVar1 = true;
            executeChance();
            break;

        case ACTION_EXECUTE_DIVE:
            executeDive();
            break;

        case ACTION_EXECUTE_DAMAGE:
            executeDamage();
            break;

        case ACTION_EXECUTE_DIE:
            executeDie();
            break;
            
        case ACTION_EXECUTE_MASTER:
            executeMaster();
            break;

        case ACTION_EXECUTE_SUDDEN_ATTACK:
            executeSuddenAttack();
            break;

        case ACTION_EXECUTE_FALL:
            executeFall();
            break;
    }

    mSound.setLinkSearch(bVar1);

    if (mpModelMorf != NULL) {
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
}

/* 807AB884-807AB930 004564 00AC+00 2/2 0/0 0/0 .text            mtx_set__8daE_SW_cFv */
void daE_SW_c::mtx_set() {
    if (mpModelMorf != NULL) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x6d8, current.pos.z);
        mDoMtx_stack_c::ZXYrotM(shape_angle);

        f32 fVar1 = field_0x6dc;
        
        if (l_HIO.basic_size != 1.0f) {
            fVar1 = l_HIO.basic_size;
        }

        mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);
        mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        mpModelMorf->modelCalc();
    }
}

/* 807AB930-807ABAB0 004610 0180+00 2/2 0/0 0/0 .text            cc_set__8daE_SW_cFv */
void daE_SW_c::cc_set() {
    if (mpModelMorf != NULL) {
        J3DModel* model = mpModelMorf->getModel();
        
        if (field_0x694 != 1) {
            MTXCopy(model->getAnmMtx(1), mDoMtx_stack_c::get());
            mDoMtx_stack_c::multVecZero(&eyePos);

            if (eyePos.y < mBgc.GetGroundH() + 50.0f) {
                eyePos.y = mBgc.GetGroundH() + 50.0f;
            }

            f32 fVar1 = field_0x6dc;

            if (l_HIO.basic_size != 1.0f) {
                fVar1 = l_HIO.basic_size;
            }

            fVar1 = fVar1 * 50.0f;

            if (mActionMode != ACTION_EXECUTE_CHANCE && field_0x98c.GetTgType() == (u32)0x4000 && fVar1 < 100.0f) {
                fVar1 = 100.0f;
            }

            field_0x98c.SetC(eyePos);
            field_0x98c.SetR(fVar1);
            dComIfG_Ccsp()->Set(&field_0x98c);
            attention_info.position = eyePos;
            attention_info.position.y += nREG_F(8) + 50.0f;

            fVar1 = mBgc.GetGroundH();
            if (attention_info.position.y < fVar1) {
                attention_info.position.y = fVar1;
            }

            if (eyePos.y < fVar1) {
                eyePos.y = fVar1;
            }
        }
    }
}

/* 807ABAB0-807ABD28 004790 0278+00 1/1 0/0 0/0 .text            damage_check__8daE_SW_cFv */
void daE_SW_c::damage_check() {
    mStts.Move();

    if (field_0x6f2 != 0 || mActionMode == ACTION_EXECUTE_DAMAGE || mActionMode == ACTION_EXECUTE_DIE) {
        return;
    }

    if (field_0x98c.ChkAtShieldHit()) {
        field_0x98c.OffAtShieldHit();
        
        if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
            setActionMode(ACTION_EXECUTE_CHANCE, 0);
            cc_at_check(this, &mAtInfo);
            return;
        }
    }

    if (field_0x98c.ChkTgHit()) {
        mAtInfo.mpCollider = field_0x98c.GetTgHitObj();

        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) || field_0x698 > 1) {
            health = 100;
        } else {
            health = 10;
        }

        cc_at_check(this, &mAtInfo);

        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            setActionMode(ACTION_EXECUTE_HOOK, 0);
            executeHook();
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
            setActionMode(ACTION_EXECUTE_CHANCE, 5);
        } else {
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                field_0x6f2 = 20;
            } else {
                field_0x6f2 = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                field_0x6f2 = KREG_S(8) + 10;
            }

            int cutType = daPy_getPlayerActorClass()->getCutType();

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) && (cutType == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT || cutType == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT ||
                cutType == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B || cutType == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT || cutType == daPy_py_c::CUT_TYPE_LARGE_JUMP ||
                cutType == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH)) {
                field_0x698 = 0;
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL)) {
                field_0x698 = 0;
            }

            field_0x698--;

            if (field_0x698 <= 0) {
                mSound.startCreatureSound(Z2SE_EN_SW_V_DEAD, field_0x6e9, -1);
                setActionMode(ACTION_EXECUTE_DAMAGE, 0);
            } else {
                mSound.startCreatureVoice(Z2SE_EN_SW_V_DMG, -1);
            }
        }
    }
}

/* 807ABD28-807ABE50 004A08 0128+00 2/2 0/0 0/0 .text            checkGroundSand__8daE_SW_cFv */
void daE_SW_c::checkGroundSand() {
    field_0x6bc = 0;
    cXyz sp1c(0.0f, 200.0f, 0.0f);
    cXyz sp28;

    cLib_offsetPos(&sp28, &current.pos, shape_angle.y, &sp1c);

    if (fopAcM_gc_c::gndCheck(&sp28) && fopAcM_gc_c::getPolyAtt0() == 3) {
        field_0x6bc |= 1;
    }

    sp1c.z = 100.0f;
    cLib_offsetPos(&sp28, &current.pos, shape_angle.y, &sp1c);

    if (fopAcM_gc_c::gndCheck(&sp28) && fopAcM_gc_c::getPolyAtt0() == 3) {
        field_0x6bc |= 2;
    }

    if (field_0x6bc == 3) {
        field_0x65c = current.pos;
    }
}

/* 807ABE50-807AC148 004B30 02F8+00 1/1 0/0 0/0 .text            execute__8daE_SW_cFv */
int daE_SW_c::execute() {
    if (field_0x694 == 0) {
        return d_execute();
    }

    field_0x6c8 = fopAcM_searchPlayerDistance(this);

    if (field_0x684 != 0 && field_0x6c8 > nREG_F(15) + 5000.0f) {
        return 1;
    }

    field_0x6cc = fopAcM_searchPlayerAngleY(this);
    field_0x6d0 = current.pos.abs(home.pos);

    if (field_0x6ea != 0) {
        field_0x6ea--;
    }

    if (field_0x6ec != 0) {
        field_0x6ec--;
    }

    if (field_0x6ee != 0) {
        field_0x6ee--;
    }

    if (field_0x6f0 != 0) {
        field_0x6f0--;
    }

    if (field_0x6f2 != 0) {
        field_0x6f2--;
    }

    if (field_0x6f6 != 0) {
        field_0x6f6--;
    }

    checkGroundSand();
    action();
    mtx_set();
    cc_set();

    if (mpModelMorf != NULL) {
        if (field_0x6e5 != 0) {
            if (daPy_getPlayerActorClass()->checkWolfLock(this)) {
                daPy_getPlayerActorClass()->cancelWolfLock(this);
            }

            onWolfNoLock();
        } else {
            offWolfNoLock();
        }

        cXyz i_effPos;
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&i_effPos);
        cXyz i_effSize(1.0f, 1.0f, 1.5f);
        setMidnaBindEffect(this, &mSound, &i_effPos, &i_effSize);
    }

    return 1;
}

/* 807AC148-807AC168 004E28 0020+00 2/1 0/0 0/0 .text            daE_SW_Execute__FP8daE_SW_c */
static int daE_SW_Execute(daE_SW_c* i_this) {
    return i_this->execute();
}

/* 807AC168-807AC170 004E48 0008+00 1/0 0/0 0/0 .text            daE_SW_IsDelete__FP8daE_SW_c */
static int daE_SW_IsDelete(daE_SW_c* i_this) {
    return 1;
}

/* 807AC170-807AC1E4 004E50 0074+00 1/1 0/0 0/0 .text            _delete__8daE_SW_cFv */
int daE_SW_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_SW");

    if (field_0xaf9 != 0) {
        l_initHIO = 0;
    }

    if (field_0xaf8 != 0) {
        mSound.deleteObject();
    }

    return 1;
}

/* 807AC1E4-807AC204 004EC4 0020+00 1/0 0/0 0/0 .text            daE_SW_Delete__FP8daE_SW_c */
static int daE_SW_Delete(daE_SW_c* i_this) {
    return i_this->_delete();
}

/* 807AC204-807AC2FC 004EE4 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_SW_cFv */
int daE_SW_c::CreateHeap() {
    mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_SW", 0x10), NULL, NULL,
                                       (J3DAnmTransform*)dComIfG_getObjectRes("E_SW", 0xD), 0, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 807AC2FC-807AC31C 004FDC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    daE_SW_c* i_this = (daE_SW_c*)a_this;
    return i_this->CreateHeap();
}

/* 807AC31C-807AC854 004FFC 0538+00 1/1 0/0 0/0 .text            create__8daE_SW_cFv */
cPhs__Step daE_SW_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daE_SW_c);

    field_0x68c = fopAcM_GetParam(this) & 15;
    if (field_0x68c == 15) {
        field_0x68c = 0;
    }

    u32 uVar1 = (fopAcM_GetParam(this) >> 4) & 0xFF;
    if (uVar1 == 0xFF) {
        field_0x690 = 1000000000.0f;
    } else {
        field_0x690 = uVar1 * 100.0f;
    }

    field_0x694 = (fopAcM_GetParam(this) >> 12) & 15;
    if (field_0x694 == 15) {
        field_0x694 = 0;
    }

    field_0x695 = fopAcM_GetParam(this) >> 16;
    if (field_0x695 == 0xFF || field_0x695 == 0) {
        field_0x695 = 1;
    }

    u8 uVar2 = fopAcM_GetParam(this) >> 24;
    if (uVar2 == 0xFF) {
        uVar2 = 0;
    }
    field_0x6e8 = uVar2;
    
    field_0xaf8 = 0;

    if (field_0x694 == 0) {
        field_0x696 = current.angle.x;

        if (field_0x696 != 0xFF && dComIfGs_isSwitch(field_0x696, fopAcM_GetRoomNo(this))) {
            OS_REPORT("E_SW やられ後なので再セットしません\n"); // Since it's after the E_SW has been executed, I won't reset it.
            return cPhs_ERROR_e;
        }
    } else {
        field_0x696 = 0xFF;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_SW");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_SW PARAM %x %d %d\n", fopAcM_GetParam(this), field_0x696, fopAcM_GetID(this));
        shape_angle.x = 0;
        current.angle.x = 0;

        if (field_0x694 != 1) {
            if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x1400)) {
                return cPhs_ERROR_e;
            }
        }

        if (l_initHIO == 0) {
            field_0xaf9 = 1;
            l_initHIO = 1;
            l_HIO.field_0x4 = -1;
        }

        attention_info.flags = 4;

        if (mpModelMorf != NULL) {
            fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
        }

        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
        mBgc.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 2, field_0x6f8, fopAcM_GetSpeed_p(this), NULL, NULL);
        field_0x6f8[0].SetWall(10.0f, 50.0f);
        field_0x6f8[1].SetWall(-10.0f, 50.0f);
        health = 10;
        field_0x560 = 10;
        mStts.Init(100, 0, this);
        field_0x98c.Set(cc_sph_src);
        field_0x98c.SetStts(&mStts);
        field_0xaf8 = 1;

        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("E_sw");
        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;
        gravity = -5.0f;

        switch (field_0x6e8) {
            case 0:
                field_0x6dc = 1.0f;
                field_0x698 = 1;
                field_0x6e9 = 2;
                break;

            case 2:
                field_0x6dc = 0.5f;
                field_0x698 = 1;
                field_0x6e9 = 1;
                break;

            case 1:
                field_0x6dc = 1.5f;
                field_0x698 = 2;
                field_0x6e9 = 3;
                break;

            case 3:
                field_0x6dc = 3.0f;
                field_0x698 = 5;
                field_0x6e9 = 3;
                break;
        }

        field_0x6d8 = -120.0f;

        if (field_0x694 == 0) {
            mBgc.OnLineCheck();
            field_0x698 = 2;
            attention_info.distances[2] = 3;
            d_setAction(daE_SW_c::d_wait);
        } else {
            attention_info.distances[2] = 4;

            if (field_0x6dc > 1.0f) {
                field_0x98c.SetAtSpl((dCcG_At_Spl)1);
            } else {
                field_0x98c.SetAtSpl((dCcG_At_Spl)0);
            }

            if (field_0x694 == 1) {
                setActionMode(11, 0);
            }
        }

        daE_SW_Execute(this);
        field_0x684 = 1;
    }

    return phase;
}

/* 807ACA20-807ACA40 005700 0020+00 1/0 0/0 0/0 .text            daE_SW_Create__FP8daE_SW_c */
static int daE_SW_Create(daE_SW_c* i_this) {
    return i_this->create();
}

/* 807ACA40-807ACAE4 005720 00A4+00 12/12 0/0 0/0 .text d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v */
void daE_SW_c::d_setAction(void (daE_SW_c::*action)()) {
    if (field_0xafc) {
        mMoveMode = -1;
        (this->*field_0xafc)();
    }

    field_0xb0c = field_0xafc;
    field_0xafc = action;
    mMoveMode = 0;
    (this->*field_0xafc)();
}

/* 807ACAE4-807ACCB0 0057C4 01CC+00 1/1 0/0 0/0 .text            d_checkFall__8daE_SW_cFv */
void daE_SW_c::d_checkFall() {
    // NONMATCHING
    if (d_checkAction(daE_SW_c::d_hook) || d_checkAction(daE_SW_c::d_fall) || d_checkAction(daE_SW_c::d_attk)) {
        return;
    }

    if (mBgc.ChkGroundHit()) {
        return;
    }

    dBgS_GndChk gnd_chk;
    cXyz i_pos(current.pos);
    i_pos.y += 100.0f;
    gnd_chk.SetPos(&i_pos);
    f32 fVar1 = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if (speed.y < 0.0f) {
        if ((fVar1 == -1000000000.0f || std::abs(fVar1 - current.pos.y) > 1000.0f) || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 4 || 
            dComIfG_Bgsp().GetGroundCode(gnd_chk) == 10 || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 5) {
            d_setAction(daE_SW_c::d_fall);
        }
    }
}

/* 807ACCB0-807ACFF8 005990 0348+00 1/1 0/0 0/0 .text            d_damage_check__8daE_SW_cFv */
void daE_SW_c::d_damage_check() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    mStts.Move();

    if (field_0x6f2 == 0) {
        if (d_checkAction(daE_SW_c::d_damage) || d_checkAction(daE_SW_c::d_die)) {
            return;
        }

        if (field_0x98c.ChkAtShieldHit()) {
            field_0x98c.OffAtShieldHit();

            if (player->checkPlayerGuard()) {
                d_setAction(daE_SW_c::d_chance);
                return;
            }
        }

        if (field_0x98c.ChkTgHit()) {
            mAtInfo.mpCollider = field_0x98c.GetTgHitObj();

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_40)) {
                health = 100;
            } else if (field_0x698 > 1) {
                health = 100;
            } else {
                health = 10;
            }

            cc_at_check(this, &mAtInfo);

            if (!mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT)) {
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                    field_0x6f2 = 20;
                } else {
                    field_0x6f2 = 10;
                }

                if (mAtInfo.mHitStatus != 0) {
                    field_0x6f2 = 10;
                }

                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) && (player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT || player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH)) {
                    health = 0;
                    field_0x698 = 0;
                    d_setAction(daE_SW_c::d_damage);
                } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB) ||
                           mAtInfo.mpCollider->ChkAtType(AT_TYPE_MIDNA_LOCK)) {
                    health = 0;
                    field_0x698 = 0;
                    d_setAction(daE_SW_c::d_damage);
                } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                    d_setAction(daE_SW_c::d_hook);
                } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) ||
                           mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                    if (!d_checkAction(daE_SW_c::d_chance2)) {
                        d_setAction(daE_SW_c::d_chance2);
                    }
                } else {
                    field_0x698--;
                    d_setAction(daE_SW_c::d_damage);
                }
            }
        }
    }
}

/* 807ACFF8-807AD10C 005CD8 0114+00 1/1 0/0 0/0 .text            d_action__8daE_SW_cFv */
void daE_SW_c::d_action() {
    field_0x98c.OffAtSetBit();
    d_damage_check();

    if (field_0x6dc > 1.0f) {
        field_0x98c.SetAtSpl((dCcG_At_Spl)1);
    } else {
        field_0x98c.SetAtSpl((dCcG_At_Spl)0);
    }

    fopAcM_posMoveF(this, mStts.GetCCMoveP());
    mBgc.CrrPos(dComIfG_Bgsp());
    d_checkFall();
    checkGroundSand();
    (this->*field_0xafc)();
    mSound.setLinkSearch(field_0xb14);

    if (mpModelMorf != NULL) {
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&field_0x674);
    }
}

/* 807AD10C-807AD17C 005DEC 0070+00 1/1 0/0 0/0 .text            d_bomb_check__8daE_SW_cFv */
bool daE_SW_c::d_bomb_check() {
    if (field_0x68c != 0) {
        return false;
    }

    fopAc_ac_c* bomb = search_bomb();
    if (bomb != NULL && fopAcM_searchActorDistance(this, bomb) < l_HIO.bomb_notice_dist) {
        return true;
    }

    return false;
}

/* 807AD17C-807AD4A8 005E5C 032C+00 2/0 0/0 0/0 .text            d_bm_chase__8daE_SW_cFv */
void daE_SW_c::d_bm_chase() {
    // NONMATCHING
    if (mMoveMode != -1) {
        dBomb_c* bomb = NULL;
        fopAcM_SearchByID(field_0x688, (fopAc_ac_c**)&bomb);

        if (bomb == NULL || bomb->checkStateExplode()) {
            d_setAction(daE_SW_c::d_wait);
        } else {
            switch (mMoveMode) {
                case 0:
                    bckSet(0xC, 10.0f, 2, 1.0f);
                    mMoveMode++;
                    return;

                case 1:
                    if (bomb->speedF < 0.1f && current.pos.absXZ(bomb->current.pos) < l_HIO.bomb_attack_start_range) {
                        field_0x6ea = cM_rndF(30.0f);
                        mMoveMode++;
                    }
                    break;

                case 2:
                    if (field_0x6ea == 0) {
                        field_0x6f0 = 10;
                        mMoveMode++;
                    }
                    break;

                case 3:
                    if (field_0x6f0 == 0) {
                        field_0x6a8 = bomb->current.pos;
                        d_setAction(daE_SW_c::d_attk);
                        return;
                    }
                    // fallthrough
                default:
                    return;
            }

            setSmokeEffect();
            cLib_addCalc2(&speedF, 15.0f, 1.0f, 3.0f);

            s16 sVar1;
            if (bomb != NULL) {
                sVar1 = cLib_targetAngleY(&current.pos, &bomb->current.pos);
            }

            cLib_addCalcAngleS2(&current.angle.y, sVar1, 8, 0x400);
            shape_angle.y = current.angle.y;
        }
    }
}

/* 807AD4A8-807AD7C0 006188 0318+00 7/0 0/0 0/0 .text            d_wait__8daE_SW_cFv */
void daE_SW_c::d_wait() {
    // NONMATCHING
    switch (mMoveMode) {
        case 0:
            field_0x98c.SetTgType(0x4000);
            field_0x6e4 = 1;
            field_0x6e5 = 1;
            bckSet(0xC, 10.0f, 2, 1.0f);
            field_0x6ea = 50;
            field_0x6ec = cM_rndF(30.0f) + 30.0f;
            mMoveMode++;
            return;

        case 1:
            if ((field_0x6bc & 2) != 0) {
                if (field_0x6d0 > 1000.0f) {
                    field_0x69e = cLib_targetAngleY(&current.pos, &home.pos);
                } else {
                    field_0x69e = cM_rndFX(60000.0f);
                }
            } else {
                field_0x69e = cM_rndFX(30000.0f) + 32768.0f;
            }
            // fallthrough
        case 2:
            if (field_0x6ec == 0) {
                if (field_0x6f8[0].ChkWallHit()) {
                    field_0x6ec = 96;
                    field_0x69e = field_0x6f8[0].GetWallAngleY();
                } else if (field_0x6f8[1].ChkWallHit()) {
                    field_0x6ec = 96;
                    field_0x69e = field_0x6f8[1].GetWallAngleY();
                }
            }

            cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 8, 0x400);

            if (field_0x6ea == 0) {
                field_0x6ea = 50;
                mMoveMode++;
            }

            cLib_chaseF(&speedF, 15.0f, 1.0f);
            break;

        case 3:
            if (field_0x6ea == 0) {
                mMoveMode = 1;

                if (field_0x6d0 > 1000.0f) {
                    field_0x6ea = 90;
                } else {
                    field_0x6ea = 30;
                }
            }

            if (field_0x6ec == 0) {
                if (field_0x6f8[0].ChkWallHit()) {
                    field_0x6ec = 96;
                    field_0x69e = field_0x6f8[0].GetWallAngleY();
                } else if (field_0x6f8[1].ChkWallHit()) {
                    field_0x6ec = 96;
                    field_0x69e = field_0x6f8[1].GetWallAngleY();
                }
            }

            cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 8, 0x400);
            cLib_addCalc2(&speedF, 0.0f, 0.2f, 10.0f);
            break;

        default:
            return;
    }

    if (speedF > 2.0f) {
        setSmokeEffect();
    }

    shape_angle.y = current.angle.y;

    if (d_bomb_check()) {
        d_setAction(daE_SW_c::d_bm_chase);
    } else if (field_0x6ec == 0 && d_chaseCheck()) {
        d_setAction(daE_SW_c::d_chase);
    }
}

/* 807AD7C0-807ADA08 0064A0 0248+00 1/1 0/0 0/0 .text            d_chaseCheck__8daE_SW_cFv */
bool daE_SW_c::d_chaseCheck() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fVar1 = current.pos.absXZ(player->current.pos);
    BOOL bVar1 = false;

    if (fVar1 >= l_HIO.character_notice_dist) {
        return false;
    }

    if (dComIfGp_getAttention()->LockonTruth()) {
        if (dComIfGp_getAttention()->LockonTarget(0) == this) {
            bVar1 = true;
        }
    }

    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    
    s16 sVar1 = cLib_distanceAngleS(fopCamM_GetAngleY(camera), field_0x6cc);
    if (bVar1 || (sVar1 > 0x6000 && (abs((s16)(current.angle.y - field_0x6cc)) < 0x2000 || 
        fVar1 < l_HIO.human_attack_init_range))) {
        return true;
    }

    return false;
}

/* 807ADA08-807ADE50 0066E8 0448+00 1/0 0/0 0/0 .text            d_chase__8daE_SW_cFv */
void daE_SW_c::d_chase() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar1;

    switch (mMoveMode) {
        case 0:
            bckSet(0xC, 10.0f, 2, 1.0f);
            field_0xb14 = true;
            field_0x6ea = 60;
            field_0x6ee = 240;
            mMoveMode++;
            return;

        case 1:
            setSmokeEffect();

            if (field_0x6ee == 0) {
                d_setAction(daE_SW_c::d_wait);
                return;
            }

            if (player->current.pos.absXZ(current.pos) >= l_HIO.character_notice_dist) {
                d_setAction(daE_SW_c::d_wait);
                return;
            }
            
            if (player->current.pos.absXZ(current.pos) < l_HIO.human_attack_init_range) {
                d_setAction(daE_SW_c::d_attk);
                return;
            }
                
            if (field_0x6ec == 0) {
                if (mBgc.ChkWallHit()) {
                    if (field_0x6f8[0].ChkWallHit()) {
                        sVar1 = field_0x6f8[0].GetWallAngleY();
                    } else if (field_0x6f8[1].ChkWallHit()) {
                        sVar1 = field_0x6f8[1].GetWallAngleY();
                    }

                    if (abs((s16)(current.angle.y - (sVar1 - 0x8000))) < 0x2000) {
                        field_0x69e = sVar1;
                        field_0x6ec = 60;
                    }
                } else {
                    field_0x69e = field_0x6cc;
                }
            }
            
            cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 8, 0x400);
            cLib_chaseF(&speedF, 15.0f, 1.0f);
            break;

        default:
            return;
    }
    
    shape_angle.y = current.angle.y;

    if (field_0x6ea != 0) {
        setBeforeJumpEffect();
    }
}

/* 807ADE50-807AE4B4 006B30 0664+00 3/0 0/0 0/0 .text            d_attk__8daE_SW_cFv */
void daE_SW_c::d_attk() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar1;

    switch (mMoveMode) {
        case 0:
            field_0x98c.SetTgType(0xd8fbfdff);
            field_0x6e4 = 0;
            field_0x6e5 = 0;
            setDiveEffect();
            mSound.startCreatureSound(Z2SE_EN_SW_JUMP_OUT, field_0x6e9, -1);
            bckSet(6, 0.0f, 0, 1.0f);
            shape_angle.x = -0x4000;
            field_0xb14 = true;
            sVar1 = field_0x69e;
            shape_angle.y = sVar1;
            current.angle.y = sVar1;
            gravity = -4.0f;

            if (d_checkOldAction(daE_SW_c::d_bm_chase)) {
                field_0x69e = cLib_targetAngleY(&current.pos, &field_0x6a8);
                speedF = current.pos.abs(field_0x6a8) / 25.0f;
            } else {
                field_0x69e = field_0x6cc;
                field_0x6c8 = player->current.pos.absXZ(current.pos);
                speedF = field_0x6c8 / 25.0f;
            }

            speed.y = 65.0f;
            mMoveMode++;
            return;

        case 1:
            setJumpEffect();
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);

            if (speed.y <= 0.0f) {
                field_0x6d8 = 0.0f;
                current.pos.y -= 120.0f;
                bckSet(5, 10.0f, 0, 1.0f);
                field_0x6ea = 60;
                mMoveMode++;
            }
            break;

        case 2:
            setJumpEffect();
            cLib_chaseAngleS(&shape_angle.x, 0x4000, 0x400);
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (mBgc.ChkGroundHit()) {
                gravity = -5.0f;
                field_0x6d8 = -60.0f;

                if ((field_0x6bc & 1) == 0) {
                    d_setAction(daE_SW_c::d_chance);
                } else {
                    field_0x6e4 = 1;
                    setDiveEffect();
                    mSound.startCreatureSound(Z2SE_EN_SW_JUMP_IN, field_0x6e9, -1);
                    mMoveMode++;
                }

                current.angle.y = 0;
            } else if (field_0x6ea == 0) {
                fopAcM_delete(this);
            }

            field_0x98c.OnAtSetBit();
            break;

        case 3:
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            if (cLib_chaseF(&field_0x6d8, -120.0f, 60.0f) != 0) {
                field_0x6e5 = 1;
                shape_angle.x = 0;
                f32 fVar1;
                
                if (player->checkHorseRide() == 0) {
                    fVar1 = 19.0f;
                } else {
                    fVar1 = 30.0f;
                }

                if (player->getSpeedF() < fVar1) {
                    field_0x6ea = 15;
                }

                mMoveMode++;
            }
            break;

        case 4:
            if ((field_0x6bc & 3) == 0) {
                d_setAction(daE_SW_c::d_wait);
                current.pos = old.pos;
                break;
            } else {
                if (field_0x6ea != 0) {
                    cLib_chaseF(&speedF, 15.0f, 1.0f);
                    return;
                }

                d_setAction(daE_SW_c::d_wait);
                field_0x6d8 = -120.0f;
                cXyz sp30(current.pos);
                sp30.y += 200.0f;

                if (!fopAcM_gc_c::gndCheck(&sp30)) {
                    fopAcM_delete(this);
                    return;
                }
                
                current.pos.y = fopAcM_gc_c::getGroundY();
                return;
            }
            break;

        default:
            return;
    }

    cLib_addCalcAngleS2(&current.angle.y, field_0x69e, 4, 0x800);
    shape_angle.y = current.angle.y;
}

/* 807AE4B4-807AE7F4 007194 0340+00 5/0 0/0 0/0 .text            d_chance__8daE_SW_cFv */
void daE_SW_c::d_chance() {
    // NONMATCHING
    s16 sVar1;

    switch (mMoveMode) {
        case 0:
            field_0xb14 = true;
            field_0x6d8 = 0.0f;
            field_0x98c.OnTgSetBit();
            field_0x98c.SetTgType(0xd8fbfdff);
            gravity = -5.0f;
            mMoveMode++;
            bckSet(8, 5.0f, 2, 1.0f);
            speedF = 0.0f;

            if (d_checkOldAction(daE_SW_c::d_hook)) {
                field_0x6ea = 200;
            } else {
                field_0x6ea = 100;
            }

            field_0x6f2 = 10;
            shape_angle.x = 0;
            break;

        case 1:
            if (mBgc.ChkGroundHit()) {
                mSound.startCreatureSound(Z2SE_EN_SW_BTBT, field_0x6e9, -1);
                mMoveMode++;
            }
            break;

        case 2:
            if ((field_0x6bc & 1) != 0 && mBgc.ChkGroundHit()) {
                field_0xae8 = dComIfGp_particle_set(field_0xae8, 0x8378, &field_0x674, &tevStr, &shape_angle,
                                                    NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
            }

            if (mpModelMorf->checkFrame(19.0f) || mpModelMorf->checkFrame(36.0f)) {
                mSound.startCreatureSound(Z2SE_EN_SW_BTBT, field_0x6e9, -1);
            }

            if (mpModelMorf->checkFrame(10.0f)) {
                speedF = 7.0f;
                sVar1 = cM_rndFX(32000.0f);

                if (field_0x6bc != 3) {
                    sVar1 = cLib_targetAngleY(&current.pos, &field_0x65c) + cM_rndFX(8000.0f);
                }

                current.angle.y = sVar1;
                shape_angle.y = sVar1;
            } else if (mpModelMorf->checkFrame(20.0f)) {
                speedF = 0.0f;
            }

            if (field_0x6ea == 0 && mBgc.ChkGroundHit() && field_0x6bc == 3) {
                d_setAction(daE_SW_c::d_dive);
            }
            break;
    }
}

/* 807AE7F4-807AE968 0074D4 0174+00 2/0 0/0 0/0 .text            d_chance2__8daE_SW_cFv */
void daE_SW_c::d_chance2() {
    // NONMATCHING
}

/* 807AE968-807AEB08 007648 01A0+00 1/0 0/0 0/0 .text            d_dive__8daE_SW_cFv */
void daE_SW_c::d_dive() {
    // NONMATCHING
}

/* 807AEB08-807AEE44 0077E8 033C+00 4/0 0/0 0/0 .text            d_damage__8daE_SW_cFv */
void daE_SW_c::d_damage() {
    // NONMATCHING
}

/* 807AEE44-807AF01C 007B24 01D8+00 2/0 0/0 0/0 .text            d_die__8daE_SW_cFv */
void daE_SW_c::d_die() {
    // NONMATCHING
}

/* 807AF01C-807AF46C 007CFC 0450+00 3/0 0/0 0/0 .text            d_hook__8daE_SW_cFv */
void daE_SW_c::d_hook() {
    // NONMATCHING
}

/* 807AF46C-807AF4B4 00814C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 807AF4B4-807AF57C 008194 00C8+00 2/0 0/0 0/0 .text            d_fall__8daE_SW_cFv */
void daE_SW_c::d_fall() {
    // NONMATCHING
}

/* 807AF57C-807AF828 00825C 02AC+00 1/1 0/0 0/0 .text            d_execute__8daE_SW_cFv */
int daE_SW_c::d_execute() {
    // NONMATCHING
}

/* 807AF828-807AF870 008508 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807AF8B8-807AF8F4 008598 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sw_cpp */
void __sinit_d_a_e_sw_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807AF8B8, __sinit_d_a_e_sw_cpp);
#pragma pop

/* 807AF8F4-807AF8FC 0085D4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807AF8F4() {
    // NONMATCHING
}

/* 807AF8FC-807AF904 0085DC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807AF8FC() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 807AFF74-807AFF94 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SW_Method */
static actor_method_class l_daE_SW_Method = {
    (process_method_func)daE_SW_Create,
    (process_method_func)daE_SW_Delete,
    (process_method_func)daE_SW_Execute,
    (process_method_func)daE_SW_IsDelete,
    (process_method_func)daE_SW_Draw,
};

/* 807AFF94-807AFFC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SW */
extern actor_process_profile_definition g_profile_E_SW = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SW,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_SW_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  191,                    // mPriority
  &l_daE_SW_Method,       // sub_method
  0x000C0100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
