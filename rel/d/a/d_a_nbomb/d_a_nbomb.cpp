/**
 * d_a_nbomb.cpp
 * Bomb Actor
 */

#include "rel/d/a/d_a_nbomb/d_a_nbomb.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"
#include "rel/d/a/d_a_mirror/d_a_mirror.h"

//
// Forward References:
//

extern "C" void coHitCallback__9daNbomb_cFP10fopAc_ac_c();
extern "C" static void
daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void tgHitCallback__9daNbomb_cFP12dCcD_GObjInf();
extern "C" void __dt__4cXyzFv();
extern "C" static void
daNbomb_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void searchEnemy__9daNbomb_cFP10fopAc_ac_c();
extern "C" static void daNbomb_searchEnemy__FP10fopAc_ac_cPv();
extern "C" void createHeap__9daNbomb_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNbomb_createHeap__FP10fopAc_ac_c();
extern "C" void create__9daNbomb_cFv();
extern "C" void __ct__9daNbomb_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__13dBgS_BombAcchFv();
extern "C" static void daNbomb_Create__FP10fopAc_ac_c();
extern "C" void __dt__9daNbomb_cFv();
extern "C" static void daNbomb_Delete__FP9daNbomb_c();
extern "C" void checkTimerStop__9daNbomb_cFv();
extern "C" void checkExplode__9daNbomb_cFv();
extern "C" void setRoomInfo__9daNbomb_cFv();
extern "C" void setSmokePos__9daNbomb_cFv();
extern "C" void setEffect__9daNbomb_cFv();
extern "C" void setHookshotOffset__9daNbomb_cFv();
extern "C" void setFreeze__9daNbomb_cFv();
extern "C" void checkWaterIn__9daNbomb_cFv();
extern "C" void insectLineCheck__9daNbomb_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setHitPolygon__9daNbomb_cFi();
extern "C" void procExplodeInit__9daNbomb_cFv();
extern "C" void procExplode__9daNbomb_cFv();
extern "C" void procCarryInit__9daNbomb_cFv();
extern "C" void procCarry__9daNbomb_cFv();
extern "C" void procWaitInit__9daNbomb_cFv();
extern "C" void procWait__9daNbomb_cFv();
extern "C" void procFlowerWaitInit__9daNbomb_cFv();
extern "C" void procFlowerWait__9daNbomb_cFv();
extern "C" void procBoomerangMoveInit__9daNbomb_cFP12dCcD_GObjInf();
extern "C" void procBoomerangMove__9daNbomb_cFv();
extern "C" void procInsectMoveInit__9daNbomb_cFv();
extern "C" void procInsectMove__9daNbomb_cFv();
extern "C" void execute__9daNbomb_cFv();
extern "C" static void daNbomb_Execute__FP9daNbomb_c();
extern "C" void draw__9daNbomb_cFv();
extern "C" static void daNbomb_Draw__FP9daNbomb_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_nbomb_cpp();
extern "C" static void func_804CC2B0();
extern "C" static void func_804CC2B8();
extern "C" void checkExplodeNow__9daNbomb_cFv();
extern "C" void deleteBombAndEffect__9daNbomb_cFv();
extern "C" void setCargoBombExplode__9daNbomb_cFv();
extern "C" bool checkExplodeNow__7dBomb_cFv();
extern "C" void deleteBombAndEffect__7dBomb_cFv();
extern "C" void setCargoBombExplode__7dBomb_cFv();
extern "C" extern char const* const d_a_nbomb__stringBase0;
extern "C" void* m_arcNameList__9daNbomb_c[6];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii();
extern "C" void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void entry__10daMirror_cFP8J3DModel();
extern "C" void checkStateCarry__7dBomb_cFv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void dKyw_pntwind_set__FP14WIND_INFLUENCE();
extern "C" void dKyw_pntwind_cut__FP14WIND_INFLUENCE();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void ChkMoveBG__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__15dBgS_BombLinChkFv();
extern "C" void __dt__15dBgS_BombLinChkFv();
extern "C" void SetBomb__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Set__12dCcMassS_MngFP8cCcD_ObjUc();
extern "C" void getAlinkArcName__9daAlink_cFv();
extern "C" void getFreezeR__9daAlink_cCFv();
extern "C" void getFreezeG__9daAlink_cCFv();
extern "C" void getFreezeB__9daAlink_cCFv();
extern "C" void checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo();
extern "C" void getBombExplodeTime__9daAlink_cCFv();
extern "C" void getBombGravity__9daAlink_cCFv();
extern "C" void getBombMaxFallSpeed__9daAlink_cCFv();
extern "C" void getBombBoundRate__9daAlink_cCFv();
extern "C" void getBombStopSpeedY__9daAlink_cCFv();
extern "C" void getBombMaxSpeedY__9daAlink_cCFv();
extern "C" void getBombEffScale__9daAlink_cCFv();
extern "C" void getBombAtR__9daAlink_cCFv();
extern "C" void getEnemyBombColorR__9daAlink_cCFv();
extern "C" void getBombWaterGravity__9daAlink_cCFv();
extern "C" void getBombWaterMaxFallSpeed__9daAlink_cCFv();
extern "C" void getBombExplodeWaterEffectLimit__9daAlink_cCFv();
extern "C" void getBombInsectLimitAngle__9daAlink_cCFv();
extern "C" void checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo();
extern "C" void setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_actor_addcol_amb_set__Fsssf();
extern "C" void dKy_bg_addcol_amb_set__Fsssf();
extern "C" void dKy_actor_addcol_set__Fsssf();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void outprod__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_atan2f__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseX__4cXyz[12];
extern "C" u8 BaseY__4cXyz[12];
extern "C" u8 BaseZ__4cXyz[12];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 804C6DCC-804C6E10 0000EC 0044+00 1/1 0/0 0/0 .text coHitCallback__9daNbomb_cFP10fopAc_ac_c */
void daNbomb_c::coHitCallback(fopAc_ac_c* i_hitActor) {
    if (fopAcM_GetGroup(i_hitActor) == fopAc_ENEMY_e ||
        (checkStateFlg0(FLG0_INSECT_BOMB) &&
         (!checkStateFlg0(FLG0_NO_HIT_PLAYER) || i_hitActor != daAlink_getAlinkActorClass())))
    {
        onStateFlg0(FLG0_BOMB_HIT);
    }
}

/* 804C6E10-804C6E34 000130 0024+00 2/2 0/0 0/0 .text
 * daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daNbomb_coHitCallback(fopAc_ac_c* i_coActorA, dCcD_GObjInf* i_coObjInfA,
                                  fopAc_ac_c* i_coActorB, dCcD_GObjInf* i_coObjInfB) {
    ((daNbomb_c*)i_coActorA)->coHitCallback(i_coActorB);
}

/* ############################################################################################## */
/* 804CC340-804CC34C 000000 000C+00 12/12 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static u8 const lit_3767[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC340, &lit_3767);

/* 804CC34C-804CC358 00000C 000C+00 0/1 0/0 0/0 .rodata          l_localCenterOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_localCenterOffset = {0.0f, 30.0f, 0.0f};
COMPILER_STRIP_GATE(0x804CC34C, &l_localCenterOffset);
#pragma pop

/* 804CC358-804CC360 000018 0006+02 1/0 0/0 0/0 .rodata          l_arcNameBombF */
SECTION_RODATA static char const l_arcNameBombF[] = "Bombf";
COMPILER_STRIP_GATE(0x804CC358, &l_arcNameBombF);

/* 804CC360-804CC368 000020 0005+03 1/1 0/0 0/0 .rodata          l_arcNameBombE */
SECTION_RODATA static char const l_arcNameBombE[] = "E_BI";
COMPILER_STRIP_GATE(0x804CC360, &l_arcNameBombE);

/* 804CC368-804CC370 000028 0005+03 1/1 0/0 0/0 .rodata          l_arcNameBombEW */
SECTION_RODATA static char const l_arcNameBombEW[] = "E_BG";
COMPILER_STRIP_GATE(0x804CC368, &l_arcNameBombEW);

/* 804CC370-804CC374 000030 0004+00 0/2 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 2.0f;
COMPILER_STRIP_GATE(0x804CC370, &lit_4213);
#pragma pop

/* 804CC374-804CC378 000034 0004+00 1/6 0/0 0/0 .rodata          @4214 */
SECTION_RODATA static f32 const lit_4214 = 0.5f;
COMPILER_STRIP_GATE(0x804CC374, &lit_4214);

/* 804CC378-804CC37C 000038 0004+00 0/3 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = 10.0f;
COMPILER_STRIP_GATE(0x804CC378, &lit_4215);
#pragma pop

/* 804CC37C-804CC380 00003C 0004+00 3/13 0/0 0/0 .rodata          @4216 */
SECTION_RODATA static f32 const lit_4216 = 1.0f;
COMPILER_STRIP_GATE(0x804CC37C, &lit_4216);

