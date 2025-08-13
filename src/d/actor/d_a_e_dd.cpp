/**
 * @file d_a_e_dd.cpp
 * 
*/

#include "d/actor/d_a_e_dd.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_DD_HIO_cFv();
extern "C" static void anm_init__FP10e_dd_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_DD_Draw__FP10e_dd_class();
extern "C" static void otherBgCheckS__FP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_dd_classfs();
extern "C" static void way_gake_check__FP10e_dd_classf();
extern "C" static void damage_check__FP10e_dd_class();
extern "C" static void way_bg_check__FP10e_dd_classf();
extern "C" static void path_check__FP10e_dd_class();
extern "C" static void e_dd_wall__FP10e_dd_class();
extern "C" static void e_dd_normal__FP10e_dd_class();
extern "C" static void e_dd_run__FP10e_dd_class();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void e_dd_attack__FP10e_dd_class();
extern "C" static void e_dd_guard__FP10e_dd_class();
extern "C" static void e_dd_bombdamage__FP10e_dd_class();
extern "C" static void e_dd_taildamage__FP10e_dd_class();
extern "C" static void e_dd_fall__FP10e_dd_class();
extern "C" static void e_dd_dead__FP10e_dd_class();
extern "C" static void e_dd_arrowdamage__FP10e_dd_class();
extern "C" static void action__FP10e_dd_class();
extern "C" static void anm_se_set__FP10e_dd_class();
extern "C" static void daE_DD_Execute__FP10e_dd_class();
extern "C" static bool daE_DD_IsDelete__FP10e_dd_class();
extern "C" static void daE_DD_Delete__FP10e_dd_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void kabe_initial_pos_set__FP10e_dd_class();
extern "C" static void daE_DD_Create__FP10fopAc_ac_c();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_DD_HIO_cFv();
extern "C" void __sinit_d_a_e_dd_cpp();
extern "C" static void func_806A6D8C();
extern "C" static void func_806A6D94();
extern "C" extern char const* const d_a_e_dd__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

/* 806A72F8-806A7324 -00001 002C+00 1/1 0/0 0/0 .data            @5001 */
SECTION_DATA static void* lit_5001[11] = {
    (void*)(((char*)action__FP10e_dd_class) + 0x13C),
    (void*)(((char*)action__FP10e_dd_class) + 0x1CC),
    (void*)(((char*)action__FP10e_dd_class) + 0x1CC),
    (void*)(((char*)action__FP10e_dd_class) + 0x14C),
    (void*)(((char*)action__FP10e_dd_class) + 0x15C),
    (void*)(((char*)action__FP10e_dd_class) + 0x170),
    (void*)(((char*)action__FP10e_dd_class) + 0x184),
    (void*)(((char*)action__FP10e_dd_class) + 0x194),
    (void*)(((char*)action__FP10e_dd_class) + 0x1A0),
    (void*)(((char*)action__FP10e_dd_class) + 0x1B0),
    (void*)(((char*)action__FP10e_dd_class) + 0x1C0),
};

