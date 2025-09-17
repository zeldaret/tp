/**
 * @file d_a_e_gm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_gm.h"
#include "d/actor/d_a_cstatue.h"
#include "d/actor/d_a_b_gm.h"
#include "f_op/f_op_camera_mng.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_GM_HIO_cFv();
extern "C" void setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v();
extern "C" void action__8daE_GM_cFv();
extern "C" static void s_obj_sub2__FPvPv();
extern "C" void egg_wait__8daE_GM_cFv();
extern "C" void appear__8daE_GM_cFv();
extern "C" void walk__8daE_GM_cFv();
extern "C" void create_item__8daE_GM_cFv();
extern "C" void pechanko_damage__8daE_GM_cFv();
extern "C" void wait__8daE_GM_cFv();
extern "C" void egg_damage__8daE_GM_cFv();
extern "C" void setDeathLightEffect__8daE_GM_cFv();
extern "C" void setEggBreakEffect__8daE_GM_cFv();
extern "C" void damage__8daE_GM_cFv();
extern "C" void core_damage__8daE_GM_cFv();
extern "C" void core_delwait__8daE_GM_cFv();
extern "C" void core_piku__8daE_GM_cFv();
extern "C" void core_pechanko_damage__8daE_GM_cFv();
extern "C" void hook__8daE_GM_cFv();
extern "C" void rebound__8daE_GM_cFv();
extern "C" void walk2__8daE_GM_cFv();
extern "C" void dead_wait__8daE_GM_cFv();
extern "C" void core_wait__8daE_GM_cFv();
extern "C" void core_escape__8daE_GM_cFv();
extern "C" void chaseCheck__8daE_GM_cFv();
extern "C" void normal_wait__8daE_GM_cFv();
extern "C" void normal_chase__8daE_GM_cFv();
extern "C" void mtx_set__8daE_GM_cFv();
extern "C" void cc_set__8daE_GM_cFv();
extern "C" void draw__8daE_GM_cFv();
extern "C" static void daE_GM_Draw__FP8daE_GM_c();
extern "C" void damage_check__8daE_GM_cFv();
extern "C" void execute__8daE_GM_cFv();
extern "C" static void daE_GM_Execute__FP8daE_GM_c();
extern "C" static bool daE_GM_IsDelete__FP8daE_GM_c();
extern "C" void _delete__8daE_GM_cFv();
extern "C" static void daE_GM_Delete__FP8daE_GM_c();
extern "C" void CreateHeap__8daE_GM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_GM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_GM_Create__FP8daE_GM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_GM_HIO_cFv();
extern "C" void __sinit_d_a_e_gm_cpp();
extern "C" static void func_806D74F0();
extern "C" static void func_806D74F8();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_gm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeRS__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

namespace {
    /* 806D7B34-806D7B38 000038 0004+00 2/3 0/0 0/0 .data l_hitActorID__22@unnamed@d_a_e_gm_cpp@ */
    static fpc_ProcID l_hitActorID = fpcM_ERROR_PROCESS_ID_e;

    /* 806D7B38-806D7B3C 00003C 0004+00 2/4 0/0 0/0 .data l_coreActorID__22@unnamed@d_a_e_gm_cpp@ */
    static fpc_ProcID l_coreActorID = fpcM_ERROR_PROCESS_ID_e;

    /* 806D7B3C-806D7B7C 000040 0040+00 0/1 0/0 0/0 .data cc_sph_src__22@unnamed@d_a_e_gm_cpp@ */
    static dCcD_SrcSph cc_sph_src = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xD}, {0xDAFBFDFF, 0x3}, 0x75}},
            {dCcD_SE_HARD_BODY, 0, 0, 0, 0},
            {dCcD_SE_NONE, 0, 0, 0, 2},
            {0x0},
        },
        {
            {{0.0f, 0.0f, 0.0f}, 30.0f},
        }
    };
} // namespace

/* 806D7B7C-806D7B88 -00001 000C+00 1/1 0/0 0/0 .data            @4075 */
SECTION_DATA static void* lit_4075[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};