/* 804C6E34-804C6F78 000154 0144+00 1/1 0/0 0/0 .text tgHitCallback__9daNbomb_cFP12dCcD_GObjInf */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::tgHitCallback(dCcD_GObjInf* i_hitObj) {
    if (i_hitObj->ChkAtType(AT_TYPE_BOOMERANG)) {
        if (!fopAcM_checkCarryNow(this) && !fopAcM_checkHookCarryNow(this) &&
            !checkStateFlg0(FLG0_INSECT_BOMB))
        {
            procBoomerangMoveInit(i_hitObj);
        }
    } else if (i_hitObj->ChkAtType(AT_TYPE_HOOKSHOT) && fopAcM_checkStatus(this, 0x80000)) {
        if (fopAcM_checkCarryNow(this)) {
            fopAcM_cancelCarryNow(this);
        }

        fopAcM_setHookCarryNow(this);
        procCarryInit();
        onStateFlg0(FLG0_SET_HOOKSHOT_OFFSET);
    } else if (i_hitObj->ChkAtType(0x200)) {
        if (i_hitObj->GetAtMtrl() == dCcD_MTRL_WIND && !checkStateCarry() && !checkStateExplode() &&
            fopAcM_GetParam(this) != PRM_FLOWER_BOMB)
        {
            cLib_addCalcPos(&field_0xc20, *i_hitObj->GetAtVecP() * 2.0f, 0.5f, 10.0f, 1.0f);
            onStateFlg0(FLG0_UNK_8000);
        }
    } else {
        onStateFlg0(FLG0_BOMB_HIT);
    }

    if (i_hitObj->GetAtMtrl() == dCcD_MTRL_ICE) {
        setFreeze();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::tgHitCallback(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/tgHitCallback__9daNbomb_cFP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 804C6F78-804C6FB4 000298 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__4cXyzFv.s"
}
#pragma pop

/* 804C6FB4-804C6FD8 0002D4 0024+00 1/1 0/0 0/0 .text
 * daNbomb_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daNbomb_tgHitCallback(fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf,
                                  fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf) {
    ((daNbomb_c*)i_tgActor)->tgHitCallback(i_atObjInf);
}

/* ############################################################################################## */
/* 804CC380-804CC384 000040 0004+00 5/14 0/0 0/0 .rodata          @4255 */
SECTION_RODATA static u8 const lit_4255[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804CC380, &lit_4255);

/* 804CC384-804CC388 000044 0004+00 0/1 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 250000.0f;
COMPILER_STRIP_GATE(0x804CC384, &lit_4256);
#pragma pop

/* 804CC388-804CC38C 000048 0004+00 0/4 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = 100.0f;
COMPILER_STRIP_GATE(0x804CC388, &lit_4257);
#pragma pop

/* 804C6FD8-804C70C0 0002F8 00E8+00 1/1 0/0 0/0 .text searchEnemy__9daNbomb_cFP10fopAc_ac_c */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::searchEnemy(fopAc_ac_c* i_enemy) {
    mDoMtx_multVec(field_0xa70, &i_enemy->current.pos, &field_0xc14);

    if (i_enemy->attention_info.flags & 5 && field_0xc14.abs2XZ() < 250000.0f &&
        fabsf(field_0xc14.y) < 100.0f)
    {
        if (abs(field_0xc14.atan2sX_Z()) < 0x4000) {
            field_0xc14.y = 0.0f;
            field_0xc14.normalizeZP();
            mDoMtx_multVecSR(mpModel->getBaseTRMtx(), &field_0xc14, &field_0xc14);
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::searchEnemy(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/searchEnemy__9daNbomb_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 804C70C0-804C7114 0003E0 0054+00 1/1 0/0 0/0 .text daNbomb_searchEnemy__FP10fopAc_ac_cPv */
static void* daNbomb_searchEnemy(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetGroup(i_actor) == fopAc_ENEMY_e &&
        ((daNbomb_c*)i_data)->searchEnemy(i_actor) != NULL)
    {
        return i_actor;
    }

    return NULL;
}

/* ############################################################################################## */
/* 804CC38C-804CC398 00004C 000C+00 0/1 0/0 0/0 .rodata          bmdIdx$4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const bmdIdx[6] = {
    0x001E, 0x0027, 0x0026, 0x0003, 0x000E, 0x000A,
};
COMPILER_STRIP_GATE(0x804CC38C, &bmdIdx);
#pragma pop

/* 804CC4D8-804CC518 000000 0040+00 1/1 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{AT_TYPE_BOMB, 0x4, 0x1e}, {0xd8fbffef, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x0},                            // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                            // mGObjTg
        {0x0},                                                         // mGObjCo
    },                                                                 // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f}  // mSph
    }  // mSphAttr
};

/* 804CC518-804CC530 -00001 0018+00 4/4 0/0 0/0 .data            m_arcNameList__9daNbomb_c */
SECTION_DATA const char* daNbomb_c::m_arcNameList[6] = {
    NULL, NULL, NULL, l_arcNameBombF, l_arcNameBombE, l_arcNameBombEW,
};

/* 804CC530-804CC53C 000058 000A+02 1/1 0/0 0/0 .data            enemyBombID$5072 */
SECTION_DATA static u8 enemyBombID[10 + 2 /* padding */] = {
    0x0A,
    0x0D,
    0x0A,
    0x0E,
    0x0A,
    0x0F,
    0x0A,
    0x10,
    0x0A,
    0x11,
    /* padding */
    0x00,
    0x00,
};

/* 804CC53C-804CC548 -00001 000C+00 1/1 0/0 0/0 .data            @5313 */
SECTION_DATA static void* lit_5313[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procExplode__9daNbomb_cFv,
};

/* 804CC548-804CC554 -00001 000C+00 1/1 0/0 0/0 .data            @5462 */
SECTION_DATA static void* lit_5462[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCarry__9daNbomb_cFv,
};

/* 804CC554-804CC560 -00001 000C+00 1/1 0/0 0/0 .data            @5630 */
SECTION_DATA static void* lit_5630[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWait__9daNbomb_cFv,
};

/* 804CC560-804CC56C -00001 000C+00 1/1 0/0 0/0 .data            @5886 */
SECTION_DATA static void* lit_5886[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFlowerWait__9daNbomb_cFv,
};

/* 804CC56C-804CC578 -00001 000C+00 1/1 0/0 0/0 .data            @5921 */
SECTION_DATA static void* lit_5921[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoomerangMove__9daNbomb_cFv,
};

/* 804CC578-804CC584 -00001 000C+00 1/1 0/0 0/0 .data            @5924 */
SECTION_DATA static void* lit_5924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoomerangMove__9daNbomb_cFv,
};

/* 804CC584-804CC590 -00001 000C+00 1/1 0/0 0/0 .data            @5987 */
SECTION_DATA static void* lit_5987[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procInsectMove__9daNbomb_cFv,
};

/* 804CC590-804CC5B0 -00001 0020+00 1/0 0/0 0/0 .data            l_daNbombMethod */
static actor_method_class l_daNbombMethod = {
    (process_method_func)daNbomb_Create__FP10fopAc_ac_c,
    (process_method_func)daNbomb_Delete__FP9daNbomb_c,
    (process_method_func)daNbomb_Execute__FP9daNbomb_c,
    0,
    (process_method_func)daNbomb_Draw__FP9daNbomb_c,
};

/* 804CC5B0-804CC5E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NBOMB */
extern actor_process_profile_definition g_profile_NBOMB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NBOMB,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  0x00000C44,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  270,                    // mPriority
  &l_daNbombMethod,       // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 804CC5E0-804CC5EC 000108 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 804CC5EC-804CC5F8 000114 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 804CC5F8-804CC604 000120 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 804CC604-804CC610 00012C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 804CC610-804CC61C 000138 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 804CC61C-804CC628 000144 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 804CC628-804CC64C 000150 0024+00 3/3 0/0 0/0 .data            __vt__13dBgS_BombAcch */
SECTION_DATA extern void* __vt__13dBgS_BombAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13dBgS_BombAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804CC2B8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804CC2B0,
};

/* 804CC64C-804CC660 000174 0014+00 2/2 0/0 0/0 .data            __vt__9daNbomb_c */
SECTION_DATA extern void* __vt__9daNbomb_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)checkExplodeNow__9daNbomb_cFv,
    (void*)deleteBombAndEffect__9daNbomb_cFv,
    (void*)setCargoBombExplode__9daNbomb_cFv,
};

/* 804CC660-804CC674 000188 0014+00 2/2 0/0 0/0 .data            __vt__7dBomb_c */
SECTION_DATA extern void* __vt__7dBomb_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)checkExplodeNow__7dBomb_cFv,
    (void*)deleteBombAndEffect__7dBomb_cFv,
    (void*)setCargoBombExplode__7dBomb_cFv,
};

/* 804CC674-804CC680 00019C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804C7114-804C72BC 000434 01A8+00 1/1 0/0 0/0 .text            createHeap__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::createHeap() {
    static u16 const bmdIdx[6] = {0x001E, 0x0027, 0x0026, 0x0003, 0x000E, 0x000A};

    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(m_arcNameList[mType], bmdIdx[mType]);
    JUT_ASSERT(modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTransform* trans = NULL;
    if (mType == TYPE_INSECT_ENEMY) {
        trans = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcNameBombE, 6);
        JUT_ASSERT(trans);
    } else if (mType == TYPE_WATER_ENEMY) {
        trans = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcNameBombEW, 5);
        JUT_ASSERT(trans);
    } else if (mType == TYPE_INSECT_PLAYER) {
        trans = (J3DAnmTransform*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x15);
        JUT_ASSERT(trans);
    }

    if (trans != NULL) {
        mpBck = new mDoExt_bckAnm();
        if (mpBck == NULL) {
            return 0;
        }

        if (!mpBck->init(trans, TRUE, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 0, -1, false)) {
            return 0;
        }
    }

    mSound.init(&current.pos, 2);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/createHeap__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C72BC-804C7304 0005DC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 804C7304-804C7324 000624 0020+00 1/1 0/0 0/0 .text            daNbomb_createHeap__FP10fopAc_ac_c
 */
static int daNbomb_createHeap(fopAc_ac_c* i_this) {
    return ((daNbomb_c*)i_this)->createHeap();
}

/* ############################################################################################## */
/* 804CC398-804CC3B0 000058 0018+00 0/1 0/0 0/0 .rodata          heapSize$4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x0E, 0xB0, 0x00, 0x00, 0x0E, 0xB0, 0x00, 0x00, 0x17, 0xC0,
    0x00, 0x00, 0x0E, 0xB0, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x0F, 0x90,
};
COMPILER_STRIP_GATE(0x804CC398, &heapSize);
#pragma pop

/* 804CC3B0-804CC3B4 000070 0004+00 2/6 0/0 0/0 .rodata          @4678 */
SECTION_RODATA static f32 const lit_4678 = 30.0f;
COMPILER_STRIP_GATE(0x804CC3B0, &lit_4678);

/* 804CC3B4-804CC3B8 000074 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 60.0f;
COMPILER_STRIP_GATE(0x804CC3B4, &lit_4679);
#pragma pop

/* 804CC3B8-804CC3BC 000078 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 10000.0f;
COMPILER_STRIP_GATE(0x804CC3B8, &lit_4680);
#pragma pop

/* 804CC3BC-804CC3C0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = 110.0f;
COMPILER_STRIP_GATE(0x804CC3BC, &lit_4681);
#pragma pop

/* 804CC3C0-804CC3C4 000080 0004+00 0/2 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4682 = 0.75f;
COMPILER_STRIP_GATE(0x804CC3C0, &lit_4682);
#pragma pop

/* 804CC3C4-804CC3C8 000084 0004+00 0/1 0/0 0/0 .rodata          @4683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4683 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x804CC3C4, &lit_4683);
#pragma pop

/* 804CC3C8-804CC3CC 000088 0004+00 0/4 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4684 = 5.0f;
COMPILER_STRIP_GATE(0x804CC3C8, &lit_4684);
#pragma pop

/* 804CC3CC-804CC3D0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4685 = -36.0f;
COMPILER_STRIP_GATE(0x804CC3CC, &lit_4685);
#pragma pop

/* 804CC3D0-804CC3D4 000090 0004+00 0/1 0/0 0/0 .rodata          @4686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4686 = 36.0f;
COMPILER_STRIP_GATE(0x804CC3D0, &lit_4686);
#pragma pop

/* 804CC3D4-804CC3D8 000094 0004+00 0/1 0/0 0/0 .rodata          @4687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4687 = 66.0f;
COMPILER_STRIP_GATE(0x804CC3D4, &lit_4687);
#pragma pop

/* 804CC3D8-804CC3E0 000098 0008+00 4/8 0/0 0/0 .rodata          @4689 */
SECTION_RODATA static u8 const lit_4689[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC3D8, &lit_4689);