/* 806A7324-806A732C 000064 0008+00 0/1 0/0 0/0 .data            bomb_eff_name$5033 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bomb_eff_name[8] = {
    0x84, 0xC6, 0x84, 0xC7, 0x84, 0xC8, 0x84, 0xC9,
};
#pragma pop

/* 806A732C-806A7334 00006C 0008+00 0/1 0/0 0/0 .data            fire_eff_name$5067 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 fire_eff_name_5067[8] = {
    0x84, 0x6C, 0x84, 0x6D, 0x84, 0x6E, 0x84, 0x6F,
};
#pragma pop

/* 806A7334-806A7338 000074 0004+00 0/1 0/0 0/0 .data            fire_eff_name$5082 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 fire_eff_name_5082[4] = {
    0x84,
    0x71,
    0x84,
    0x72,
};
#pragma pop

/* 806A734C-806A7358 00008C 000A+02 1/1 0/0 0/0 .data            ya */
SECTION_DATA static u8 ya[10 + 2 /* padding */] = {
    0xC0,
    0x00,
    0x40,
    0x00,
    0x00,
    0x00,
    0x80,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 806A7358-806A7364 000098 000A+02 1/1 0/0 0/0 .data            xa */
SECTION_DATA static u8 xa[10 + 2 /* padding */] = {
    0xC0,
    0x00,
    0xC0,
    0x00,
    0xC0,
    0x00,
    0xC0,
    0x00,
    0x80,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 806A7364-806A73A4 0000A4 0040+00 1/1 0/0 0/0 .data            fire_sph_src$5643 */
static dCcD_SrcSph fire_sph_src = {
    {
        {0x0, {{0x100, 0x2, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806A73A4-806A73E4 0000E4 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5644 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0xd8fbfdff, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806A7434-806A7440 000174 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806A7440-806A744C 000180 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806A744C-806A7458 00018C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806A7458-806A7464 000198 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806A7464-806A7470 0001A4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806A7470-806A7494 0001B0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806A6D94,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806A6D8C,
};

/* 806A7494-806A74A0 0001D4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806A74A0-806A74AC 0001E0 000C+00 2/2 0/0 0/0 .data            __vt__12daE_DD_HIO_c */
SECTION_DATA extern void* __vt__12daE_DD_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_DD_HIO_cFv,
};

/* 806A226C-806A22CC 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__12daE_DD_HIO_cFv */
daE_DD_HIO_c::daE_DD_HIO_c() {
    field_0x4 = -1;
    basic_size = 1.0f;
    walk_speed = 4.0f;
    run_speed = 10.0f;
    search_area = 800.0f;
    flame_distance = 550.0f;
    horned_head = 30.0f;
    flame_time = 110;
    flame_mot_speed = 1.5f;
}

/* 806A22CC-806A2378 00014C 00AC+00 10/10 0/0 0/0 .text            anm_init__FP10e_dd_classifUcf */
static void anm_init(e_dd_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_DD", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}

/* 806A2378-806A254C 0001F8 01D4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_dd_class* i_this = (e_dd_class*)model->getUserArea();
        if (i_this != 0) {
            if (jntNo == 10) {
                MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
                cMtx_ZrotM(*calc_mtx, i_this->field_0x6b8 + i_this->field_0x6bc);
                model->setAnmMtx(jntNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            } else if (jntNo == 2 || jntNo == 3) {
                MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, i_this->field_0x6bc);
                model->setAnmMtx(jntNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            } else if (jntNo == 0x13 || jntNo == 0x14 || jntNo == 0x15) {
                MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, -i_this->field_0x6bc);
                model->setAnmMtx(jntNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }
        }
    }

    return 1;
}

/* 806A254C-806A264C 0003CC 0100+00 1/0 0/0 0/0 .text            daE_DD_Draw__FP10e_dd_class */
static int daE_DD_Draw(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    J3DModel* model = i_this->mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);
    i_this->mpBrkAnms[i_this->field_0x67c]->entry(model->getModelData());
    i_this->mpModelMorf->entryDL();

    if (i_this->mShadowKey != 0x564FF) {
        cXyz sp28;
        sp28.set(a_this->current.pos.x, a_this->current.pos.y + 50.0f + BREG_F(18), a_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp28, 1200.0f, 0.0f, a_this->current.pos.y, i_this->mObjAcch.GetGroundH(),
                                                i_this->mObjAcch.m_gnd, &a_this->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 806A264C-806A272C 0004CC 00E0+00 1/1 0/0 0/0 .text otherBgCheckS__FP10fopAc_ac_cP10fopAc_ac_c */
static BOOL otherBgCheckS(fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    dBgS_LinChk lin_chk;
    cXyz start, end;
    
    end = param_2->current.pos;
    end.y += 100.0f;
    start = param_1->current.pos;
    start.y += 50.0f;
    lin_chk.Set(&start, &end, param_1);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 806A272C-806A27A8 0005AC 007C+00 4/4 0/0 0/0 .text            pl_check__FP10e_dd_classfs */
static BOOL pl_check(e_dd_class* i_this, f32 param_2, s16 param_3) {
    fopAc_ac_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->field_0x6a4 < param_2) {
        s16 sVar1 = (a_this->shape_angle.y - i_this->field_0x6a0);
        
        if (sVar1 < param_3 && sVar1 > (s16)-param_3 && !otherBgCheckS(a_this, player)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 806A27A8-806A28A8 000628 0100+00 1/1 0/0 0/0 .text            way_gake_check__FP10e_dd_classf */
static BOOL way_gake_check(e_dd_class* i_this, f32 param_1) {
    fopAc_ac_c* a_this = &i_this->actor;
    dBgS_GndChk gnd_chk;
    cXyz sp78, sp84;

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp78.x = 0.0f;
    sp78.y = 100.0f;
    sp78.z = param_1;
    MtxPosition(&sp78, &sp84);
    sp84 += a_this->current.pos;
    gnd_chk.SetPos(&sp84);

    if (a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
        i_this->field_0x6d0 = 1;
        return TRUE;
    }

    i_this->field_0x6d0 = 0;
    return FALSE;
}

/* 806A28A8-806A2BDC 000728 0334+00 1/1 0/0 0/0 .text            damage_check__FP10e_dd_class */
static void damage_check(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->mStts.Move();

    if (i_this->field_0x6b2 == 0) {
        for (int i = 0; i < 2; i++) {
            if (i_this->field_0xa74[i].ChkTgHit() && i_this->field_0xa74[i].ChkTgShield()) {
                i_this->field_0x6b2 = 6;
                i_this->mAtInfo.mpCollider = i_this->field_0xa74[i].GetTgHitObj();
                def_se_set(&i_this->mSound, i_this->mAtInfo.mpCollider, 42, NULL);
                break;
            }
        }

        if (i_this->field_0xe5a != 0 && i_this->field_0xa74[0].ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->field_0xa74[0].GetTgHitObj();

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW)) {
                i_this->field_0x6b2 = 6;
                i_this->field_0x68a = 8;
                i_this->field_0x68c = 0;
            }
        }

        if (i_this->field_0xa74[2].ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->field_0xa74[2].GetTgHitObj();
            at_power_check(&i_this->mAtInfo);

            if (i_this->mAtInfo.mHitType == 16) {
                if (i_this->field_0x6aa[2] == 0) {
                    i_this->field_0x68a = 7;
                    i_this->field_0x68c = 0;
                    i_this->field_0x6aa[2] = 90;
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_DD_V_GUARD, -1);
            } else {
                cc_at_check(a_this, &i_this->mAtInfo);

                s8 bVar1 = 0;
                if (i_this->field_0x6d1 != 0) {
                    i_this->field_0x6d1 = 0;
                    bVar1 = 1;
                }

                if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                    i_this->field_0x6b2 = 3;
                    i_this->field_0x6d1 = 1;
                } else {
                    i_this->field_0x6b2 = 10;
                }

                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW)) {
                    i_this->field_0xe5b++;

                    if (i_this->field_0xe5b >= 3) {
                        a_this->health = 0;
                    }
                }

                if (bVar1 || (i_this->field_0x6d4 == 0 && a_this->health <= 0)) {
                    i_this->field_0x68a = 9;
                    i_this->field_0x68c = 0;
                    a_this->health = 0;
                } else if (i_this->field_0x6aa[2] == 0) {
                    i_this->field_0x68a = 7;
                    i_this->field_0x68c = 0;
                    i_this->field_0x6aa[2] = 90;
                }

                if (a_this->health <= 1) {
                    a_this->health = 0;
                    i_this->field_0xa74[2].SetTgHitMark((CcG_Tg_HitMark)3);
                }
            }
        } else {
            for (int i = 0; i < 2; i++) {
                if (i_this->field_0xa74[i].ChkTgHit()) {
                    i_this->mAtInfo.mpCollider = i_this->field_0xa74[i].GetTgHitObj();
                    at_power_check(&i_this->mAtInfo);

                    if (i_this->mAtInfo.mHitType == 16) {
                        i_this->field_0x68a = 5;
                        i_this->field_0x68c = 0;
                        i_this->mSound.startCreatureVoice(Z2SE_EN_DD_V_GUARD, -1);
                    }

                    i_this->field_0x6b2 = 6;
                }
            }
        }
    }
}

/* 806A2BDC-806A2CE8 000A5C 010C+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_dd_classf */
static BOOL way_bg_check(e_dd_class* i_this, f32 param_2) {
    fopAc_ac_c* a_this = &i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp98, start, end;

    start = a_this->current.pos;
    start.y += 50.0f;
    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp98.x = 0.0f;
    sp98.y = 50.0f;
    sp98.z = param_2;
    MtxPosition(&sp98, &end);
    end += a_this->current.pos;
    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 806A74B8-806A74BC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 806A74C8-806A74F0 000018 0028+00 9/9 0/0 0/0 .bss             l_HIO */
static daE_DD_HIO_c l_HIO;

/* 806A74F0-806A75EF 000040 00FF+00 1/1 0/0 0/0 .bss             check_index$4196 */
static u8 check_index[255];

/* 806A2CE8-806A2F14 000B68 022C+00 2/2 0/0 0/0 .text            path_check__FP10e_dd_class */
static BOOL path_check(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz start, end;

    start = a_this->current.pos;
    start.y += WREG_F(0) + 10.0f;
    dPnt* points = i_this->mpPath->m_points;

    for (int i = 0; i < i_this->mpPath->m_num; i++, points++) {
        if (i < 0xFF) {
            end.x = points->m_position.x;
            end.y = points->m_position.y + 10.0f + WREG_F(1);
            end.z = points->m_position.z;
            lin_chk.Set(&start, &end, a_this);

            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = 1;
            } else {
                check_index[i] = 0;
            }
        }
    }

    f32 fVar2, fVar3, fVar4;
    f32 fVar1 = 100.0f;
    bool bVar1 = false;

    for (int i = 0; i < 100; i++) {
        points = i_this->mpPath->m_points;

        for (int j = 0; j < i_this->mpPath->m_num; j++, points++) {
            if (j < 0xFF && check_index[j] != 0) {
                fVar2 = a_this->current.pos.x - points->m_position.x;
                fVar3 = a_this->current.pos.y - points->m_position.y;
                fVar4 = a_this->current.pos.z - points->m_position.z;
                if (JMAFastSqrt(fVar2 * fVar2 + fVar3 * fVar3 + fVar4 * fVar4) < fVar1) {
                    i_this->field_0x5bc = j;
                    bVar1 = 1;
                    break;
                }
            }
        }

        if (bVar1) break;
        fVar1 += 50.0f;
    }

    if (!bVar1) {
        return FALSE;
    }

    if (cM_rndF(1.0f) < 0.5f) {
        i_this->field_0x5bd = 1;
    } else {
        i_this->field_0x5bd = -1;
    }

    return TRUE;
}

/* 806A2F14-806A34DC 000D94 05C8+00 1/1 0/0 0/0 .text            e_dd_wall__FP10e_dd_class */
static void e_dd_wall(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = 0.0f;
    cXyz sp40, sp4c;

    switch (i_this->field_0x68c) {
        case 0:
            i_this->field_0x6a8 = 0;

            if (i_this->field_0x6aa[0] == 0) {
                if (i_this->mpPath != NULL && path_check(i_this)) {
                    i_this->field_0x68c = 100;
                } else {
                    sp4c.x = a_this->home.pos.x + cM_rndFX(200.0f);
                    sp4c.y = a_this->home.pos.y;
                    sp4c.z = a_this->home.pos.z + cM_rndFX(200.0f);
                    sp40 = sp4c - a_this->current.pos;
                    cMtx_XrotS(*calc_mtx, -i_this->field_0x6d6.x);
                    cMtx_YrotM(*calc_mtx, -i_this->field_0x6d6.y);
                    MtxPosition(&sp40, &sp4c);
                    i_this->field_0x69c = cM_atan2s(sp4c.x, sp4c.z);
                    anm_init(i_this, 0x16, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                    i_this->field_0x6aa[0] = cM_rndF(50.0f) + 50.0f;
                    i_this->field_0x68c = 1;
                }
            }
            break;

        case 1:
            if ((frame >= AREG_S(0) + 12 && frame <= AREG_S(1) + 29) || frame <= AREG_S(2) + 2 || frame >= AREG_S(3) + 37) {
                fVar1 = l_HIO.walk_speed;
            }

            if (i_this->field_0x6aa[0] == 0 && (frame == 7 || frame == 33)) {
                i_this->field_0x68c = 0;
                i_this->field_0x6aa[0] = cM_rndF(100.0f) + 100.0f;
                anm_init(i_this, 0x15, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 100:
            anm_init(i_this, 0x16, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->field_0x68c = 101;
            dPnt* points = i_this->mpPath->m_points;
            s8 sVar1 = i_this->field_0x5bc;
            i_this->field_0x690.x = points[sVar1].m_position.x;
            i_this->field_0x690.y = points[sVar1].m_position.y;
            i_this->field_0x690.z = points[sVar1].m_position.z;
            // fallthrough
        case 101:
            if ((frame >= AREG_S(0) + 12 && frame <= AREG_S(1) + 29) || frame <= AREG_S(2) + 2 || frame >= AREG_S(3) + 37) {
                fVar1 = l_HIO.walk_speed;
            }

            sp40 = i_this->field_0x690 - a_this->current.pos;
            i_this->field_0x69c = cM_atan2s(sp40.x, sp40.z);

            if ((frame == 7 || frame == 33) && sp40.abs() < 100.0f) {
                i_this->field_0x5bc += i_this->field_0x5bd;
                if (i_this->field_0x5bc >= (i_this->mpPath->m_num & 0xFF)) {
                    if (dPath_ChkClose(i_this->mpPath)) {
                        i_this->field_0x5bc = 0;
                    } else {
                        i_this->field_0x5bd = -1;
                        i_this->field_0x5bc = i_this->mpPath->m_num - 2;
                    }
                } else if (i_this->field_0x5bc < 0) {
                    i_this->field_0x5bd = 1;
                    i_this->field_0x5bc = 1;
                }

                i_this->field_0x68c = 102;
                i_this->field_0x6aa[0] = cM_rndF(100.0f) + 100.0f;
                anm_init(i_this, 0x15, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 102:
            if (i_this->field_0x6aa[0] == 0) {
                i_this->field_0x68c = 100;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, l_HIO.walk_speed * 0.5f);
    i_this->field_0x6a8 = a_this->speedF * (BREG_F(1) + 64.0f);

    if (i_this->mAnm == 0x16) {
        if (a_this->speedF >= 0.5f) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x69c, 8, i_this->field_0x6a8);
        }

        s16 sVar2 = i_this->field_0x69c - a_this->current.angle.y;

        if (sVar2 > 0x800 || sVar2 < -0x800) {
            if (sVar2 > 0) {
                i_this->field_0x6be = BREG_S(6) + 2560;
            } else {
                i_this->field_0x6be = -(BREG_S(6) + 2560);
            }

            i_this->field_0x6c0 = BREG_S(1) + 128;
        }
    }

    if (pl_check(i_this, l_HIO.search_area, 0x7FFF)) {
        i_this->field_0x68a = 4;
        i_this->field_0x68c = 0;
        anm_init(i_this, 0x12, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
    }
}

/* 806A34DC-806A3AE8 00135C 060C+00 1/1 0/0 0/0 .text            e_dd_normal__FP10e_dd_class */
static void e_dd_normal(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    if (i_this->field_0x6d4 != 0) {
        e_dd_wall(i_this);
        return;
    }

    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = 0.0f;
    cXyz sp40, sp4c;
    s16 sVar1;

    switch (i_this->field_0x68c) {
        case 0:
            i_this->field_0x6a8 = 0;

            if (i_this->field_0x6aa[0] == 0) {
                if (i_this->mpPath != NULL && path_check(i_this)) {
                    i_this->field_0x68c = 100;
                } else {
                    if (way_bg_check(i_this, 200.0f) || i_this->field_0x6d0 != 0) {
                        sVar1 = cM_rndFX(10000.0f) + 32768.0f;
                        i_this->field_0x6aa[1] = 200;
                    } else {
                        sp4c.x = a_this->home.pos.x + cM_rndFX(400.0f);
                        sp4c.y = a_this->home.pos.y;
                        sp4c.z = a_this->home.pos.z + cM_rndFX(400.0f);
                        sp40 = sp4c - a_this->current.pos;
                        sVar1 = cM_atan2s(sp40.x, sp40.z) - a_this->current.angle.y;
                    }

                    i_this->field_0x69c = a_this->current.angle.y + sVar1;
                    anm_init(i_this, 0x16, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                    i_this->field_0x6aa[0] = cM_rndF(100.0f) + 100.0f;
                    i_this->field_0x68c = 1;
                }
            }
            break;

        case 1:
            if ((frame >= AREG_S(0) + 12 && frame <= AREG_S(1) + 29) || frame <= AREG_S(2) + 2 || frame >= AREG_S(3) + 37) {
                fVar1 = l_HIO.walk_speed;
            }

            if ((i_this->field_0x6aa[0] == 0 && (frame == 7 || frame == 33)) || (i_this->field_0x6aa[1] == 0 && (way_bg_check(i_this, 200.0f) || i_this->field_0x6d0 != 0))) {
                i_this->field_0x68c = 0;
                i_this->field_0x6aa[0] = cM_rndF(100.0f) + 100.0f;
                anm_init(i_this, 0x15, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 100:
            anm_init(i_this, 0x16, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->field_0x68c = 101;
            dPnt* points = i_this->mpPath->m_points;
            s8 sVar2 = i_this->field_0x5bc;
            i_this->field_0x690.x = points[sVar2].m_position.x;
            i_this->field_0x690.y = points[sVar2].m_position.y;
            i_this->field_0x690.z = points[sVar2].m_position.z;
            // fallthrough
        case 101:
            if ((frame >= AREG_S(0) + 12 && frame <= AREG_S(1) + 29) || frame <= AREG_S(2) + 2 || frame >= AREG_S(3) + 37) {
                fVar1 = l_HIO.walk_speed;
            }

            sp40 = i_this->field_0x690 - a_this->current.pos;
            i_this->field_0x69c = cM_atan2s(sp40.x, sp40.z);

            if ((frame == 7 || frame == 33) && sp40.abs() < 100.0f) {
                i_this->field_0x5bc += i_this->field_0x5bd;
                if (i_this->field_0x5bc >= (i_this->mpPath->m_num & 0xFF)) {
                    if (dPath_ChkClose(i_this->mpPath)) {
                        i_this->field_0x5bc = 0;
                    } else {
                        i_this->field_0x5bd = -1;
                        i_this->field_0x5bc = i_this->mpPath->m_num - 2;
                    }
                } else if (i_this->field_0x5bc < 0) {
                    i_this->field_0x5bd = 1;
                    i_this->field_0x5bc = 1;
                }

                i_this->field_0x68c = 102;
                i_this->field_0x6aa[0] = cM_rndF(100.0f) + 100.0f;
                anm_init(i_this, 0x15, 15.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 102:
            if (i_this->field_0x6aa[0] == 0) {
                i_this->field_0x68c = 100;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, l_HIO.walk_speed * 0.5f);
    i_this->field_0x6a8 = a_this->speedF * (BREG_F(1) + 64.0f);

    if (i_this->mAnm == 0x16) {
        if (a_this->speedF >= 0.5f) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x69c, 8, i_this->field_0x6a8);
        }

        s16 sVar3 = i_this->field_0x69c - a_this->current.angle.y;

        if (sVar3 > 0x800 || sVar3 < -0x800) {
            if (sVar3 > 0) {
                i_this->field_0x6be = BREG_S(6) + 2560;
            } else {
                i_this->field_0x6be = -(BREG_S(6) + 2560);
            }

            i_this->field_0x6c0 = BREG_S(1) + 128;
        }
    }

    if (pl_check(i_this, l_HIO.search_area, 0x7FFF) && i_this->field_0x6d0 == 0) {
        i_this->field_0x68a = 3;
        i_this->field_0x68c = 0;
    }
}

/* 806A3AE8-806A3D64 001968 027C+00 1/1 0/0 0/0 .text            e_dd_run__FP10e_dd_class */
static void e_dd_run(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    if (i_this->field_0x6d4 != 0) {
        i_this->field_0x68a = 0;
        i_this->field_0x68c = 0;
        i_this->field_0x6aa[0] = 0;
        a_this->speedF = 0.0f;
    } else {
        int frame = i_this->mpModelMorf->getFrame();
        f32 fVar1 = 0.0f;
        cXyz sp48, sp54;

        switch (i_this->field_0x68c) {
            case 0:
                anm_init(i_this, 0x12, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->field_0x68c = 1;

                if (!pl_check(i_this, 10000.0f, 0x2000)) {
                    i_this->field_0x6aa[1] = JREG_S(7) + 25;
                    i_this->mpModelMorf->setFrame(JREG_F(7) + 12.0f);
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_DD_V_FIND, -1);
                break;

            case 1:
                fVar1 = l_HIO.run_speed;

                if (i_this->field_0x6a4 < l_HIO.flame_distance) {
                    i_this->field_0x68a = 4;
                    i_this->field_0x68c = 0;
                    i_this->field_0x6aa[0] = 40;
                }
                break;
        }

        if (i_this->field_0x6aa[1] != 0 && i_this->field_0x6aa[1] < JREG_S(6) + 20) {
            fVar1 = 0.0f;

            if (frame == 3) {
                i_this->mpModelMorf->setFrame(2.0f);
            }
        }

        cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, l_HIO.run_speed * 0.5f);
        i_this->field_0x6a8 = a_this->speedF * (BREG_F(1) + 100.0f);

        if (a_this->speedF >= 0.5f) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x6a0, 1, i_this->field_0x6a8);
        }

        s16 sVar1 = i_this->field_0x6a0 - a_this->current.angle.y;
        if (sVar1 > 0x1800 || sVar1 < -0x1800) {
            if (sVar1 > 0) {
                i_this->field_0x6be = BREG_S(6) + 0xD00;
            } else {
                i_this->field_0x6be = -(BREG_S(6) + 0xD00);
            }

            i_this->field_0x6c0 = BREG_S(1) + 0x200;
        } else {
            i_this->field_0x6c0 = 0x180;
        }

        if (i_this->field_0x6d0 != 0 || !pl_check(i_this, l_HIO.search_area + 300.0f, 0x7FFF)) {
            i_this->field_0x68a = 0;
            i_this->field_0x68c = 0;
            i_this->field_0x6aa[0] = 0;
            a_this->speedF = 0.0f;
        }
    }
}

/* ############################################################################################## */
/* 806A7240-806A7244 00007C 0004+00 0/2 0/0 0/0 .rodata          @4598 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4598 = 60.0f;
COMPILER_STRIP_GATE(0x806A7240, &lit_4598);
#pragma pop

/* 806A7244-806A7248 000080 0004+00 0/4 0/0 0/0 .rodata          @4599 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4599 = 5.0f;
COMPILER_STRIP_GATE(0x806A7244, &lit_4599);
#pragma pop

/* 806A7248-806A724C 000084 0004+00 0/2 0/0 0/0 .rodata          @4600 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4600 = 40.0f;
COMPILER_STRIP_GATE(0x806A7248, &lit_4600);
#pragma pop

/* 806A3D64-806A3F98 001BE4 0234+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A724C-806A7250 000088 0004+00 0/1 0/0 0/0 .rodata          @4668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4668 = 20.0f;
COMPILER_STRIP_GATE(0x806A724C, &lit_4668);
#pragma pop

/* 806A7250-806A7254 00008C 0004+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4669 = 1000.0f;
COMPILER_STRIP_GATE(0x806A7250, &lit_4669);
#pragma pop

/* 806A3F98-806A42F0 001E18 0358+00 1/1 0/0 0/0 .text            e_dd_attack__FP10e_dd_class */
static void e_dd_attack(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A42F0-806A43C0 002170 00D0+00 1/1 0/0 0/0 .text            e_dd_guard__FP10e_dd_class */
static void e_dd_guard(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A43C0-806A460C 002240 024C+00 1/1 0/0 0/0 .text            e_dd_bombdamage__FP10e_dd_class */
static void e_dd_bombdamage(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A460C-806A48DC 00248C 02D0+00 1/1 0/0 0/0 .text            e_dd_taildamage__FP10e_dd_class */
static void e_dd_taildamage(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A48DC-806A4A58 00275C 017C+00 1/1 0/0 0/0 .text            e_dd_fall__FP10e_dd_class */
static void e_dd_fall(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A4A58-806A4B60 0028D8 0108+00 1/1 0/0 0/0 .text            e_dd_dead__FP10e_dd_class */
static void e_dd_dead(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A4B60-806A4D98 0029E0 0238+00 1/1 0/0 0/0 .text            e_dd_arrowdamage__FP10e_dd_class */
static void e_dd_arrowdamage(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A4D98-806A52CC 002C18 0534+00 2/1 0/0 0/0 .text            action__FP10e_dd_class */
static void action(e_dd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A7254-806A7258 000090 0004+00 0/0 0/0 0/0 .rodata          @4996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4996 = -100.0f;
COMPILER_STRIP_GATE(0x806A7254, &lit_4996);
#pragma pop

/* 806A7258-806A725C 000094 0004+00 0/0 0/0 0/0 .rodata          @4997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4997 = 162.0f;
COMPILER_STRIP_GATE(0x806A7258, &lit_4997);
#pragma pop

/* 806A725C-806A7260 000098 0004+00 0/0 0/0 0/0 .rodata          @4998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4998 = 150.0f;
COMPILER_STRIP_GATE(0x806A725C, &lit_4998);
#pragma pop

/* 806A7260-806A7264 00009C 0004+00 0/0 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4999 = 65536.0f;
COMPILER_STRIP_GATE(0x806A7260, &lit_4999);
#pragma pop

/* 806A7264-806A7268 0000A0 0004+00 0/0 0/0 0/0 .rodata          @5000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5000 = 360.0f;
COMPILER_STRIP_GATE(0x806A7264, &lit_5000);
#pragma pop

/* 806A7268-806A726C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @5265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5265 = 14.5f;
COMPILER_STRIP_GATE(0x806A7268, &lit_5265);
#pragma pop

/* 806A726C-806A7270 0000A8 0004+00 0/1 0/0 0/0 .rodata          @5266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5266 = 21.0f;
COMPILER_STRIP_GATE(0x806A726C, &lit_5266);
#pragma pop

/* 806A7270-806A7274 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5267 = 27.0f;
COMPILER_STRIP_GATE(0x806A7270, &lit_5267);
#pragma pop

/* 806A7274-806A7278 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5268 = 31.0f;
COMPILER_STRIP_GATE(0x806A7274, &lit_5268);
#pragma pop

/* 806A7278-806A727C 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5269 = 9.0f;
COMPILER_STRIP_GATE(0x806A7278, &lit_5269);
#pragma pop

/* 806A727C-806A7280 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 44.0f;
COMPILER_STRIP_GATE(0x806A727C, &lit_5270);
#pragma pop

/* 806A52CC-806A5A6C 00314C 07A0+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_dd_class */
static void anm_se_set(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A5A6C-806A60E0 0038EC 0674+00 2/1 0/0 0/0 .text            daE_DD_Execute__FP10e_dd_class */
static int daE_DD_Execute(e_dd_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp1c, sp28;

    i_this->field_0x688++;

    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x6aa[i] != 0) {
            i_this->field_0x6aa[i]--;
        }
    }

    if (i_this->field_0x6b2 != 0) {
        i_this->field_0x6b2--;
    }

    if (i_this->field_0x6d3 != 0){
        i_this->field_0x6d3--;
    }

    i_this->field_0xa74[0].OnCoSPrmBit(0x40);

    action(i_this);

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x6d6.y);
    mDoMtx_stack_c::XrotM(i_this->field_0x6d6.x);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.basic_size, l_HIO.basic_size, l_HIO.basic_size);

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpBrkAnms[i_this->field_0x67c]->play();

    if (i_this->mpBrkAnms[1]->getFrame() >= 57.0f) {
        i_this->mpBrkAnms[1]->setFrame(57.0f);
    }

    if (i_this->mpBrkAnms[3]->getFrame() >= 46.0f) {
        i_this->mpBrkAnms[3]->setFrame(46.0f);
    }

    if (i_this->mpBrkAnms[4]->getFrame() >= 40.0f) {
        i_this->mpBrkAnms[4]->setFrame(40.0f);
    }

    i_this->mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    i_this->mpModelMorf->modelCalc();

    anm_se_set(i_this);

    MTXCopy(model->getAnmMtx(AREG_S(4) + 10), *calc_mtx);
    sp1c.set(AREG_F(0) + 40.0f, AREG_F(1), AREG_F(2) + -40.0f);
    MtxPosition(&sp1c, &i_this->field_0xe40);
    sp1c.set(AREG_F(13), AREG_F(14), AREG_F(15));
    MtxPosition(&sp1c, &sp28);

    i_this->field_0xa74[0].SetC(sp28);
    i_this->field_0xa74[0].SetR((AREG_F(6) + 60.0f) * l_HIO.basic_size);
    dComIfG_Ccsp()->Set(&i_this->field_0xa74[0]);

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp1c.set(AREG_F(7) + -25.0f, AREG_F(8), AREG_F(9));
    MtxPosition(&sp1c, &sp28);
    i_this->field_0xa74[1].SetC(sp28);
    i_this->field_0xa74[1].SetR((AREG_F(10) + 20.0f + 55.0f) * l_HIO.basic_size);
    dComIfG_Ccsp()->Set(&i_this->field_0xa74[1]);

    MTXCopy(model->getAnmMtx(0x15), *calc_mtx);
    sp1c.set(AREG_F(11), AREG_F(12), AREG_F(13));
    MtxPosition(&sp1c, &i_this->field_0xe4c);
    i_this->field_0xa74[2].SetC(i_this->field_0xe4c);
    i_this->field_0xa74[2].SetR((AREG_F(14) + 50.0f) * l_HIO.basic_size);
    dComIfG_Ccsp()->Set(&i_this->field_0xa74[2]);

    if (i_this->field_0x6b2 != 0) {
        i_this->field_0xa74[0].OffTgSetBit();
        i_this->field_0xa74[1].OffTgSetBit();
        i_this->field_0xa74[2].OffTgSetBit();
    } else {
        i_this->field_0xa74[0].OnTgSetBit();
        i_this->field_0xa74[1].OnTgSetBit();
        i_this->field_0xa74[2].OnTgSetBit();
    }

    if (i_this->field_0xe58 != 0) {
        cMtx_YrotS(*calc_mtx, i_this->field_0x6d6.y);
        cMtx_XrotM(*calc_mtx, i_this->field_0x6d6.x);
        cMtx_YrotM(*calc_mtx, a_this->shape_angle.y + i_this->field_0x6b8);
        cMtx_XrotM(*calc_mtx, a_this->shape_angle.x);
        sp1c.x = 0.0f;
        sp1c.y = 0.0f;
        sp1c.z = i_this->field_0xe5c;
        MtxPosition(&sp1c, &sp28);
        sp28 += a_this->eyePos;

        if (i_this->field_0xe59 == 0) {
            i_this->field_0xe59 = 1;
            i_this->mFireSph.StartCAt(sp28);
        } else {
            i_this->mFireSph.MoveCAt(sp28);
        }

        i_this->mFireSph.SetR(KREG_F(5) + 10.0f);
        dComIfG_Ccsp()->Set(&i_this->mFireSph);

        i_this->field_0xe5c += 40.0f;

        if (i_this->field_0xe5c >= 250.0f) {
            i_this->field_0xe5c = 0.0f;
        }

        i_this->field_0xe58 = 0;
    } else {
        i_this->field_0xe59 = 0;
        i_this->field_0xe5c = 0.0f;
    }

    s16 sVar1 = i_this->field_0x6a0 - a_this->shape_angle.y;
    s8 bVar1 = 0;

    if (sVar1 < 0x4000 && sVar1 > -0x4000) {
        a_this->eyePos = i_this->field_0xe40;
    } else {
        a_this->eyePos = i_this->field_0xe4c;
        bVar1 = 1;
    }

    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += (AREG_F(4) + 70.0f) * l_HIO.basic_size;
    s8 bVar2 = 0;

    if (i_this->field_0x6a4 > (NREG_F(12) + 350.0f)) {
        if (i_this->field_0xe5a == 0) {
            bVar2 = 1;
        }
    } else {
        if (bVar1 == 0 && daPy_getPlayerActorClass()->getCutAtFlg() != 0) {
            bVar2 = 1;
        }
    }

    if (bVar2 != 0) {
        i_this->field_0xa74[0].OnTgShield();
        i_this->field_0xa74[0].SetTgHitMark((CcG_Tg_HitMark)2);
        i_this->field_0xa74[1].OnTgShield();
        i_this->field_0xa74[1].SetTgHitMark((CcG_Tg_HitMark)2);
    } else {
        i_this->field_0xa74[0].OffTgShield();
        i_this->field_0xa74[0].SetTgHitMark((CcG_Tg_HitMark)0);
        i_this->field_0xa74[1].OffTgShield();
        i_this->field_0xa74[1].SetTgHitMark((CcG_Tg_HitMark)0);
    }

    if (i_this->field_0x5b6 != 0) {
        MTXCopy(model->getAnmMtx(2), *calc_mtx);
        sp1c.set(AREG_F(7) + -25.0f, AREG_F(8), AREG_F(9));
        MtxPosition(&sp1c, &sp28);
        fopAcM_createDisappear(a_this, &sp28, 13, 0, 32);
        fopAcM_delete(a_this);

        if ((int)(fopAcM_GetParam(a_this) >> 24) != 0xFF) {
            dComIfGs_onSwitch(fopAcM_GetParam(a_this) >> 24, fopAcM_GetRoomNo(a_this));
        }
    }

    return 1;
}

/* 806A60E0-806A60E8 003F60 0008+00 1/0 0/0 0/0 .text            daE_DD_IsDelete__FP10e_dd_class */
static int daE_DD_IsDelete(e_dd_class* i_this) {
    return 1;
}

/* 806A60E8-806A6154 003F68 006C+00 1/0 0/0 0/0 .text            daE_DD_Delete__FP10e_dd_class */
static int daE_DD_Delete(e_dd_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    dComIfG_resDelete(&i_this->mPhase, "E_dd");

    if (i_this->field_0xe90 != 0) {
        l_initHIO = 0;
    }

    if (a_this->heap != NULL) {
        i_this->mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 806A6154-806A63B8 003FD4 0264+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_dd_class* i_this = (e_dd_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_dd", 0x19), NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes("E_dd", 0x15), 2, 1.0f, 0, -1,
                                               &i_this->mSound, 0x80000, 0x11020084);
    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((u32)i_this);
    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        if (i != 0) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    static int brk_d[5] = {
        0x1C, 0x1E, 0x1F, 0x20, 0x1D,
    };

    for (int i = 0; i < 5; i++) {
        i_this->mpBrkAnms[i] = new mDoExt_brkAnm();
        if (i_this->mpBrkAnms[i] == NULL) {
            return 0;
        }

        int i_attr;
        if (i == 4) {
            i_attr = 0;
        } else {
            i_attr = 2;
        }

        f32 i_rate = 1.0f;
        if (i == 1 || i == 3) {
            i_rate = l_HIO.flame_mot_speed;
        }

        if (i_this->mpBrkAnms[i]->init(i_this->mpModelMorf->getModel()->getModelData(),
                                       (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_dd", brk_d[i]), 1,
                                       i_attr, i_rate, 0, -1) == 0) {
            return 0;
        }
    }

    return 1;
}

/* ############################################################################################## */
/* 806A72A0-806A72A4 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5623 = -400.0f;
COMPILER_STRIP_GATE(0x806A72A0, &lit_5623);
#pragma pop

/* 806A6400-806A65C4 004280 01C4+00 1/1 0/0 0/0 .text kabe_initial_pos_set__FP10e_dd_class */
static void kabe_initial_pos_set(e_dd_class* i_this) {
    // NONMATCHING
}

/* 806A65C4-806A69A4 004444 03E0+00 1/0 0/0 0/0 .text            daE_DD_Create__FP10fopAc_ac_c */
static cPhs__Step daE_DD_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_dd_class* i_this = (e_dd_class*)a_this;
    fopAcM_SetupActor(a_this, e_dd_class);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, "E_dd");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_DD PARAM %x\n", fopAcM_GetParam(a_this));

        u8 uVar1 = fopAcM_GetParam(a_this) >> 16 & 0xFF;
        if ((int)(fopAcM_GetParam(a_this) >> 24) != 0xFF) {
            if (dComIfGs_isSwitch(fopAcM_GetParam(a_this) >> 24, fopAcM_GetRoomNo(a_this))) {
                OS_REPORT("E_DD やられ後なので再セットしません\n") // Since I was attacked in E_DD, I will not reset\n
                return cPhs_ERROR_e;
            }
        }

        i_this->field_0x5b4 = fopAcM_GetParam(a_this);
        i_this->field_0x5b5 = (fopAcM_GetParam(a_this) >> 8) & 15;

        OS_REPORT("E_DD//////////////E_DD SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x20E0)) {
            OS_REPORT("//////////////E_DD SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_DD SET 2 !!\n");

        if (uVar1 != 0xFF) {
            i_this->mpPath = dPath_GetRoomPath(uVar1, fopAcM_GetRoomNo(a_this));

            OS_REPORT("//////////////E_DD PPD %x!!\n");

            if (i_this->mpPath == NULL) {
                OS_REPORT("......DD  NONONONONONO PATH !!!!\n");
                return cPhs_ERROR_e;
            }
        }

        if (l_initHIO == 0) {
            i_this->field_0xe90 = 1;
            l_initHIO = 1;
            l_HIO.field_0x4 = -1;
        }

        a_this->attention_info.flags = 4;
        fopAcM_SetMtx(a_this, i_this->mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -500.0f, -200.0f, -500.0f);
        fopAcM_SetMax(a_this, 500.0f, 200.0f, 500.0f);
        a_this->health = 60;
        a_this->field_0x560 = 60;
        i_this->mStts.Init(250, 0, a_this);

        for (int i = 0; i < 3; i++) {
            i_this->field_0xa74[i].Set(cc_sph_src);
            i_this->field_0xa74[i].SetStts(&i_this->mStts);

            if (i == 2) {
                i_this->field_0xa74[i].OffTgShield();
                i_this->field_0xa74[i].SetTgHitMark((CcG_Tg_HitMark)0);
            } else {
                i_this->field_0xa74[i].OnTgShield();
                i_this->field_0xa74[i].SetTgHitMark((CcG_Tg_HitMark)2);
            }
        }

        i_this->mFireSph.Set(fire_sph_src);
        i_this->mFireSph.SetStts(&i_this->mStts);
        i_this->mFireSph.SetAtType(AT_TYPE_100);
        i_this->mFireSph.SetAtMtrl(1);
        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1, &i_this->mAcchCir,
                             fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(50.0f, 100.0f);
        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        i_this->mSound.setEnemyName("E_dd");

        i_this->mAtInfo.mPowerType = 2;
        i_this->mAtInfo.mpSound = &i_this->mSound;
        i_this->field_0x688 = cM_rndF(65535.0f);

        if (i_this->field_0x5b4 == 2 || i_this->field_0x5b4 == 3) {
            kabe_initial_pos_set(i_this);
        }

        daE_DD_Execute(i_this);
    }

    return phase;
}

/* 806A72B4-806A72B4 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 806A73E4-806A7404 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DD_Method */
static actor_method_class l_daE_DD_Method = {
    (process_method_func)daE_DD_Create,
    (process_method_func)daE_DD_Delete,
    (process_method_func)daE_DD_Execute,
    (process_method_func)daE_DD_IsDelete,
    (process_method_func)daE_DD_Draw,
};

/* 806A7404-806A7434 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DD */
extern actor_process_profile_definition g_profile_E_DD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_DD,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_dd_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  117,                    // mPriority
  &l_daE_DD_Method,       // sub_method
  0x10040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