/* 806D7B88-806D7B94 -00001 000C+00 1/1 0/0 0/0 .data            @4077 */
SECTION_DATA static void* lit_4077[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7B94-806D7BA0 -00001 000C+00 0/1 0/0 0/0 .data            @4125 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4125[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BA0-806D7BAC -00001 000C+00 0/1 0/0 0/0 .data            @4143 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4143[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BAC-806D7BB8 -00001 000C+00 0/1 0/0 0/0 .data            @4152 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4152[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BB8-806D7BC4 -00001 000C+00 0/1 0/0 0/0 .data            @4160 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4160[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__8daE_GM_cFv,
};
#pragma pop

/* 806D7BC4-806D7BD0 -00001 000C+00 0/1 0/0 0/0 .data            @4169 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4169[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__8daE_GM_cFv,
};
#pragma pop

/* 806D7BD0-806D7BDC -00001 000C+00 0/1 0/0 0/0 .data            @4236 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4236[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BDC-806D7BE8 -00001 000C+00 0/1 0/0 0/0 .data            @4242 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4242[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk2__8daE_GM_cFv,
};
#pragma pop

/* 806D7BE8-806D7BF4 -00001 000C+00 0/1 0/0 0/0 .data            @4245 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4245[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7BF4-806D7C00 -00001 000C+00 0/1 0/0 0/0 .data            @4281 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4281[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C00-806D7C0C -00001 000C+00 0/1 0/0 0/0 .data            @4288 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4288[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C0C-806D7C18 -00001 000C+00 0/1 0/0 0/0 .data            @4292 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4292[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C18-806D7C24 -00001 000C+00 1/1 0/0 0/0 .data            @4483 */
SECTION_DATA static void* lit_4483[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};

/* 806D7C24-806D7C28 000128 0004+00 1/1 0/0 0/0 .data            l_egg_eff_id */
static u16 l_egg_eff_id[2] ={
    dPa_RM(ID_ZI_S_GBEGG_HARETSU_A), dPa_RM(ID_ZI_S_GBEGG_HARETSU_B),
};

/* 806D7C28-806D7C34 -00001 000C+00 1/1 0/0 0/0 .data            @4706 */
SECTION_DATA static void* lit_4706[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_delwait__8daE_GM_cFv,
};

/* 806D7C34-806D7C40 -00001 000C+00 1/1 0/0 0/0 .data            @4718 */
SECTION_DATA static void* lit_4718[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C40-806D7C4C -00001 000C+00 1/1 0/0 0/0 .data            @4826 */
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7C4C-806D7C58 -00001 000C+00 1/1 0/0 0/0 .data            @4830 */
SECTION_DATA static void* lit_4830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C58-806D7C64 -00001 000C+00 1/1 0/0 0/0 .data            @4863 */
SECTION_DATA static void* lit_4863[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_delwait__8daE_GM_cFv,
};

/* 806D7C64-806D7C70 -00001 000C+00 1/1 0/0 0/0 .data            @4892 */
SECTION_DATA static void* lit_4892[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C70-806D7C7C -00001 000C+00 0/1 0/0 0/0 .data            @4958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C7C-806D7C88 -00001 000C+00 0/1 0/0 0/0 .data            @4962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C88-806D7C94 -00001 000C+00 0/1 0/0 0/0 .data            @4969 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4969[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C94-806D7CA0 -00001 000C+00 0/1 0/0 0/0 .data            @4979 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4979[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk2__8daE_GM_cFv,
};
#pragma pop

/* 806D7CA0-806D7CAC -00001 000C+00 0/1 0/0 0/0 .data            @4984 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4984[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};
#pragma pop

/* 806D7CAC-806D7CB8 -00001 000C+00 0/1 0/0 0/0 .data            @4989 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4989[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CB8-806D7CC4 -00001 000C+00 0/1 0/0 0/0 .data            @4996 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CC4-806D7CD0 -00001 000C+00 0/1 0/0 0/0 .data            @4998 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4998[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7CD0-806D7CDC -00001 000C+00 0/1 0/0 0/0 .data            @5002 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5002[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7CDC-806D7CE8 -00001 000C+00 0/1 0/0 0/0 .data            @5056 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5056[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7CE8-806D7CF4 -00001 000C+00 0/1 0/0 0/0 .data            @5062 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5062[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CF4-806D7D00 -00001 000C+00 1/1 0/0 0/0 .data            @5179 */
SECTION_DATA static void* lit_5179[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7D00-806D7D0C -00001 000C+00 1/1 0/0 0/0 .data            @5255 */
SECTION_DATA static void* lit_5255[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7D0C-806D7D18 -00001 000C+00 1/1 0/0 0/0 .data            @5469 */
SECTION_DATA static void* lit_5469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_chase__8daE_GM_cFv,
};

/* 806D7D18-806D7D24 -00001 000C+00 1/1 0/0 0/0 .data            @5581 */
SECTION_DATA static void* lit_5581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};

/* 806D7D24-806D7D30 -00001 000C+00 0/1 0/0 0/0 .data            @5911 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5911[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hook__8daE_GM_cFv,
};
#pragma pop

/* 806D7D30-806D7D3C -00001 000C+00 0/1 0/0 0/0 .data            @5916 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5916[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_piku__8daE_GM_cFv,
};
#pragma pop

/* 806D7D3C-806D7D48 -00001 000C+00 0/1 0/0 0/0 .data            @5920 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5920[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_pechanko_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D48-806D7D54 -00001 000C+00 0/1 0/0 0/0 .data            @5923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D54-806D7D60 -00001 000C+00 0/1 0/0 0/0 .data            @5930 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5930[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7D60-806D7D6C -00001 000C+00 0/1 0/0 0/0 .data            @5934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pechanko_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D6C-806D7D78 -00001 000C+00 0/1 0/0 0/0 .data            @5939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D78-806D7D84 -00001 000C+00 0/1 0/0 0/0 .data            @5950 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5950[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D84-806D7D90 -00001 000C+00 0/1 0/0 0/0 .data            @5952 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5952[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7D90-806D7D9C -00001 000C+00 0/1 0/0 0/0 .data            @6198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7D9C-806D7DA8 -00001 000C+00 0/1 0/0 0/0 .data            @6205 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6205[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7DA8-806D7DB4 -00001 000C+00 0/1 0/0 0/0 .data            @6208 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6208[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7E04-806D7E10 000308 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806D7E10-806D7E1C 000314 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806D7E1C-806D7E28 000320 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806D7E28-806D7E34 00032C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806D7E34-806D7E40 000338 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806D7E40-806D7E64 000344 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806D74F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806D74F0,
};

/* 806D7E64-806D7E70 000368 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GM_HIO_c */
SECTION_DATA extern void* __vt__12daE_GM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GM_HIO_cFv,
};

/* 806D126C-806D12C8 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__12daE_GM_HIO_cFv */
daE_GM_HIO_c::daE_GM_HIO_c() {
    id = -1;
    model_size = 1.3f;
    basic_speed = 8.0f;
    max_acceleration = 10.0f;
    min_acceleration_cycle = 0x380;
    escape_speed = 20.0f;
    player_run_pursuit_speed = 20.0f;
    player_walk_pursuit_speed = 15.0f;
    player_search_y_limit = 300.0f;
}

/* 806D12C8-806D136C 000148 00A4+00 16/16 0/0 0/0 .text setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v */
void daE_GM_c::setAction(actionFunc action) {
    if (mAction) {
        field_0xa3c = -1;
        (this->*mAction)();
    }

    mOldAction = mAction;
    mAction = action;
    field_0xa3c = 0;
    (this->*mAction)();
}

// /* 806D7EB8-806D7EC4 000048 000C+00 0/1 0/0 0/0 .bss             @4050 */
// #pragma push
// #pragma force_active on
// static u8 lit_4050[12];
// #pragma pop
static u8 l_initHIO;

/* 806D7EC4-806D7EEC 000054 0028+00 5/8 0/0 0/0 .bss             l_HIO */
static daE_GM_HIO_c l_HIO;

// /* 806D7EEC-806D7EF8 00007C 000C+00 0/1 0/0 0/0 .bss             @4061 */
// #pragma push
// #pragma force_active on
// static u8 lit_4061[12];
// #pragma pop

namespace {
    /* 806D7EF8-806D7F04 000088 000C+00 0/3 0/0 0/0 .bss             l_corePos__22@unnamed@d_a_e_gm_cpp@ */
    static cXyz l_corePos(0.0f, 0.0f, 0.0f);

    // /* 806D7F04-806D7F10 000094 000C+00 0/1 0/0 0/0 .bss             @4062 */
    // #pragma push
    // #pragma force_active on
    // static u8 lit_4062[12];
    // #pragma pop

    /* 806D7F10-806D7F18 0000A0 0006+02 0/3 0/0 0/0 .bss             l_coreAngle__22@unnamed@d_a_e_gm_cpp@ */
    static csXyz l_coreAngle;

    /* 806D7F18-806D7F1C 0000A8 0004+00 0/2 0/0 0/0 .bss             l_coreSpeedF__22@unnamed@d_a_e_gm_cpp@ */
    static f32 l_coreSpeedF;
} // namespace

/* 806D7F1C-806D7F20 -00001 0004+00 11/14 0/0 0/0 .bss             None */
/* 806D7F1C 0002+00 data_806D7F1C None */
/* 806D7F1E 0001+00 data_806D7F1E None */
/* 806D7F1F 0001+00 data_806D7F1F None */
static u8 struct_806D7F1C;

static u8 lbl_186_bss_49;

static u8 lbl_195_bss_AE;

static u8 lbl_195_bss_AF;

/* 806D136C-806D14E0 0001EC 0174+00 1/1 0/0 0/0 .text            action__8daE_GM_cFv */
void daE_GM_c::action() {
    if (field_0xa76 != 0) {
        if (checkAction(&daE_GM_c::egg_wait) || checkAction(&daE_GM_c::rebound)) {
            mSph.SetAtType(0);
            mSph.SetTgType(0);
            cLib_addCalc2(&field_0xa48, 100.0f, 1.0f, 8.0f);

            if (field_0xa48 <= 100.0f && lbl_195_bss_AE == 0) {
                setDeathLightEffect();
                fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
                fopAcM_delete(this);
                lbl_195_bss_AE++;
                return;
            }
        }
    }

    (this->*mAction)();
}

/* 806D14E0-806D1580 000360 00A0+00 7/7 0/0 0/0 .text            s_obj_sub2__FPvPv */
static void* s_obj_sub2(void* i_actor, void* i_data) {
    if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_CSTATUE &&
        fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data) < 4000.0f && ((daCstatue_c*)i_actor)->checkBossAtGroundHit()) {
        return i_actor;
    }

    return NULL;
}

/* 806D1580-806D1A9C 000400 051C+00 3/6 0/0 0/0 .text            egg_wait__8daE_GM_cFv */
void daE_GM_c::egg_wait() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        cXyz sp3c, sp48;

        mSph.SetAtType(AT_TYPE_0);
        field_0xa69 = 0;
        maxFallSpeed = -100.0f;
        mAcchCir.SetWall(scale.y * 50.0f, scale.x * 50.0f);

        if (checkOldAction(&daE_GM_c::rebound)) {
            speedF = 0.0f;
            speed.y = 0.0f;
            gravity = -5.0f;
        } else {
            speedF = cM_rndFX(10.0f) + 15.0f;
            sp3c.set(0.0f, 0.0f, speedF);
            mDoMtx_stack_c::ZXYrotS(current.angle);
            mDoMtx_stack_c::multVec(&sp3c, &sp48);
            speed.y = sp48.y;
            gravity = -10.0f;
            field_0xa6a = 0;

            if (arg0 == 1) {
                field_0xa71 = 0;
                current.angle.y = cM_rndFX(32768.0f);
            } else {
                mSound.startCreatureSound(Z2SE_EN_GBA_LAYEGG, 0, -1);
                current.angle.y += (int)cM_rndFX(8192.0f);
            }
        }

        field_0xa3c++;
    } else if (field_0xa3c == -1) {
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
    } else if (field_0xa3c == 1) {
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());
        cLib_chaseF(&field_0xa10.y, field_0xa50 + 1.0f, 0.1f);
        cLib_chaseF(&field_0xa10.x, 1.0f, 0.05f);
        cLib_chaseF(&field_0xa10.z, 1.0f, 0.05f);

        if (mObjAcch.ChkGroundHit()) {
            daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
            } else {
                field_0xa10.set(1.2f, 0.6f, 1.2f);
                field_0xa50 = hREG_F(7) + 0.6f;
                field_0xa64 = 4000;
                speedF = 0.0f;
                field_0xa5c = 0x400;

                if (arg0 == 0) {
                    mSound.startCreatureSound(Z2SE_EN_GBA_LAND, 0, -1);
                }

                field_0xa3c++;
            }
        } else {
            current.angle.x += 0x400;
            current.angle.z += 0x400;
        }
    } else {
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());
        cLib_chaseF(&field_0xa10.y, field_0xa50 + 1.0f, 0.1f);
        cLib_chaseF(&field_0xa10.x, 1.0f, 0.05f);
        cLib_chaseF(&field_0xa10.z, 1.0f, 0.05f);

        if (mObjAcch.ChkGroundHit()) {
            daCstatue_c* statue_p2 = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p2 != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p2->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
                return;
            }
        }
        
        if (arg0 == 1) {
            cLib_addCalcAngleS(&field_0xa5c, 0, 8, 0x100, 4);
            current.angle.x += field_0xa5c;

            if (field_0xa71 != 0 || hREG_F(29) != 0.0f) {
                field_0xa6a++;
                if (field_0xa6a > field_0xa5e) {
                    field_0xa10.setall(1.0f);
                    current.angle.x = 0;
                    current.angle.z = 0;
                    setAction(&daE_GM_c::appear);
                }
            }
        } else if (field_0xa76 == 0) {
            field_0xa6a++;

            if (field_0xa6a < 8) {
                cLib_addCalcAngleS(&field_0xa5c, 0, 8, 0x100, 4);
                current.angle.x += field_0xa5c;
            } else if (field_0xa6a > 100) {
                current.angle.set(0, cM_rndFX(32768.0f), 0);
                field_0xa10.setall(1.0f);
                setAction(&daE_GM_c::appear);
            }
        }
    }
}