/* 804CC4D0-804CC4D0 000190 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804CC4D0 = "D_MN01A";
#pragma pop

/* 804C7324-804C7B44 000644 0820+00 1/1 0/0 0/0 .text            create__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::create() {
    fopAcM_GetID(this);
    fopAcM_SetupActor(this, daNbomb_c);

    BOOL is_octaeel_bomb = false;

    if (fopAcM_GetParam(this) == PRM_FLOWER_BOMB) {
        mType = TYPE_FLOWER;
    } else if (fopAcM_GetParam(this) == PRM_ENEMY_BOMB ||
               fopAcM_GetParam(this) == PRM_ENEMY_BOMB_HOOKSHOT ||
               fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG)
    {
        mType = TYPE_INSECT_ENEMY;
    } else if (fopAcM_GetParam(this) == PRM_ENEMY_WATER_BOMB ||
               fopAcM_GetParam(this) == PRM_ENEMY_WATER_BOMB_HOOKSHOT ||
               fopAcM_GetParam(this) == PRM_UNK_15)
    {
        if (fopAcM_GetParam(this) == PRM_ENEMY_WATER_BOMB) {
            fopAcM_SetParam(this, PRM_ENEMY_BOMB);
        } else if (fopAcM_GetParam(this) == PRM_ENEMY_WATER_BOMB_HOOKSHOT) {
            fopAcM_SetParam(this, PRM_ENEMY_BOMB_HOOKSHOT);
            if (strcmp(dComIfGp_getStartStageName(), "D_MN01A") == 0) {
                is_octaeel_bomb = true;
            }
        } else {
            fopAcM_SetParam(this, PRM_ENEMY_BOMB_BOOMERANG);
        }

        mType = TYPE_WATER_ENEMY;
        onStateFlg0(FLG0_WATER_BOMB);
    } else if (fopAcM_GetParam(this) == PRM_INSECT_BOMB_PLAYER) {
        mType = TYPE_INSECT_PLAYER;
    } else if (fopAcM_GetParam(this) == PRM_WATER_BOMB_PLAYER) {
        mType = TYPE_WATER_PLAYER;
    } else {
        mType = TYPE_NORMAL_PLAYER;
    }

    if (mType >= TYPE_FLOWER && dComIfG_resLoad(&mPhase, m_arcNameList[mType]) != cPhs_COMPLEATE_e)
    {
        return cPhs_ERROR_e;
    }

    static u32 const heapSize[] = {0xEB0, 0xEB0, 0x17C0, 0xEB0, 0x2500, 0xF90};

    if (!fopAcM_entrySolidHeap(this, daNbomb_createHeap, heapSize[mType])) {
        return cPhs_ERROR_e;
    }

    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(this, 1, &mAcchCir);
    mAcch.ClrWaterNone();
    mAcch.SetRoofCrrHeight(60.0f);

    if (fopAcM_GetParam(this) != PRM_INSECT_BOMB_PLAYER) {
        mAcch.ClrRoofNone();
    }

    mAcch.SetWaterCheckOffset(10000.0f);
    mAcch.SetWtrChkMode(2);
    mAcch.OnLineCheck();

    mDoMtx_copy(cMtx_getIdentity(), field_0xa40);
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mCcStts.Init(30, 0xFF, this);

    mCcSph.Set(l_sphSrc);
    mCcSph.SetStts(&mCcStts);
    mCcSph.SetTgHitCallback(daNbomb_tgHitCallback);

    mSph2.Set(l_sphSrc);
    mSph2.SetStts(&mCcStts);
    mSph2.SetTgMtrl(2);
    mSph2.OffCoSetBit();
    mSph2.SetR(110.0f);
    mSph2.SetTgHitCallback(daNbomb_tgHitCallback);

    daAlink_c* player = daAlink_getAlinkActorClass();
    gravity = player->getBombGravity();
    maxFallSpeed = player->getBombMaxFallSpeed();
    mExTime = player->getBombExplodeTime();

    if (is_octaeel_bomb) {
        mExTime *= 0.75f;
    }

    cLib_onBit<u32>(attention_info.flags, 0x80);
    fopAcM_OnCarryType(this, fopAcM_CARRY(fopAcM_CARRY_LIGHT | fopAcM_CARRY_SIDE));
    field_0xb5c = shape_angle.y;

    if (fopAcM_GetParam(this) == PRM_NORMAL_BOMB_EXPLODE ||
        fopAcM_GetParam(this) == PRM_WATER_BOMB_EXPLODE)
    {
        mAcch.CrrPos(dComIfG_Bgsp());
        procExplodeInit();
        onStateFlg0(FLG0_UNK_2000);
    } else {
        mAcch.CrrPos(dComIfG_Bgsp());
        setRoomInfo();

        if (fopAcM_GetParam(this) == PRM_NORMAL_BOMB_PLAYER ||
            fopAcM_GetParam(this) == PRM_WATER_BOMB_PLAYER)
        {
            onStateFlg0(FLG0_PLAYER_MAKE);

            if (fopAcM_GetParam(this) == PRM_WATER_BOMB_PLAYER) {
                onStateFlg0(FLG0_WATER_BOMB);
            }

            if (checkWaterIn()) {
                onStateFlg0(FLG0_UNDERWATER);
                gravity = player->getBombWaterGravity();
                maxFallSpeed = player->getBombWaterMaxFallSpeed();
            }

            procCarryInit();
        } else if (fopAcM_GetParam(this) == PRM_ENEMY_BOMB) {
            if (player->setEnemyBomb(this)) {
                procCarryInit();
            } else {
                procWaitInit();
            }
        } else if (fopAcM_GetParam(this) == PRM_ENEMY_BOMB_HOOKSHOT) {
            if (player->setEnemyBombHookshot(this)) {
                setHookshotOffset();
                procCarryInit();
            } else {
                procWaitInit();
            }
        } else if (fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG) {
            procBoomerangMoveInit(NULL);
        } else if (fopAcM_GetParam(this) == PRM_FLOWER_BOMB) {
            procFlowerWaitInit();
        } else if (fopAcM_GetParam(this) == PRM_BOMB_CARGO_CARRY) {
            onStateFlg0(FLG0_CARGO_CARRY);
            procCarryInit();
        } else if (fopAcM_GetParam(this) == PRM_INSECT_BOMB_PLAYER) {
            onStateFlg0(daNbomb_FLG0(FLG0_INSECT_BOMB | FLG0_NO_HIT_PLAYER | FLG0_PLAYER_MAKE));
            mExTime = player->getBombExplodeTime() * 2;
            shape_angle.y = player->shape_angle.y;
            current.angle.y = player->shape_angle.y;

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
            mDoMtx_inverse(mpModel->getBaseTRMtx(), field_0xa70);

            scale.set(0.6f, 0.6f, 0.6f);
            mpModel->setBaseScale(scale);
            field_0xbf0 = cXyz::BaseY;

            field_0xbfc.set(cM_ssin(shape_angle.y), 0.0f, cM_scos(shape_angle.y));
            field_0xc08.set(field_0xbfc.z, 0.0f, -field_0xbfc.x);

            cXyz start = current.pos + (field_0xbf0 * 5.0f);
            cXyz end = current.pos - (field_0xbf0 * 100.0f);
            mLineChk.Set(&start, &end, this);

            if (insectLineCheck() == 1) {
                procInsectMoveInit();
            } else {
                start = current.pos - (field_0xbf0 * 5.0f);
                end = start - (field_0xbfc * 100.0f);
                mLineChk.Set(&start, &end, this);

                if (insectLineCheck() == 1) {
                    procInsectMoveInit();
                } else {
                    procExplodeInit();
                    onStateFlg0(FLG0_UNK_2000);
                }
            }
        } else {
            procWaitInit();
        }
    }

    fopAcM_SetMin(this, -36.0f, 0.0f, -36.0f);
    fopAcM_SetMax(this, 36.0f, 66.0f, 36.0f);
    fopAcM_setCullSizeFar(this, 10.0f);

    if (!checkStateFlg0(FLG0_INSECT_BOMB)) {
        mDoMtx_stack_c::transS(current.pos);

        if (!checkStateFlg0(FLG0_INSECT_BOMB)) {
            fopAcM_OnStatus(this, 0x80000);
        }

        mDoMtx_stack_c::ZXYrotM(0, shape_angle.y, shape_angle.z);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoMtx_inverse(mpModel->getBaseTRMtx(), field_0xa70);
    }

    if (mpBck != NULL) {
        mpBck->entry(mpModel->getModelData());
    }

    mpModel->calc();
    setSmokePos();
    model = mpModel;
    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::create() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/create__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C7B44-804C7CC8 000E64 0184+00 1/1 0/0 0/0 .text            __ct__9daNbomb_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNbomb_c::daNbomb_c() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__ct__9daNbomb_cFv.s"
}
#pragma pop

/* 804C7CC8-804C7D10 000FE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 804C7D10-804C7D58 001030 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 804C7D58-804C7DB4 001078 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 804C7DB4-804C7E24 0010D4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 804C7E24-804C7E94 001144 0070+00 3/2 0/0 0/0 .text            __dt__13dBgS_BombAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_BombAcch::~dBgS_BombAcch() {
extern "C" asm void __dt__13dBgS_BombAcchFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__13dBgS_BombAcchFv.s"
}
#pragma pop

/* 804C7E94-804C7EB4 0011B4 0020+00 1/0 0/0 0/0 .text            daNbomb_Create__FP10fopAc_ac_c */
static int daNbomb_Create(fopAc_ac_c* i_this) {
    return ((daNbomb_c*)i_this)->create();
}

/* 804C7EB4-804C826C 0011D4 03B8+00 1/1 0/0 0/0 .text            __dt__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
daNbomb_c::~daNbomb_c() {
    if (mExplodeMode < 2) {
        dKy_actor_addcol_set(0, 0, 0, 0.0f);
    }

    dKy_plight_cut(&mLightInfluence);
    dKyw_pntwind_cut(&mWindInfluence);
    mSound.deleteObject();

    if (checkStateFlg0(FLG0_UNK_40)) {
        for (int i = 0; i < 5; i++) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mEffectEmitterIDs[i]);
            if (emitter != NULL) {
                emitter->stopDrawParticle();
            }
        }
    }

    if (mType >= TYPE_FLOWER) {
        dComIfG_resDelete(&mPhase, m_arcNameList[mType]);
    }

    daAlink_c* player = daAlink_getAlinkActorClass();
    if (player != NULL) {
        if (checkStateFlg0(FLG0_INSECT_BOMB)) {
            player->decrementInsectBombCnt();
        } else if (checkStateFlg0(FLG0_PLAYER_MAKE)) {
            player->decrementBombCnt();
        }
    }

    fopAcM_cancelCarryNow(this);
    fopAcM_cancelHookCarryNow(this);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mEffectEmitterIDs[0]);
    if (emitter != NULL) {
        emitter->setParticleCallBackPtr(NULL);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNbomb_c::~daNbomb_c() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C826C-804C8294 00158C 0028+00 1/0 0/0 0/0 .text            daNbomb_Delete__FP9daNbomb_c */
static int daNbomb_Delete(daNbomb_c* i_this) {
    i_this->~daNbomb_c();
    return 1;
}

/* 804C8294-804C82D8 0015B4 0044+00 2/2 0/0 0/0 .text            checkTimerStop__9daNbomb_cFv */
bool daNbomb_c::checkTimerStop() {
    return fopAcM_GetParam(this) == PRM_FLOWER_BOMB ||
           checkStateFlg0(daNbomb_FLG0(FLG0_UNK_800 | FLG0_FROZEN)) ||
           (mType != TYPE_INSECT_ENEMY && mType != TYPE_WATER_ENEMY &&
            fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG_MOVE);
}

/* ############################################################################################## */
/* 804CC3E0-804CC3E4 0000A0 0004+00 3/3 0/0 0/0 .rodata          @5021 */
SECTION_RODATA static f32 const lit_5021 = 1.5f;
COMPILER_STRIP_GATE(0x804CC3E0, &lit_5021);

/* 804C82D8-804C8430 0015F8 0158+00 5/5 0/0 0/0 .text            checkExplode__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::checkExplode() {
    if (checkStateFlg0(daNbomb_FLG0(FLG0_UNK_800 | FLG0_FROZEN))) {
        return false;
    }

    if (mExTime > 0) {
        if (!dComIfGp_event_runCheck() && !checkTimerStop()) {
            mExTime--;

            if (checkStateFlg0(FLG0_CARGO_CARRY)) {
                daAlink_c* player = daAlink_getAlinkActorClass();
                if (mExTime < player->getBombExplodeTime()) {
                    mExTime = player->getBombExplodeTime() * 1.5f;
                }
            }
        }

        if ((mExTime == 0 || checkStateFlg0(FLG0_BOMB_HIT)) ||
            ((fopAcM_GetParam(this) == PRM_BOMB_BOOMERANG_MOVE ||
              fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG_MOVE) &&
             mAcch.ChkWallHit() && !daAlink_c::checkIcePolygonDamage(&mAcchCir)))
        {
            return procExplodeInit();
        }
    }

    offStateFlg0(FLG0_BOMB_HIT);
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::checkExplode(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/checkExplode__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC3E4-804CC3E8 0000A4 0004+00 1/2 0/0 0/0 .rodata          @5036 */
SECTION_RODATA static f32 const lit_5036 = -1000000000.0f;
COMPILER_STRIP_GATE(0x804CC3E4, &lit_5036);

/* 804C8430-804C84D8 001750 00A8+00 5/5 0/0 0/0 .text            setRoomInfo__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::setRoomInfo() {
    int room_no;
    if (mAcch.GetGroundH() != -1000000000.0f) {
        room_no = dComIfG_Bgsp().GetRoomId(mAcch.m_gnd);
        tevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(mAcch.m_gnd);
        mPolySound = dKy_pol_sound_get(&mAcch.m_gnd);
    } else {
        room_no = dComIfGp_roomControl_getStayNo();
    }

    tevStr.mRoomNo = room_no;
    mSoundReverb = dComIfGp_getReverb(room_no);
    mCcStts.SetRoomId(room_no);
    fopAcM_SetRoomNo(this, room_no);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::setRoomInfo(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setRoomInfo__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC3E8-804CC3F4 0000A8 000C+00 1/1 0/0 0/0 .rodata          localOffset$5044 */
SECTION_RODATA static u8 const localOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC3E8, &localOffset);

/* 804C84D8-804C8588 0017F8 00B0+00 2/2 0/0 0/0 .text            setSmokePos__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::setSmokePos() {
    if (mType == TYPE_INSECT_ENEMY || mType == TYPE_WATER_ENEMY) {
        mDoMtx_multVecZero(mpModel->getBaseTRMtx(), &mEffectPosition);
    } else {
        static Vec localOffset = {0.0f, 60.0f, 0.0f};
        mDoMtx_multVec(mpModel->getBaseTRMtx(), &localOffset, &mEffectPosition);
    }

    field_0xbe4 = (mEffectPosition - mEffectLastPosition) * 0.5f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::setSmokePos(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setSmokePos__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC3F4-804CC3F8 0000B4 0004+00 1/1 0/0 0/0 .rodata          @5143 */
SECTION_RODATA static f32 const lit_5143 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x804CC3F4, &lit_5143);

