/**
 * @file d_a_arrow.cpp
 * 
*/

#include "rel/d/a/d_a_arrow/d_a_arrow.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_alink.h"
#include "d/d_bomb.h"
#include "rel/d/a/e/d_a_e_pz/d_a_e_pz.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "rel/d/a/d_a_hozelda/d_a_hozelda.h"

//
// Forward References:
//

extern "C" void createHeap__9daArrow_cFv();
extern "C" static void daArrow_createHeap__FP10fopAc_ac_c();
extern "C" void atHitCallBack__9daArrow_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
daArrow_atHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void decAlphaBlur__9daArrow_cFv();
extern "C" void setBlur__9daArrow_cFv();
extern "C" void setLightArrowHitMark__9daArrow_cFPC4cXyz();
extern "C" void setLightChargeEffect__9daArrow_cFi();
extern "C" void __dt__4cXyzFv();
extern "C" void setArrowWaterNextPos__9daArrow_cFP4cXyzP4cXyz();
extern "C" void setArrowAt__9daArrow_cFf();
extern "C" void arrowShooting__9daArrow_cFv();
extern "C" void setBombArrowExplode__9daArrow_cFP4cXyz();
extern "C" void setRoomInfo__9daArrow_cFv();
extern "C" void clearNearActorData__9daArrow_cFv();
extern "C" void getVibAngle__9daArrow_cFv();
extern "C" void setNormalMatrix__9daArrow_cFv();
extern "C" void setSmokePos__9daArrow_cFv();
extern "C" void setKeepMatrix__9daArrow_cFv();
extern "C" void setStopActorMatrix__9daArrow_cFv();
extern "C" void setBombMoveEffect__9daArrow_cFv();
extern "C" void checkReget__9daArrow_cFv();
extern "C" void procWait__9daArrow_cFv();
extern "C" void procMove__9daArrow_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void procReturnInit__9daArrow_cFi();
extern "C" void procReturn__9daArrow_cFv();
extern "C" void procBGStop__9daArrow_cFv();
extern "C" void procActorStop__9daArrow_cFv();
extern "C" void procActorControllStop__9daArrow_cFv();
extern "C" void procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf();
extern "C" void procSlingHit__9daArrow_cFv();
extern "C" void execute__9daArrow_cFv();
extern "C" static void daArrow_execute__FP9daArrow_c();
extern "C" void draw__9daArrow_cFv();
extern "C" static int daArrow_draw__FP9daArrow_c();
extern "C" static void daAlink_searchHorseZelda__FP10fopAc_ac_cPv();
extern "C" void create__9daArrow_cFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static int daArrow_create__FP9daArrow_c();
extern "C" void __dt__9daArrow_cFv();
extern "C" static int daArrow_delete__FP9daArrow_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void func_8049DC58(void* _this, s16*);
extern "C" extern char const* const d_a_arrow__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getArrowOffsetPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz();
extern "C" void setArrowPosAndAngle__9dJntCol_cFPC4cXyzPC4cXyziP4cXyzP5csXyz();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void ChkMoveBG__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void ArrowStickCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_cR4cXyz();
extern "C" void dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void __ct__16dBgS_ArrowLinChkFv();
extern "C" void __dt__16dBgS_ArrowLinChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ResetAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Set__12dCcMassS_MngFP8cCcD_ObjUc();
extern "C" void getAlinkArcName__9daAlink_cFv();
extern "C" void notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void getFreezeR__9daAlink_cCFv();
extern "C" void getFreezeG__9daAlink_cCFv();
extern "C" void getFreezeB__9daAlink_cCFv();
extern "C" void checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo();
extern "C" void getArrowFlyData__9daAlink_cCFPfPfi();
extern "C" void getArrowIncAtR__9daAlink_cCFv();
extern "C" void getBombArrowFlyExplodeTime__9daAlink_cCFv();
extern "C" void getArrowIncAtMaxStart__9daAlink_cCFv();
extern "C" void getArrowIncAtMax__9daAlink_cCFv();
extern "C" void checkBowCameraArrowPosP__9daAlink_cFPsPs();
extern "C" void getBombExplodeTime__9daAlink_cCFv();
extern "C" void setActor__16daPy_actorKeep_cFv();
extern "C" void setData__16daPy_actorKeep_cFP10fopAc_ac_c();
extern "C" void clearData__16daPy_actorKeep_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __dt__21Z2DopplerSoundObjBaseFv();
extern "C" void __ct__15Z2SoundObjArrowFv();
extern "C" void startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__22dPa_hermiteEcallBack_c[9];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__15Z2SoundObjArrow[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mWaterCheck__11fopAcM_wt_c[84 + 4 /* padding */];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" extern u8 m_count__9daArrow_c[4];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80499C6C-80499D6C 0000EC 0100+00 1/1 0/0 0/0 .text            createHeap__9daArrow_cFv */
int daArrow_c::createHeap() {
    J3DModelData* model_data;

    if (mArrowType == 2) {
        model_data = (J3DModelData*)dComIfG_getObjectRes("HoZelda", 0x1f);
    } else {
        u16 index;
        
        if (mArrowType == 4) {
            index = 0x20;
        } else if (mArrowType == 1) {
            index = 0x1d;
        } else {
            index = 0x1c;
        }
        model_data = (J3DModelData*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), index);
    }

    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return FALSE;
    }

    mSoundObjArrow.init(&current.pos, 1);
    mReverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));

    return TRUE;
}

/* 80499D6C-80499D8C 0001EC 0020+00 1/1 0/0 0/0 .text            daArrow_createHeap__FP10fopAc_ac_c
 */
static int daArrow_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daArrow_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 8049DC84-8049DC90 000000 000C+00 15/15 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static u8 const lit_3768[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DC84, &lit_3768);

/* 8049DC90-8049DCDC 00000C 004C+00 0/1 0/0 0/0 .rodata          l_atCpsSrc */
#pragma push
#pragma force_active on
const static dCcD_SrcCps l_atCpsSrc = {
    {
        {0x0, {{AT_TYPE_ARROW, 0x2, 0x1b}, {0xd8fbffff, 0x11}, 0x0}}, // mObj
        {dCcD_SE_23, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 5.0f}, // mCps
    } // mCpsAttr
};
#pragma pop

/* 8049DCDC-8049DD1C 000058 0040+00 0/1 0/0 0/0 .rodata          l_coSphSrc */
#pragma push
#pragma force_active on
const static dCcD_SrcSph l_coSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x319}}, // mObj
        {dCcD_SE_23, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 25.0f} // mSph
    } // mSphAttr
};
#pragma pop

#ifndef NONMATCHING
/* 8049DD1C-8049DD24 000098 0004+04 2/12 0/0 0/0 .rodata          @4130 */
SECTION_RODATA static u8 const lit_4130[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8049DD1C, &lit_4130);

/* 8049DD24-8049DD2C 0000A0 0008+00 0/4 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4131[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DD24, &lit_4131);
#pragma pop

/* 8049DD2C-8049DD34 0000A8 0008+00 0/4 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4132[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DD2C, &lit_4132);
#pragma pop

/* 8049DD34-8049DD3C 0000B0 0008+00 0/4 0/0 0/0 .rodata          @4133 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4133[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DD34, &lit_4133);
#pragma pop
#endif

/* 80499D8C-80499F9C 00020C 0210+00 1/1 0/0 0/0 .text
 * atHitCallBack__9daArrow_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::atHitCallBack(dCcD_GObjInf* i_atObjInf, fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf) {
    if (i_tgObjInf->ChkTgArrowThrough()) {
        if (i_tgActor != NULL && fopAcM_GetName(i_tgActor) == PROC_E_PZ) {
            ((daE_PZ_c*)i_tgActor)->onBombArrowHit();
        }
    } else if (i_tgActor != NULL && fopAcM_IsActor(i_tgActor)) {
        cXyz* hit_pos_p = i_atObjInf->GetAtHitPosP();
        f32 dist_to_hitpos = current.pos.abs(*hit_pos_p);

        if (dist_to_hitpos < field_0x998) {
            field_0x998 = dist_to_hitpos;
            mHitAcID = fopAcM_GetID(i_tgActor);

            if (mArrowType == 1) {
                field_0x9a8 = *hit_pos_p;
            } else if (i_tgObjInf->ChkTgShield()) {
                field_0x93e = 1;
            } else {
                field_0x93e = 0;
                dJntCol_c * jnt = fopAcM_GetJntCol(i_tgActor);
                if (jnt != NULL) {
                    field_0x960 = jnt->getArrowOffsetPosAndAngle(hit_pos_p, &shape_angle, &field_0x9a8, &field_0x9b4);
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::atHitCallBack(dCcD_GObjInf* param_0, fopAc_ac_c* param_1,
                                  dCcD_GObjInf* param_2) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/atHitCallBack__9daArrow_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 80499F9C-80499FBC 00041C 0020+00 1/1 0/0 0/0 .text
 * daArrow_atHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daArrow_atHitCallBack(fopAc_ac_c* i_this, dCcD_GObjInf* i_atObjInf, fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf) {
    static_cast<daArrow_c*>(i_this)->atHitCallBack(i_atObjInf, i_tgActor, i_tgObjInf);
}

/* 80499FBC-8049A04C 00043C 0090+00 5/5 0/0 0/0 .text            decAlphaBlur__9daArrow_cFv */
void daArrow_c::decAlphaBlur() {
    for (int i = 0; i < field_0x946; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x97c[0]);
        if (emitter != NULL) {
            u8 alpha = emitter->getGlobalAlpha();
            if (alpha > 0x33) {
                setBlur();
                emitter->setGlobalAlpha(alpha - 51);
            } else {
                emitter->setGlobalAlpha(0);
            }
        }
    }
}

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD3C-8049DD40 0000B8 0004+00 4/10 0/0 0/0 .rodata          @4187 */
SECTION_RODATA static f32 const lit_4187 = 1.0f;
COMPILER_STRIP_GATE(0x8049DD3C, &lit_4187);
#endif