/* 806D1A9C-806D1CC0 00091C 0224+00 2/0 0/0 0/0 .text            appear__8daE_GM_cFv */
void daE_GM_c::appear() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 5), 0, 3.0f, 1.0f, 0.0f, -1.0f);
        mAcchCir.SetWall(scale.y * 10.0f, scale.x * 30.0f);
        mSound.startCreatureSound(Z2SE_EN_GBA_FUKA, 0, -1);
        speedF = 0.0f;
        gravity = -5.0f;
        field_0xa44 = 0.0f;
        setEggBreakEffect();
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (mObjAcch.ChkGroundHit()) {
            daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
            } else if (mpModelMorf->isStop()) {
                if (arg0 == 1) {
                    setAction(&daE_GM_c::walk2);
                } else {
                    setAction(&daE_GM_c::walk);
                }
            }
        }
    }
}

/* ############################################################################################## */
/* 806D7A20-806D7A28 000080 0008+00 0/1 0/0 0/0 .rodata          l_rand */
static s16 const l_rand[4] = {
    0xF800, 0x0400, 0xFC00, 0x0800,
};

/* 806D7A28-806D7A30 000088 0008+00 0/2 0/0 0/0 .rodata          l_rand2 */
static s16 const l_rand2[4] = {
    0xD000, 0x3800, 0xB800, 0x5000,
};

/* 806D7A30-806D7A40 000090 0010+00 0/0 0/0 0/0 .rodata          l_rand_base_spd */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rand_base_spd[16] = {
    0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806D7A30, &l_rand_base_spd);
#pragma pop

/* 806D1CC0-806D21A4 000B40 04E4+00 4/0 0/0 0/0 .text            walk__8daE_GM_cFv */
void daE_GM_c::walk() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 8), 2, 3.0f, 2.0f, 0.0f, -1.0f);
        field_0xa44 = 0.0f;
        mAcchCir.SetWall(scale.y * 10.0f, scale.x * 30.0f);
        field_0xa6b = 0;
        field_0xa6c = 0;
        field_0xa5e = 0;
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        daPy_py_c* player = daPy_getPlayerActorClass();

        if (field_0xa76 != 0) {
            setAction(&daE_GM_c::dead_wait);
        } else {
            b_gm_class* actor_p;
            if (fopAcM_SearchByID(fopAcM_GetLinkId(this), (fopAc_ac_c**)&actor_p) != 0 && actor_p != NULL && actor_p->mDemoMode == 0x15) {
                setAction(&daE_GM_c::wait);
            } else {
                speedF = l_HIO.basic_speed + l_HIO.max_acceleration * 0.5f + l_HIO.max_acceleration * 0.5f * cM_ssin(field_0xa5e);
                field_0xa5e += l_HIO.min_acceleration_cycle;
                mpModelMorf->setPlaySpeed(speedF / 6.5f);
                fopAcM_posMoveF(this, mStts.GetCCMoveP());
                mObjAcch.CrrPos(dComIfG_Bgsp());

                daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
                if (statue_p != NULL) {
                    field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                    speedF = cM_rndFX(5.0f);
                    setAction(&daE_GM_c::rebound);
                } else {
                    if (field_0xa6c == 0) {
                        if (current.pos.absXZ(player->current.pos) > 400.0f || (player->getDamageWaitTimer() == 0 && field_0xa72 == 0 && struct_806D7F1C == 0)) {
                            field_0xa1c.y = l_rand[(field_0xa73 & 12) >> 2] + cLib_targetAngleY(&current.pos, &player->current.pos);
                        } else {
                            field_0xa1c.y = l_rand2[(field_0xa73 & 12) >> 2] + cLib_targetAngleY(&current.pos, &player->current.pos);
                        }
                    }

                    if (mAcchCir.ChkWallHit()) {
                        field_0xa6c = cM_rndF(30.0f) + 30.0f;
                        field_0xa1c.y = mAcchCir.GetWallAngleY();
                    }

                    cLib_addCalcAngleS(&current.angle.y, field_0xa1c.y, 0x20, 0x400, 0x100);
                    cLib_addCalcAngleS(&current.angle.x, 0, 4, 0x4000, 0x1000);
                    cLib_addCalcAngleS(&current.angle.z, 0, 4, 0x4000, 0x1000);
                    field_0xa6e += (int)(speedF / 6.5f);

                    if (field_0xa6e >= 4) {
                        field_0xa6e = 0;
                        mSound.startCreatureSound(Z2SE_EN_GBA_FOOTNOTE, 0, -1);
                    }
                }
            }
        }
    }
}

/* 806D21A4-806D2294 001024 00F0+00 3/3 0/0 0/0 .text            create_item__8daE_GM_cFv */
void daE_GM_c::create_item() {
    if (arg0 == 2) {
        fopAcM_createItemFromEnemyID(field_0x564, &current.pos, -1, -1, NULL, NULL, NULL, NULL);
    } else {
        f32 fVar1;
        if ((int)dComIfGs_getLife() < 5) {
            fVar1 = 9.0f;
        } else {
            fVar1 = 11.0f;
        }

        switch ((int)cM_rndF(fVar1)) {
            case 0:
                fopAcM_createItem(&current.pos, fpcNm_ITEM_HEART, -1, -1, NULL, NULL, 0);
                break;

            case 1:
            case 2:
                fopAcM_createItem(&current.pos, fpcNm_ITEM_ARROW_1, -1, -1, NULL, NULL, 0);
                break;
        }
    }
}

/* 806D2294-806D24C0 001114 022C+00 1/0 0/0 0/0 .text            pechanko_damage__8daE_GM_cFv */
void daE_GM_c::pechanko_damage() {
    if (field_0xa3c == 0) {
        mSph.SetAtType(AT_TYPE_0);
        mSph.SetTgType(0);
        attention_info.flags = 0;

        if (field_0xa69 == 1) {
            mpModelMorf->setPlaySpeed(0.0f);
        }

        field_0xa6b = 60;
        speedF = 0.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        field_0xa5c = cM_rndF(10.0f) + 60.0f;
        current.angle.z = 0;
        current.angle.x = 0;
        mSound.startCreatureSound(Z2SE_EN_GBA_V_DEATH, 0, -1);
        field_0xa74 = 0;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        cLib_chaseF(&field_0xa10.y, 0.4f, 0.2f);
        cLib_chaseF(&field_0xa10.x, 1.3f, 0.1f);
        cLib_chaseF(&field_0xa10.z, 1.3f, 0.1f);
        cLib_addCalc2(&field_0xa48, 100.0f, 1.0f, 8.0f);

        if (mObjAcch.ChkGroundHit()) {
            if (field_0xa5c != 0) {
                field_0xa5c--;
            } else if (field_0xa48 <= 100.0f && lbl_195_bss_AE == 0) {
                setDeathLightEffect();
                fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
                create_item();
                fopAcM_delete(this);
                lbl_195_bss_AE++;
            }
        } else {
            fopAcM_posMoveF(this, NULL);
            mObjAcch.CrrPos(dComIfG_Bgsp());
        }
    }
}

/* 806D24C0-806D25E8 001340 0128+00 1/0 0/0 0/0 .text            wait__8daE_GM_cFv */
void daE_GM_c::wait() {
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 9), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        speedF = 0.0f;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        fopAcM_posMoveF(this, NULL);
        mObjAcch.CrrPos(dComIfG_Bgsp());

        b_gm_class* actor_p;
        if (fopAcM_SearchByID(fopAcM_GetLinkId(this), (fopAc_ac_c**)&actor_p) == 0 || actor_p == NULL) {
            return;
        }
        
        if (actor_p->mDemoMode != 0x15) {
            setAction(&daE_GM_c::walk);
        }
    }
}