/* 804CC688-804CC68C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 804CC68C-804CC690 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 804CC690-804CC694 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 804CC694-804CC698 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 804CC698-804CC69C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 804CC69C-804CC6A0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 804CC6A0-804CC6A4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 804CC6A4-804CC6A8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 804CC6A8-804CC6AC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 804CC6AC-804CC6B0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 804CC6B0-804CC6B4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 804CC6B4-804CC6B8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 804CC6B8-804CC6BC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 804CC6BC-804CC6C0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 804CC6C0-804CC6C4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 804CC6C4-804CC6C8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 804CC6C8-804CC6D8 000048 000C+04 0/1 0/0 0/0 .bss             @5069 */
#pragma push
#pragma force_active on
static u8 lit_5069[12 + 4 /* padding */];
#pragma pop

/* 804CC6D8-804CC6E4 000058 000C+00 0/1 0/0 0/0 .bss             effectScale$5068 */
#pragma push
#pragma force_active on
static u8 effectScale[12];
#pragma pop

/* 804C8588-804C87F0 0018A8 0268+00 1/1 0/0 0/0 .text            setEffect__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::setEffect() {
    static cXyz effectScale(1.8f, 1.8f, 1.8f);

    if (mpBck != NULL || checkStateFlg0(FLG0_WATER_BOMB)) {
        static u16 enemyBombID[] = {0xA0D, 0xA0E, 0xA0F, 0xA10, 0xA11};
        u32* emitter_id = &mEffectEmitterIDs[0];
        u16* effect_id = &enemyBombID[0];

        mDoMtx_stack_c::copy(mpModel->getAnmMtx(0));

        if (mType == TYPE_WATER_ENEMY || checkStateFlg0(FLG0_WATER_BOMB)) {
            mDoMtx_stack_c::ZXYrotM(0, 0x4000, 0x4000);
        }

        for (int i = 0; i < 5; i++, emitter_id++, effect_id++) {
            *emitter_id = dComIfGp_particle_set(*emitter_id, *effect_id, &current.pos, &tevStr);

            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(*emitter_id);
            if (emitter != NULL) {
                emitter->setGlobalRTMatrix(mDoMtx_stack_c::get());
            }
        }
    } else {
        mEffectEmitterIDs[0] =
            dComIfGp_particle_set(mEffectEmitterIDs[0], 0x1DF, &mEffectPosition, &tevStr, NULL,
                                  &effectScale, 0xFF, NULL, -1, NULL, NULL, NULL);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mEffectEmitterIDs[0]);
        if (emitter != NULL) {
            emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitter->setUserWork((u32)&field_0xbe4);
        }

        mEffectEmitterIDs[1] =
            dComIfGp_particle_set(mEffectEmitterIDs[1], 0x1DE, &mEffectPosition, &tevStr, NULL,
                                  &effectScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::setEffect() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setEffect__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C87F0-804C88CC 001B10 00DC+00 2/2 0/0 0/0 .text            setHookshotOffset__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::setHookshotOffset() {
    daAlink_c* player = daAlink_getAlinkActorClass();

    cXyz offset = player->current.pos - current.pos;
    offset.y = 0.0f;
    offset.normalizeZP();
    offset *= 30.0f;
    offset.y += 30.0f;

    player->setHookshotCarryOffset(fopAcM_GetID(this), &offset);
    offStateFlg0(FLG0_SET_HOOKSHOT_OFFSET);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::setHookshotOffset() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setHookshotOffset__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C88CC-804C88F0 001BEC 0024+00 2/2 0/0 0/0 .text            setFreeze__9daNbomb_cFv */
void daNbomb_c::setFreeze() {
    if (!checkStateFlg0(FLG0_FROZEN)) {
        onStateFlg0(FLG0_FROZEN);
        mFreezeTimer = 90;
    }
}

/* 804C88F0-804C8928 001C10 0038+00 3/3 0/0 0/0 .text            checkWaterIn__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::checkWaterIn() {
    return mAcch.ChkWaterHit() && current.pos.y + 30.0f < mAcch.m_wtr.GetHeight();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::checkWaterIn(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/checkWaterIn__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC3F8-804CC3FC 0000B8 0004+00 1/1 0/0 0/0 .rodata          @5214 */
SECTION_RODATA static u32 const lit_5214 = 0x43360B61;
COMPILER_STRIP_GATE(0x804CC3F8, &lit_5214);

/* 804C8928-804C8A40 001C48 0118+00 3/3 0/0 0/0 .text            insectLineCheck__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::insectLineCheck() {
    if (dComIfG_Bgsp().LineCross(&mLineChk)) {
        cM3dGPla chk_poly;
        dComIfG_Bgsp().GetTriPla(mLineChk, &chk_poly);

        daAlink_c* player = daAlink_getAlinkActorClass();

        if (chk_poly.mNormal.y < cM_scos(cM_deg2s(player->getBombInsectLimitAngle())) ||
            dComIfG_Bgsp().GetGroundCode(mLineChk) == 1)
        {
            return 2;
        }

        return 1;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::insectLineCheck() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/insectLineCheck__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C8A40-804C8A88 001D60 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804CC3FC-804CC400 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5289 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5289 = 0x3F7FBE77;
COMPILER_STRIP_GATE(0x804CC3FC, &lit_5289);
#pragma pop

/* 804C8A88-804C8CF8 001DA8 0270+00 2/2 0/0 0/0 .text            setHitPolygon__9daNbomb_cFi */
// matches with literals
#ifdef NONMATCHING
void daNbomb_c::setHitPolygon(BOOL param_0) {
    if (!param_0) {
        mInsectHitPolyInfo.SetPolyInfo(mLineChk);
        current.pos = mLineChk.i_GetCross();
    }

    cM3dGPla poly;
    dComIfG_Bgsp().GetTriPla(mInsectHitPolyInfo, &poly);

    f32 var_f31 = field_0xbf0.inprod(poly.mNormal);
    if (!(fabsf(var_f31) > 0.999f)) {
        cXyz sp20 = field_0xbf0.outprod(poly.mNormal);
        sp20.normalizeZP();

        mDoMtx_stack_c::rotAxisRadS(&sp20,
                                    cM_atan2f(JMAFastSqrt(1.0f - (var_f31 * var_f31)), var_f31));
        field_0xbf0 = poly.mNormal;

        mDoMtx_stack_c::multVecSR(&field_0xc08, &field_0xc08);
        mDoMtx_stack_c::multVecSR(&field_0xbfc, &field_0xbfc);

        csXyz sp58(current.angle);
        mDoMtx_stack_c::ZXYrotM(current.angle);
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &current.angle);

        if (param_0) {
            shape_angle.x += current.angle.x - sp58.x;
            shape_angle.y += current.angle.y - sp58.y;
            shape_angle.z += current.angle.z - sp58.z;
        }
    }

    if (!param_0) {
        cLib_addCalcAngleS(&shape_angle.x, current.angle.x, 3, 0x2000, 0x400);
        cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 3, 0x2000, 0x400);
        cLib_addCalcAngleS(&shape_angle.z, current.angle.z, 3, 0x2000, 0x400);
    }

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_inverse(mpModel->getBaseTRMtx(), field_0xa70);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNbomb_c::setHitPolygon(int param_0){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setHitPolygon__9daNbomb_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC400-804CC414 0000C0 0012+02 0/1 0/0 0/0 .rodata          normalNameID$5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const normalNameID[18 + 2 /* padding */] = {
    0x01,
    0x61,
    0x01,
    0x62,
    0x01,
    0x63,
    0x01,
    0x64,
    0x01,
    0x65,
    0x01,
    0x66,
    0x01,
    0x67,
    0x01,
    0x68,
    0x01,
    0xEC,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804CC400, &normalNameID);
#pragma pop

/* 804CC414-804CC424 0000D4 0010+00 0/1 0/0 0/0 .rodata          waterNameID$5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterNameID[16] = {
    0x0A, 0x05, 0x0A, 0x06, 0x0A, 0x07, 0x0A, 0x08, 0x0A, 0x09, 0x0A, 0x0A, 0x0A, 0x0B, 0x0A, 0x0C,
};
COMPILER_STRIP_GATE(0x804CC414, &waterNameID);
#pragma pop

/* 804CC424-804CC438 0000E4 0012+02 0/1 0/0 0/0 .rodata          waterNameID2$5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterNameID2[18 + 2 /* padding */] = {
    0x09,
    0xFC,
    0x09,
    0xFD,
    0x09,
    0xFE,
    0x09,
    0xFF,
    0x0A,
    0x00,
    0x0A,
    0x01,
    0x0A,
    0x02,
    0x0A,
    0x03,
    0x0A,
    0x04,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804CC424, &waterNameID2);
#pragma pop

/* 804CC438-804CC43C 0000F8 0004+00 0/2 0/0 0/0 .rodata          @5400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5400 = 65536.0f;
COMPILER_STRIP_GATE(0x804CC438, &lit_5400);
#pragma pop

/* 804CC43C-804CC440 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5401 = 600.0f;
COMPILER_STRIP_GATE(0x804CC43C, &lit_5401);
#pragma pop

/* 804CC440-804CC444 000100 0004+00 0/1 0/0 0/0 .rodata          @5402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5402 = 500.0f;
COMPILER_STRIP_GATE(0x804CC440, &lit_5402);
#pragma pop

/* 804CC444-804CC448 000104 0004+00 0/1 0/0 0/0 .rodata          @5403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5403 = 160000.0f;
COMPILER_STRIP_GATE(0x804CC444, &lit_5403);
#pragma pop

/* 804CC448-804CC44C 000108 0004+00 0/1 0/0 0/0 .rodata          @5404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5404 = 640000.0f;
COMPILER_STRIP_GATE(0x804CC448, &lit_5404);
#pragma pop

/* 804C8CF8-804C9118 002018 0420+00 5/5 0/0 0/0 .text            procExplodeInit__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procExplodeInit() {
    fopAcM_OnStatus(this, 0x20000);
    daAlink_c* player = daAlink_getAlinkActorClass();

    scale.x = player->getBombEffScale();
    scale.y = scale.x;
    scale.z = scale.x;

    shape_angle.y = cM_rndF(0x10000);
    field_0xbe4 = cXyz::Zero;

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);

    static const u16 normalNameID[] = {0x161, 0x162, 0x163, 0x164, 0x165,
                                       0x166, 0x167, 0x168, 0x1EC};
    static const u16 waterNameID[] = {0xA05, 0xA06, 0xA07, 0xA08, 0xA09, 0xA0A, 0xA0B, 0xA0C};
    static const u16 waterNameID2[] = {0x9FC, 0x9FD, 0x9FE, 0x9FF, 0xA00,
                                       0xA01, 0xA02, 0xA03, 0xA04};

    const u16* eff_list;
    int eff_num;
    u32 sound;

    if (checkStateFlg0(FLG0_UNDERWATER) || fopAcM_GetParam(this) == PRM_WATER_BOMB_EXPLODE) {
        if (mAcch.ChkWaterHit() &&
            mAcch.m_wtr.GetHeight() - current.pos.y < player->getBombExplodeWaterEffectLimit())
        {
            eff_list = waterNameID2;
            eff_num = 9;
            sound = Z2SE_OBJ_BOMB_EXP_WTRSURF;
        } else {
            eff_list = waterNameID;
            eff_num = 8;
            sound = Z2SE_OBJ_WATERBOMB_EXPLODE;
        }
    } else {
        eff_list = normalNameID;
        eff_num = 9;
        sound = Z2SE_OBJ_BOMB_EXPLODE;
    }

    for (int i = 0; i < eff_num; i++, eff_list++) {
        dComIfGp_particle_setColor(*eff_list, &current.pos, &tevStr, NULL, NULL, 0.0f, 0xFF,
                                   &shape_angle, &scale, NULL, -1, NULL);
    }

    mLightInfluence.mPosition = current.pos;
    mLightInfluence.mPosition.y += 100.0f;
    mLightInfluence.mColor.r = 100;
    mLightInfluence.mColor.g = 100;
    mLightInfluence.mColor.b = 80;
    mLightInfluence.mPow = 600.0f;
    mLightInfluence.mFluctuation = 100.0f;
    dKy_plight_set(&mLightInfluence);

    mWindInfluence.position = current.pos;
    mWindInfluence.mDirection.x = 0.0f;
    mWindInfluence.mDirection.y = 1.0f;
    mWindInfluence.mDirection.z = 0.0f;
    mWindInfluence.mRadius = 500.0f;
    mWindInfluence.field_0x20 = 0.0f;
    mWindInfluence.mStrength = 0.5f;
    dKyw_pntwind_set(&mWindInfluence);

    mExplodeMode = 0;
    mExplosionStrength = 0.0f;

    mProcFunc = &procExplode;

    speedF = 0.0f;
    speed = cXyz::Zero;
    gravity = 0.0f;
    fopAcM_SetParam(this, PRM_NORMAL_BOMB_EXPLODE);
    cLib_offBit<u32>(attention_info.flags, 0x10);

    mCcSph.OffTgSetBit();
    mCcSph.OffCoSetBit();
    mCcSph.OnAtSetBit();
    mCcSph.SetR(player->getBombAtR());
    mCcSph.SetC(current.pos);
    g_dComIfG_gameInfo.play.mCcs.Set(&mCcSph);
    g_dComIfG_gameInfo.play.mCcs.SetMass(&mCcSph, 1);

    mSound.startSound(sound, 0, mSoundReverb);

    fopAcM_cancelCarryNow(this);
    fopAcM_cancelHookCarryNow(this);
    dKy_Sound_set(current.pos, 0xFF, fopAcM_GetID(this), 10);
    mExTime = 0;

    f32 var_f31 = current.pos.abs2(player->current.pos);
    if (var_f31 < 160000.0f) {
        dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
    } else if (var_f31 < 640000.0f) {
        dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));
    }

    field_0xb51 = 1;
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procExplodeInit(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procExplodeInit__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC44C-804CC450 00010C 0004+00 0/1 0/0 0/0 .rodata          @5451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5451 = 1500.0f;
COMPILER_STRIP_GATE(0x804CC44C, &lit_5451);
#pragma pop

/* 804CC450-804CC458 000110 0008+00 0/4 0/0 0/0 .rodata          @5452 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5452[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC450, &lit_5452);
#pragma pop

/* 804CC458-804CC460 000118 0008+00 0/4 0/0 0/0 .rodata          @5453 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5453[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC458, &lit_5453);
#pragma pop

/* 804CC460-804CC468 000120 0008+00 0/4 0/0 0/0 .rodata          @5454 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5454[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC460, &lit_5454);
#pragma pop

/* 804CC468-804CC46C 000128 0004+00 0/1 0/0 0/0 .rodata          @5455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5455 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x804CC468, &lit_5455);
#pragma pop

/* 804CC46C-804CC470 00012C 0004+00 0/1 0/0 0/0 .rodata          @5456 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5456 = 99.0f / 100.0f;
COMPILER_STRIP_GATE(0x804CC46C, &lit_5456);
#pragma pop

/* 804CC470-804CC474 000130 0004+00 0/1 0/0 0/0 .rodata          @5457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5457 = 0.25f;
COMPILER_STRIP_GATE(0x804CC470, &lit_5457);
#pragma pop

/* 804CC474-804CC478 000134 0004+00 2/4 0/0 0/0 .rodata          @5458 */
SECTION_RODATA static f32 const lit_5458 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x804CC474, &lit_5458);