/* 8049A04C-8049A110 0004CC 00C4+00 5/5 0/0 0/0 .text            setBlur__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setBlur() {
    for (int i = 0; i < field_0x946; i++) {
        field_0x97c[i] = dComIfGp_particle_set(field_0x97c[i], field_0x94c, &current.pos, &tevStr);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x97c[i]);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setBlur() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setBlur__9daArrow_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8049DD40-8049DD4C 0000BC 000C+00 1/1 0/0 0/0 .rodata          effName$4192 */
#ifndef NONMATCHING
SECTION_RODATA static u8 const effName_4192[12] = {
    0x89, 0x6F, 0x89, 0x70, 0x89, 0x71, 0x89, 0x72, 0x89, 0x73, 0x89, 0x74,
};
COMPILER_STRIP_GATE(0x8049DD40, &effName_4192);
#else
static u16 const effName_4192[] = {
    0x896F,
    0x8970,
    0x8971,
    0x8972,
    0x8973,
    0x8974,
};
#endif

/* 8049A110-8049A1EC 000590 00DC+00 1/1 0/0 0/0 .text setLightArrowHitMark__9daArrow_cFPC4cXyz */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setLightArrowHitMark(cXyz const* param_0) {
    for (int i = 0; i < 6; i++) {
        dComIfGp_particle_set(effName_4192[i], param_0, &shape_angle, NULL);
    }
    
    field_0x93f = 1;
    mSoundObjArrow.startSound(Z2SE_ZELDA_ARROW_HIT, 0, mReverb);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setLightArrowHitMark(cXyz const* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setLightArrowHitMark__9daArrow_cFPC4cXyz.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD4C-8049DD54 0000C8 0008+00 0/1 0/0 0/0 .rodata          effName$4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const effName_4214[8] = {
    0x89, 0x75, 0x89, 0x76, 0x89, 0x77, 0x89, 0x78,
};
COMPILER_STRIP_GATE(0x8049DD4C, &effName_4214);
#pragma pop

/* 8049DD54-8049DD60 0000D0 000C+00 0/1 0/0 0/0 .rodata          localEffPos$4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localEffPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DD54, &localEffPos);
#pragma pop
#else
static u16 const effName_4214[] = {
    0x8975,
    0x8976,
    0x8977,
    0x8978,

};
static Vec const localEffPos = {0.0f, 0.0f, 90.0f};
#endif

/* 8049A1EC-8049A334 00066C 0148+00 2/2 0/0 0/0 .text            setLightChargeEffect__9daArrow_cFi
 */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setLightChargeEffect(int param_0) {
    if (mpModel != NULL) {
        cXyz pos;
        BOOL bVar1 = param_0 == 0 && (fopAcM_GetParam(this) == 1 || fopAcM_GetParam(this) == 2 || fopAcM_GetParam(this) == 0);
        mDoMtx_multVec(mpModel->getBaseTRMtx(), &localEffPos, &pos);
        for (int i = 0; i < 4; i++) {
            if (bVar1) {
                field_0x96c[i] = dComIfGp_particle_set(field_0x96c[i], effName_4214[i], &pos, &tevStr);
                dComIfGp_particle_levelEmitterOnEventMove(field_0x96c[i]);
            } else {
                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x96c[i]);
                if (emitter != NULL) {
                    emitter->stopDrawParticle(); 
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setLightChargeEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setLightChargeEffect__9daArrow_cFi.s"
}
#pragma pop
#endif

/* 8049A334-8049A370 0007B4 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__4cXyzFv.s"
}
#pragma pop

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD60-8049DD64 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4385 = 0x38D1B717;
COMPILER_STRIP_GATE(0x8049DD60, &lit_4385);
#pragma pop

/* 8049DD64-8049DD68 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4386 = 80.0f;
COMPILER_STRIP_GATE(0x8049DD64, &lit_4386);
#pragma pop
#endif

/* 8049A370-8049A76C 0007F0 03FC+00 2/2 0/0 0/0 .text
 * setArrowWaterNextPos__9daArrow_cFP4cXyzP4cXyz                */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::setArrowWaterNextPos(cXyz* i_start, cXyz* i_end) {
    field_0x5dc.Set(i_start, i_end, this);

    if (dComIfG_Bgsp().LineCross(&field_0x5dc)) {
        if (dComIfG_Bgsp().GetPolyAtt0(field_0x5dc) == 6) {
            *i_end = field_0x5dc.i_GetCross();
            return 2;
        }
        
        cXyz v = *i_end - field_0x5dc.i_GetCross();
        f32 dis = (*i_end).abs(*i_start);

        if (dis > 0.0001f) {
            dis = v.abs() / dis;
        } else {
            dis = 1.0f;
        }

        v.normalizeZP();
        *i_end = field_0x5dc.i_GetCross() + v * 80.0f * dis;
        return 1;
    } 
    
    if (fopAcM_wt_c::waterCheck(i_start) && fopAcM_wt_c::getWaterY() > i_start->y) {
        if (fopAcM_wt_c::getPolyAtt0() == 6) {
            i_end->y = fopAcM_wt_c::getWaterY();
            return 4;
        }

        cXyz v = *i_end - *i_start;
        v.normalizeZP();
        *i_end = *i_start + (v * 80.0f);
        return 3;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::setArrowWaterNextPos(cXyz* param_0, cXyz* param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setArrowWaterNextPos__9daArrow_cFP4cXyzP4cXyz.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD68-8049DD6C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 8.0f;
COMPILER_STRIP_GATE(0x8049DD68, &lit_4445);
#pragma pop

/* 8049DD6C-8049DD70 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 5.0f;
COMPILER_STRIP_GATE(0x8049DD6C, &lit_4446);
#pragma pop

/* 8049DD70-8049DD74 0000EC 0004+00 0/2 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = -300.0f;
COMPILER_STRIP_GATE(0x8049DD70, &lit_4447);
#pragma pop
#endif

/* 8049A76C-8049A9CC 000BEC 0260+00 2/2 0/0 0/0 .text            setArrowAt__9daArrow_cFf */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setArrowAt(f32 param_0) {
    daAlink_c* player = daAlink_getAlinkActorClass();

    f32 radius;
    if (mArrowType == 4) {
        radius = 8.0f;
    } else {
        radius = 5.0f;
    }

    f32 arrow_start = player->getArrowIncAtMaxStart();
    if (param_0 > arrow_start) {
        f32 inc = player->getArrowIncAtMax();
        if (inc <= arrow_start) {
            radius += player->getArrowIncAtR();
        } else {
            f32 mod = (param_0 - arrow_start) / (inc - arrow_start);
            if (mod > 1.0f) {
                mod = 1.0f;
            }
            radius += (mod * player->getArrowIncAtR());
        }
    }

    cXyz target = current.pos + speed * (mOutLengthRate + 1.0f);

    if (field_0x945 == 0) {
        setArrowWaterNextPos(&current.pos, &target);
    } else {
        f32 fVar7 = target.y - field_0x9fc.y;
        if (fVar7 < -300.0f) {
            f32 fVar1 = fabsf(target.y - current.pos.y);
            fVar7 = -300.0f - fVar7;

            if (fVar1 > fVar7) {
                target = current.pos + speed * ((mOutLengthRate + 1.0f) * ((fVar1 - fVar7) / fVar1));
            }
        }
    }

    field_0x56c.Set(&current.pos, &target, this);

    if (dComIfG_Bgsp().LineCross(&field_0x56c)) {
        target = field_0x56c.i_GetCross();
    }

    static_cast<cM3dGCps*>(&field_0x688)->Set(current.pos, target, radius);
    field_0x688.CalcAtVec();

    g_dComIfG_gameInfo.play.mCcs.Set(&field_0x688); // fake match: debug rom shows dComIfG_Ccsp()
    g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x688, 1); // fake match: debug rom shows dComIfG_Ccsp()
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setArrowAt(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setArrowAt__9daArrow_cFf.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD74-8049DD78 0000F0 0004+00 1/1 0/0 0/0 .rodata          @4541 */
SECTION_RODATA static f32 const lit_4541 = 100.0f;
COMPILER_STRIP_GATE(0x8049DD74, &lit_4541);
#endif

/* 8049A9CC-8049AC84 000E4C 02B8+00 2/2 0/0 0/0 .text            arrowShooting__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::arrowShooting() {
    daAlink_c* link = daAlink_getAlinkActorClass();

    field_0x950 = link->getBombArrowFlyExplodeTime();

    if (mArrowType == 4) {
        current.angle.x = -link->getBodyAngleX();
        current.angle.y = link->shape_angle.y + link->getBodyAngleY();
    } else if (dComIfGp_checkPlayerStatus0(0, 0x200000) || fopAcM_GetParam(this) == 2)  {
        cXyz* pos = link->checkBowCameraArrowPosP(&shape_angle.x, &shape_angle.y);
        if (pos != NULL) {
            current.pos = *pos;
            
            if (link->checkMagneBootsOn()) {
                mDoMtx_stack_c::copy(link->getMagneBootsMtx());
                mDoMtx_stack_c::ZXYrotM(shape_angle);
                mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);
            }

            current.angle.x = -shape_angle.x;
            current.angle.y = shape_angle.y;
        }
    }

    speedF = 100.f;
    mStartPos = current.pos;

    f32 cos = cM_scos(current.angle.x);
    speed.x = cos * (field_0x99c * cM_ssin(current.angle.y));
    speed.y = field_0x99c * cM_ssin(current.angle.x);
    speed.z = cos * (field_0x99c * cM_scos(current.angle.y));

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->checkHorseRide()) {
        daHorse_c* horse = dComIfGp_getHorseActor();
        cMtx_YrotS(*calc_mtx, horse->shape_angle.y);

        cXyz src;
        cXyz dst;

        src.x = 0.0f;
        src.y = 0.0f;
        src.z = horse->speedF;

        MtxPosition(&src, &dst);

        speed += dst;
    }

    if (mArrowType == 2) {
        field_0x688.SetAtMtrl(04);
        field_0x688.OnAtNoHitMark();
    } else {
        if (mArrowType == 4) {
            field_0x688.SetAtType(0x80);
            field_0x688.SetAtSe(22);
            field_0x688.SetAtAtp(0);
            field_0x688.OnAtNoHitMark();
        }

        field_0x94e = m_count;
        m_count++;
        if (m_count == 6) {
            m_count = 0;
        }
    }

    setBlur();
    setArrowAt(0.0f);
    clearNearActorData();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::arrowShooting() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/arrowShooting__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049AC84-8049ACE0 001104 005C+00 3/3 0/0 0/0 .text setBombArrowExplode__9daArrow_cFP4cXyz */
void daArrow_c::setBombArrowExplode(cXyz* param_0) {
    dBomb_c::createNormalBombExplode(param_0);
    field_0x93f = 1;
}

/* 8049ACE0-8049AD74 001160 0094+00 1/1 0/0 0/0 .text            setRoomInfo__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setRoomInfo() {
    int roomNo;

    if (fopAcM_gc_c::gndCheck(&current.pos)) {
        roomNo = fopAcM_gc_c::getRoomId();
        tevStr.mEnvrIdxOverride = fopAcM_gc_c::getPolyColor();
    } else {
        roomNo = dComIfGp_roomControl_getStayNo();
    }
    
    tevStr.mRoomNo = roomNo;
    field_0x64c.SetRoomId(roomNo);
    fopAcM_SetRoomNo(this, roomNo);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setRoomInfo() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setRoomInfo__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049AD74-8049AD94 0011F4 0020+00 2/2 0/0 0/0 .text            clearNearActorData__9daArrow_cFv */
void daArrow_c::clearNearActorData() {
    field_0x93e = 0;
    field_0x998 = FLT_MAX;
    mHitAcID = -1;
}

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD78-8049DD7C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4576 = 21243.0f;
COMPILER_STRIP_GATE(0x8049DD78, &lit_4576);
#pragma pop

/* 8049DD7C-8049DD80 0000F8 0004+00 0/2 0/0 0/0 .rodata          @4577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4577 = 4096.0f;
COMPILER_STRIP_GATE(0x8049DD7C, &lit_4577);
#pragma pop

/* 8049DD80-8049DD84 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4578 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8049DD80, &lit_4578);
#pragma pop

/* 8049DD84-8049DD8C 000100 0004+04 0/1 0/0 0/0 .rodata          @4579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4579[1 + 1 /* padding */] = {
    1024.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8049DD84, &lit_4579);
#pragma pop

/* 8049DD8C-8049DD94 000108 0008+00 0/3 0/0 0/0 .rodata          @4582 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4582[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DD8C, &lit_4582);
#pragma pop
#endif

/* 8049AD94-8049AE64 001214 00D0+00 2/2 0/0 0/0 .text            getVibAngle__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
s16 daArrow_c::getVibAngle() {
    s16 angle;
    if (cLib_calcTimer(&field_0x952)) {
        field_0x954 += (s16)(21243.0f - cM_rndF(4096.0f));

        f32 f = field_0x952 * 0.02f;
        angle = f * 1024.0f * f * cM_ssin(field_0x954);
    } else {
        angle = 0;
    }

    return angle;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daArrow_c::getVibAngle() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/getVibAngle__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD94-8049DD98 000110 0004+00 1/2 0/0 0/0 .rodata          @4606 */
SECTION_RODATA static f32 const lit_4606 = -95.0f;
COMPILER_STRIP_GATE(0x8049DD94, &lit_4606);

/* 8049DD98-8049DD9C 000114 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = -47.5f;
COMPILER_STRIP_GATE(0x8049DD98, &lit_4607);
#pragma pop
#endif

/* 8049AE64-8049AF18 0012E4 00B4+00 4/4 0/0 0/0 .text            setNormalMatrix__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setNormalMatrix() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, 0);

    u32 param = fopAcM_GetParam(this);
    if (param == 4) {
        mDoMtx_stack_c::transM(0.0f, 0.0f, -95.0f);
    } else if (param == 5) {
        mDoMtx_stack_c::transM(0.0f, 0.0f, -47.5f);

    }
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setNormalMatrix() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setNormalMatrix__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DD9C-8049DDA0 000118 0004+00 0/1 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4630 = -33.0f / 10.0f;
COMPILER_STRIP_GATE(0x8049DD9C, &lit_4630);
#pragma pop

/* 8049DDA0-8049DDA4 00011C 0004+00 0/1 0/0 0/0 .rodata          @4631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4631 = -3.0f;
COMPILER_STRIP_GATE(0x8049DDA0, &lit_4631);
#pragma pop

/* 8049DDA4-8049DDA8 000120 0004+00 0/1 0/0 0/0 .rodata          @4632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4632 = 94.0f;
COMPILER_STRIP_GATE(0x8049DDA4, &lit_4632);
#pragma pop

/* 8049DDA8-8049DDAC 000124 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8049DDA8, &lit_4633);
#pragma pop
#endif

/* 8049DF60-8049DF64 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8049DF64-8049DF68 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8049DF68-8049DF6C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8049DF6C-8049DF70 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8049DF70-8049DF74 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8049DF74-8049DF78 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8049DF78-8049DF7C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8049DF7C-8049DF80 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8049DF80-8049DF84 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8049DF84-8049DF88 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8049DF88-8049DF8C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8049DF8C-8049DF90 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8049DF90-8049DF94 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8049DF94-8049DF98 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8049DF98-8049DF9C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8049DF9C-8049DFA0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

#ifndef NONMATCHING
/* 8049DFA0-8049DFB0 000048 000C+04 0/1 0/0 0/0 .bss             @4612 */
#pragma push
#pragma force_active on
static u8 lit_4612[12 + 4 /* padding */];
#pragma pop

/* 8049DFB0-8049DFBC 000058 000C+00 0/1 0/0 0/0 .bss             localOffset$4611 */
#pragma push
#pragma force_active on
static u8 localOffset[12];
#pragma pop
#endif

/* 8049AF18-8049AFEC 001398 00D4+00 3/3 0/0 0/0 .text            setSmokePos__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setSmokePos() {
    static cXyz localOffset(-3.3f, -3.0f, 94.0f);

    mDoMtx_multVec(mpModel->getBaseTRMtx(), &localOffset, &field_0x9cc);
    field_0x958.y = shape_angle.y;

    mSmokePos = (field_0x9cc - field_0x9d8) * 0.9f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setSmokePos() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setSmokePos__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDAC-8049DDB0 000128 0004+00 0/2 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4674 = 20.0f;
COMPILER_STRIP_GATE(0x8049DDAC, &lit_4674);
#pragma pop

/* 8049DDB0-8049DDB4 00012C 0004+00 0/2 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4675 = -2.0f;
COMPILER_STRIP_GATE(0x8049DDB0, &lit_4675);
#pragma pop
#endif

/* 8049AFEC-8049B120 00146C 0134+00 3/3 0/0 0/0 .text            setKeepMatrix__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setKeepMatrix() {
    if (mArrowType == 2) {
        daHoZelda_c* actor = (daHoZelda_c*)field_0xa08.getActor();
        if (actor != NULL) {
            mDoMtx_stack_c::copy(actor->getRightHandMtx());
            mDoMtx_stack_c::transM(20.0f, -2.0f, 0.0f);
            mDoMtx_XYZrotM(mDoMtx_stack_c::get(), cM_deg2s(90.0f), cM_deg2s(60.0f), cM_deg2s(90.0f));
        } else {
            field_0x93f = 1;
            return;
        }
    } else {
        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::revConcat(daAlink_getAlinkActorClass()->getLeftItemMatrix());
    }
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_multVecZero(mpModel->getBaseTRMtx(), &current.pos);
    mDoMtx_MtxToRot(mpModel->getBaseTRMtx(), &shape_angle);

    current.angle.y = shape_angle.y;
    current.angle.x = -shape_angle.x;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setKeepMatrix() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setKeepMatrix__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049B120-8049B214 0015A0 00F4+00 2/2 0/0 0/0 .text            setStopActorMatrix__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
fopAc_ac_c* daArrow_c::setStopActorMatrix() {
    s16 vibe_angle = getVibAngle();
    fopAc_ac_c* actor = fopAcM_SearchByID(mHitAcID);
    if (actor == NULL) {
        return NULL;
    }

    dJntCol_c* jnt = fopAcM_GetJntCol(actor);
    if (jnt == NULL) {
        return NULL;
    }
    
    jnt->setArrowPosAndAngle(&field_0x9a8, &field_0x9b4, field_0x960, &current.pos, &shape_angle);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x + vibe_angle, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, 0.0f, -95.0f);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    return actor;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm fopAc_ac_c* daArrow_c::setStopActorMatrix() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setStopActorMatrix__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDB4-8049DDB8 000130 0004+00 1/1 0/0 0/0 .rodata          @4749 */
SECTION_RODATA static f32 const lit_4749 = 0.25f;
COMPILER_STRIP_GATE(0x8049DDB4, &lit_4749);
#endif

/* 8049B214-8049B370 001694 015C+00 4/4 0/0 0/0 .text            setBombMoveEffect__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
void daArrow_c::setBombMoveEffect() {
    if (mArrowType == 1 && field_0x945 == 0 && field_0x943 == 0) {
        setSmokePos();
        field_0x964 = dComIfGp_particle_set(field_0x964, 0x1e0, &field_0x9cc, &tevStr, &field_0x958, NULL, 0xff, &field_0xa10, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x964);
        field_0xa10.setRate(0.25f);

        field_0x968 = dComIfGp_particle_set(field_0x968, 0x1de, &field_0x9cc, &tevStr, &field_0x958, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x968);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x968);
        if (emitter != NULL) {
            emitter->playDrawParticle();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daArrow_c::setBombMoveEffect() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/setBombMoveEffect__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDB8-8049DDBC 000134 0004+00 0/3 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4763 = -1.0f;
COMPILER_STRIP_GATE(0x8049DDB8, &lit_4763);
#pragma pop
#endif

/* 8049B370-8049B45C 0017F0 00EC+00 2/2 0/0 0/0 .text            checkReget__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
bool daArrow_c::checkReget() {
    if (field_0x7cc.ChkCoHit()) {
        dComIfGp_setItemArrowNumCount(1);
        fopAcM_createItemForSimpleDemo(&current.pos, ARROW_1, -1, NULL, NULL, 0.0f, 0.0f);
        mDoAud_seStart(Z2SE_CONSUMP_ITEM_GET, 0, 0, 0);
        field_0x93f = 1;
        return true;
    } else {
        field_0x7cc.SetC(current.pos);
        dComIfG_Ccsp()->Set(&field_0x7cc);
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daArrow_c::checkReget() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/checkReget__9daArrow_cFv.s"
}
#pragma pop
#endif


#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDBC-8049DDC0 000138 0004+00 2/3 0/0 0/0 .rodata          @4868 */
SECTION_RODATA static f32 const lit_4868 = 95.0f;
COMPILER_STRIP_GATE(0x8049DDBC, &lit_4868);
#endif

/* 8049DE0C-8049DE18 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

#ifndef NONMATCHING
/* 8049DE18-8049DE2C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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
#endif

#ifndef NONMATCHING
/* 8049DE2C-8049DE38 -00001 000C+00 1/1 0/0 0/0 .data            @4777 */
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMove__9daArrow_cFv,
};
#endif

/* 8049B45C-8049B764 0018DC 0308+00 1/0 0/0 0/0 .text            procWait__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::procWait() {
    setKeepMatrix();

    u32 param = fopAcM_GetParam(this);
    if (param == 1 || param == 2) {
        tevStr.mFogColor.r = 0;
        tevStr.mFogColor.g = 0;
        tevStr.mFogColor.b = 0;

        daAlink_c* link = daAlink_getAlinkActorClass();
        if (mArrowType == 1) {
            field_0x688.SetAtAtp(0);
            if (!link->checkCanoeSlider()) {
                field_0x688.OnAtSPrmBit(0x20);
            }
        } else {
            field_0x688.SetAtAtp(2);
        }
        link->getArrowFlyData(&mFlyMax, &field_0x99c, 0);
        mOutLengthRate = 95.0f / field_0x99c;
        field_0xa10.setOldPosP(&field_0x9d8, &field_0x9e4);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x964);
        if (emitter != NULL) {
            emitter->setParticleCallBackPtr(NULL);
        }
        mProcFunc = &daArrow_c::procMove;
        arrowShooting();
        setBombMoveEffect();
    } else if (mArrowType == 1) {
        setSmokePos();
        
        field_0x964 = dComIfGp_particle_set(field_0x964, 0x1df, &field_0x9cc, &tevStr, &field_0x958, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x964);
        
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x964);
        if (emitter != NULL) {
            emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitter->setUserWork((u32)&mSmokePos);

            if (field_0x942 != 0) {
                emitter->stopDrawParticle();
            } else {
                emitter->playDrawParticle();
            }
        }
        
        field_0x968 = dComIfGp_particle_set(field_0x968, 0x1de, &field_0x9cc, &tevStr, &field_0x958, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x968);
        emitter = dComIfGp_particle_getEmitter(field_0x968);
        if (emitter != NULL) {
            if (field_0x942 != 0) {
                emitter->stopDrawParticle();
            } else {
                emitter->playDrawParticle();
            }
        }

        mSoundObjArrow.startLevelSound(0x8000a, 0, mReverb);
    }

    if(dComIfGp_checkCameraAttentionStatus(dComIfGp_getPlayerCameraID(0), 2)) {
        field_0x942 = 3;
    } else {
        field_0x942 = 0;
    }

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::procWait() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/procWait__9daArrow_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDC0-8049DDC4 00013C 0004+00 0/1 0/0 0/0 .rodata          @5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5356 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8049DDC0, &lit_5356);
#pragma pop

/* 8049DDC4-8049DDC8 000140 0004+00 0/1 0/0 0/0 .rodata          @5357 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5357 = 0x3F980000; // 1.1875
COMPILER_STRIP_GATE(0x8049DDC4, &lit_5357);
#pragma pop

/* 8049DDC8-8049DDCC 000144 0004+00 0/1 0/0 0/0 .rodata          @5358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5358 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8049DDC8, &lit_5358);
#pragma pop

/* 8049DDCC-8049DDD0 000148 0004+00 0/1 0/0 0/0 .rodata          @5359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5359 = -5.0f;
COMPILER_STRIP_GATE(0x8049DDCC, &lit_5359);
#pragma pop

/* 8049DE38-8049DE44 -00001 000C+00 0/1 0/0 0/0 .data            @4874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procActorControllStop__9daArrow_cFv,
};
#pragma pop

/* 8049DE44-8049DE50 -00001 000C+00 0/1 0/0 0/0 .data            @4974 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4974[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procActorStop__9daArrow_cFv,
};
#pragma pop

/* 8049DE50-8049DE5C -00001 000C+00 0/1 0/0 0/0 .data            @5004 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5004[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBGStop__9daArrow_cFv,
};
#pragma pop

/* 8049DE5C-8049DE68 -00001 000C+00 1/1 0/0 0/0 .data            @5369 */
SECTION_DATA static void* lit_5369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procReturn__9daArrow_cFv,
};

/* 8049DE68-8049DE74 -00001 000C+00 1/1 0/0 0/0 .data            @5506 */
SECTION_DATA static void* lit_5506[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSlingHit__9daArrow_cFv,
};

/* 8049DE74-8049DE80 -00001 000C+00 1/1 0/0 0/0 .data            @5714 */
SECTION_DATA static void* lit_5714[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMove__9daArrow_cFv,
};

/* 8049DE80-8049DE8C -00001 000C+00 1/1 0/0 0/0 .data            @5716 */
SECTION_DATA static void* lit_5716[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWait__9daArrow_cFv,
};
#endif

/* 8049DE8C-8049DEAC -00001 0020+00 1/0 0/0 0/0 .data            l_daArrowMethodTable */
static actor_method_class l_daArrowMethodTable = {
    (process_method_func)daArrow_create__FP9daArrow_c,
    (process_method_func)daArrow_delete__FP9daArrow_c,
    (process_method_func)daArrow_execute__FP9daArrow_c,
    0,
    (process_method_func)daArrow_draw__FP9daArrow_c,
};

/* 8049DEAC-8049DEDC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ARROW */
extern actor_process_profile_definition g_profile_ARROW = {
  fpcLy_CURRENT_e,        // mLayerID
  9,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_ARROW,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  0x00000A34,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  750,                    // mPriority
  &l_daArrowMethodTable,  // sub_method
  0x00060000,             // mStatus
  fopAc_UNK_GROUP_5_e,    // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8049DEDC-8049DEE8 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8049DEE8-8049DEF4 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8049DEF4-8049DF18 0000E8 0024+00 3/3 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
SECTION_DATA extern void* __vt__18dPa_levelEcallBack[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18dPa_levelEcallBackFv,
    (void*)execute__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)draw__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)NULL,
    (void*)cleanup__18dPa_levelEcallBackFv,
};

/* 8049DF18-8049DF34 00010C 001C+00 1/1 0/0 0/0 .data            __vt__18JPAEmitterCallBack */
SECTION_DATA extern void* __vt__18JPAEmitterCallBack[7] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)execute__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)draw__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
};

/* 8049DF34-8049DF40 000128 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8049DF40-8049DF4C 000134 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8049DF4C-8049DF58 000140 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 8049B764-8049C6B8 001BE4 0F54+00 2/0 0/0 0/0 .text            procMove__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::procMove() {
    if (fopAcM_GetParam(this) == 6) {
        setBlur();
        mProcFunc = &daArrow_c::procActorControllStop;
        speedF = 0.0f;
        procActorControllStop();
        return TRUE;
    }

    current.pos += speed;
    cXyz v = current.pos + speed * mOutLengthRate;
    BOOL bVar14 = FALSE;
    if (field_0x945 == 0) {
        field_0x56c.Set(&old.pos, &v, this);

        cXyz v2;
        if (dComIfG_Bgsp().LineCross(&field_0x56c)) {
            v2 = field_0x56c.i_GetCross();
        } else {
            v2 = v;
        }

        int water_next_pos = setArrowWaterNextPos(&old.pos, &v2);
        if (water_next_pos != 0) {
            if (water_next_pos == 2 || water_next_pos == 4) {
                bVar14 = TRUE;
            } else if (water_next_pos == 1) {
                fopKyM_createWpillar(field_0x5dc.GetCrossP(), 0.3f, 0);
                mDoAud_seStart(0x60031, field_0x5dc.GetCrossP(), 0, mReverb);
            }

            field_0x945 = 1;
            if (water_next_pos == 4 || water_next_pos == 3) {
                field_0x9fc = old.pos;
            } else {
                field_0x9fc = field_0x5dc.i_GetCross();
            }

            speed.normalizeZP();
            current.pos = v2 - (speed * 95.0f); 
            speed *= 80.0f;

            if (mArrowType != 4) {
                mOutLengthRate = 1.1875f;
            }

            v = v2;
        }
    }

    field_0x56c.Set(&old.pos, &v, this);

    u8 uVar17;
    BOOL line_cross = dComIfG_Bgsp().LineCross(&field_0x56c);
    if (field_0x688.ChkTgHit() && field_0x688.GetTgHitGObj() != NULL) {
        uVar17 = field_0x688.GetTgHitGObj()->GetAtMtrl();
    } else {
        uVar17 = 0;
    }

    if (uVar17 == 2 || (line_cross && daAlink_c::checkIcePolygonDamage(&field_0x56c))) {
        field_0x943 = 1;
    } else if (uVar17 == 3) {
        current.pos = *field_0x688.GetTgHitPosP();
        if(field_0x688.GetTgRVecP()->abs2XZ() < 1.0f ) {
            if (field_0x688.GetTgHitAc() != NULL) {
                current.angle.y = fopAcM_searchActorAngleY(this, field_0x688.GetTgHitAc());
            } else {
                current.angle.y = cLib_targetAngleY(&old.pos, &current.pos);
            }
        } else {
            current.angle.y = cM_atan2s(-field_0x688.GetTgRVecP()->x, -field_0x688.GetTgRVecP()->z);
        }
        shape_angle.y = current.angle.y;
        procReturnInit(1);
        return TRUE;
    }

    int iVar3;
    if (field_0x688.ChkAtHit() != 0) {
        if (mArrowType == 1 && field_0x943 == 0) {
            if (field_0x945 != 0) {
                field_0x93f = 1;
                return TRUE;
            }

            if (mHitAcID != -1) {
                setBombArrowExplode(&field_0x9a8);
                return TRUE;
            }
        }

        if (mArrowType == 4) {
            if (field_0x688.GetAtHitAc() != NULL && fopAcM_GetName(field_0x688.GetAtHitAc()) == PROC_E_PZ) {
                iVar3 = 0;
            } else {
                procSlingHitInit(field_0x688.GetAtHitPosP(), &field_0x688);
                return TRUE;
            }
        } else if (field_0x943 != 0) {
            iVar3 = 2;
        } else {
            if (mHitAcID == -1) {
                iVar3 = 0;
            } else {
                iVar3 = 1;
                fopAc_ac_c* hit_ac = fopAcM_SearchByID(mHitAcID);
                if (field_0x93e) {
                    iVar3 = 2;
                } else {
                    if (hit_ac != NULL && fopAcM_GetJntCol(hit_ac) != NULL) {
                        if (field_0x960 >= 0) {
                            iVar3 = 4;
                        } else {
                            if (field_0x960 == -1) {
                                iVar3 = 3;
                            } else if (field_0x960 == -2) {
                                iVar3 = 2;
                            }
                        }
                    }
                }
            }
        }

        if (iVar3 != 4) {
            clearNearActorData();
        }
    } else {
        if (line_cross && field_0x943 != 0) {
            iVar3 = 2;
        } else {
            iVar3 = 0;
        }
    }

    if (iVar3 != 0 && iVar3 != 3) {
        if (mArrowType == 2) {
            setLightArrowHitMark(field_0x688.GetAtHitPosP());
            setBlur();
        } else if (mArrowType == 4) {
            procSlingHitInit(field_0x56c.GetCrossP(), NULL);
        } else if (iVar3 == 2) {
            if (field_0x945) {
                field_0x93f = 1;
            } else {
                procReturnInit(0);
                current.pos = old.pos;
                setNormalMatrix();
            }
        } else if (iVar3 == 4) {
            setBlur();
            fopAcM_SetParam(this, 3);
            mProcFunc = &daArrow_c::procActorStop;
            speedF = 0.0f;
            setStopActorMatrix();
        } else {
            field_0x93f = 1;
            if (field_0x945 == 0 && field_0x688.ChkAtHit()) {
                current.pos = *field_0x688.GetAtHitPosP();
                setBlur();
            }
        }
        return TRUE;
    }

    if (line_cross) {
        current.pos = field_0x56c.i_GetCross();

        if (field_0x945 != 0 && (mArrowType == 1 || current.pos.y - field_0x9fc.y < -300.0f)) {
            field_0x93f = 1;
            return TRUE;
        }

        dKy_Sound_set(current.pos, 3, fopAcM_GetID(this), 10);

        if (mArrowType == 1) {
            setBombArrowExplode(&current.pos);
            return TRUE;
        }

        if (mArrowType == 2) {
            setLightArrowHitMark(&current.pos);
        }

        cM3dGPla local_4c;
        u32 se_id;
        dComIfG_Bgsp().GetTriPla(field_0x56c, &local_4c);
        int local_d8 = dComIfG_Bgsp().GetPolyAtt0(field_0x56c);
        if (local_d8 == 2 || mArrowType == 4 || local_d8 == 0xe || local_d8 == 10 || local_d8 == 8) {
            if (field_0x945 != 0) {
                field_0x93f = 1;
                return TRUE;
            }

            csXyz angle(
                cM_atan2s(local_4c.GetNP()->y, local_4c.GetNP()->absXZ()), 
                cM_atan2s(-local_4c.GetNP()->x, -local_4c.GetNP()->z), 
                0.0f
            );
            if (mArrowType == 4) {
                se_id = 0x40018;
                current.angle = angle;
                procSlingHitInit(&current.pos, NULL);
            } else {
                procReturnInit(0);
                dComIfGp_setHitMark(9, this, &current.pos, &angle, NULL, 0);
                se_id = 0x40017;
            }
        } else {
            setBlur();
            mProcFunc = &daArrow_c::procBGStop;
            fopAcM_SetParam(this, 4);
            speedF = 0.0f;
            se_id = Z2SE_HIT_AL_ARROW_STICK;
            current.angle.x = shape_angle.x;
            dComIfG_Bgsp().ArrowStickCallBack(field_0x56c, this, field_0x56c.i_GetCross());
        }

        daAlink_getAlinkActorClass()->itemHitSE(se_id, dKy_pol_sound_get(&field_0x56c) & 0xff, &mSoundObjArrow);
    } else {
        if (field_0x945 != 0) {
            if (bVar14) {
                field_0x93f = 1;
                return TRUE;
            }

            f32 f = current.pos.y - field_0x9fc.y;
            if (f < -300.0f) {
                field_0x688.OffAtSetBit();
                field_0x688.ResetAtHit();
                if (cLib_chaseF(&scale.x, 0.0f, 0.1f)) {
                    field_0x93f = 1;
                    return TRUE;
                }

                f32 x = scale.x;
                scale.y = x;
                scale.z = x;
                mpModel->setBaseScale(scale);
            } else {
                if (f > 95.0f) {
                    field_0x93f = 1;
                    return TRUE;
                }
                setArrowAt(current.pos.abs(mStartPos));
            }
        } else {
            f32 distance = current.pos.abs(mStartPos);
            if (distance > mFlyMax || fopAcM_GetGravity(this) < 0.0f) {
                if (mArrowType == 4) {
                    fopAcM_SetGravity(this, -5.0f);
                } else {
                    fopAcM_SetGravity(this, -2.0f);
                }
                speed.y += fopAcM_GetGravity(this);

                if (field_0x956 != 0) {
                    field_0x956--;
                } else {
                    field_0x93f = 1;
                    return TRUE;

                }
                shape_angle.x = speed.atan2sY_XZ();
                current.angle.x = -shape_angle.x;

                if (mArrowType != 4) {
                    mOutLengthRate = 95.0f / speed.abs();
                }
            }

            u32 sound_id;
            if (mArrowType == 2) {
                sound_id = 0x6001c;
            } else {
                if (fopAcM_GetParam(this) == 2) {
                    if (mArrowType == 1) {
                        sound_id = Z2SE_OBJ_ARROWBOMB_FLYGAIN;
                    } else {
                        sound_id = Z2SE_OBJ_ARROW_FLY_GAIN;
                    }
                } else if (mArrowType == 1) {
                    sound_id = Z2SE_OBJ_ARROWBOMB_FLY;
                } else {
                    sound_id = Z2SE_OBJ_ARROW_FLY_NORMAL;
                }
            }

            if (mArrowType != 4) {
                mSoundObjArrow.startLevelSound(sound_id, 0, mReverb);
            }

            setArrowAt(distance);
            setBlur();
        }
    }

    setNormalMatrix();
    setBombMoveEffect();

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::procMove() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/procMove__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049C6B8-8049C700 002B38 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__8cM3dGPlaFv.s"
}
#pragma pop

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDD0-8049DDD4 00014C 0004+00 0/1 0/0 0/0 .rodata          @5385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5385 = 8192.0f;
COMPILER_STRIP_GATE(0x8049DDD0, &lit_5385);
#pragma pop

/* 8049DDD4-8049DDD8 000150 0004+00 0/1 0/0 0/0 .rodata          @5386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5386 = 15.0f;
COMPILER_STRIP_GATE(0x8049DDD4, &lit_5386);
#pragma pop

/* 8049DDD8-8049DDDC 000154 0004+00 0/1 0/0 0/0 .rodata          @5387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5387 = 11264.0f;
COMPILER_STRIP_GATE(0x8049DDD8, &lit_5387);
#pragma pop
#endif

/* 8049C700-8049C874 002B80 0174+00 1/1 0/0 0/0 .text            procReturnInit__9daArrow_cFi */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::procReturnInit(int param_0) {
    setBlur();
    setBombMoveEffect();
    fopAcM_SetParam(this, 5);

    mProcFunc = &daArrow_c::procReturn;
    speedF = 0.0f;

    s16 rnd_y = cM_rndFX(8192.0f) + (current.angle.y + 0x8000);
    s16 sVar6;

    if (param_0 != 0) {
        sVar6 = 8192.0f - cM_rndF(4096.0f);
    } else {
        sVar6 = -cM_rndF(4096.0f);
    }

    f32 f = cM_rndF(15.0f) + 15.0f;
    speed.y = f * cM_ssin(sVar6);
    speed.x = (f * cM_ssin(rnd_y)) * cM_scos(sVar6);
    speed.z = (f * cM_scos(rnd_y)) * cM_scos(sVar6);

    field_0x954 = 11264.0f - cM_rndF(4096.0f);

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::procReturnInit(int param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/procReturnInit__9daArrow_cFi.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDDC-8049DDE0 000158 0004+00 0/1 0/0 0/0 .rodata          @5458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5458 = 2.0f;
COMPILER_STRIP_GATE(0x8049DDDC, &lit_5458);
#pragma pop

/* 8049DDE0-8049DDE4 00015C 0004+00 0/1 0/0 0/0 .rodata          @5459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5459 = 0.5f;
COMPILER_STRIP_GATE(0x8049DDE0, &lit_5459);
#pragma pop

/* 8049DDE4-8049DDE8 000160 0004+00 0/1 0/0 0/0 .rodata          @5460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5460 = 5000.0f;
COMPILER_STRIP_GATE(0x8049DDE4, &lit_5460);
#pragma pop
#endif

/* 8049C874-8049CB70 002CF4 02FC+00 1/0 0/0 0/0 .text            procReturn__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::procReturn() {
    setBombMoveEffect();

    speed.y -= 2.0f;
    current.pos += speed;

    shape_angle.x += field_0x954;

    cXyz pos = current.pos + speed * mOutLengthRate;
    field_0x56c.Set(&old.pos, &pos, this);
    decAlphaBlur();

    if(dComIfG_Bgsp().LineCross(&field_0x56c)) {
        if (mArrowType == 1 && field_0x943 == 0) {
            setBombArrowExplode(field_0x56c.GetCrossP());
            return TRUE;
        }

        cM3dGPla cStack_34;
        cXyz pos;
        dComIfG_Bgsp().GetTriPla(field_0x56c, &cStack_34);
        f32 speed_magnitude = speed.abs();
        C_VECReflect(&speed, cStack_34.GetNP(), &pos);
        speed.x = pos.x * speed_magnitude * 0.5f;
        speed.y = pos.y * speed_magnitude * 0.5f;
        speed.z = pos.z * speed_magnitude * 0.5f;
        field_0x954 = -(field_0x954 >> 1);

        if (dBgS_CheckBGroundPoly(field_0x56c)) {
            field_0x93d = 1;
        }
    } else {
        if ((field_0x93d != 0 && speed.y <= 0.0f) || mStartPos.y - 5000.0f > current.pos.y) {
            field_0x93f = 1;
            return TRUE;
        }
    }

    setNormalMatrix();

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::procReturn() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/procReturn__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049CB70-8049CC60 002FF0 00F0+00 1/0 0/0 0/0 .text            procBGStop__9daArrow_cFv */
int daArrow_c::procBGStop() {
    if (field_0x944 != 0 || !dComIfG_Bgsp().ChkPolySafe(field_0x56c)) {
        field_0x93f = 1;
        return TRUE;
    }

    BOOL update_angle = FALSE;
    s16 angle = getVibAngle();

    if(field_0x952) {
        update_angle = TRUE;
    }
    decAlphaBlur();

    if (dComIfG_Bgsp().ChkMoveBG(field_0x56c)) {
        dComIfG_Bgsp().MoveBgTransPos(field_0x56c, true, &current.pos, &current.angle, &shape_angle);
        update_angle = TRUE;
    }

    if (update_angle) {
        shape_angle.x = current.angle.x + angle;
        setNormalMatrix();
    }

    checkReget();
    return TRUE;
}

/* 8049CC60-8049CCCC 0030E0 006C+00 1/0 0/0 0/0 .text            procActorStop__9daArrow_cFv */
int daArrow_c::procActorStop() {
    decAlphaBlur();

    fopAc_ac_c* actor = setStopActorMatrix();
    if (field_0x944 != 0 || actor == NULL) {
        field_0x93f = 1;
    } else {
        if (actor->group != 4) {
            checkReget();
        }
    }

    return TRUE;
}

/* 8049CCCC-8049CCF0 00314C 0024+00 2/1 0/0 0/0 .text            procActorControllStop__9daArrow_cFv
 */
int daArrow_c::procActorControllStop() {
    decAlphaBlur();
    return TRUE;
}

/* 8049CCF0-8049CE50 003170 0160+00 1/1 0/0 0/0 .text
 * procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf           */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::procSlingHitInit(cXyz* param_0, dCcD_GObjInf* param_1) {
    fopAc_ac_c* hit_ac;
    if (param_1 != NULL) {
        hit_ac = param_1->GetAtHitAc();
    } else {
        hit_ac = NULL;
    }

    if (!daAlink_c::notSwordHitVibActor(hit_ac)) {
        u16 hitmark;
        if (hit_ac != NULL && fopAcM_checkStatus(hit_ac, 0x10000) != 0) {
            hitmark = 1;
        } else {
            hitmark = 9;
            if (hit_ac != NULL && param_1->GetAtHitGObj() != NULL) {
                if (param_1->GetAtHitGObj()->ChkTgNoSlingHitInfSet()) {
                    mDoAud_seStart(0x40018, param_0, 0x2d, mReverb);
                }
            }
        }
        dComIfGp_setHitMark(hitmark, hit_ac, param_0, &current.angle, NULL, 0);
    }

    setBlur();
    fopAcM_SetParam(this, 8);
    mProcFunc = &daArrow_c::procSlingHit;
    speedF = 0.0f;
    field_0x956 = 5;

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::procSlingHitInit(cXyz* param_0, dCcD_GObjInf* param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 8049CE50-8049CEA0 0032D0 0050+00 1/0 0/0 0/0 .text            procSlingHit__9daArrow_cFv */
int daArrow_c::procSlingHit() {
    decAlphaBlur();

    if (field_0x956 != 0) {
        field_0x956--;
    } else {
        field_0x93f = 1;
    }
    return TRUE;
}

/* 8049CEA0-8049D0AC 003320 020C+00 1/1 0/0 0/0 .text            execute__9daArrow_cFv */
#ifdef NONMATCHING
// matches with literals
int daArrow_c::execute() {
    field_0xa08.setActor();
    mReverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));

    if (field_0x945 == 0 && field_0x943 == 0) {
        field_0x9e4 = field_0x9d8;
        field_0x9d8 = field_0x9cc;
    }

    if (field_0x93f != 0) {
        setLightChargeEffect(1);
        fopAcM_delete(this);
        return TRUE;
    } else {
        if (field_0x94e == m_count) {
            field_0x944 = 1;
        }

        if (field_0x942 != 0) {
            field_0x942--;
        }

        (this->*mProcFunc)();

        if (mArrowType == 1 && field_0x93f == 0) {
            if (field_0x950 != 0) {
                field_0x950--;
            } else {
                f32 amp = cM_scos(current.angle.x) * 95.0f;
                cXyz pos(
                    current.pos.x + amp * cM_ssin(current.angle.y),
                    current.pos.y + cM_ssin(current.angle.x) * 95.0f,
                    current.pos.z + amp * cM_scos(current.angle.y)
                );
                setBombArrowExplode(&pos);
                return TRUE;
            }
        }

        if (mArrowType == 2) {
            setLightChargeEffect(0);
        }

        attention_info.position = current.pos;
        eyePos = current.pos;

        setRoomInfo();

        mSoundObjArrow.framework(0, mReverb);
    }

    return TRUE;
}

#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::execute() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/execute__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049D0AC-8049D0CC 00352C 0020+00 1/0 0/0 0/0 .text            daArrow_execute__FP9daArrow_c */
static int daArrow_execute(daArrow_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 8049DDE8-8049DDF0 000164 0008+00 0/1 0/0 0/0 .rodata          tmpColor$5589 */
#ifndef NONMATCHING
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const tmpColor[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8049DDE8, &tmpColor);
#pragma pop

/* 8049DDF0-8049DDF4 00016C 0004+00 0/1 0/0 0/0 .rodata          @5676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5676 = 0x40490FDB;
COMPILER_STRIP_GATE(0x8049DDF0, &lit_5676);
#pragma pop

/* 8049DDF4-8049DDF8 000170 0004+00 0/2 0/0 0/0 .rodata          @5677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5677 = 50.0f;
COMPILER_STRIP_GATE(0x8049DDF4, &lit_5677);
#pragma pop
#endif

/* 8049D0CC-8049D40C 00354C 0340+00 1/1 0/0 0/0 .text            draw__9daArrow_cFv */
#ifdef NONMATCHING
// regalloc, literals
int daArrow_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);

    if (field_0x942 != 0 || field_0x93f != 0 || fopAcM_GetParam(this) == 8) {
        return TRUE;
    }
    
    GXColorS10 tmpColor = {0, 0, 0};
    J3DGXColorS10 color = (tmpColor);

    daAlink_c* link = daAlink_getAlinkActorClass();
    if (fopAcM_GetParam(this) == 0 && field_0x940 != 0) {
        setKeepMatrix();
        field_0x940 = 0;
    }

    if (mArrowType == 1) {
        if (field_0x943 != 0) {
            color.r = link->getFreezeR();
            color.g = link->getFreezeG();
            color.b = link->getFreezeB();
        } else {
            s16 explode_time = daAlink_getAlinkActorClass()->getBombExplodeTime();
            f32 r;

            if (field_0x950 > explode_time >> 1) {
                r = fabsf(cM_fsin((field_0x950 - (explode_time >> 1)) * M_PI / (explode_time >> 2)));
            } else if (field_0x950 > explode_time >> 2) {
                r = fabsf(cM_fsin((field_0x950 - (explode_time >> 1)) * M_PI / (explode_time >> 3)));
            } else {
                r = fabsf(cM_fsin((field_0x950 - (explode_time >> 3)) * M_PI / (explode_time >> 4)));
            }

            color.r = (u8)(r * 50.0f);
        }
        
        mpModel->getModelData()->getMaterialNodePointer(1)->setTevColor(1, &color);
    }

    if (field_0x943 != 0) {
        tevStr.mFogColor.r = link->getFreezeR();
        tevStr.mFogColor.g = link->getFreezeG();
        tevStr.mFogColor.b = link->getFreezeB();
    }

    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);

    if (mArrowType == 1) {
        color.r = 0;
        color.g = 0;
        color.b = 0;
        mpModel->getModelData()->getMaterialNodePointer(1)->setTevColor(1, &color);
    }

    return TRUE;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daArrow_c::draw() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/draw__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049D40C-8049D42C 00388C 0020+00 1/0 0/0 0/0 .text            daArrow_draw__FP9daArrow_c */
static int daArrow_draw(daArrow_c* i_this) {
    return i_this->draw();
}

/* 8049D42C-8049D440 0038AC 0014+00 1/1 0/0 0/0 .text daAlink_searchHorseZelda__FP10fopAc_ac_cPv
 */
static void* daAlink_searchHorseZelda(fopAc_ac_c* param_0, void* param_1) {
    if (fopAcM_GetName(param_0) == PROC_HOZELDA) {
        return param_0;
    }

    return NULL;
}

#ifndef NONMATCHING
/* ############################################################################################## */
/* 8049DDF8-8049DDFC 000174 0004+00 0/1 0/0 0/0 .rodata          @5813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5813 = -6.0f;
COMPILER_STRIP_GATE(0x8049DDF8, &lit_5813);
#pragma pop

/* 8049DDFC-8049DE00 000178 0004+00 0/1 0/0 0/0 .rodata          @5814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5814 = 6.0f;
COMPILER_STRIP_GATE(0x8049DDFC, &lit_5814);
#pragma pop

/* 8049DE00-8049DE04 00017C 0004+00 0/1 0/0 0/0 .rodata          @5815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5815 = 110.0f;
COMPILER_STRIP_GATE(0x8049DE00, &lit_5815);
#pragma pop
#endif

/* 8049D440-8049D808 0038C0 03C8+00 1/1 0/0 0/0 .text            create__9daArrow_cFv */
#ifdef NONMATCHING
// regalloc, stack issue, literals
cPhs__Step daArrow_c::create() {
    fopAcM_SetupActor(this, daArrow_c);

    mArrowType = fopAcM_GetParamBit(this, 8, 8);
    fopAcM_SetParam(this, (u8)fopAcM_GetParam(this));
    
    if (!fopAcM_entrySolidHeap(this, daArrow_createHeap, mArrowType == 1 ? 0xea0 : 0x810)) {
        return cPhs_ERROR_e;
    }
    
    if (mArrowType == 2) {
        field_0xa08.setData(fopAcM_Search((fopAcIt_JudgeFunc)daAlink_searchHorseZelda, NULL));
        field_0x946 = 6;
        field_0x94c = 0x896e;
    } else if (mArrowType == 0) {
        field_0x946 = 1;
        field_0x94c = 0x3b8;
    } else if (mArrowType == 4) {
        field_0x946 = 1;
        field_0x94c = 0xa55;
    } else {
        field_0x946 = 0;
    }

    field_0x940 = 1;

    field_0x64c.Init(10, 0xff, this);
    field_0x688.Set(l_atCpsSrc);
    field_0x688.SetStts(&field_0x64c);
    field_0x688.SetAtHitCallback(daArrow_atHitCallBack);
    field_0x7cc.Set(l_coSphSrc);
    field_0x7cc.SetStts(&field_0x64c);

    daAlink_c* player = daAlink_getAlinkActorClass();
    if (mArrowType == 4) {
        setNormalMatrix();
        player->getArrowFlyData(&mFlyMax, &field_0x99c, 0);
        mOutLengthRate = 0.0f;
        arrowShooting();
        mProcFunc = &daArrow_c::procMove;
    } else {
        mProcFunc = &daArrow_c::procWait;
        setKeepMatrix();
    }

    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_SetMin(this, -6.0f, -6.0f, 0.0f);
    fopAcM_SetMax(this, 6.0f, 6.0f, 110.0f);

    setSmokePos();

    field_0x94e = -1; 
    field_0x956 = 300;
    field_0x952 = 50.0f - cM_rndF(20.0f);

    field_0x950 = player->getBombExplodeTime();
    field_0x5dc.OffFullGrp();
    field_0x5dc.OnWaterGrp();

    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daArrow_c::create() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/create__9daArrow_cFv.s"
}
#pragma pop
#endif

/* 8049D808-8049D80C 003C88 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" asm void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 8049D80C-8049D880 003C8C 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" asm void __dt__18dPa_levelEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__18dPa_levelEcallBackFv.s"
}
#pragma pop

/* 8049D880-8049D8C8 003D00 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8049D8C8-8049D910 003D48 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8049D910-8049D96C 003D90 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 8049D96C-8049D98C 003DEC 0020+00 1/0 0/0 0/0 .text            daArrow_create__FP9daArrow_c */
static int daArrow_create(daArrow_c* i_this) {
    return i_this->create();
}

/* 8049D98C-8049DBD8 003E0C 024C+00 1/1 0/0 0/0 .text            __dt__9daArrow_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daArrow_c::~daArrow_c() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__9daArrow_cFv.s"
}
#pragma pop

/* 8049DBD8-8049DC00 004058 0028+00 1/0 0/0 0/0 .text            daArrow_delete__FP9daArrow_c */
static int daArrow_delete(daArrow_c* i_this) {
    i_this->~daArrow_c();
    return TRUE;
}

/* 8049DC00-8049DC48 004080 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 8049DC48-8049DC4C 0040C8 0004+00 2/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 8049DC4C-8049DC50 0040CC 0004+00 2/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" asm void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 8049DC50-8049DC54 0040D0 0004+00 2/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" asm void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 8049DC54-8049DC58 0040D4 0004+00 2/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" asm void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

#ifndef NONMATCHING
/* 8049DC58-8049DC74 0040D8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8049DC58(void* _this, s16* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_arrow/d_a_arrow/func_8049DC58.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8049DFBC-8049DFC0 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8049DFBC[4];
#pragma pop

/* 8049DFC0-8049DFC4 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8049DFC0[4];
#pragma pop

/* 8049DFC4-8049DFC8 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8049DFC4[4];
#pragma pop

/* 8049DFC8-8049DFCC 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8049DFC8[4];
#pragma pop

/* 8049DFCC-8049DFD0 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049DFCC[4];
#pragma pop

/* 8049DFD0-8049DFD4 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049DFD0[4];
#pragma pop

/* 8049DFD4-8049DFD8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8049DFD4[4];
#pragma pop

/* 8049DFD8-8049DFDC 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8049DFD8[4];
#pragma pop

/* 8049DFDC-8049DFE0 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8049DFDC[4];
#pragma pop

/* 8049DFE0-8049DFE4 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8049DFE0[4];
#pragma pop

/* 8049DFE4-8049DFE8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8049DFE4[4];
#pragma pop

/* 8049DFE8-8049DFEC 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8049DFE8[4];
#pragma pop

/* 8049DFEC-8049DFF0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8049DFEC[4];
#pragma pop

/* 8049DFF0-8049DFF4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049DFF0[4];
#pragma pop

/* 8049DFF4-8049DFF8 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8049DFF4[4];
#pragma pop

/* 8049DFF8-8049DFFC 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8049DFF8[4];
#pragma pop

/* 8049DFFC-8049E000 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8049DFFC[4];
#pragma pop

/* 8049E000-8049E004 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8049E000[4];
#pragma pop

/* 8049E004-8049E008 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8049E004[4];
#pragma pop

/* 8049E008-8049E00C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8049E008[4];
#pragma pop

/* 8049E00C-8049E010 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8049E00C[4];
#pragma pop

/* 8049E010-8049E014 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049E010[4];
#pragma pop

/* 8049E014-8049E018 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049E014[4];
#pragma pop

/* 8049E018-8049E01C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8049E018[4];
#pragma pop

/* 8049E01C-8049E020 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8049E01C[4];
#pragma pop

/* 8049E020-8049E024 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
#pragma push
#pragma force_active on
static u8 data_8049E020[4];
#pragma pop

/* 8049DE04-8049DE04 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