/* 806D25E8-806D289C 001468 02B4+00 1/0 0/0 0/0 .text            egg_damage__8daE_GM_cFv */
void daE_GM_c::egg_damage() {
    if (field_0xa3c == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        mSph.SetAtType(AT_TYPE_0);
        mSph.SetTgType(0);
        field_0xa69 = 0;
        speedF = cM_rndFX(10.0f) + 30.0f;
        speed.y = cM_rndFX(10.0f) + 40.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        current.angle.y = cLib_targetAngleY(&player->current.pos, &current.pos);
        current.angle.z = 0;
        field_0xa10.set(1.1f, 0.8f, 1.1f);
        attention_info.flags = 0;
        field_0xa50 = hREG_F(7) + 0.8f;
        field_0xa64 = 4000;
        field_0xa5c = cM_rndF(10.0f);
        mSound.startCreatureSound(Z2SE_EN_GBA_V_DEATH, 0, -1);
        field_0xa74--;
        field_0xa3c++;
    } else if (field_0xa3c == -1) {
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
    } else {
        cLib_addCalc2(&field_0xa48, 100.0f, 1.0f, 8.0f);
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (mObjAcch.ChkGroundHit()) {
            speedF = 0.0f;
            cLib_chaseF(&field_0xa10.y, 0.8f, 0.1f);
            cLib_chaseF(&field_0xa10.x, 1.1f, 0.05f);
            cLib_chaseF(&field_0xa10.z, 1.1f, 0.05f);

            if (field_0xa5c != 0) {
                field_0xa5c--;
            } else if (field_0xa48 <= 100.0f && lbl_195_bss_AE == 0) {
                setDeathLightEffect();
                fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
                create_item();
                fopAcM_delete(this);
                lbl_195_bss_AE++;
            }
        } else {
            current.angle.x += 0x400;
            cLib_chaseF(&field_0xa10.y, 1.0f, 0.1f);
            cLib_chaseF(&field_0xa10.x, 1.0f, 0.05f);
            cLib_chaseF(&field_0xa10.z, 1.0f, 0.05f);
        }
    }
}

/* 806D7A70-806D7A78 0000D0 0008+00 1/1 0/0 0/0 .rodata          l_eff_id */
static u16 const l_eff_id[4] = {
    dPa_RM(ID_ZI_S_DEADEFLIGHT_A), dPa_RM(ID_ZI_S_DEADEFLIGHT_B), dPa_RM(ID_ZI_S_DEADEFLIGHT_C), dPa_RM(ID_ZI_S_DEADEFLIGHT_D),
};

/* 806D289C-806D2940 00171C 00A4+00 5/5 0/0 0/0 .text            setDeathLightEffect__8daE_GM_cFv */
void daE_GM_c::setDeathLightEffect() {
    for (int i = 0; i < 4; i++) {
        dComIfGp_particle_set(l_eff_id[i], &current.pos, &tevStr, NULL, NULL);
    }
}

/* 806D2940-806D29E4 0017C0 00A4+00 1/1 0/0 0/0 .text            setEggBreakEffect__8daE_GM_cFv */
void daE_GM_c::setEggBreakEffect() {
    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(l_egg_eff_id[i], &current.pos, &tevStr, NULL, NULL);
    }
}

/* 806D29E4-806D2DD4 001864 03F0+00 1/0 0/0 0/0 .text            damage__8daE_GM_cFv */
void daE_GM_c::damage() {
    if (field_0xa3c == 0) {
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 6), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        attention_info.flags = 0;
        field_0xa44 = 16.0f;
        field_0xa69 = 1;
        speedF = cM_rndFX(5.0f) + 15.0f;
        speed.y = cM_rndFX(10.0f) + 50.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        field_0xa5c = 0;
        field_0xa5e = cM_rndF(10.0f);
        field_0xa1c.x = 0x7300;
        field_0xa1c.z = 0;
        mSph.SetTgType(0);
        mSph.SetAtType(AT_TYPE_0);
        mSound.startCreatureSound(Z2SE_EN_GBA_V_DEATH, 0, -1);

        if (arg0 == 2 && mSwBit != 0xFF) {
            dComIfGs_onSwitch(mSwBit, fopAcM_GetRoomNo(this));
        }

        field_0xa74--;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        f32 fVar1 = speed.y;
        cLib_addCalc2(&field_0xa48, 100.0f, 1.0f, 8.0f);
        speed.x = speedF * cM_ssin(field_0xa1c.y);
        speed.y += gravity;

        if (speed.y < maxFallSpeed) {
            speed.y = maxFallSpeed;
        }

        speed.z = speedF * cM_scos(field_0xa1c.y);
        fopAcM_posMove(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (arg0 != 3 && field_0xa5c == 0 && fVar1 > 0.0f && speed.y < 0.0f) {
            mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 7), 2, 8.0f, 1.0f, 0.0f, -1.0f);
            field_0xa5c++;
        }

        cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 8, 0x1000, 0x400);
        cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 8, 0x1000, 0x400);

        if (mObjAcch.ChkGroundHit() && fVar1 <= 0.0f) {
            speed.y = -fVar1 * 0.5f;
            speedF *= 0.5f;

            if (speed.y < 10.0f) {
                speed.y = 0.0f;
                speedF = 0.0f;

                if (field_0xa5e != 0) {
                    field_0xa5e--;
                } else if (field_0xa48 <= 100.0f && lbl_195_bss_AE == 0) {
                    setDeathLightEffect();
                    fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
                    create_item();
                    fopAcM_delete(this);
                    lbl_195_bss_AE++;
                }
            }
        }
    }
}

/* 806D2DD4-806D3308 001C54 0534+00 1/0 0/0 0/0 .text            core_damage__8daE_GM_cFv */
void daE_GM_c::core_damage() {
    if (field_0xa3c == 0) {
        bool bVar1 = false;
        field_0xa69 = 2;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 4), 0, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa74--;

        if (current.angle.x != 0 || current.angle.z != 0) {
            bVar1 = true;
            field_0xa1c.z = 0;
            field_0xa1c.x = 0;
        }

        if (field_0xa74 != 0) {
            daPy_py_c* player = daPy_getPlayerActorClass();

            if (bVar1) {
                field_0xa1c.y = cLib_targetAngleY(&player->current.pos, &current.pos);
                speed.z = 0.0f;
                speed.x = 0.0f;
                speed.y = 30.0f;
            } else {
                field_0xa1c.y = current.angle.y;
                speed.setall(0.0f);
            }

            mSound.startCreatureVoice(Z2SE_EN_MD_V_DAMAGE, -1);
            gravity = -5.0f;
            maxFallSpeed = -100.0f;
            field_0xa3c = 3;
        } else {
            field_0xa68 = 1;
            lbl_195_bss_AE = 1;

            if (bVar1) {
                speed.z = 0.0f;
                speed.x = 0.0f;
                speed.y = 30.0f;
            } else {
                speed.setall(0.0f);
            }

            gravity = -5.0f;
            maxFallSpeed = -100.0f;
            mSph.SetTgType(0);
            mSph.SetAtType(AT_TYPE_0);
            field_0xa3c++;
        }
    } else if (field_0xa3c != -1) {
        if (field_0xa3c == 1) {
            cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 4, 0x2000, 0x400);
            cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 4, 0x2000, 0x400);
            speed.y += gravity;

            if (maxFallSpeed > speed.y) {
                speed.y = maxFallSpeed;
            }

            fopAcM_posMove(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (mObjAcch.ChkGroundHit() && current.angle.x == 0 && current.angle.z == 0 && mpModelMorf->isStop()) {
                mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 5), 0, 3.0f, 1.0f, 0.0f, -1.0f);
                mSound.startCreatureVoice(Z2SE_EN_MD_V_DEATH, -1);
                field_0xa3c++;
            }
        } else if (field_0xa3c == 2) {
            speed.y += gravity;

            if (maxFallSpeed > speed.y) {
                speed.y = maxFallSpeed;
            }

            fopAcM_posMove(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (mpModelMorf->getFrame() > 73.0f) {
                cLib_addCalc2(&field_0xa48, 75.0f, 1.0f, 2.0f);
            }

            if (mpModelMorf->isStop()) {
                setAction(&daE_GM_c::core_delwait);
            }
        } else {
            cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 4, 0x1000, 0x400);
            cLib_addCalcAngleS(&current.angle.y, field_0xa1c.y, 4, 0x1000, 0x400);
            cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 4, 0x1000, 0x400);
            speed.y += gravity;

            if (maxFallSpeed > speed.y) {
                speed.y = maxFallSpeed;
            }

            fopAcM_posMove(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (mObjAcch.ChkGroundHit()) {
                speed.z = 0.0f;
                speed.x = 0.0f;
                mpModelMorf->setPlaySpeed(1.0f);
            } else if (mpModelMorf->getFrame() > 12.0f) {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (mpModelMorf->isStop()) {
                setAction(&daE_GM_c::core_escape);
            }
        }
    }
}

/* 806D3308-806D344C 002188 0144+00 2/0 0/0 0/0 .text            core_delwait__8daE_GM_cFv */
void daE_GM_c::core_delwait() {
    if (field_0xa3c == 0) {
        field_0xa75 = 0;
        fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
        fopAcM_createDisappear(this, &current.pos, 20, 0, 0xFF);
        field_0xa6b = 36;
        field_0xa3c++;
    } else if (field_0xa3c != -1 && field_0xa6b == 0 && lbl_195_bss_AE == 0) {
        fopAcM_delete(this);
        Z2GetAudioMgr()->seStart(Z2SE_OBJ_KAGERI_MIRROR_GET, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        lbl_195_bss_AE++;
    }
}

/* 806D344C-806D35E4 0022CC 0198+00 1/0 0/0 0/0 .text            core_piku__8daE_GM_cFv */
void daE_GM_c::core_piku() {
    if (field_0xa3c == 0) {
        field_0xa69 = 2;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 8), 0, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (mObjAcch.ChkGroundHit()) {
            daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
            } else {
                speedF = 0.0f;

                if (mpModelMorf->isStop()) {
                    setAction(&daE_GM_c::core_escape);
                }
            }
        }
    }
}