/* 804C9118-804C93E0 002438 02C8+00 1/0 0/0 0/0 .text            procExplode__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procExplode() {
    camera_class* camera = dComIfGp_getCamera(0);
    f32 dist_scale = 0.0f;

    mLightInfluence.mPow = mExplosionStrength * 1500.0f;
    mWindInfluence.mStrength = mExplosionStrength;

    f32 dist_to_cam = current.pos.abs(camera->mLookat.mEye);
    if (dist_to_cam < 1500.0f) {
        dist_scale = dist_to_cam / 1500.0f;
        dist_scale *= dist_scale * dist_scale;
        dist_scale = 1.0f - dist_scale;
    }

    switch (mExplodeMode) {
    case 0:
        cLib_addCalc(&mExplosionStrength, 1.0f, 0.5f, 0.5f, 0.02f);

        if (mExplosionStrength >= 0.99f) {
            mExplodeMode++;
        }
        break;
    case 1:
        cLib_addCalc(&mExplosionStrength, 0.0f, 0.25f, 0.1f, 0.02f);

        if (mExplosionStrength <= 0.1f) {
            mExplodeMode++;
            mExplosionStrength = 0.0f;
        }
        break;
    }

    dKy_actor_addcol_amb_set(100, 60, 50, mExplosionStrength * dist_scale);
    dKy_bg_addcol_amb_set(100, 60, 50, mExplosionStrength * dist_scale);

    if (mExplodeMode < 2) {
        mExTime--;

        if (mExTime > -3) {
            mCcSph.SetC(current.pos);
            g_dComIfG_gameInfo.play.mCcs.Set(&mCcSph);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&mCcSph, 1);
        }
    } else {
        dKy_actor_addcol_set(0, 0, 0, 0);
        fopAcM_delete(this);
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procExplode(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procExplode__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C93E0-804C955C 002700 017C+00 6/6 0/0 0/0 .text            procCarryInit__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procCarryInit() {
    mProcFunc = &procCarry;

    offStateFlg0(FLG0_UNK_10000);
    field_0xc20 = cXyz::Zero;
    field_0xc2c = cXyz::Zero;

    if (fopAcM_checkHookCarryNow(this)) {
        fopAcM_SetParam(this, PRM_BOMB_HOOKSHOT);
    } else {
        fopAcM_SetParam(this, PRM_BOMB_CARRY);
    }

    if (checkStateFlg0(FLG0_INSECT_BOMB)) {
        mpBck->init((J3DAnmTransform*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x15),
                    TRUE, -1, 1.0f, 0, -1, true);
        shape_angle.set(0, daAlink_getAlinkActorClass()->shape_angle.y, 0);
        mDoMtx_copy(cMtx_getIdentity(), field_0xa40);
    }

    speedF = 0.0f;
    speed = cXyz::Zero;
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcSph.OffCoSetBit();
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procCarryInit(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procCarryInit__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C955C-804C9930 00287C 03D4+00 1/0 0/0 0/0 .text            procCarry__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procCarry() {
    daAlink_c* player = daAlink_getAlinkActorClass();

    cLib_chaseF(&field_0xbb0, 0.0f, 1.0f);

    if (checkStateFlg0(FLG0_SET_HOOKSHOT_OFFSET)) {
        setHookshotOffset();
    }

    if (!fopAcM_checkCarryNow(this) && !fopAcM_checkHookCarryNow(this)) {
        if (fopAcM_GetParam(this) == PRM_BOMB_HOOKSHOT && player->setForceGrab(this, 0, 1)) {
            procCarryInit();
            return true;
        }

        if (checkStateFlg0(FLG0_INSECT_BOMB)) {
            if (fopAcM_GetParam(this) != PRM_BOMB_HOOKSHOT) {
                mDoMtx_multVecSR(mpModel->getBaseTRMtx(), &cXyz::BaseY, &field_0xbf0);
                mDoMtx_multVecSR(mpModel->getBaseTRMtx(), &cXyz::BaseZ, &field_0xbfc);
                mDoMtx_multVecSR(mpModel->getBaseTRMtx(), &cXyz::BaseX, &field_0xc08);
                mDoMtx_MtxToRot(mpModel->getBaseTRMtx(), &shape_angle);
                current.angle = shape_angle;

                cXyz start = current.pos + (field_0xbf0 * 5.0f);
                cXyz end = current.pos - (field_0xbf0 * 100.0f);
                mLineChk.Set(&start, &end, this);

                if (insectLineCheck() == 1) {
                    procInsectMoveInit();
                    return procInsectMove();
                }

                start = current.pos - (field_0xbf0 * 5.0f);
                end = start - (field_0xbfc * 100.0f);
                mLineChk.Set(&start, &end, this);

                if (insectLineCheck() == 1) {
                    procInsectMoveInit();
                    return procInsectMove();
                }
            }

            if (checkWaterIn()) {
                onStateFlg0(FLG0_DELETE_BOMB);
                return true;
            }

            return procExplodeInit();
        } else {
            procWaitInit();
            return procWait();
        }
    } else if (checkExplode()) {
        return true;
    }

    cXyz sp40(current.pos);
    mAcch.CrrPos(dComIfG_Bgsp());
    setRoomInfo();

    if (fopAcM_GetParam(this) == 1) {
        if (daAlink_getAlinkActorClass()->getGrabActorID() == fopAcM_GetID(this)) {
            daAlink_getAlinkActorClass()->setGrabCollisionOffset(current.pos.x - sp40.x,
                                                                 current.pos.z - sp40.z, NULL);
        }
    }

    current.pos = sp40;
    speedF = 0.0f;
    speed = cXyz::Zero;
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procCarry(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procCarry__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804C9930-804C9984 002C50 0054+00 4/4 0/0 0/0 .text            procWaitInit__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procWaitInit() {
    if (fopAcM_GetParam(this) == PRM_BOMB_CARRY) {
        onStateFlg0(FLG0_UNK_20000);
    }

    mProcFunc = &procWait;
    fopAcM_SetParam(this, PRM_BOMB_WAIT);
    mCcSph.OnCoSetBit();
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procWaitInit(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procWaitInit__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC478-804CC47C 000138 0004+00 0/1 0/0 0/0 .rodata          @5873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5873 = 300.0f;
COMPILER_STRIP_GATE(0x804CC478, &lit_5873);
#pragma pop

/* 804CC47C-804CC480 00013C 0004+00 0/1 0/0 0/0 .rodata          @5874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5874 = -20.0f;
COMPILER_STRIP_GATE(0x804CC47C, &lit_5874);
#pragma pop

/* 804CC480-804CC484 000140 0004+00 0/1 0/0 0/0 .rodata          @5875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5875 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x804CC480, &lit_5875);
#pragma pop

/* 804CC484-804CC488 000144 0004+00 0/1 0/0 0/0 .rodata          @5876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5876 = 16384.0f;
COMPILER_STRIP_GATE(0x804CC484, &lit_5876);
#pragma pop

/* 804CC488-804CC48C 000148 0004+00 0/2 0/0 0/0 .rodata          @5877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5877 = -1.0f;
COMPILER_STRIP_GATE(0x804CC488, &lit_5877);
#pragma pop

/* 804CC48C-804CC490 00014C 0004+00 0/1 0/0 0/0 .rodata          @5878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5878 = 7.0f;
COMPILER_STRIP_GATE(0x804CC48C, &lit_5878);
#pragma pop

/* 804CC490-804CC494 000150 0004+00 0/1 0/0 0/0 .rodata          @5879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5879 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x804CC490, &lit_5879);
#pragma pop

/* 804CC494-804CC498 000154 0004+00 1/2 0/0 0/0 .rodata          @5880 */
SECTION_RODATA static f32 const lit_5880 = 20.0f;
COMPILER_STRIP_GATE(0x804CC494, &lit_5880);