/* 806D35E4-806D378C 002464 01A8+00 1/0 0/0 0/0 .text            core_pechanko_damage__8daE_GM_cFv */
void daE_GM_c::core_pechanko_damage() {
    if (field_0xa3c == 0) {
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 6), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa6b = 180;
        mSph.SetTgType(0);
        mSph.SetAtType(AT_TYPE_0);
        field_0xa68 = 2;
        lbl_195_bss_AE = 1;
        speedF = 0.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        current.angle.z = 0;
        current.angle.x = 0;
        mSound.startCreatureVoice(Z2SE_EN_MD_V_DEATH_PRESS, -1);
        field_0xa74 = 0;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        cLib_addCalc2(&field_0xa48, 75.0f, 1.0f, 2.0f);

        if (mObjAcch.ChkGroundHit()) {
            if (field_0xa6b == 0 && field_0xa48 == 75.0f) {
                setAction(&daE_GM_c::core_delwait);
            }
        } else {
            fopAcM_posMoveF(this, NULL);
            mObjAcch.CrrPos(dComIfG_Bgsp());
        }
    }
}

/* 806D378C-806D398C 00260C 0200+00 1/0 0/0 0/0 .text            hook__8daE_GM_cFv */
void daE_GM_c::hook() {
    if (field_0xa3c == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz sp28, sp34;

        if (player->getHookshotTopPos()->y > current.pos.y + 60.0f + hREG_F(0)) {
            sp28 = mSph.GetC() - current.pos;
            sp34 = player->current.pos;
            sp34.y += 80.0f;
            sp34 -= eyePos;

            if (sp34.normalizeRS()) {
                sp28.x += sp34.x * 140.0f;
                sp28.y += sp34.y * 140.0f;
                sp28.z += sp34.z * 140.0f;
            }
        } else {
            sp28 = *player->getHookshotTopPos() - current.pos;
        }

        player->setHookshotCarryOffset(fopAcM_GetID(this), &sp28);
        mSph.SetTgType(0);
        field_0xa3c++;
    } else if (field_0xa3c == -1) {
        field_0xa72 = 10;
        mSph.SetTgType(0xD8FBFDFF);
    } else if (!fopAcM_CheckStatus(this, fopAcM_STATUS_HOOK_CARRY_NOW)) {
        setAction(&daE_GM_c::core_escape);
    }
}

/* 806D398C-806D3EC4 00280C 0538+00 13/0 0/0 0/0 .text            rebound__8daE_GM_cFv */
void daE_GM_c::rebound() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        daPy_getPlayerActorClass();
        field_0xa44 = 16.0f;
        field_0xa1c.x = 0x7300;

        if (field_0xa69 == 1) {
            mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 6), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        } else if (field_0xa69 == 2) {
            field_0xa44 = 60.0f;
            field_0xa1c.x = 0x6000;
            mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 0xA), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        }

        mSph.SetAtType(AT_TYPE_0);
        speed.y = cM_rndFX(10.0f) + 50.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        field_0xa1c.z = 0;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        if (field_0xa3c == 1) {
            speed.x = speedF * cM_ssin(field_0xa1c.y);
            speed.y += gravity;

            if (speed.y < maxFallSpeed) {
                speed.y = maxFallSpeed;
            }

            speed.z = speedF * cM_scos(field_0xa1c.y);
            fopAcM_posMove(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());
            cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 8, 0x1000, 0x400);
            current.angle.y += 0x1000;
            cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 8, 0x1000, 0x400);

            if (mObjAcch.ChkGroundHit()) {
                daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
                if (statue_p != NULL) {
                    field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                    speedF = cM_rndFX(5.0f);
                    setAction(&daE_GM_c::rebound);
                } else {
                    speedF = 0.0f;

                    if (field_0xa69 == 0) {
                        setAction(&daE_GM_c::egg_wait);
                    } else {
                        field_0xa6b = 40;
                        field_0xa3c++;
                    }
                }
            }
        } else if (field_0xa3c == 2) {
            cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 8, 0x1000, 0x400);
            cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 8, 0x1000, 0x400);

            daCstatue_c* statue_p2 = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p2 != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p2->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
            } else if (field_0xa6b == 0) {
                field_0xa1c.z = 0;
                field_0xa1c.x = 0;
                field_0xa3c++;
            }
        } else {
            cLib_addCalcAngleS(&current.angle.x, field_0xa1c.x, 0x10, 0x2000, 0x400);
            cLib_addCalcAngleS(&current.angle.z, field_0xa1c.z, 0x10, 0x2000, 0x400);

            if (current.angle.x == 0 && current.angle.z == 0) {
                if (arg0 == 1) {
                    setAction(&daE_GM_c::walk2);
                } else if (arg0 == 3) {
                    setAction(&daE_GM_c::core_escape);
                } else if (arg0 == 2) {
                    setAction(&daE_GM_c::normal_wait);
                } else if (arg0 == 0 && field_0xa76 != 0) {
                    setAction(&daE_GM_c::dead_wait);
                } else {
                    setAction(&daE_GM_c::walk);
                }
            } else {
                daCstatue_c* statue_p3 = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
                if (statue_p3 != NULL) {
                    field_0xa1c.y = cLib_targetAngleY(&statue_p3->current.pos, &current.pos);
                    speedF = cM_rndFX(5.0f);
                    setAction(&daE_GM_c::rebound);
                }
            }
        }
    }
}

/* 806D3EC4-806D4288 002D44 03C4+00 2/0 0/0 0/0 .text            walk2__8daE_GM_cFv */
void daE_GM_c::walk2() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 8), 2, 3.0f, 2.0f, 0.0f, -1.0f);
        gravity = -5.0f;
        field_0xa40 = 0.0f;
        field_0xa44 = 0.0f;
        speedF = l_coreSpeedF + field_0xa40;
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (mObjAcch.ChkGroundHit()) {
            daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
            if (statue_p != NULL) {
                field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f);
                setAction(&daE_GM_c::rebound);
                return;
            }

            if (l_coreActorID == fpcM_ERROR_PROCESS_ID_e || (l_coreActorID != fpcM_ERROR_PROCESS_ID_e && lbl_195_bss_AF != 0)) {
                setAction(&daE_GM_c::dead_wait);
                return;
            }
        }

        f32 fVar1 = current.pos.absXZ(l_corePos);
        s16 sVar1;
        s16 sVar2 = cLib_targetAngleY(&current.pos, &l_corePos);

        if (fVar1 < 350.0f) {
            s16 sVar3 = l_coreAngle.y;
            cLib_chaseF(&field_0xa40, 0.0f, 0.1f);
            sVar1 = sVar3;
        } else {
            sVar1 = sVar2;
            cLib_chaseF(&field_0xa40, 4.0f, 0.1);
        }

        cLib_chaseAngleS(&current.angle.y, sVar1, 0x400);
        speedF = l_coreSpeedF + field_0xa40;
        mpModelMorf->setPlaySpeed(speedF / 9.0f);
        field_0xa6e += (int)(speedF / 9.0f);
        
        if (field_0xa6e >= 4) {
            field_0xa6e = 0;
            mSound.startCreatureSound(Z2SE_EN_GBA_FOOTNOTE, 0, -1);
        }
    }
}

/* 806D4288-806D4468 003108 01E0+00 3/0 0/0 0/0 .text            dead_wait__8daE_GM_cFv */
void daE_GM_c::dead_wait() {
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 9), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        speedF = 0.0f;

        if (arg0 != 0) {
            field_0xa6b = 60;
        } else {
            field_0xa6b = 0;
        }

        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        if (field_0xa3c == 1) {
            fopAcM_posMoveF(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (field_0xa6b == 0) {
                mSph.SetTgType(0);
                mSph.SetAtType(AT_TYPE_0);
                field_0xa3c++;
            }
        } else {
            fopAcM_posMoveF(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());
            cLib_addCalc2(&field_0xa48, 100.0f, 1.0f, 8.0f);

            if (field_0xa48 <= 100.0f && lbl_195_bss_AE < 2) {
                setDeathLightEffect();
                fopAcM_seStart(this, JA_SE_CM_MONS_EXPLODE, 0);
                fopAcM_delete(this);
                lbl_195_bss_AE++;
            }
        }
    }
}

static f32 dummy_float(f32 _) {
    return 1000.0f;
}

/* 806D4468-806D462C 0032E8 01C4+00 1/0 0/0 0/0 .text            core_wait__8daE_GM_cFv */
void daE_GM_c::core_wait() {
    if (field_0xa3c == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();

        field_0xa69 = 2;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 9), 0, 3.0f, 0.0f, 0.0f, -1.0f);
        field_0xa44 = 0.0f;
        gravity = -5.0f;
        speed.y = 0.0f;
        speedF = 0.0f;
        field_0xa71 = 0;
        current.angle.y = cLib_targetAngleY(&player->current.pos, &current.pos);
        fopAcM_SetCullSize(this, 7);
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x80000);
        mSph.SetTgType(0xD8FBFDFF);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        if (field_0xa3c == 1) {
            fopAcM_posMoveF(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (field_0xa71 != 0 || hREG_F(29) != 0.0f) {
                mpModelMorf->setPlaySpeed(1.0f);
                field_0xa3c++;
            }
        } else {
            fopAcM_posMoveF(this, mStts.GetCCMoveP());
            mObjAcch.CrrPos(dComIfG_Bgsp());

            if (mpModelMorf->isStop()) {
                setAction(&daE_GM_c::core_escape);
            }
        }
    }
}

/* 806D462C-806D4D1C 0034AC 06F0+00 5/0 0/0 0/0 .text            core_escape__8daE_GM_cFv */
void daE_GM_c::core_escape() {
    // NONMATCHING
    if (field_0xa3c == 0) {
        field_0xa69 = 2;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mg", 0xA), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa44 = 0.0f;
        field_0xa40 = 0.0f;
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz sp6c(0.0f, 0.0f, 0.0f);

        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        daCstatue_c* statue_p = (daCstatue_c*)fpcM_Search(s_obj_sub2, this);
        if (statue_p != NULL) {
            field_0xa1c.y = cLib_targetAngleY(&statue_p->current.pos, &current.pos);
            speedF = cM_rndFX(5.0f);
            setAction(&daE_GM_c::rebound);
        } else {
            f32 fVar1 = current.pos.absXZ(player->current.pos);
            f32 fVar2 = sp6c.absXZ(current.pos);
            s16 sVar1 = (s16)cLib_targetAngleY(&player->current.pos, &current.pos);
            s16 sVar2 = cLib_targetAngleY(&sp6c, &current.pos);
            s16 sVar3 = fopCamM_GetAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0)));

            if (fVar1 < 800.0f) {
                field_0xa6d = 60;
            }

            f32 fVar3;
            if (field_0xa6d != 0) {
                fVar3 = 10.0f;
            } else {
                fVar3 = 0.0f;
            }

            if (field_0xa6d != 0) {
                field_0xa5c = 0x400;
            } else if (field_0xa6b == 0) {
                field_0xa6b = cM_rndF(30.0f) + 30.0f;
                field_0xa5c = cM_rndF(256.0f) + 256.0f;
            }

            if (fVar1 < 2000.0f) {
                if (fVar2 > 2000.0f) {
                    field_0xa1c.y = sVar2 - 0x8000;
                    field_0xa5c = 0x200;
                } else if (abs(sVar3 - sVar1) < 0x6000) {
                    if (sVar3 < sVar1) {
                        field_0xa1c.y = sVar3 + 0x4000;
                    } else {
                        field_0xa1c.y = sVar3 - 0x4000;
                    }
                } else if (field_0xa6c == 0) {
                    field_0xa6c = cM_rndF(30.0f) + 30.0f;
                    field_0xa1c.y = cM_rndFX(32768.0f);
                }
            } else if (fVar2 > 2000.0f) {
                field_0xa1c.y = sVar2 - 0x8000;
                field_0xa5c = 0x200;
            } else if (field_0xa6c == 0) {
                field_0xa6c = cM_rndF(30.0f) + 30.0f;
                field_0xa1c.y = cM_rndFX(32768.0f);
            }

            mpModelMorf->setPlaySpeed(speedF / 18.0f);
            cLib_chaseS(&field_0xa60, field_0xa5c, 0x10);
            cLib_chaseAngleS(&current.angle.y, field_0xa1c.y, field_0xa60);
            cLib_addCalcAngleS(&current.angle.x, 0, 4, 0x4000, 0x1000);
            cLib_addCalcAngleS(&current.angle.z, 0, 4, 0x4000, 0x1000);

            if (player->speedF < 15.0f) {
                cLib_chaseF(&field_0xa40, fVar3, 0.1f);
            } else {
                cLib_chaseF(&field_0xa40, fVar3, 1.0f);
            }

            speedF = (field_0xa40 + 13.0f) + l_HIO.max_acceleration * 0.5f + (l_HIO.max_acceleration * 0.5f * cM_ssin(field_0xa5e));
            field_0xa5e += l_HIO.min_acceleration_cycle;
            field_0xa6e += (int)(speedF / 18.0f);

            if (field_0xa6e >= 5) {
                field_0xa6e = 0;
                mSound.startCreatureSound(Z2SE_EN_GBA_FOOTNOTE, 0, -1);
            }
        }
    }
}

/* 806D4D1C-806D4EF4 003B9C 01D8+00 2/2 0/0 0/0 .text            chaseCheck__8daE_GM_cFv */
BOOL daE_GM_c::chaseCheck() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (std::abs(current.pos.y - player->current.pos.y) >= l_HIO.player_search_y_limit) {
        return FALSE;
    }

    if (current.pos.absXZ(player->current.pos) > field_0xa54) {
        return FALSE;
    }

    s16 sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos);
    if (abs(sVar1 - player->shape_angle.y) >= 0x4000) {
        return TRUE;
    }

    return FALSE;
}

/* 806D4EF4-806D545C 003D74 0568+00 3/0 0/0 0/0 .text            normal_wait__8daE_GM_cFv */
void daE_GM_c::normal_wait() {
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 8), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa4c = 0.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        field_0xa1c.y = current.angle.y;
        field_0xa6e = 0;
        field_0xa5c = 0;
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        daPy_py_c* player = daPy_getPlayerActorClass();

        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (chaseCheck()) {
            setAction(&daE_GM_c::normal_chase);
        } else {
            f32 fVar1 = current.pos.absXZ(player->current.pos);
            f32 fVar2 = std::abs(current.pos.y - player->current.pos.y);
            s16 sVar1 = cLib_targetAngleY(&current.pos, &player->current.pos);

            if (fVar2 < l_HIO.player_search_y_limit && fVar1 < 400.0f) {
                field_0xa4c = l_HIO.escape_speed;
                field_0xa5c = 0x400;
                field_0xa1c.y = sVar1 - 0x8000;
                mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
            } else {
                field_0xa4c = 5.0f;
                field_0xa5c = 0x200;

                if (field_0xa6b == 0) {
                    field_0xa6b = cM_rndF(30.0f) + 30.0f;
                    s16 sVar1 = cLib_targetAngleY(&current.pos, &home.pos);
                    field_0xa1c.y = sVar1 + cM_rndFX(16384.0f);
                }

                mSph.SetAtType(AT_TYPE_0);
            }

            if (mAcchCir.ChkWallHit()) {
                field_0xa5c = 0x200;
                field_0xa1c.y = mAcchCir.GetWallAngleY();
            }

            cLib_chaseF(&speedF, field_0xa4c, 1.0f);
            cLib_addCalcAngleS(&current.angle.y, field_0xa1c.y, 0x10, 0x800, field_0xa5c);
            cLib_addCalcAngleS(&current.angle.x, 0, 4, 0x4000, 0x1000);
            cLib_addCalcAngleS(&current.angle.z, 0, 4, 0x4000, 0x1000);

            f32 fVar3 = 0.0f;
            if (field_0xa3c == 1) {
                if (speedF != fVar3) {
                    mpModelMorf->setPlaySpeed(speedF / 10.0f);
                } else if (abs(field_0xa1c.y - current.angle.y) < 0x400) {
                    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 9), 2, 3.0f, 1.0f, 0.0f, -1.0f);
                    field_0xa3c = 2;
                } else {
                    mpModelMorf->setPlaySpeed(1.0f);
                }
            } else if (field_0xa3c == 2 && (speedF != fVar3 || abs(field_0xa1c.y - current.angle.y) > 0x400)) {
                mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 8), 2, 3.0f, 1.0f, 0.0f, -1.0f);
                field_0xa3c = 1;
            }

            field_0xa6e += (int)mpModelMorf->getPlaySpeed();

            if (field_0xa6e >= 4) {
                field_0xa6e = 0;
                mSound.startCreatureSound(Z2SE_EN_GBA_FOOTNOTE, 0, -1);
            }
        }
    }
}