/* 804CC498-804CC4A0 000158 0008+00 0/1 0/0 0/0 .rodata          @5882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5882[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804CC498, &lit_5882);
#pragma pop

/* 804C9984-804CA268 002CA4 08E4+00 2/1 0/0 0/0 .text            procWait__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procWait() {
    if (checkExplode()) {
        return true;
    }

    if (fopAcM_checkCarryNow(this)) {
        return procCarryInit();
    }

    f32 prev_speedf = speedF;

    if (mAcch.i_ChkGroundHit() && !mAcch.ChkGroundLanding()) {
        s16 var_r28 = fopAcM_getPolygonAngle(mAcch.m_gnd, current.angle.y);

        speed.y -= speedF * fabsf(cM_ssin(var_r28));
        speedF *= cM_scos(var_r28);
    } else {
        cLib_chaseF(&field_0xbb0, 0.0f, 1.0f);
    }

    f32 prev_gravity = gravity;

    if (field_0xc20.y > 5.0f) {
        gravity = 0.0f;

        if (speed.y < 0.0f) {
            speed.y += field_0xc20.y;

            if (speed.y > 0.0f) {
                field_0xc20.y = speed.y;
                speed.y = 0.0f;
            } else {
                field_0xc20.y = 0.0f;
            }
        }

        if (field_0xc20.abs2XZ() < 0.1f) {
            speedF *= 0.5f;
        }
    }

    if (field_0xc2c.y > 2.0f) {
        gravity = 0.0f;

        if (speed.y < 0.0f) {
            speed.y += field_0xc2c.y;

            if (speed.y > 0.0f) {
                field_0xc2c.y = speed.y;
                speed.y = 0.0f;
            } else {
                field_0xc2c.y = 0.0f;
            }

            onStateFlg0(FLG0_UNK_10000);
        }

        if (field_0xc2c.abs2XZ() < 0.1f) {
            speedF *= 0.5f;
        }
    }

    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());

    if (checkStateFlg0(FLG0_UNK_10000) && checkStateFlg0(FLG0_UNDERWATER) && mAcch.ChkWaterHit() &&
        (current.pos.y + 30.0f) + 1.0f >= mAcch.m_wtr.GetHeight())
    {
        current.pos.y = (mAcch.m_wtr.GetHeight() - 30.0f) - 1.0f;
        speed.y = 0.0f;
    }

    speedF = prev_speedf;
    gravity = prev_gravity;

    f32 prev_speedY = speed.y;
    s16 var_r28 = 0;
    s16 var_r27 = 0;

    current.pos += field_0xc20 + field_0xc2c;
    mAcch.CrrPos(dComIfG_Bgsp());
    setRoomInfo();

    if (checkStateFlg0(FLG0_INSECT_BOMB) &&
        (mAcch.i_ChkGroundHit() || mAcch.ChkWallHit() || mAcch.ChkRoofHit()))
    {
        return procExplodeInit();
    }

    if (mAcch.i_ChkGroundHit()) {
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane);

        field_0xb5a = cM_atan2s(plane.mNormal.absXZ(), plane.mNormal.y);
        var_r27 = plane.mNormal.atan2sX_Z();
        var_r28 = var_r27 - current.angle.y;

        if (checkStateFlg0(FLG0_UNK_800) &&
            (!mAcch.ChkWaterHit() || current.pos.y + 300.0f > mAcch.m_wtr.GetHeight()))
        {
            onStateFlg0(FLG0_DELETE_BOMB);
            return true;
        }

        if (daAlink_c::checkSnowCodePolygon(mAcch.m_gnd)) {
            field_0xbb0 = -20.0f;
            speedF *= 0.7f;
            speed.y = 0.0f;
            prev_speedY = 0.0f;
        }
    }

    daAlink_c* player = daAlink_getAlinkActorClass();

    if (mAcch.ChkWallHit()) {
        speedF *= player->getBombBoundRate();
        current.angle.y = (mAcchCir.GetWallAngleY() * 2) - (current.angle.y + 0x8000);
    } else if (mAcch.ChkGroundLanding() && speedF > 5.0f && cM_deg2s(50.0f) <= field_0xb5a) {
        if ((f32)fabs(var_r28) >= (f32)0x4000) {
            speedF *= player->getBombBoundRate();
            current.angle.y = (var_r27 * 2) - (current.angle.y + 0x8000);
            mAcch.ClrGroundLanding();
            mAcch.i_ClrGroundHit();
            speed.y = prev_speedY;
        }
    }

    if (mAcch.ChkGroundLanding()) {
        u32 spC0 = fabsf(prev_speedY) * 2.0f;

        if (checkStateFlg0(FLG0_UNK_20000) && speedF < 1.0f) {
            spC0 = 50;
        } else if (spC0 > 100) {
            spC0 = 100;
        }

        Z2AudioMgr::getInterface()->seStart(Z2SE_OBJ_BOMB_BOUND, &current.pos, mPolySound,
                                            mSoundReverb, 1.0f, spC0, -1.0f, -1.0f, 0);

        f32 var_f31 = prev_speedY * -player->getBombBoundRate();
        if (var_f31 < player->getBombStopSpeedY()) {
            cLib_chaseF(&speedF, 0.0f, 7.0f);
        } else {
            speedF *= 0.9f;

            s16 gnd_angle = fopAcM_getPolygonAngle(mAcch.m_gnd, current.angle.y);
            if (gnd_angle < 0) {
                speedF *= cM_scos(gnd_angle);
            }

            if (var_f31 > player->getBombMaxSpeedY()) {
                speed.y = player->getBombMaxSpeedY();
            } else {
                speed.y = var_f31;
            }
        }

        fopAcM_seStartCurrent(this, Z2SE_OBJ_BOMB_BOUND, 0);
    } else if (mAcch.i_ChkGroundHit()) {
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane);

        if (field_0xb5a >= cM_deg2s(20.0f) && !daAlink_c::checkSnowCodePolygon(mAcch.m_gnd)) {
            f32 var_f28 = 2.0f * cM_ssin(field_0xb5a);
            f32 var_f30 = (plane.mNormal.x * var_f28) + (speedF * cM_ssin(current.angle.y));
            f32 var_f29 = (plane.mNormal.z * var_f28) + (speedF * cM_scos(current.angle.y));

            current.angle.y = cM_atan2s(var_f30, var_f29);
            speedF = JMAFastSqrt(var_f30 * var_f30 + var_f29 * var_f29);
            if (speedF > 20.0f) {
                speedF = 20.0f;
            }
        } else {
            if (cLib_chaseF(&speedF, 0.0f, 2.0f)) {
                if (field_0xc20.abs2() < 1.0f && field_0xc2c.abs2() < 1.0f &&
                    !checkStateFlg0(FLG0_FROZEN))
                {
                    cLib_onBit<u32>(attention_info.flags, 0x10);
                } else {
                    cLib_offBit<u32>(attention_info.flags, 0x10);
                }
            }
        }
    } else {
        cLib_offBit<u32>(attention_info.flags, 0x10);
    }

    offStateFlg0(FLG0_UNK_20000);
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procWait(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procWait__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804CA268-804CA2EC 003588 0084+00 1/1 0/0 0/0 .text            procFlowerWaitInit__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procFlowerWaitInit() {
    mProcFunc = &procFlowerWait;

    mCcSph.OnCoSetBit();
    mCcSph.OffTgSetBit();
    cLib_offBit<u32>(attention_info.flags, 0x10);
    scale.set(0.1f, 0.1f, 0.1f);
    mCcStts.SetWeight(0xFE);
    mpModel->setBaseScale(scale);
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procFlowerWaitInit(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procFlowerWaitInit__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804CA2EC-804CA3B8 00360C 00CC+00 1/0 0/0 0/0 .text            procFlowerWait__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procFlowerWait() {
    if (scale.x < 1.0f) {
        cLib_chaseF(&scale.x, 1.0f, 0.1f);
        scale.y = scale.x;
        scale.z = scale.x;
        mpModel->setBaseScale(scale);
    } else {
        cLib_onBit<u32>(attention_info.flags, 0x10);
        mCcSph.OnTgSetBit();

        if (checkExplode()) {
            return true;
        }

        if (fopAcM_checkCarryNow(this)) {
            mCcStts.SetWeight(30);
            return procCarryInit();
        }
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procFlowerWait(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procFlowerWait__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804CA3B8-804CA4E0 0036D8 0128+00 2/2 0/0 0/0 .text
 * procBoomerangMoveInit__9daNbomb_cFP12dCcD_GObjInf            */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procBoomerangMoveInit(dCcD_GObjInf* unused) {
    if (mProcFunc == &procBoomerangMove) {
        return false;
    }

    mProcFunc = procBoomerangMove;

    if (fopAcM_GetParam(this) == PRM_FLOWER_BOMB ||
        fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG)
    {
        fopAcM_SetParam(this, PRM_ENEMY_BOMB_BOOMERANG_MOVE);
    } else {
        fopAcM_SetParam(this, PRM_BOMB_BOOMERANG_MOVE);
    }

    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcStts.SetWeight(30);
    mCcSph.OnCoSetBit();
    mCcSph.SetCoHitCallback(daNbomb_coHitCallback);
    speedF = 0.0f;

    mBoomerangMove.initOffset(&current.pos);
    mExTime = daAlink_getAlinkActorClass()->getBombExplodeTime() * 1.5f;
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procBoomerangMoveInit(dCcD_GObjInf* param_0){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procBoomerangMoveInit__9daNbomb_cFP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 804CA4E0-804CA688 003800 01A8+00 2/0 0/0 0/0 .text            procBoomerangMove__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procBoomerangMove() {
    if (checkExplode()) {
        return true;
    }

    daAlink_c* player = daAlink_getAlinkActorClass();

    fopAc_ac_c* var_r29;
    if (checkStateFlg0(FLG0_FROZEN)) {
        var_r29 = NULL;
    } else {
        var_r29 = this;
    }

    if (checkStateFlg0(FLG0_FROZEN) && mAcch.ChkWallHit()) {
        speed.y = 0.0f;
        mCcSph.SetCoHitCallback(NULL);
        return procWaitInit();
    }

    if (!mBoomerangMove.posMove(&current.pos, &shape_angle.y, var_r29, 0x1C00)) {
        mExTime = player->getBombExplodeTime();
        mCcSph.SetCoHitCallback(NULL);

        if (fopAcM_checkCarryNow(this)) {
            return procCarryInit();
        }

        speed.y = 0.0f;
        procWaitInit();
    } else {
        if (mExTime < player->getBombExplodeTime()) {
            mExTime = player->getBombExplodeTime() * 1.5f;
        }
    }

    current.angle.y = shape_angle.y;

    if (mCcStts.GetCCMoveP() != NULL) {
        current.pos += *mCcStts.GetCCMoveP();
    }

    mAcch.CrrPos(dComIfG_Bgsp());
    setRoomInfo();
    mBoomerangMove.bgCheckAfterOffset(&current.pos);
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procBoomerangMove(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procBoomerangMove__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC4A0-804CC4A4 000160 0004+00 1/1 0/0 0/0 .rodata          @6001 */
SECTION_RODATA static f32 const lit_6001 = 3.0f;
COMPILER_STRIP_GATE(0x804CC4A0, &lit_6001);

/* 804CA688-804CA780 0039A8 00F8+00 2/2 0/0 0/0 .text            procInsectMoveInit__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procInsectMoveInit() {
    mProcFunc = &procInsectMove;

    fopAcM_SetParam(this, PRM_INSECT_BOMB_MOVE);
    mpBck->init((J3DAnmTransform*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x14), TRUE,
                -1, 3.0f, 0, -1, true);

    setHitPolygon(0);
    mCcSph.OnCoSetBit();
    mCcSph.SetCoHitCallback(daNbomb_coHitCallback);
    cLib_offBit<u32>(attention_info.flags, 0x10);

    speedF = 20.0f;
    old.pos = current.pos;
    mNoHitPlayerTimer = 5;
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procInsectMoveInit(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procInsectMoveInit__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC4A4-804CC4A8 000164 0004+00 0/1 0/0 0/0 .rodata          @6207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6207 = 50.0f;
COMPILER_STRIP_GATE(0x804CC4A4, &lit_6207);
#pragma pop

/* 804CC4A8-804CC4AC 000168 0004+00 0/1 0/0 0/0 .rodata          @6208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6208 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x804CC4A8, &lit_6208);
#pragma pop

/* 804CC4AC-804CC4B0 00016C 0004+00 0/1 0/0 0/0 .rodata          @6209 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6209 = 0x3DB2B8C3;
COMPILER_STRIP_GATE(0x804CC4AC, &lit_6209);
#pragma pop

/* 804CC4B0-804CC4B4 000170 0004+00 0/1 0/0 0/0 .rodata          @6210 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6210 = 0x3C0EFA36;
COMPILER_STRIP_GATE(0x804CC4B0, &lit_6210);
#pragma pop

/* 804CC4B4-804CC4B8 000174 0004+00 0/3 0/0 0/0 .rodata          @6211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6211 = 25.0f;
COMPILER_STRIP_GATE(0x804CC4B4, &lit_6211);
#pragma pop

/* 804CC4B8-804CC4BC 000178 0004+00 0/1 0/0 0/0 .rodata          @6212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6212 = 8.0f;
COMPILER_STRIP_GATE(0x804CC4B8, &lit_6212);
#pragma pop

/* 804CA780-804CAEE8 003AA0 0768+00 2/1 0/0 0/0 .text            procInsectMove__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daNbomb_c::procInsectMove() {
    if (mNoHitPlayerTimer != 0) {
        mNoHitPlayerTimer--;

        if (mNoHitPlayerTimer == 0) {
            offStateFlg0(FLG0_NO_HIT_PLAYER);
        }
    }

    if (checkExplode()) {
        return true;
    }

    if (field_0xc20.abs2() > 1.0f) {
        mpBck->init((J3DAnmTransform*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x15),
                    TRUE, -1, 1.0f, 0, -1, true);

        mDoMtx_copy(cMtx_getIdentity(), field_0xa40);
        current.pos += field_0xbf0 * 50.0f;
        field_0xbfc += field_0xbf0;
        field_0xbfc *= 10.0f;

        speed.y = field_0xbfc.y;
        speedF = field_0xbfc.absXZ();
        current.angle.y = field_0xbfc.atan2sX_Z();
        mAcch.i_ClrGroundHit();
        mAcch.ClrWallHit();
        mAcch.ClrRoofHit();
        mAcch.ClrRoofNone();
        return procWaitInit();
    }

    if (dComIfG_Bgsp().ChkPolySafe(mInsectHitPolyInfo) &&
        dComIfG_Bgsp().ChkMoveBG(mInsectHitPolyInfo))
    {
        dComIfG_Bgsp().MoveBgTransPos(mInsectHitPolyInfo, true, &current.pos, &shape_angle, NULL);
        setHitPolygon(1);
    }

    if (!checkStateFlg0(FLG0_FROZEN)) {
        if (fopAcIt_Judge((fopAcIt_JudgeFunc)daNbomb_searchEnemy, this)) {
            f32 var_f30 = field_0xbfc.inprod(field_0xc14);

            if (!(fabsf(var_f30) > 0.999f)) {
                cXyz sp60 = field_0xbfc.outprod(field_0xc14);
                sp60.normalizeZP();

                f32 var_f29 = cM_atan2f(JMAFastSqrt(1.0f - (var_f30 * var_f30)), var_f30);
                f32 var_f31 = var_f29 * 0.2f;
                if (var_f31 > DEG_TO_RAD(5.0f)) {
                    var_f31 = DEG_TO_RAD(5.0f);
                } else if (var_f31 < (DEG_TO_RAD(5.0f) * 0.1f)) {
                    var_f31 = DEG_TO_RAD(5.0f) * 0.1f;

                    if (DEG_TO_RAD(5.0f) * 0.1f > var_f29) {
                        var_f31 = var_f29;
                    }
                }

                mDoMtx_stack_c::rotAxisRadS(&sp60, var_f31);
                mDoMtx_stack_c::multVecSR(&field_0xbf0, &field_0xbf0);
                mDoMtx_stack_c::multVecSR(&field_0xc08, &field_0xc08);
                mDoMtx_stack_c::multVecSR(&field_0xbfc, &field_0xbfc);

                csXyz sp104(current.angle);
                mDoMtx_stack_c::ZXYrotM(current.angle);
                mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &current.angle);

                shape_angle.x += current.angle.x - sp104.x;
                shape_angle.y += current.angle.y - sp104.y;
                shape_angle.z += current.angle.z - sp104.z;
            }
        }

        cXyz sp6C = old.pos + (field_0xbf0 * 25.0f);
        cXyz sp78 = sp6C + (field_0xbfc * speedF);
        mLineChk.Set(&sp6C, &sp78, this);

        int var_r28 = insectLineCheck();
        if (var_r28 == 1) {
            setHitPolygon(0);
        } else if (var_r28 == 0) {
            sp6C = sp78 + field_0xbf0;
            sp78 = sp6C - (field_0xbf0 * 30.0f);
            mLineChk.Set(&sp6C, &sp78, this);

            var_r28 = insectLineCheck();
            if (var_r28 == 1) {
                setHitPolygon(0);
            } else if (var_r28 == 0) {
                sp6C = sp78 - (field_0xbfc * speedF);
                mLineChk.Set(&sp78, &sp6C, this);

                var_r28 = insectLineCheck();
                if (var_r28 == 1) {
                    setHitPolygon(0);
                }
            }
        }

        if (var_r28 != 1) {
            if (checkStateFlg0(FLG0_UNK_800)) {
                onStateFlg0(FLG0_DELETE_BOMB);
                return true;
            }

            if (var_r28 == 2) {
                current.pos = mLineChk.i_GetCross();
            } else {
                current.pos += field_0xbfc * speedF;
            }

            return procExplodeInit();
        }
    } else {
        mpBck->setPlaySpeed(0.0f);
    }

    cXyz sp84(current.pos);
    mAcch.CrrPos(dComIfG_Bgsp());
    current.pos = sp84;

    setRoomInfo();

    if (mpBck->checkFrame(0.0f) || mpBck->checkFrame(8.0f)) {
        mSound.startSound(Z2SE_EN_BI_FOOTNOTE, dKy_pol_sound_get(&mInsectHitPolyInfo),
                          mSoundReverb);
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNbomb_c::procInsectMove(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/procInsectMove__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804CC4BC-804CC4C0 00017C 0004+00 0/1 0/0 0/0 .rodata          @6601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6601 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x804CC4BC, &lit_6601);
#pragma pop

/* 804CC4C0-804CC4C4 000180 0004+00 0/1 0/0 0/0 .rodata          @6602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6602 = 180.0f;
COMPILER_STRIP_GATE(0x804CC4C0, &lit_6602);
#pragma pop

/* 804CC4C4-804CC4C8 000184 0004+00 0/1 0/0 0/0 .rodata          @6603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6603 = -25.0f;
COMPILER_STRIP_GATE(0x804CC4C4, &lit_6603);
#pragma pop

/* 804CAEE8-804CBC40 004208 0D58+00 1/1 0/0 0/0 .text            execute__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::execute() {
    if (!checkStateFlg0(FLG0_UNK_2000)) {
        field_0xb51 = 0;
    } else {
        offStateFlg0(FLG0_UNK_2000);
    }

    cXyz spB4(speedF * cM_ssin(current.angle.y), speed.y, speedF * cM_scos(current.angle.y));

    f32 var_f31 = field_0xc20.abs2();
    if (!checkStateFlg0(FLG0_UNK_8000)) {
        if (var_f31 > 1.0f) {
            spB4 += field_0xc20;
            current.angle.y = spB4.atan2sX_Z();
            speedF = spB4.absXZ();
            speed.y = spB4.y;
        }

        var_f31 = 0.0f;
        field_0xc20 = cXyz::Zero;
    } else {
        offStateFlg0(FLG0_UNK_8000);
    }

    f32 var_f30 = field_0xc2c.abs2();
    cXyz spC0;
    int sp18;

    if (checkStateFlg0(FLG0_UNDERWATER) && fopAcM_GetParam(this) == PRM_BOMB_WAIT &&
        fopAcM_getWaterStream(&current.pos, mAcch.m_gnd, &spC0, &sp18, 0))
    {
        cLib_addCalcPos(&field_0xc2c, (spC0 * sp18) * 0.5f, 0.5f, 5.0f, 1.0f);
    } else {
        if (var_f30 > 1.0f) {
            spB4 += field_0xc2c;
            current.angle.y = spB4.atan2sX_Z();
            speedF = spB4.absXZ();
            speed.y = spB4.y;
        }

        var_f30 = 0.0f;
        field_0xc2c = cXyz::Zero;
    }

    field_0xb5a = 0;
    mEffectLastPosition = mEffectPosition;

    if (checkStateFlg0(FLG0_UNK_800) || (checkStateFlg0(FLG0_FROZEN) && mFreezeTimer == 0)) {
        if (cLib_chaseF(&scale.x, 0.0f, 0.025f)) {
            onStateFlg0(FLG0_DELETE_BOMB);
        } else {
            scale.z = scale.y = scale.x;
            mpModel->setBaseScale(scale);
        }
    }

    if (mProcFunc != NULL) {
        (this->*mProcFunc)();
    }

    if (checkStateFlg0(FLG0_DELETE_BOMB)) {
        fopAcM_delete(this);
        return 1;
    }

    if ((mAcch.ChkWallHit() && daAlink_c::checkIcePolygonDamage(&mAcchCir)) ||
        (mAcch.i_ChkGroundHit() && daAlink_c::checkIcePolygonDamage(&mAcch.m_gnd)) ||
        (mAcch.ChkRoofHit() && daAlink_c::checkIcePolygonDamage(&mAcch.m_roof)))
    {
        setFreeze();
    }

    if (mpBck != NULL) {
        mpBck->play();
    }

    daAlink_c* player = daAlink_getAlinkActorClass();
    if (fopAcM_GetParam(this) != PRM_NORMAL_BOMB_EXPLODE) {
        if (checkWaterIn()) {
            if (dComIfG_Bgsp().GetPolyAtt0(mAcch.m_wtr) == 6) {
                onStateFlg0(FLG0_DELETE_BOMB);
            } else if (!checkStateFlg0(daNbomb_FLG0(FLG0_UNK_800 | FLG0_UNDERWATER))) {
                fopAcM_seStartCurrent(this, Z2SE_CM_BODYFALL_WATER_S, 0);
                cXyz pillar_pos;

                f32 dist_to_old_y = fabsf(old.pos.y - current.pos.y);
                f32 dist_to_water = fabsf(mAcch.m_wtr.GetHeight() - current.pos.y);
                if (dist_to_old_y < 1.0f) {
                    pillar_pos.x = current.pos.x;
                    pillar_pos.y = mAcch.m_wtr.GetHeight();
                    pillar_pos.z = current.pos.z;
                } else {
                    f32 temp_f29 = dist_to_water / dist_to_old_y;
                    if (temp_f29 > 1.0f) {
                        temp_f29 = 1.0f;
                    }

                    pillar_pos = (old.pos * temp_f29) + (current.pos * (1.0f - temp_f29));
                }

                fopKyM_createWpillar(&pillar_pos, 1.0f, 0);

                if (!checkStateFlg0(FLG0_WATER_BOMB) &&
                    (fopAcM_checkCarryNow(this) || fopAcM_checkHookCarryNow(this) ||
                     fopAcM_GetParam(this) == PRM_ENEMY_BOMB_BOOMERANG_MOVE ||
                     fopAcM_GetParam(this) == PRM_BOMB_BOOMERANG_MOVE))
                {
                    onStateFlg0(FLG0_DELETE_BOMB);
                } else if (checkStateFlg0(FLG0_INSECT_BOMB)) {
                    speedF *= 0.5f;
                    mpBck->setPlaySpeed(mpBck->getPlaySpeed() * 0.5f);
                    onStateFlg0(FLG0_UNK_800);
                } else {
                    if (checkStateFlg0(FLG0_WATER_BOMB)) {
                        onStateFlg0(FLG0_UNDERWATER);
                    } else {
                        onStateFlg0(FLG0_UNK_800);
                        field_0xbe4 = cXyz::Zero;
                    }

                    speedF *= 0.5f;
                    speed.y *= 0.5f;
                    gravity = player->getBombWaterGravity();
                    maxFallSpeed = player->getBombWaterMaxFallSpeed();
                }
            } else if (!checkStateFlg0(FLG0_WATER_BOMB) &&
                       (fopAcM_checkCarryNow(this) || fopAcM_checkHookCarryNow(this)))
            {
                onStateFlg0(FLG0_DELETE_BOMB);
            }

            if (checkStateFlg0(FLG0_DELETE_BOMB)) {
                fopAcM_delete(this);
                field_0xbe4 = cXyz::Zero;
                return 1;
            }
        } else {
            if (checkStateFlg0(FLG0_UNK_800)) {
                fopAcM_delete(this);
                return 1;
            }

            offStateFlg0(FLG0_UNDERWATER);
            gravity = player->getBombGravity();
            maxFallSpeed = player->getBombMaxFallSpeed();
        }

        if (speedF > 1.0f || var_f31 > 1.0f || var_f30 > 1.0f) {
            int var_r27 = 1;
            f32 var_f27;
            s16 temp_r3;

            if (var_f31 > 1.0f || var_f30 > 1.0f) {
                cXyz spD8(field_0xc2c.x + (field_0xc20.x + (speedF * cM_ssin(current.angle.y))),
                          field_0xc20.y + field_0xc2c.y,
                          field_0xc2c.z + (field_0xc20.z + (speedF * cM_scos(current.angle.y))));

                var_f27 = spD8.absXZ();
                temp_r3 = spD8.atan2sX_Z();
            } else {
                var_f27 = speedF;
                temp_r3 = current.angle.y;

                if (mAcch.i_ChkGroundHit()) {
                    var_r27 = 0;
                }
            }

            s16 var_r26 = (var_f27 / 180.0f) * (f32)0x10000;
            s16 var_r25 = temp_r3 - shape_angle.y;
            mDoMtx_stack_c::YrotS(var_r25);

            if (var_r27 == 0) {
                mDoMtx_stack_c::XrotM(var_r26);
            } else {
                mDoMtx_stack_c::XrotM(var_r26 >> 1);
            }

            mDoMtx_stack_c::YrotM(-var_r25);
            mDoMtx_stack_c::concat(field_0xa40);
            mDoMtx_copy(mDoMtx_stack_c::get(), field_0xa40);
        }

        if (player->getGrabActorID() == fopAcM_GetID(this) && player->checkGrabUp()) {
            mDoMtx_stack_c::YrotS(field_0xb5c - shape_angle.y);
            mDoMtx_stack_c::concat(field_0xa40);
            mDoMtx_copy(mDoMtx_stack_c::get(), field_0xa40);
        }

        f32 var_f26 = 0.0f;
        if (field_0xb5a != 0 && field_0xb5a < 0x4000) {
            var_f26 = (1.0f / cM_scos(field_0xb5a) - 1.0f) * 25.0f * 0.75f;
        }

        if (fopAcM_GetParam(this) != PRM_INSECT_BOMB_MOVE) {
            mDoMtx_stack_c::transS(current.pos.x, field_0xbb0 + (current.pos.y + var_f26),
                                   current.pos.z);
            mDoMtx_stack_c::ZXYrotM(shape_angle);
            mDoMtx_stack_c::transM(0.0f, 25.0f, 0.0f);
            mDoMtx_stack_c::concat(field_0xa40);
            mDoMtx_stack_c::transM(0.0f, -25.0f, 0.0f);
            mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        }

        mDoMtx_multVec(mpModel->getBaseTRMtx(), &l_localCenterOffset, &attention_info.position);
        eyePos = attention_info.position;
        mCcSph.SetC(attention_info.position);
        mCcSph.SetR(scale.x * 30.0f);
        dComIfG_Ccsp()->Set(&mCcSph);

        if (fopAcM_GetParam(this) != PRM_FLOWER_BOMB) {
            mSph2.SetC(attention_info.position);
            dComIfG_Ccsp()->Set(&mSph2);
        }

        if (!checkStateFlg0(FLG0_UNK_800)) {
            setSmokePos();
        }

        if (mpBck != NULL) {
            mpBck->entry(mpModel->getModelData());
        }

        mpModel->calc();

        if (!checkTimerStop()) {
            mSound.startLevelSound(Z2SE_OBJ_BOMB_IGNITION, 0, mSoundReverb);
            setEffect();
        }

        field_0xb5c = shape_angle.y;

        if (checkStateFlg0(FLG0_FROZEN) && mFreezeTimer != 0) {
            mFreezeTimer--;
        }
    }

    mSound.framework(mPolySound, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::execute() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/execute__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804CBC40-804CBC60 004F60 0020+00 1/0 0/0 0/0 .text            daNbomb_Execute__FP9daNbomb_c */
static int daNbomb_Execute(daNbomb_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 804CC4C8-804CC4CC 000188 0004+00 0/1 0/0 0/0 .rodata          @6782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6782 = 0x40490FDB;
COMPILER_STRIP_GATE(0x804CC4C8, &lit_6782);
#pragma pop

/* 804CC4CC-804CC4D0 00018C 0004+00 0/1 0/0 0/0 .rodata          @6783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6783 = 15.0f;
COMPILER_STRIP_GATE(0x804CC4CC, &lit_6783);
#pragma pop

/* 804CBC60-804CC200 004F80 05A0+00 1/1 0/0 0/0 .text            draw__9daNbomb_cFv */
// matches with literals
#ifdef NONMATCHING
int daNbomb_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);

    if (fopAcM_GetParam(this) == PRM_NORMAL_BOMB_EXPLODE) {
        return 1;
    }

    daAlink_c* player = daAlink_getAlinkActorClass();
    J3DGXColorS10 bomb_color;
    bomb_color.g = 0;
    bomb_color.a = 0;

    if (checkStateFlg0(FLG0_UNK_800)) {
        bomb_color.r = 0;
        bomb_color.b = 0;
    } else if (checkStateFlg0(FLG0_FROZEN)) {
        bomb_color.r = player->getFreezeR();
        bomb_color.g = player->getFreezeG();
        bomb_color.b = player->getFreezeB();
    } else {
        s16 explode_time = player->getBombExplodeTime();
        f32 brightness;

        if (mExTime > explode_time) {
            brightness = 1.0f - fabsf(cM_fcos(((f32)(mExTime - explode_time) * M_PI) /
                                              (f32)FAST_DIV(explode_time, 2)));
        } else if (mExTime > FAST_DIV(explode_time, 2)) {
            brightness = 1.0f - fabsf(cM_fcos(((f32)(mExTime - FAST_DIV(explode_time, 2)) * M_PI) /
                                              (f32)FAST_DIV(explode_time, 4)));
        } else if (mExTime > FAST_DIV(explode_time, 4)) {
            brightness = fabsf(cM_fsin(((f32)(mExTime - FAST_DIV(explode_time, 4)) * M_PI) /
                                       (f32)FAST_DIV(explode_time, 7)));
        } else {
            brightness = fabsf(cM_fsin(((f32)(mExTime - FAST_DIV(explode_time, 7)) * M_PI) /
                                       (f32)FAST_DIV(explode_time, 8)));
        }

        if (mType == TYPE_INSECT_ENEMY || mType == TYPE_WATER_ENEMY) {
            bomb_color.r = (s16)(brightness * (f32)player->getEnemyBombColorR()) & 0xFF;
        } else {
            bomb_color.r = (s16)(brightness * 15.0f) & 0xFF;
        }

        bomb_color.b = 0;
    }

    if (checkStateFlg0(FLG0_FROZEN)) {
        tevStr.mFogColor.r = player->getFreezeR();
        tevStr.mFogColor.g = player->getFreezeG();
        tevStr.mFogColor.b = player->getFreezeB();
    }

    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    J3DModelData* modelData = mpModel->getModelData();

    J3DMaterial* mat;
    if (mType == TYPE_INSECT_ENEMY) {
        mat = modelData->getMaterialNodePointer(1);

        modelData->getMaterialNodePointer(0)->getShape()->hide();
        modelData->getMaterialNodePointer(2)->getShape()->hide();
        modelData->getMaterialNodePointer(1)->getShape()->show();
        modelData->getMaterialNodePointer(3)->getShape()->show();
    } else {
        mat = modelData->getMaterialNodePointer(0);
    }

    if (mType == TYPE_WATER_ENEMY || checkStateFlg0(FLG0_WATER_BOMB)) {
        mat->setTevColor(0, &bomb_color);

        mat = modelData->getMaterialNodePointer(1);
        mat->setTevColor(0, &bomb_color);
    } else {
        mat->setTevColor(1, &bomb_color);
    }

    mDoExt_modelEntryDL(mpModel);
    daMirror_c::entry(mpModel);

    bomb_color.r = 0;
    bomb_color.g = 0;
    bomb_color.b = 0;

    if (mType == TYPE_WATER_ENEMY || checkStateFlg0(FLG0_WATER_BOMB)) {
        mat->setTevColor(0, &bomb_color);
        modelData->getMaterialNodePointer(0)->setTevColor(0, &bomb_color);
    } else {
        mat->setTevColor(1, &bomb_color);
    }

    if (mAcch.GetGroundH() != -1000000000.0f && !fopAcM_checkCarryNow(this)) {
        cM3dGPla ground_poly;
        if (dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &ground_poly)) {
            dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), scale.x * 25.0f,
                                     &ground_poly.mNormal, 0, 1.0f,
                                     dDlst_shadowControl_c::getSimpleTex());
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNbomb_c::draw() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/draw__9daNbomb_cFv.s"
}
#pragma pop
#endif

/* 804CC200-804CC220 005520 0020+00 1/0 0/0 0/0 .text            daNbomb_Draw__FP9daNbomb_c */
static int daNbomb_Draw(daNbomb_c* i_this) {
    return i_this->draw();
}

/* 804CC220-804CC268 005540 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 804CC268-804CC2B0 005588 0048+00 0/0 1/0 0/0 .text            __sinit_d_a_nbomb_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_nbomb_cpp(){nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/__sinit_d_a_nbomb_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804CC268, __sinit_d_a_nbomb_cpp);
#pragma pop

/* 804CC2B0-804CC2B8 0055D0 0008+00 1/0 0/0 0/0 .text            @36@__dt__13dBgS_BombAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_804CC2B0() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/func_804CC2B0.s"
}
#pragma pop

/* 804CC2B8-804CC2C0 0055D8 0008+00 1/0 0/0 0/0 .text            @20@__dt__13dBgS_BombAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_804CC2B8() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/func_804CC2B8.s"
}
#pragma pop

/* 804CC2C0-804CC2D4 0055E0 0014+00 1/0 0/0 0/0 .text            checkExplodeNow__9daNbomb_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNbomb_c::checkExplodeNow() {
extern "C" asm void checkExplodeNow__9daNbomb_cFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/checkExplodeNow__9daNbomb_cFv.s"
}
#pragma pop

/* 804CC2D4-804CC30C 0055F4 0038+00 1/0 0/0 0/0 .text            deleteBombAndEffect__9daNbomb_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNbomb_c::deleteBombAndEffect() {
extern "C" asm void deleteBombAndEffect__9daNbomb_cFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/deleteBombAndEffect__9daNbomb_cFv.s"
}
#pragma pop

/* 804CC30C-804CC31C 00562C 0010+00 1/0 0/0 0/0 .text            setCargoBombExplode__9daNbomb_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNbomb_c::setCargoBombExplode() {
extern "C" asm void setCargoBombExplode__9daNbomb_cFv() {
    nofralloc
#include "asm/rel/d/a/d_a_nbomb/d_a_nbomb/setCargoBombExplode__9daNbomb_cFv.s"
}
#pragma pop

/* 804CC31C-804CC324 00563C 0008+00 1/0 0/0 0/0 .text            checkExplodeNow__7dBomb_cFv */
// bool dBomb_c::checkExplodeNow() {
extern "C" bool checkExplodeNow__7dBomb_cFv() {
    return false;
}

/* 804CC324-804CC328 005644 0004+00 1/0 0/0 0/0 .text            deleteBombAndEffect__7dBomb_cFv */
// void dBomb_c::deleteBombAndEffect() {
extern "C" void deleteBombAndEffect__7dBomb_cFv() {
    /* empty function */
}

/* 804CC328-804CC32C 005648 0004+00 1/0 0/0 0/0 .text            setCargoBombExplode__7dBomb_cFv */
// void dBomb_c::setCargoBombExplode() {
extern "C" void setCargoBombExplode__7dBomb_cFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 804CC6E4-804CC6E8 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_804CC6E4[4];
#pragma pop

/* 804CC6E8-804CC6EC 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_804CC6E8[4];
#pragma pop

/* 804CC6EC-804CC6F0 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_804CC6EC[4];
#pragma pop

/* 804CC6F0-804CC6F4 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804CC6F0[4];
#pragma pop

/* 804CC6F4-804CC6F8 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC6F4[4];
#pragma pop

/* 804CC6F8-804CC6FC 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC6F8[4];
#pragma pop

/* 804CC6FC-804CC700 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_804CC6FC[4];
#pragma pop

/* 804CC700-804CC704 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_804CC700[4];
#pragma pop

/* 804CC704-804CC708 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_804CC704[4];
#pragma pop

/* 804CC708-804CC70C 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_804CC708[4];
#pragma pop

/* 804CC70C-804CC710 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_804CC70C[4];
#pragma pop

/* 804CC710-804CC714 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804CC710[4];
#pragma pop

/* 804CC714-804CC718 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_804CC714[4];
#pragma pop

/* 804CC718-804CC71C 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC718[4];
#pragma pop

/* 804CC71C-804CC720 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804CC71C[4];
#pragma pop

/* 804CC720-804CC724 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_804CC720[4];
#pragma pop

/* 804CC724-804CC728 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_804CC724[4];
#pragma pop

/* 804CC728-804CC72C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804CC728[4];
#pragma pop

/* 804CC72C-804CC730 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_804CC72C[4];
#pragma pop

/* 804CC730-804CC734 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_804CC730[4];
#pragma pop

/* 804CC734-804CC738 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_804CC734[4];
#pragma pop

/* 804CC738-804CC73C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC738[4];
#pragma pop

/* 804CC73C-804CC740 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC73C[4];
#pragma pop

/* 804CC740-804CC744 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804CC740[4];
#pragma pop

/* 804CC744-804CC748 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_804CC744[4];
#pragma pop

/* 804CC748-804CC74C 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
#pragma push
#pragma force_active on
static u8 data_804CC748[4];
#pragma pop

/* 804CC4D0-804CC4D0 000190 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