/* 806D545C-806D578C 0042DC 0330+00 1/0 0/0 0/0 .text            normal_chase__8daE_GM_cFv */
void daE_GM_c::normal_chase() {
    if (field_0xa3c == 0) {
        field_0xa69 = 1;
        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gm", 8), 2, 3.0f, 1.0f, 0.0f, -1.0f);
        field_0xa4c = 0.0f;
        gravity = -5.0f;
        maxFallSpeed = -100.0f;
        field_0xa6e = 0;
        field_0xa6d = 0;
        mSph.SetAtType(AT_TYPE_CSTATUE_SWING);
        field_0xa3c++;
    } else if (field_0xa3c != -1) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mObjAcch.CrrPos(dComIfG_Bgsp());

        if (!chaseCheck()) {
            setAction(&daE_GM_c::normal_wait);
        } else {
            if (field_0xa6d == 0) {
                field_0xa6d = 30;
                home.pos = current.pos;
            }

            s16 sVar1 = cLib_targetAngleY(&current.pos, &player->current.pos);
            if (abs(current.angle.y - sVar1) < 0x2000) {
                if (player->speedF > 19.0f) {
                    field_0xa4c = l_HIO.player_run_pursuit_speed;
                } else {
                    field_0xa4c = l_HIO.player_walk_pursuit_speed;
                }
            } else {
                field_0xa4c = 4.0f;
            }

            if (field_0xa6c == 0) {
                if (player->getDamageWaitTimer() != 0 || field_0xa72 != 0 || lbl_195_bss_AE != 0) {
                    field_0xa1c.y = l_rand2[(field_0xa73 & 12) >> 2] + cLib_targetAngleY(&current.pos, &player->current.pos);
                } else {
                    field_0xa1c.y = sVar1;
                }
            }

            if (mAcchCir.ChkWallHit()) {
                field_0xa6c = cM_rndF(30.0f) + 30.0f;
                field_0xa1c.y = mAcchCir.GetWallAngleY();
            }

            cLib_chaseF(&speedF, field_0xa4c, 0.4f);
            cLib_addCalcAngleS(&current.angle.y, field_0xa1c.y, 0x20, 0x400, 0x100);
            cLib_addCalcAngleS(&current.angle.x, 0, 4, 0x4000, 0x1000);
            cLib_addCalcAngleS(&current.angle.z, 0, 4, 0x4000, 0x1000);
            mpModelMorf->setPlaySpeed(speedF / 7.5f);
            field_0xa6e += (int)(speedF / 7.5f);

            if (field_0xa6e >= 4) {
                field_0xa6e = 0;
                mSound.startCreatureSound(Z2SE_EN_GBA_FOOTNOTE, 0, -1);
            }
        }
    }
}

/* 806D578C-806D59D0 00460C 0244+00 1/1 0/0 0/0 .text            mtx_set__8daE_GM_cFv */
void daE_GM_c::mtx_set() {
    J3DModel* model;

    mDoMtx_stack_c::transS(current.pos);
    if (field_0xa69 == 1) {
        mDoMtx_stack_c::transM(0.0f, field_0xa44 * scale.y, 0.0f);
        mDoMtx_stack_c::ZXYrotM(current.angle);
        mDoMtx_stack_c::transM(0.0f, -field_0xa44 * scale.y, 0.0f);
        model = mpModelMorf->getModel();
        model->setBaseScale(scale);
        model->setBaseTRMtx(mDoMtx_stack_c::get());
        mpModelMorf->modelCalc();
        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
    } else if (field_0xa69 == 2) {
        mDoMtx_stack_c::transM(0.0f, field_0xa44 * scale.y, 0.0f);
        mDoMtx_stack_c::ZXYrotM(current.angle);
        mDoMtx_stack_c::transM(0.0f, -field_0xa44 * scale.y, 0.0f);
        model = mpModelMorf->getModel();
        model->setBaseScale(scale);
        model->setBaseTRMtx(mDoMtx_stack_c::get());
        mpModelMorf->modelCalc();
        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
    } else {
        cLib_chaseS(&field_0xa64, field_0xa66, 0x80);
        cLib_chaseF(&field_0xa50, hREG_F(7) + 0.1f, 0.04f);
        field_0xa62 += field_0xa64;
        mDoMtx_stack_c::transM(0.0f, (scale.y + field_0xa50) * 50.0f, 0.0f);
        mDoMtx_stack_c::ZrotM(field_0xa62);
        mDoMtx_stack_c::XrotM(field_0xa62);
        mDoMtx_stack_c::scaleM(scale.x, scale.y + field_0xa50, scale.z);
        mDoMtx_stack_c::XrotM(-field_0xa62);
        mDoMtx_stack_c::ZrotM(-field_0xa62);
        mDoMtx_stack_c::ZXYrotM(current.angle);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    }
}

/* 806D59D0-806D5D54 004850 0384+00 1/1 0/0 0/0 .text            cc_set__8daE_GM_cFv */
void daE_GM_c::cc_set() {
    cXyz sp24, sp30, i_effPos, i_effSize;

    if (field_0xa69 == 1) {
        J3DModel* model = mpModelMorf->getModel();
        mDoMtx_stack_c::copy(model->getBaseTRMtx());
        sp24.set(0.0f, scale.y * 20.0f, scale.z * -15.0f);
        mDoMtx_stack_c::multVec(&sp24, &eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += scale.y * 20.0f;

        sp24.set(0.0f, scale.y * 30.0f, scale.z * -15.0f);
        mDoMtx_stack_c::multVec(&sp24, &sp30);
        mSph.SetC(sp30);
        mSph.SetR(scale.y * 30.0f);
        dComIfG_Ccsp()->Set(&mSph);
        i_effPos = eyePos;
        i_effSize.setall(0.8f);
    } else if (field_0xa69 == 2) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(2));
        sp24.set(0.0f, scale.y * 60.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += scale.y * 60.0f;

        sp24.set(scale.x * -100.0f, scale.y * 50.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &sp30);
        mSph.SetC(sp30);
        mSph.SetR(scale.y * 120.0f);
        dComIfG_Ccsp()->Set(&mSph);
        i_effPos = sp30;
        i_effSize.setall(2.0f);
    } else {
        mDoMtx_stack_c::copy(mpModel->getBaseTRMtx());
        sp24.set(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += scale.y * 50.0f;

        sp24.set(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &sp30);
        mSph.SetC(sp30);
        mSph.SetR(scale.y * 50.0f);
        dComIfG_Ccsp()->Set(&mSph);
        i_effPos = eyePos;
        i_effSize.setall(1.0f);
    }

    setMidnaBindEffect(this, &mSound, &i_effPos, &i_effSize);
}

/* 806D5D54-806D62FC 004BD4 05A8+00 1/1 0/0 0/0 .text            draw__8daE_GM_cFv */
int daE_GM_c::draw() {
    if (field_0xa75 == 0) {
        return 1;
    }

    J3DModel* model;
    J3DModelData* modelData;

    if (field_0xa69 == 1) {
        model = mpModelMorf->getModel();
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);

        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getMatColor(0)->r = field_0xa48;
            matNode_p->getMatColor(0)->g = field_0xa48;
            matNode_p->getMatColor(0)->b = field_0xa48;
            matNode_p->getTevKColor(3)->r = field_0xa48;
            matNode_p->getTevKColor(3)->g = field_0xa48;
            matNode_p->getTevKColor(3)->b = field_0xa48;
        }

        fopAcM_setEffectMtx(this, model->getModelData());
        mpModelMorf->entryDL();
        dComIfGd_setSimpleShadow(&current.pos, mObjAcch.GetGroundH(), hREG_F(11) + 30.0f, mObjAcch.m_gnd, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    } else if (field_0xa69 == 2) {
        model = mpModelMorf->getModel();
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);

        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = field_0xa48 - 255.0f;
            matNode_p->getTevColor(0)->g = field_0xa48 - 255.0f;
            matNode_p->getTevColor(0)->b = field_0xa48 - 255.0f;
            matNode_p->getMatColor(0)->r = field_0xa48;
            matNode_p->getMatColor(0)->g = field_0xa48;
            matNode_p->getMatColor(0)->b = field_0xa48;
        }

        fopAcM_setEffectMtx(this, model->getModelData());
        mpModelMorf->entryDL();
        cXyz sp50(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp50, 700.0f, 0.0f, current.pos.y,
                                        mObjAcch.GetGroundH(), mObjAcch.m_gnd, &tevStr, 0, 1.0f,
                                        dDlst_shadowControl_c::getSimpleTex());
    } else {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

        modelData = mpModel->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getMatColor(0)->r = field_0xa48;
            matNode_p->getMatColor(0)->g = field_0xa48;
            matNode_p->getMatColor(0)->b = field_0xa48;
            matNode_p->getTevKColor(3)->r = field_0xa48;
            matNode_p->getTevKColor(3)->g = field_0xa48;
            matNode_p->getTevKColor(3)->b = field_0xa48;
        }

        fopAcM_setEffectMtx(this, mpModel->getModelData());
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setSimpleShadow(&current.pos, mObjAcch.GetGroundH(), hREG_F(11) + 30.0f, mObjAcch.m_gnd, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 806D62FC-806D631C 00517C 0020+00 1/0 0/0 0/0 .text            daE_GM_Draw__FP8daE_GM_c */
static int daE_GM_Draw(daE_GM_c* i_this) {
    return i_this->draw();
}

/* 806D631C-806D6708 00519C 03EC+00 1/1 0/0 0/0 .text            damage_check__8daE_GM_cFv */
void daE_GM_c::damage_check() {
    // NONMATCHING
    mStts.Move();

    if (field_0xa72 == 0) {
        if (mSph.ChkTgHit()) {
            mAtInfo.mpCollider = mSph.GetTgHitObj();

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL)) {
                field_0xa74 = 1;
                health = 1;
            } else if (field_0xa74 > 1) {
                health = 100;
            } else {
                health = 1;
            }

            cc_at_check(this, &mAtInfo);

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                field_0xa72 = 20;
            } else {
                field_0xa72 = 10;
            }

            if (mAtInfo.mHitStatus != 0) {
                field_0xa72 = 10;
            }

            dScnPly_c::setPauseTimer(0);

            if (arg0 == 3) {
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                    return;
                }

                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                    setAction(&daE_GM_c::hook);
                } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_SPINNER)) {
                    setAction(&daE_GM_c::core_piku);
                } else if (mSph.GetTgHitObj()->ChkAtType(AT_TYPE_CSTATUE_BOSS_SWING)) {
                    setAction(&daE_GM_c::core_pechanko_damage);
                } else {
                    setAction(&daE_GM_c::core_damage);
                }
            } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) ||
                       mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                field_0xa1c.y = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &current.pos);
                speedF = cM_rndFX(5.0f) + 15.0f;
                setAction(&daE_GM_c::rebound);
            } else if (mSph.GetTgHitObj()->ChkAtType(AT_TYPE_CSTATUE_BOSS_SWING)) {
                setAction(&daE_GM_c::pechanko_damage);
            } else if (field_0xa69 == 0) {
                setAction(&daE_GM_c::egg_damage);
            } else if (field_0xa69 == 1) {
                if (mSph.GetTgHitObj()->ChkAtType(AT_TYPE_2000000)) {
                    if (mAtInfo.mpActor != NULL) {
                        field_0xa1c.y = cLib_targetAngleY(&mAtInfo.mpActor->current.pos, &current.pos);
                    } else {
                        field_0xa1c.y = mAtInfo.mHitDirection.y;
                    }
                } else {
                    field_0xa1c.y = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &current.pos);
                }

                setAction(&daE_GM_c::damage);
            }
        } else if (checkAction(&daE_GM_c::walk) && mSph.ChkAtHit() && l_hitActorID == fpcM_ERROR_PROCESS_ID_e) {
            l_hitActorID = fopAcM_GetID(this);
            struct_806D7F1C = 10;
            field_0xa72 = 10;
        }
    }
}

/* 806D6708-806D6958 005588 0250+00 1/1 0/0 0/0 .text            execute__8daE_GM_cFv */
void daE_GM_c::execute() {
    // NONMATCHING
}

/* 806D6958-806D6978 0057D8 0020+00 2/1 0/0 0/0 .text            daE_GM_Execute__FP8daE_GM_c */
static void daE_GM_Execute(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D6978-806D6980 0057F8 0008+00 1/0 0/0 0/0 .text            daE_GM_IsDelete__FP8daE_GM_c */
static bool daE_GM_IsDelete(daE_GM_c* param_0) {
    return true;
}

/* 806D6980-806D6AA8 005800 0128+00 1/1 0/0 0/0 .text            _delete__8daE_GM_cFv */
void daE_GM_c::_delete() {
    // NONMATCHING
}

/* 806D6AA8-806D6AC8 005928 0020+00 1/0 0/0 0/0 .text            daE_GM_Delete__FP8daE_GM_c */
static void daE_GM_Delete(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D6AC8-806D6CD0 005948 0208+00 1/1 0/0 0/0 .text            CreateHeap__8daE_GM_cFv */
void daE_GM_c::CreateHeap() {
    // NONMATCHING
}

/* 806D6CD0-806D6CF0 005B50 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7ADC-806D7AE0 00013C 0004+00 0/1 0/0 0/0 .rodata          l_damage_count */
static u8 const l_damage_count[4] = {1, 1, 1, 3};

/* 806D7AE0-806D7AE8 000140 0008+00 0/1 0/0 0/0 .rodata          l_heapsize */
static u32 const l_heapsize[4] = {
    0x3120, 0x3120, 0x21E0, 0x2DE0,
};

/* 806D6CF0-806D71F4 005B70 0504+00 1/1 0/0 0/0 .text            create__8daE_GM_cFv */
cPhs__Step daE_GM_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daE_GM_c);

    arg0 = fopAcM_GetParam(this);
    if (arg0 == 0xFF) {
        arg0 = 0;
    }

    field_0xa73 = lbl_186_bss_49;
    lbl_186_bss_49++;

    if (arg0 == 2) {
        mSwBit = (fopAcM_GetParam(this) & 0xFF00) >> 8;
        if (mSwBit != 0xFF) {
            if (dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                OS_REPORT("E_gm やられ後なので再セットしません\n");
                return cPhs_ERROR_e;
            }
        }

        u8 uVar1 = (fopAcM_GetParam(this) & 0xFF0000) >> 16;
        if (uVar1 == 0xFF) {
            uVar1 = 10;
        }

        field_0xa54 = uVar1 * 100.0f;
    }

    cPhs__Step phase;
    if (arg0 == 3) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_mg");
    } else {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_gm");
    }

    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("e_gm PARAM %x\n", fopAcM_GetParam(this));
        OS_REPORT("e_gm or e_mg//////////////E_GM SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(this, useHeapInit, l_heapsize[arg0])) {
            OS_REPORT("//////////////E_GM SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_GM SET 2 !!\n");

        if (l_initHIO == 0) {
            l_initHIO = 1;
            field_0xa77 = 1;
            l_HIO.id = -1;
        }

        field_0xa10.setall(1.0f);
        mSph.Set(cc_sph_src);
        mSph.SetStts(&mStts);
        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        mObjAcch.OnLineCheck();
        mAcchCir.SetWall(scale.y * 30.0f, scale.x * 30.0f);

        if (arg0 == 3) {
            mStts.Init(0xFF, 0, this);
            mSound.setEnemyName("E_mg");
        } else {
            mStts.Init(0x32, 0, this);
            mSound.setEnemyName("E_gm");
        }

        mAtInfo.mpSound = &mSound;
        health = 1;
        field_0x560 = 1;
        field_0xa74 = l_damage_count[arg0];
        field_0xa48 = 255.0f;
        field_0xa76 = 0;
        fopAcM_OnStatus(this, 0);
        attention_info.flags = fopAc_AttnFlag_BATTLE_e;

        if (arg0 == 2) {
            mSound.init(&current.pos, NULL, 2, 1);
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x10000);
            fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x4000);
            setAction(&daE_GM_c::normal_wait);
        } else if (arg0 == 3) {
            mSound.init(&current.pos, &eyePos, 3, 1);

            if (l_coreActorID == fpcM_ERROR_PROCESS_ID_e) {
                l_coreActorID = fopAcM_GetID(this);
            }

            field_0xa68 = 0;
            attention_info.flags = 0;
            health = 100;
            field_0x560 = 100;
            setAction(&daE_GM_c::core_wait);
        } else {
            mSound.init(&current.pos, NULL, 2, 1);
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x10000);
            field_0xa50 = hREG_F(7) + 0.1f;
            field_0xa66 = cM_rndFX(100.0f) + 1000.0f;
            field_0xa64 = field_0xa66;
            setAction(&daE_GM_c::egg_wait);
        }

        field_0xa75 = 1;
        field_0x564 = 44;
        daE_GM_Execute(this);
    }

    return phase;
}

/* 806D71F4-806D723C 006074 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806D723C-806D7284 0060BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806D7284-806D72E0 006104 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806D72E0-806D7350 006160 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806D7350-806D73C0 0061D0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806D73C0-806D73E0 006240 0020+00 1/0 0/0 0/0 .text            daE_GM_Create__FP8daE_GM_c */
static void daE_GM_Create(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D73E0-806D7428 006260 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

// /* 806D7428-806D7470 0062A8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_GM_HIO_cFv */
// daE_GM_HIO_c::~daE_GM_HIO_c() {
//     // NONMATCHING
// }

/* 806D7470-806D74F0 0062F0 0080+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gm_cpp */
void __sinit_d_a_e_gm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806D7470, __sinit_d_a_e_gm_cpp);
#pragma pop

/* 806D74F0-806D74F8 006370 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806D74F0() {
    // NONMATCHING
}

/* 806D74F8-806D7500 006378 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806D74F8() {
    // NONMATCHING
}

/* 806D7914-806D7950 006794 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 806D7950-806D798C 0067D0 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 806D7DB4-806D7DD4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GM_Method */
static actor_method_class l_daE_GM_Method = {
    (process_method_func)daE_GM_Create,
    (process_method_func)daE_GM_Delete,
    (process_method_func)daE_GM_Execute,
    (process_method_func)daE_GM_IsDelete,
    (process_method_func)daE_GM_Draw,
};

/* 806D7DD4-806D7E04 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GM */
extern actor_process_profile_definition g_profile_E_GM = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_GM,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daE_GM_c),      // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  119,                   // mPriority
  &l_daE_GM_Method,      // sub_method
  0x00044100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
