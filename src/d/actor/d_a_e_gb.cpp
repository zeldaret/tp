/**
 * @file d_a_e_gb.cpp
 * 
*/

#include "d/actor/d_a_e_gb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/actor/d_a_obj_smallkey.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_GB_HIO_cFv();
extern "C" static void head_anm_init__FP10e_gb_classifUcf();
extern "C" static void body_anm_init__FP10e_gb_classifUcf();
extern "C" static void daE_GB_Draw__FP10e_gb_class();
extern "C" static void e_gb_wait__FP10e_gb_class();
extern "C" static void e_gb_attack_1__FP10e_gb_class();
extern "C" static void e_gb_attack_2__FP10e_gb_class();
extern "C" static void e_gb_damage__FP10e_gb_class();
extern "C" static void e_gb_end__FP10e_gb_class();
extern "C" static void e_gb_start__FP10e_gb_class();
extern "C" static void kuki_control1__FP10e_gb_class();
extern "C" static void kuki_control2__FP10e_gb_class();
extern "C" static void kuki_control3__FP10e_gb_class();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void damage_check__FP10e_gb_class();
extern "C" static void action__FP10e_gb_class();
extern "C" static void e_gf_wait__FP10e_gb_class();
extern "C" static void e_gf_chance__FP10e_gb_class();
extern "C" static void e_gf_eatbomb__FP10e_gb_class();
extern "C" static void e_gf_end__FP10e_gb_class();
extern "C" static void damage_check2__FP10e_gb_class();
extern "C" static void action2__FP10e_gb_class();
extern "C" static void cam_3d_morf__FP10e_gb_classf();
extern "C" static void demo_camera__FP10e_gb_class();
extern "C" static void daE_GB_Execute__FP10e_gb_class();
extern "C" static bool daE_GB_IsDelete__FP10e_gb_class();
extern "C" static void daE_GB_Delete__FP10e_gb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_GB_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_gb_classFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_GB_HIO_cFv();
extern "C" void __sinit_d_a_e_gb_cpp();
extern "C" static void func_806C701C();
extern "C" static void func_806C7024();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void setPos__7daKey_cF4cXyz();
extern "C" extern char const* const d_a_e_gb__stringBase0;

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
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" bool checkBoomerangChargeTime__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void stopAnime__10Z2CreatureFv();
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
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void actionWaitInit__7daKey_cFv();

//
// Declarations:
//

/* 806C778C-806C77B8 -00001 002C+00 1/1 0/0 0/0 .data            @4803 */
SECTION_DATA static void* lit_4803[11] = {
    (void*)(((char*)action__FP10e_gb_class) + 0x174),
    (void*)(((char*)action__FP10e_gb_class) + 0x18C),
    (void*)(((char*)action__FP10e_gb_class) + 0x1A8),
    (void*)(((char*)action__FP10e_gb_class) + 0x1C8),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x1E4),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x21C),
    (void*)(((char*)action__FP10e_gb_class) + 0x200),
};

/* 806C77B8-806C77C4 0000F4 000A+02 1/1 0/0 0/0 .data            eno$4864 */
static u8 eno_4864[10 + 2 /* padding */] = {
    0x82E8,
    0x82E9,
    0x82EA,
    0x82EB,
    0x82EC,
};

/* 806C789C-806C78A8 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806C78A8-806C78B4 0001E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806C78B4-806C78C0 0001F0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806C78C0-806C78E4 0001FC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C7024,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806C701C,
};

/* 806C78E4-806C78F0 000220 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806C78F0-806C78FC 00022C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806C78FC-806C7908 000238 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806C7908-806C7914 000244 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806C7914-806C7920 000250 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GB_HIO_c */
SECTION_DATA extern void* __vt__12daE_GB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GB_HIO_cFv,
};

/* 806C1CEC-806C1D3C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_GB_HIO_cFv */
daE_GB_HIO_c::daE_GB_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.0f;
    field_0xc = 1.0f;
    field_0x10 = 1.0f;
    field_0x14 = 15;
    field_0x18 = 65.0f;
    field_0x1c = 12;
    field_0x1e = 10;
}

/* 806C1D3C-806C1DEC 00013C 00B0+00 7/7 0/0 0/0 .text            head_anm_init__FP10e_gb_classifUcf */
static void head_anm_init(e_gb_class* i_this, int param_2, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mpModelMorf1->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gb", param_2), i_mode,
                                 i_morf, i_speed, 0.0f, -1.0f, NULL);
    i_this->field_0x688 = param_2;
}

/* 806C1DEC-806C1E9C 0001EC 00B0+00 5/5 0/0 0/0 .text            body_anm_init__FP10e_gb_classifUcf */
static void body_anm_init(e_gb_class* i_this, int param_2, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mpModelMorf2->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gb", param_2), i_mode,
                                 i_morf, i_speed, 0.0f, -1.0f, NULL);
    i_this->field_0x68c = param_2;
}

/* 806C1E9C-806C2078 00029C 01DC+00 1/0 0/0 0/0 .text            daE_GB_Draw__FP10e_gb_class */
static int daE_GB_Draw(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;

    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);

    J3DModel* model = i_this->mpModelMorf2->getModel();
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    J3DModelData* modelData = model->getModelData();
    i_this->mBrkAnm->entry(modelData);
    i_this->mpModelMorf2->entryDL();

    if (i_this->field_0x66c != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x66c, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x66c);
    }

    if (i_this->field_0x968 != 0) {
        if (i_this->field_0x828[17] != NULL) {
            model = i_this->mpModelMorf1->getModel();
            g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);
            i_this->mpModelMorf1->entryDL();

            for (int i = 0; i < 17; i++) {
                if (i_this->field_0x828[i] != NULL) {
                    g_env_light.setLightTevColorType_MAJI(i_this->field_0x828[i], &a_this->tevStr);
                    mDoExt_modelUpdateDL(i_this->field_0x828[i]);
                }
            }
        }

        cXyz sp38;
        sp38.set(a_this->current.pos.x, a_this->current.pos.y + 100.0f, a_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp38, 1400.0f, 0.0f, a_this->current.pos.y,
                                                 i_this->mObjAcch.GetGroundH(), i_this->mObjAcch.m_gnd,
                                                 &a_this->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

        for (int i = 0; i < 17; i++) {
            if (i_this->field_0x828[i] != NULL) {
                dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x828[i]);
            }
        }
    }

    return 1;
}

/* 806C7928-806C792C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806C7928;

/* 806C7938-806C7958 000018 0020+00 6/6 0/0 0/0 .bss             l_HIO */
static daE_GB_HIO_c l_HIO;

/* 806C2078-806C2560 000478 04E8+00 1/1 0/0 0/0 .text            e_gb_wait__FP10e_gb_class */
static void e_gb_wait(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp5c, sp68;
    f32 fVar1 = (a_this->home.pos - dComIfGp_getPlayer(0)->current.pos).abs();
    s8 sVar1 = 0;

    switch (i_this->field_0x69c) {
        case -2:
            head_anm_init(i_this, 16, 3.0f, 0, 1.0f);
            i_this->field_0x6c4[1] = l_HIO.field_0x14 + cM_rndF(l_HIO.field_0x14);
            i_this->field_0x69c = 1;
            i_this->field_0x6c0 = 1.0f;
            break;

        case 0:
            head_anm_init(i_this, 17, 10.0f, 2, 1.0f);
            i_this->field_0x69c = 1;
            i_this->field_0x6c4[1] = l_HIO.field_0x14 + cM_rndF(l_HIO.field_0x14);
            // fallthrough
        case 1:
            if (i_this->field_0x688 != 17 && i_this->mpModelMorf1->isStop()) {
                head_anm_init(i_this, 17, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0x6c4[1] == 0 && fVar1 < 1000.0f) {
                sVar1 = 1;
                OS_REPORT("E_gb NEAR ATTACK d\n");
            }

            if (i_this->field_0x6c4[0] == 0) {
                i_this->field_0x6c4[0] = cM_rndF(30.0f) + 10.0f;
                cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
                sp5c.x = cM_rndFX(100.0f);
                sp5c.y = l_HIO.field_0x8 * 450.0f + cM_rndFX(100.0f);
                sp5c.z = cM_rndFX(100.0f) + 200.0f;
                MtxPosition(&sp5c, &i_this->field_0x6a8);
                i_this->field_0x6a8 += i_this->field_0x6d4;
                i_this->field_0x6c0 = 0.0f;

                if (i_this->field_0x6c4[1] == 0 && fVar1 < 1500.0f) {
                    sVar1 = 1;
                }
            }

            sp68.x = cM_ssin(i_this->field_0x698 * 0x76C) * 30.0f;
            sp68.y = cM_ssin(i_this->field_0x698 * 0x898) * 30.0f;
            sp68.z = cM_scos(i_this->field_0x698 * 2000) * 30.0f;
            cLib_addCalc2(&a_this->current.pos.x, i_this->field_0x6a8.x + sp68.x, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&a_this->current.pos.z, i_this->field_0x6a8.z + sp68.z, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x6a8.y + sp68.y, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&i_this->field_0x6c0, 1.0f, 1.0f, 0.05f);
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x6b8, 8, 0x100);
    cLib_addCalcAngleS2(&a_this->shape_angle.y, i_this->field_0x6b8, 8, 0x800);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, i_this->field_0x6ba, 8, 0x400);

    if (sVar1 != 0) {
        a_this->speedF = 0.0f;
        i_this->field_0x69a = 1;
        i_this->field_0x69c = 0;
    }
}

/* 806C2560-806C2AB0 000960 0550+00 1/1 0/0 0/0 .text            e_gb_attack_1__FP10e_gb_class */
static void e_gb_attack_1(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp58, sp64;
    f32 fVar2 = 0.0f;
    f32 fVar3 = 20.0f;
    f32 fVar1 = (a_this->home.pos - dComIfGp_getPlayer(0)->current.pos).abs();

    switch (i_this->field_0x69c) {
        case 0:
            if (fVar1 < 1200.0f && cM_rndF(1.0f) < 0.5f) {
                i_this->field_0x69a = 2;
                i_this->field_0x69c = 0;
                i_this->field_0x6c4[0] = 0;
                return;
            }

            head_anm_init(i_this, 5, 5.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GB_V_ATTACK, -1);
            i_this->field_0x69c = 1;
            i_this->field_0x6c0 = 0.0f;
            break;

        case 1:
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x6b8, 2, 0x800);
            cLib_addCalcAngleS2(&a_this->current.angle.x, i_this->field_0x6ba, 2, 0x800);
            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);

            sp58.x = 0.0f;
            sp58.y = l_HIO.field_0x8 * 450.0f;
            sp58.z = 0.0f;
            MtxPosition(&sp58, &sp64);
            i_this->field_0x6a8 = i_this->field_0x6d4 + sp64;

            cLib_addCalc2(&a_this->current.pos.x, i_this->field_0x6a8.x, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&a_this->current.pos.z, i_this->field_0x6a8.z, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x6a8.y, 0.1f, i_this->field_0x6c0 * 30.0f);
            cLib_addCalc2(&i_this->field_0x6c0, 1.0f, 1.0f, 0.1f);

            if (i_this->mpModelMorf1->isStop()) {
                i_this->field_0x69c = 3;
                i_this->field_0x6c4[0] = l_HIO.field_0x1c;
                head_anm_init(i_this, 8, 1.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_GB_V_ATTACK_DASH, -1);
            }
            break;

        case 3:
            fVar2 = l_HIO.field_0x18;
            fVar3 = l_HIO.field_0x18 * 0.5f;
            if (i_this->field_0x6c4[0] == 0) {
                i_this->field_0x6c4[0] = l_HIO.field_0x1e;
                i_this->field_0x69c = 4;
            }
            break;

        case 4:
            if (i_this->field_0x6c4[0] == 0) {
                i_this->field_0x69a = 0;
                i_this->field_0x69c = 0;
                i_this->field_0x6c4[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x6c0 = 0.0f;
                return;
            }
            break;

        case 5:
            fVar3 = 5.0f;
            if (i_this->field_0x6c4[0] == 0 && fabsf(a_this->speedF) < 0.1f) {
                i_this->field_0x69a = 0;
                i_this->field_0x69c = 0;
                i_this->field_0x6c4[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x6c0 = 0.0f;
            }
    }

    cLib_addCalc2(&a_this->speedF, fVar2, 1.0f, fVar3);
    if (a_this->speedF >= 10.0f) {
        i_this->field_0xc20 = 1;
        if (i_this->field_0x69c != 5 && (i_this->mObjAcch.ChkWallHit() != 0 || i_this->mHeadSph.ChkAtShieldHit())) {
            i_this->field_0x69c = 5;
            i_this->field_0x948 = 5000;
            i_this->field_0x952 = 3000;
            i_this->field_0x94c = 3000.0f;

            head_anm_init(i_this, 17, 2.0f, 2, 1.0f);

            i_this->field_0x6c4[0] = 0;
            a_this->speedF = -30.0f;
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 8, 0x800);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 8, 0x400);
}

/* 806C2AB0-806C2FC0 000EB0 0510+00 1/1 0/0 0/0 .text            e_gb_attack_2__FP10e_gb_class */
static void e_gb_attack_2(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp60, sp6c;
    f32 fVar1 = 0.0f;
    f32 frame = i_this->mpModelMorf1->getFrame();

    switch (i_this->field_0x69c) {
        case 0:
            head_anm_init(i_this, 7, 5.0f, 2, 1.0f);
            i_this->field_0x6c4[0] = cM_rndF(10.0f) + 49.0f;
            i_this->field_0x69c = 1;
            i_this->mSound.startCreatureSound(Z2SE_EN_GB_V_DOSUN, 0, -1);
            break;

        case 1:
            a_this->speedF = 0.0f;
            a_this->speed.y = 0.0f;

            cLib_addCalc2(&a_this->current.pos.y, a_this->home.pos.y + 200.0f, 0.05f, 3.0f);
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x6b8, 2, 0x800);
            cLib_addCalcAngleS2(&a_this->current.angle.x, 0, 2, 0x800);
            cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 8, 0x800);
            cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 8, 0x400);

            if (i_this->field_0x6c4[0] == 0) {
                head_anm_init(i_this, 6, 2.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_GB_V_ATTACK, -1);
                i_this->mSound.startCreatureSound(Z2SE_EN_GB_DOSUN_DASH, 0, -1);
                i_this->field_0x69c = 2;
            }
            break;

        case 2:
            sp60.x = player->current.pos.x - a_this->current.pos.x;
            sp60.z = player->current.pos.z - a_this->current.pos.z;
            if (frame >= 16.0f) {
                a_this->speedF = 0.0f;
                fVar1 = 0.0f;
            } else if (frame >= 6.0f) {
                fVar1 = 50.0f;
                if (frame == 6.0f) {
                    a_this->speed.y = 50.0f;
                }

                if (JMAFastSqrt(sp60.x * sp60.x + sp60.z * sp60.z) < 100.0f) {
                    a_this->speedF = 0.0f;
                    fVar1 = 0.0f;
                }
            } else {
                a_this->speed.y = 0.0f;
            }

            if (frame >= 10.0f && frame <= 20.0f) {
                i_this->field_0xc20 = 1;
            }

            a_this->speedF = fVar1;
            if (a_this->speed.y <= 0.0f && a_this->current.pos.y <= (a_this->home.pos.y + 150.0f)) {
                a_this->current.pos.y = a_this->home.pos.y + 150.0f;
                if (a_this->speed.y < -30.0f) {
                    fopAcM_effSmokeSet1(&i_this->field_0xe74, &i_this->field_0xe78, &a_this->eyePos, NULL, 1.7f, &a_this->tevStr, 1);
                    dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
                    i_this->mSound.startCreatureSound(Z2SE_EN_GB_DOSUN, 0, -1);
                }

                a_this->speed.y = 0.0f;
                if (i_this->mpModelMorf1->isStop()) {
                    sp60 = a_this->current.pos - a_this->home.pos;
                    if (cM_rndF(1.0f) < 0.5f && sp60.abs() < 1000.0f) {
                        i_this->field_0x69c = 0;
                    } else {
                        i_this->field_0x69a = 0;
                        i_this->field_0x69c = 0;
                        i_this->field_0x6c4[0] = cM_rndF(10.0f) + 10.0f;
                        i_this->field_0x6c0 = 0.0f;
                    }
                }
            }
    }
}

/* 806C2FC0-806C3194 0013C0 01D4+00 1/1 0/0 0/0 .text            e_gb_damage__FP10e_gb_class */
static void e_gb_damage(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    cXyz sp24;
    s16 sVar1;

    i_this->field_0x6ce = 35;
    switch (i_this->field_0x69c) {
        case 0:
            i_this->field_0x69c = 1;
            sVar1 = a_this->current.angle.y;
            if ((s16)(i_this->field_0x6b8 - sVar1) < 0) {
                a_this->current.angle.y = sVar1 + 0x2000;
            } else {
                a_this->current.angle.y = sVar1 + -0x2000;
            }

            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            sp24.x = 0.0f;
            sp24.y = 50.0f;
            sp24.z = 800.0f;
            MtxPosition(&sp24, &i_this->field_0x6a8);
            i_this->field_0x6a8 += a_this->home.pos;
            a_this->speed.x = fabsf(a_this->current.pos.x - i_this->field_0x6a8.x) * 0.2f;
            a_this->speed.y = fabsf(a_this->current.pos.y - i_this->field_0x6a8.y) * 0.2f;
            a_this->speed.z = fabsf(a_this->current.pos.z - i_this->field_0x6a8.z) * 0.2f;
            i_this->field_0x6c4[0] = 15;
            // fallthrough
        case 1:
            if (i_this->field_0x6c4[0] == 0) {
                if (a_this->health <= 0) {
                    i_this->field_0x69a = 5;
                    i_this->field_0x69c = 0;
                } else {
                    i_this->field_0x69a = 0;
                    i_this->field_0x69c = -2;
                }
            }
    }

    cLib_addCalc2(&a_this->current.pos.x, i_this->field_0x6a8.x, 0.1f, a_this->speed.x);
    cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x6a8.y, 0.1f, a_this->speed.y);
    cLib_addCalc2(&a_this->current.pos.z, i_this->field_0x6a8.z, 0.1f, a_this->speed.z);
    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, 0, 4, 0x800);
}

/* 806C3194-806C33C8 001594 0234+00 1/1 0/0 0/0 .text            e_gb_end__FP10e_gb_class */
static void e_gb_end(e_gb_class* i_this) {
    // NONMATCHING
    static u16 eno[2] = {
        0x832F,
        0x8330,
    };

    fopEn_enemy_c* a_this = &i_this->actor;

    i_this->field_0x6ce = 20;
    switch (i_this->field_0x69c) {
        case 0:
            head_anm_init(i_this, 15, 30.0f, 0, 1.0f);
            i_this->field_0x69c = 1;
            break;

        case 1:
            i_this->field_0x69c = 2;
            i_this->mSound.startCreatureSound(Z2SE_EN_GB_BOMBROOT, 0, -1);
            break;

        case 2:
            if ((i_this->field_0x698 & 1) == 0) {
                i_this->field_0x828[i_this->field_0x939] = NULL;
                if (i_this->field_0x939 == 17) {
                    i_this->field_0x69c = 10;
                    fopAcM_createDisappear(a_this, &a_this->eyePos, 12, 0, a_this->field_0x564);
                    i_this->field_0x968 = 0;
                    i_this->field_0x69e = 3;
                    i_this->field_0x6a0 = 0;
                    i_this->field_0x6c4[0] = 80;
                    i_this->field_0x668 = 1;
                    i_this->mSound.stopAnime();
                    Z2GetAudioMgr()->unMuteSceneBgm(33);
                } else {
                    for (int i = 0; i < 2; i++) {
                        dComIfGp_particle_set(eno[i], &i_this->field_0x6e4[i_this->field_0x939], NULL, NULL);
                    }
                }

                i_this->field_0x939++;
            }
            break;

        case 10:
            break;
    }

    a_this->current.pos.y -= 5.0f;
}

/* 806C33C8-806C3558 0017C8 0190+00 1/1 0/0 0/0 .text            e_gb_start__FP10e_gb_class */
static void e_gb_start(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    cXyz sp28;

    i_this->field_0x6ce = 20;
    switch (i_this->field_0x69c) {
        case 0:
            i_this->field_0x69c = 1;
            head_anm_init(i_this, 17, 10.0f, 2, 1.0f);
            i_this->mDemoMode = 1;
            break;

        case 2:
            a_this->current.pos.set(-6112.0f, 4520.0f, 10800.0f);
            i_this->field_0x69c = 3;
            break;

        case 3:
            cLib_addCalc2(&a_this->current.pos.x, -5450.0f, 0.5f, 30.0f);
            break;

        case 4:
            cMtx_YrotS(*calc_mtx, a_this->home.angle.y);
            sp28.x = 20.0f;
            sp28.y = 500.0f;
            sp28.z = 0.0f;
            MtxPosition(&sp28, &i_this->field_0x6a8);
            i_this->field_0x6a8 += a_this->home.pos;

            cLib_addCalc2(&a_this->current.pos.x, i_this->field_0x6a8.x, 0.1f, 80.0f);
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x6a8.y, 0.1f, 80.0f);
            cLib_addCalc2(&a_this->current.pos.z, i_this->field_0x6a8.z, 0.1f, 80.0f);

            cLib_addCalcAngleS2(&a_this->current.angle.y, -0x4000, 16, 0x200);
            cLib_addCalcAngleS2(&a_this->shape_angle.y, 0x4000, 16, 0x200);
            cLib_addCalcAngleS2(&a_this->shape_angle.x, 0x2000, 16, 0x100);
    }
}

/* 806C3558-806C3904 001958 03AC+00 1/1 0/0 0/0 .text            kuki_control1__FP10e_gb_class */
static void kuki_control1(e_gb_class* i_this) {
    // NONMATCHING
    static f32 wav_d[17] = {
        0x00000000, 0x3E4CCCCD, 0x3ECCCCCD, 
        0x3F000000, 0x3F19999A, 0x3F4CCCCD, 0x3F800000,
        0x3F800000, 0x3F800000, 0x3F800000, 
        0x3F800000, 0x3F800000, 0x3F4CCCCD, 0x3F19999A,
        0x3ECCCCCD, 0x3E4CCCCD, 0x00000000,
    };

    static s16 pow_xa[17] = {
        0xD000, 0xD800, 0xE000, 0xE800, 0xF000,
        0x0000, 0x1000, 0x1800, 
        0x2000, 0x2800, 0x3000, 
        0x3800, 0x3000, 0x2000, 
        0x1000, 0x0000, 0x0000,
    };

    static s16 pow_xa_chance[17] = {
        0xC800, 0xD000, 0xD800, 0xE000, 0xE800,
        0xF000, 0xF800, 0x0000, 
        0x0000, 0x0000, 0x0000,
        0x0000, 0x0800, 0x0000,
        0x0800, 0x0000, 0x0800,
    };

    fopEn_enemy_c* a_this = &i_this->actor;
    cXyz sp9c, spa8, spb4;
    i_this->field_0x6e4[0] = i_this->field_0x6d4;
    cXyz spc0;

    sp9c.x = 0.0f;
    sp9c.y = 0.0f;
    sp9c.z = i_this->field_0x93c;
    spb4.x = 0.0f;
    spb4.z = 0.0f;
    spb4.y = -200.0f;
    f32 fVar1 = i_this->field_0x944;
    cXyz* pcVar1 = i_this->field_0x6e4;

    f32 fVar2, fVar3, fVar4, fVar5;
    for (int i = 1; i < 18; i++) {
        if (i_this->field_0x69a != 5) {
            if (i_this->field_0x94c > 1.0f) {
                fVar2 = i_this->field_0x94c * wav_d[i - 1] * 0.035f;
                fVar3 = fVar2 * cM_ssin(i_this->field_0x698 * 7000 + i * 7000);
                fVar2 *= cM_scos(i_this->field_0x698 * 0x1E14 + i * 5000);
            } else {
                fVar2 = 60.0f * wav_d[i - 1];
                fVar3 = fVar2 * cM_ssin(i_this->field_0x698 * 2000 + i * 7000);
                fVar2 *= cM_scos(i_this->field_0x698 * 0x8FC + i * 5000);
            }

            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            if (i_this->field_0x6e0 != 0) {
                cMtx_XrotM(*calc_mtx, pow_xa_chance[i - 1]);
            } else {
                cMtx_XrotM(*calc_mtx, pow_xa[i - 1]);
            }

            MtxScale(fVar1, fVar1, fVar1, 1);
            MtxPosition(&spb4, &spc0);
            fVar4 = fVar3 + (spc0.x + (pcVar1->x - pcVar1[-1].x));
            fVar5 = (pcVar1->y - pcVar1[-1].y) - spc0.y;
            fVar2 += spc0.z + (pcVar1->z - pcVar1[-1].z);
        } else {
            fVar2 = 20.0f * wav_d[i - 1];
            fVar3 = fVar2 * cM_ssin(i_this->field_0x698 * 0x44C + i * 7000);
            fVar2 *= cM_scos(i_this->field_0x698 * 0x5DC + i * 5000);
            fVar4 = fVar3 + (pcVar1->x - pcVar1[-1].x);
            fVar3 = pcVar1->y - 5.0f;
            
            if (fVar3 < (i_this->mObjAcch.GetGroundH() + 5.0f)) {
                fVar3 = i_this->mObjAcch.GetGroundH() + 5.0f;
            }

            fVar5 = fVar3 - pcVar1[-1].y;
            fVar2 += pcVar1->z - pcVar1[-1].z;
        }

        s16 sVar2 = cM_atan2s(fVar4, fVar2);
        s16 sVar3 = -cM_atan2s(fVar5, JMAFastSqrt(fVar4 * fVar4 + fVar2 * fVar2));
        cMtx_YrotS(*calc_mtx, sVar2);
        cMtx_XrotM(*calc_mtx, sVar3);
        MtxPosition(&sp9c, &spa8);
        *pcVar1 = pcVar1[-1] + spa8;
        pcVar1++;
    }
}

/* 806C3904-806C3A78 001D04 0174+00 1/1 0/0 0/0 .text            kuki_control2__FP10e_gb_class */
static void kuki_control2(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75BC-806C75C0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4612 = 17.0f;
COMPILER_STRIP_GATE(0x806C75BC, &lit_4612);
#pragma pop

/* 806C3A78-806C3C44 001E78 01CC+00 1/1 0/0 0/0 .text            kuki_control3__FP10e_gb_class */
static void kuki_control3(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75C0-806C75C4 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 110.0f;
COMPILER_STRIP_GATE(0x806C75C0, &lit_4650);
#pragma pop

/* 806C3C44-806C3D20 002044 00DC+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806C3D20-806C3F0C 002120 01EC+00 1/1 0/0 0/0 .text            damage_check__FP10e_gb_class */
static void damage_check(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C3F0C-806C44F8 00230C 05EC+00 2/1 0/0 0/0 .text            action__FP10e_gb_class */
static void action(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C44F8-806C451C 0028F8 0024+00 1/1 0/0 0/0 .text            e_gf_wait__FP10e_gb_class */
static void e_gf_wait(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C451C-806C4688 00291C 016C+00 1/1 0/0 0/0 .text            e_gf_chance__FP10e_gb_class */
static void e_gf_chance(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4688-806C48EC 002A88 0264+00 1/1 0/0 0/0 .text            e_gf_eatbomb__FP10e_gb_class */
static void e_gf_eatbomb(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75C4-806C75C8 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4802 = 35.0f;
COMPILER_STRIP_GATE(0x806C75C4, &lit_4802);
#pragma pop

/* 806C75C8-806C75CC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4979 = 4.0f;
COMPILER_STRIP_GATE(0x806C75C8, &lit_4979);
#pragma pop

/* 806C75CC-806C75D0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4980 = -6.0f;
COMPILER_STRIP_GATE(0x806C75CC, &lit_4980);
#pragma pop

/* 806C48EC-806C4AB4 002CEC 01C8+00 1/1 0/0 0/0 .text            e_gf_end__FP10e_gb_class */
static void e_gf_end(e_gb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806C75D0-806C75D4 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = 47.0f;
COMPILER_STRIP_GATE(0x806C75D0, &lit_5039);
#pragma pop

/* 806C4AB4-806C4CC4 002EB4 0210+00 1/1 0/0 0/0 .text            damage_check2__FP10e_gb_class */
static void damage_check2(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4CC4-806C4E28 0030C4 0164+00 1/1 0/0 0/0 .text            action2__FP10e_gb_class */
static void action2(e_gb_class* param_0) {
    // NONMATCHING
}

/* 806C4E28-806C4F0C 003228 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_gb_classf */
static void cam_3d_morf(e_gb_class* i_this, f32 param_2) {
    // NONMATCHING
}

/* 806C4F0C-806C59F4 00330C 0AE8+00 1/1 0/0 0/0 .text            demo_camera__FP10e_gb_class */
static void demo_camera(e_gb_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = &i_this->actor;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp1c, sp28, sp34, sp40;
    int swBit;

    switch (i_this->mDemoMode) {
        case 1:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 2;
            i_this->mDemoCamFovy = 55.0f;
            i_this->field_0xe92 = 0;
            camera->mCamera.SetTrimSize(3);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            i_this->field_0x674.set(-5750.0f, 4410.0f, 10684.0f);
            i_this->field_0x684 = 0x5000;
            i_this->mDemoCamCenter.set(-5689.0f, 4747.0f, 15000.0f);
            i_this->mDemoCamEye.set(-5700.0f, 4740.0f, 14644.0f);
            i_this->field_0xeb8.set(-5689.0f, 4740.0f, 14643.0f);
            i_this->field_0xeac.set(-5723.0f, 4733.0f, 14293.0f);
            i_this->field_0xec4.x = fabsf(i_this->field_0xeac.x - i_this->mDemoCamEye.x);
            i_this->field_0xec4.y = fabsf(i_this->field_0xeac.y - i_this->mDemoCamEye.y);
            i_this->field_0xec4.z = fabsf(i_this->field_0xeac.z - i_this->mDemoCamEye.z);
            i_this->field_0xed0.x = fabsf(i_this->field_0xeb8.x - i_this->mDemoCamCenter.x);
            i_this->field_0xed0.y = fabsf(i_this->field_0xeb8.y - i_this->mDemoCamCenter.y);
            i_this->field_0xed0.z = fabsf(i_this->field_0xeb8.z - i_this->mDemoCamCenter.z);
            i_this->field_0xee4 = 0.0;

            Z2GetAudioMgr()->setBattleBgmOff(true);
            dComIfGp_getEvent().startCheckSkipEdge(a_this);
            swBit = (fopAcM_GetParam(a_this) & 0xFF00) >> 8;
            dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
            // fallthrough
        case 2:
            sp28.set(-5700.0f, 4350.0f, 9670.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp28, 0, 0);
            if (i_this->field_0xe92 > 50) {
                cam_3d_morf(i_this, 0.1f);
                cLib_addCalc2(&i_this->field_0xee4, 0.02f, 1.0f, 0.0005f);
            }

            if (i_this->field_0xe92 != 170) break;
            i_this->mDemoCamCenter.set(-5690.0f, 4432.0f, 9610.0f);
            i_this->mDemoCamEye.set(-5709.0f, 4445.0f, 9961.0f);
            i_this->field_0xeb8.set(-5741.0f, 4432.0f, 10530.0f);
            i_this->field_0xeac.set(-5760.0f, 4496.0f, 10896.0f);
            i_this->field_0xec4.x = fabsf(i_this->field_0xeac.x - i_this->mDemoCamEye.x);
            i_this->field_0xec4.y = fabsf(i_this->field_0xeac.y - i_this->mDemoCamEye.y);
            i_this->field_0xec4.z = fabsf(i_this->field_0xeac.z - i_this->mDemoCamEye.z);
            i_this->field_0xed0.x = fabsf(i_this->field_0xeb8.x - i_this->mDemoCamCenter.x);
            i_this->field_0xed0.y = fabsf(i_this->field_0xeb8.y - i_this->mDemoCamCenter.y);
            i_this->field_0xed0.z = fabsf(i_this->field_0xeb8.z - i_this->mDemoCamCenter.z);
            i_this->field_0xee4 = 0.0f;
            i_this->mDemoMode = 3;
            i_this->mDemoCamFovy = 55.0f;
            i_this->field_0xe92 = 0;
            // fallthrough
        case 3:
            if (i_this->field_0xe92 > 30) {
                cam_3d_morf(i_this, 0.1f);
                cLib_addCalc2(&i_this->field_0xee4, 0.02f, 1.0f, 0.0005f);
            }

            if (i_this->field_0xe92 == 130) {
                i_this->field_0x69c++;
            }

            if (i_this->field_0xe92 == 135) {
                i_this->mSound.startCreatureSound(Z2SE_EN_GB_SWINGHEAD, 0, -1);
            }

            if (i_this->field_0xe92 == 143) {
                i_this->field_0x670 = 2;
            }

            if (i_this->field_0xe92 == 162) {
                daPy_getPlayerActorClass()->changeDemoMode(23, 1, 2, 0);
            }

            if (i_this->field_0xe92 != 190) break;
            i_this->field_0x69c++;
            i_this->mDemoMode = 4;
            i_this->field_0xe92 = 0;
            body_anm_init(i_this, 24, 5.0f, 0, 1.0f);
            mDoAud_seStart(Z2SE_EN_GF_OPEN, &a_this->home.pos, 0, 0);
            i_this->mDemoCamCenter.set(-5706.0f, 4526.0f, 11379.0f);
            i_this->mDemoCamEye.set(-5687.0f, 4505.0f, 11008.0f);
            i_this->field_0xeb8.set(-5624.0f, 4439.0f, 9818.0f);
            i_this->field_0xeac.set(-5604.0f, 4418.0f, 9447.0f);
            i_this->field_0xec4.x = fabsf(i_this->field_0xeac.x - i_this->mDemoCamEye.x);
            i_this->field_0xec4.y = fabsf(i_this->field_0xeac.y - i_this->mDemoCamEye.y);
            i_this->field_0xec4.z = fabsf(i_this->field_0xeac.z - i_this->mDemoCamEye.z);
            i_this->field_0xed0.x = fabsf(i_this->field_0xeb8.x - i_this->mDemoCamCenter.x);
            i_this->field_0xed0.y = fabsf(i_this->field_0xeb8.y - i_this->mDemoCamCenter.y);
            i_this->field_0xed0.z = fabsf(i_this->field_0xeb8.z - i_this->mDemoCamCenter.z);
            i_this->field_0xee4 = 0.0f;
            i_this->mDemoCamCenter.y = 4584.0f;
            // fallthrough
        case 4:
            if (i_this->field_0xe92 == 48) {
                head_anm_init(i_this, 14, 5.0f, 0, 1.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_GB_DROPKEY, 0, -1);
            }

            if (i_this->field_0xe92 == 54) {
                head_anm_init(i_this, 14, 5.0f, 0, 1.0f);
                i_this->field_0x674 = a_this->home.pos;
                i_this->field_0x674.y += 400.0f;
                i_this->field_0x670 = 1;
            }

            if (i_this->field_0xe92 == 68) {
                body_anm_init(i_this, 21, 5.0f, 0, 1.0f);
                mDoAud_seStart(Z2SE_EN_GF_CLOSE, &a_this->home.pos, 0, 0);
                i_this->field_0x955 = 0;
            }

            if (i_this->field_0xe92 > 150) {
                cam_3d_morf(i_this, 0.2f);
                cLib_addCalc2(&i_this->field_0xee4, 0.04f, 1.0f, 0.002f);
            } else if (i_this->field_0xe92 >= 80) {
                cLib_addCalc2(&i_this->mDemoCamCenter.y, 4526.0f, 0.05f, 1.0f);
            }

            if (i_this->field_0x68c == 21 && i_this->mpModelMorf2->isStop()) {
                body_anm_init(i_this, 26, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0xe92 == 220) {
                i_this->mDemoMode = 100;
                i_this->field_0x69a = 0;
                i_this->field_0x69c = 0;
                i_this->field_0x69e = 0;
                i_this->field_0x6a0 = 0;
                Z2GetAudioMgr()->setBattleBgmOff(false);
            }
            break;

        case 10:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 11;
            i_this->mDemoCamFovy = 55.0;
            i_this->field_0xe92 = 0;
            camera->mCamera.SetTrimSize(3);
            // fallthrough
        case 11:
            i_this->mDemoCamCenter = a_this->home.pos;
            i_this->mDemoCamCenter.y += 100.0f;
            i_this->mDemoCamEye = a_this->home.pos;
            i_this->mDemoCamEye.y += 300.0f;
            i_this->mDemoCamEye.z += -600.0f;

            if (i_this->field_0xe92 == 100) {
                i_this->mDemoMode = 100;
            }
            break;

        case 100:
            camera->mCamera.Reset(i_this->mDemoCamCenter, i_this->mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->mDemoMode = 0;
            break;

        case 0:
            break;
    }

    if (i_this->mDemoMode != 0) {
        camera->mCamera.Set(i_this->mDemoCamCenter, i_this->mDemoCamEye, i_this->mDemoCamFovy, 0);
        i_this->field_0xe92++;

        if (i_this->mDemoMode < 10) {
            dComIfGp_getEvent().setSkipProc(i_this, dEv_defaultSkipProc, 0);
            if (dComIfGp_getEvent().checkSkipEdge()) {
                i_this->mDemoMode = 100;
                cMtx_YrotS(*calc_mtx, player->shape_angle.y);
                sp1c.x = 0.0;
                sp1c.y = 100.0f;
                sp1c.z = -250.0f;
                MtxPosition(&sp1c, &i_this->mDemoCamEye);
                i_this->mDemoCamEye += player->current.pos;
                i_this->mDemoCamCenter = player->current.pos;
                i_this->mDemoCamCenter.y += 120.0f;
                i_this->field_0x69a = 0;
                i_this->field_0x69c = 0;
                i_this->field_0x69e = 0;
                i_this->field_0x6a0 = 0;
                body_anm_init(i_this, 26, 1.0f, 2, 1.0f);
                i_this->field_0x66c = NULL;
                i_this->field_0x686 = 0;
                i_this->field_0x955 = 0;
                Z2GetAudioMgr()->setBattleBgmOff(false);
            }
        }
    }
}

/* 806C59F4-806C64A0 003DF4 0AAC+00 2/1 0/0 0/0 .text            daE_GB_Execute__FP10e_gb_class */
static int daE_GB_Execute(e_gb_class* i_this) {
    // NONMATCHING
    static u16 key_eno[2] = {
        0x827A,
        0x827B,
    };

    fopEn_enemy_c* a_this = &i_this->actor;
    cXyz sp50, sp5c;

    i_this->field_0x698++;

    for (int i = 0; i < 5; i = i + 1) {
        if (i_this->field_0x6c4[i] != 0) {
            i_this->field_0x6c4[i]--;
        }
    }

    if (i_this->field_0x6ce != 0) {
        i_this->field_0x6ce--;
    }

    if (i_this->field_0x6d0 != 0) {
        i_this->field_0x6d0--;
    }

    action(i_this);
    if (i_this->field_0x668 == 0) {
        i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    }

    action2(i_this);
    mDoMtx_stack_c::transS(a_this->current.pos.x,a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x950);
    mDoMtx_stack_c::XrotM(i_this->field_0x952);
    mDoMtx_stack_c::YrotM(-i_this->field_0x950);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.field_0x8, l_HIO.field_0x8, l_HIO.field_0x8);

    J3DModel* model = i_this->mpModelMorf1->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpModelMorf1->play(NULL, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)), 0);
    i_this->mpModelMorf1->modelCalc();
    MTXCopy(model->getAnmMtx(3), *calc_mtx);

    if (i_this->field_0x968 != 0) {
        sp50.set(20.0f, 0.0f, -50.0f);
        MtxPosition(&sp50, &a_this->eyePos);
        a_this->attention_info.position = a_this->eyePos;
        a_this->attention_info.position.y += 50.0f;

        JPABaseEmitter* baseEmitter;
        if (i_this->field_0x688 == 16) {
            i_this->field_0xe6c = dComIfGp_particle_set(i_this->field_0xe6c, 0x82E7, &a_this->current.pos, NULL, NULL);

            baseEmitter = dComIfGp_particle_getEmitter(i_this->field_0xe6c);
            if (baseEmitter != NULL) {
                baseEmitter->setGlobalSRTMatrix(model->getAnmMtx(3));
            }

            if (i_this->mpModelMorf1->checkFrame(8.0f)) {                
                i_this->mSound.startCreatureVoice(Z2SE_EN_GB_V_NODAMAGE, -1);
            }
        }

        if (i_this->field_0x688 == 11) {
            i_this->field_0xe70 = dComIfGp_particle_set(i_this->field_0xe70, 0x82E6, &a_this->current.pos, NULL, NULL);

            baseEmitter = dComIfGp_particle_getEmitter(i_this->field_0xe70);
            if (baseEmitter != NULL) {
                baseEmitter->setGlobalSRTMatrix(model->getAnmMtx(3));
            }
        }

        if (i_this->field_0x688 == 17 && i_this->mpModelMorf1->checkFrame(1.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_GB_V_WAIT, -1);
        }
    }

    sp50.set(50.0f, 0.0f, 0.0f);
    MtxPosition(&sp50, &sp5c);

    if (i_this->field_0x6ce != 0) {
        sp5c.x += 10000.0f;
    }

    i_this->mHeadSph.SetC(sp5c);
    if (i_this->field_0x6bc > 500.0f && daPy_py_c::checkBoomerangChargeTime() != 0) {
        i_this->mHeadSph.SetR(l_HIO.field_0x8 * 160.0f);
    } else {
        i_this->mHeadSph.SetR(l_HIO.field_0x8 * 80.0f);
    }

    dComIfG_Ccsp()->Set(&i_this->mHeadSph);
    if (i_this->field_0xc20 != 0) {
        i_this->mHeadSph.OnAtSetBit();
        i_this->field_0xc20 = 0;
    } else {
        i_this->mHeadSph.OffAtSetBit();
    }

    mDoMtx_stack_c::transS(a_this->home.pos.x, a_this->home.pos.y, a_this->home.pos.z);
    mDoMtx_stack_c::YrotM(a_this->home.angle.y);
    mDoMtx_stack_c::scaleM(l_HIO.field_0xc, l_HIO.field_0xc, l_HIO.field_0xc);
    model = i_this->mpModelMorf2->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpModelMorf2->play(NULL, 0, 0);
    i_this->mBrkAnm->play();
    i_this->mpModelMorf2->modelCalc();

    if ((i_this->field_0x68c == 25 || i_this->field_0x68c == 26) && i_this->mpModelMorf2->checkFrame(1.0f)) {
        mDoAud_seStart(Z2SE_EN_GF_WAIT, &a_this->home.pos, 0, 0);
    }

    if (i_this->field_0x968 == 0) {
        a_this->eyePos = a_this->home.pos;
        a_this->eyePos.y += 150.0f;
        a_this->attention_info.position = a_this->eyePos;
        a_this->attention_info.position.y += 50.0f;
    }

    i_this->mBodyCyl.SetC(a_this->home.pos);
    i_this->mBodyCyl.SetR(l_HIO.field_0xc * 170.0f);
    i_this->mBodyCyl.SetH(l_HIO.field_0xc * 100.0f);
    dComIfG_Ccsp()->Set(&i_this->mBodyCyl);

    if (i_this->field_0x66c != NULL) {
        if (i_this->field_0x670 == 1) {
            i_this->field_0x674.y += i_this->field_0x680;
            i_this->field_0x680 -= 3.0f;
            i_this->field_0x686 += -0xC00;

            if (i_this->field_0x674.y < a_this->home.pos.y) {
                i_this->field_0x686 = 0;
                i_this->field_0x66c = NULL;
            }
        } else if (i_this->field_0x670 == 2) {
            MTXCopy(model->getAnmMtx(5), *calc_mtx);
            sp50.set(-30.0f, 0.0f, 0.0f);
            MtxPosition(&sp50, &i_this->field_0x674);
        }

        if (i_this->field_0x66c != NULL) {
            mDoMtx_stack_c::transS(i_this->field_0x674.x, i_this->field_0x674.y, i_this->field_0x674.z);
            mDoMtx_stack_c::YrotM(i_this->field_0x684);
            mDoMtx_stack_c::XrotM(i_this->field_0x686);
            mDoMtx_stack_c::XrotM(0x4000);
            f32 fVar1 = 1.5f;
            mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);
            i_this->field_0x66c->setBaseTRMtx(mDoMtx_stack_c::get());
            sp5c = i_this->field_0x674;
            for (int i = 0; i < 2; i++) {
                i_this->field_0xe62[i] = dComIfGp_particle_set(i_this->field_0xe62[i], key_eno[i], &sp5c, NULL, NULL);
            }
        }
    }

    f32 fVar2 = i_this->field_0x964 * 0.001f;

    for (int i = 0; i < 3; i++) {
        if (i_this->field_0x92c[i] == 0) {
            if (i_this->field_0x938 == 2) {
                i_this->field_0x938 = 0;
                i_this->field_0x92c[i] = 2;
                i_this->field_0x932[i] = 11;
                i_this->field_0x928 = 2.0f;
                i_this->field_0x924 = 4000;
                break;
            }
        } else {
            if (i_this->field_0x92c[i] == 1) {
                if (i_this->field_0x935[i] == 0) {
                    i_this->field_0x935[i] = 1;
                    i_this->field_0x900[i_this->field_0x932[i]] = 1;
                    i_this->field_0x932[i]++;
                    if (i_this->field_0x932[i] >= 18) {
                        i_this->field_0x92c[i] = 0;
                    }
                }
            } else if (i_this->field_0x935[i] == 0) {
                i_this->field_0x935[i] = 1;
                i_this->field_0x900[i_this->field_0x932[i]] = 1;
                i_this->field_0x932[i]--;
                if (i_this->field_0x932[i] < 0) {
                    i_this->field_0x92c[i] = 0;
                }
            }

            if (i_this->field_0x935[i] != 0) {
                i_this->field_0x935[i]--;
            }
        }
    }

    for (int i = 0; i < 18; i = i + 1) {
        if (i_this->field_0x828[i] != NULL) {
            if (i_this->field_0x900[i] != 0) {
                i_this->field_0x900[i] +=i_this->field_0x924;

                if (i_this->field_0x900[i] < 0) {
                    i_this->field_0x900[i] = 0;
                }

                i_this->field_0x8b8[i] = i_this->field_0x928 * cM_ssin(i_this->field_0x900[i]) + 1.0f;
            }

            MtxTrans(i_this->field_0x6e4[i].x, i_this->field_0x6e4[i].y, i_this->field_0x6e4[i].z, 0);
            cMtx_XrotM(*calc_mtx, i_this->field_0x7bc[i].x);
            cMtx_YrotM(*calc_mtx, i_this->field_0x7bc[i].y + 0x8000);
            MtxScale(l_HIO.field_0x8 * i_this->field_0x8b8[i], l_HIO.field_0x8 * i_this->field_0x8b8[i], l_HIO.field_0x8 + fVar2, 1);
            MtxTrans(0.0f, 0.0f, 0.0f, 1);
            i_this->field_0x828[i]->setBaseTRMtx(*calc_mtx);
        }
    }

    demo_camera(i_this);
    return 1;
}

/* 806C64A0-806C64A8 0048A0 0008+00 1/0 0/0 0/0 .text            daE_GB_IsDelete__FP10e_gb_class */
static int daE_GB_IsDelete(e_gb_class* i_this) {
    return 1;
}

/* 806C64A8-806C651C 0048A8 0074+00 1/0 0/0 0/0 .text            daE_GB_Delete__FP10e_gb_class */
static int daE_GB_Delete(e_gb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    dComIfG_resDelete(&i_this->mPhase, "E_gb");
    if (i_this->field_0xef5 != 0) {
        data_806C7928 = 0;
    }

    if (a_this->heap != NULL && i_this->field_0x668 == 0) {
        i_this->mSound.stopAnime();
    }

    return 1;
}

/* 806C651C-806C6894 00491C 0378+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_gb_class* i_this = (e_gb_class*)a_this;
    
    i_this->mpModelMorf1 = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_gb", 29), NULL, NULL,
                                              (J3DAnmTransform*)dComIfG_getObjectRes("E_gb", 17), 2, 3.0f, 
                                              0, -1, 1, NULL, 0x80000, 0x11000084);
    if (i_this->mpModelMorf1 == NULL || i_this->mpModelMorf1->getModel() == NULL) {
        return 0;
    }

    i_this->mpModelMorf2 = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_gb", 31), NULL, NULL,
                                              (J3DAnmTransform*)dComIfG_getObjectRes("E_gb", 26), 2, 1.0f,
                                              0, -1, 1, NULL, 0x80000, 0x11000084);
    i_this->field_0x68c = 26;
    if (i_this->mpModelMorf2 == NULL || i_this->mpModelMorf2->getModel() == NULL) {
        return 0;
    }

    i_this->mBrkAnm = new mDoExt_brkAnm();
    if (i_this->mBrkAnm == NULL) {
        return 0;
    }

    if (i_this->mBrkAnm->init(i_this->mpModelMorf2->getModel()->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_gb", 35), 
                               1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    i_this->mBrkAnm->setPlaySpeed(0.0f);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_gb", 32);
    JUT_ASSERT(3378, modelData != 0);

    for (int i = 0; i < 18; i++) {
        i_this->field_0x828[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->field_0x828[i] == NULL) {
            return 0;
        }

        i_this->field_0x8b8[i] = 1.0f;
    }

    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("E_gb", 30);
        JUT_ASSERT(3395, modelData != 0);
        i_this->field_0x66c = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->field_0x66c == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 806C68DC-806C6B94 004CDC 02B8+00 1/0 0/0 0/0 .text            daE_GB_Create__FP10fopAc_ac_c */
static cPhs__Step daE_GB_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    static dCcD_SrcSph head_cc_sph_src = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
            {dCcD_SE_HARD_BODY, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    static dCcD_SrcCyl body_cyl_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x79}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x3}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            30.0f, // mRadius
            20.0f // mHeight
        } // mCyl
    };

    e_gb_class* i_this = (e_gb_class*)a_this;
    fopAcM_SetupActor(a_this, e_gb_class);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, "E_gb");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_gb PARAM %x\n", fopAcM_GetParam(a_this));
        u8 swBit = fopAcM_GetParam(a_this) >> 16;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                OS_REPORT("E_gb やられ後なので再セットしません\n")
                return cPhs_ERROR_e;
            }
        }

        i_this->field_0x5b4 = fopAcM_GetParam(a_this);
        i_this->field_0x5b5 = fopAcM_GetParam(a_this) >> 8;
        i_this->field_0x5b6 = fopAcM_GetParam(a_this) >> 16 & 15;
        i_this->field_0x5b7 = fopAcM_GetParam(a_this) >> 20 & 15;
        OS_REPORT("E_gb //////////////E_GB SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x4B000)) {
            OS_REPORT("//////////////E_GB SET NON !!\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("//////////////E_GB SET 2 !!\n");

        if (data_806C7928 == 0) {
            i_this->field_0xef5 = 1;
            data_806C7928 = 1;
            l_HIO.field_0x4 = -1;
        }

        a_this->attention_info.flags = 4;
        a_this->health = 90;
        a_this->field_0x560 = 90;

        i_this->mStts.Init(253, 0, a_this);
        i_this->mHeadSph.Set(head_cc_sph_src);
        i_this->mHeadSph.SetStts(&i_this->mStts);
        i_this->mBodyCyl.Set(body_cyl_src);
        i_this->mBodyCyl.SetStts(&i_this->mStts);
        i_this->mBodyCyl.OnTgNoHitMark();

        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1, &i_this->mAcchCir,
                            fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(150.0f, 150.0f);

        i_this->mAtInfo.mpSound = &i_this->mSound;
        i_this->mAtInfo.mPowerType = 8;

        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        i_this->mSound.setEnemyName("E_gb");
        
        i_this->field_0x698 = cM_rndF(65535.0f);

        u32 swBit2 = fopAcM_GetParam(a_this) >> 8;
        s16 roomNo = fopAcM_GetRoomNo(a_this);
        if (roomNo == 7 && !dComIfGs_isSwitch(swBit2, roomNo)) {
            i_this->field_0x69a = 10;
        } else {
            i_this->field_0x69a = 0;
        }

        i_this->field_0x968 = 1;
        i_this->field_0x955 = 1;
        daE_GB_Execute(i_this);

        Z2GetAudioMgr()->muteSceneBgm(33, 0.0f);

        return cPhs_COMPLEATE_e;
    }

    return phase;
}

/* 806C6B94-806C6D34 004F94 01A0+00 1/1 0/0 0/0 .text            __ct__10e_gb_classFv */
e_gb_class::e_gb_class() {
    // NONMATCHING
}

/* 806C6D34-806C6DA4 005134 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806C6DA4-806C6E14 0051A4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806C6E14-806C6E5C 005214 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806C6E5C-806C6EA4 00525C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806C6EA4-806C6EEC 0052A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806C6EEC-806C6F48 0052EC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806C6F48-806C6F4C 005348 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 806C6F4C-806C6F50 00534C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 806C6F50-806C6F98 005350 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806C6FE0-806C701C 0053E0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gb_cpp */
void __sinit_d_a_e_gb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806C6FE0, __sinit_d_a_e_gb_cpp);
#pragma pop

/* 806C701C-806C7024 00541C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806C701C() {
    // NONMATCHING
}

/* 806C7024-806C702C 005424 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806C7024() {
    // NONMATCHING
}

/* 806C7440-806C747C 005840 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 806C747C-806C74B8 00587C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 806C74B8-806C74D4 0058B8 001C+00 1/1 0/0 0/0 .text            setPos__7daKey_cF4cXyz */
// void daKey_c::setPos(cXyz param_0) {
extern "C" void setPos__7daKey_cF4cXyz() {
    // NONMATCHING
}

/* 806C76B8-806C76B8 0001D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 806C784C-806C786C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GB_Method */
static actor_method_class l_daE_GB_Method = {
    (process_method_func)daE_GB_Create,
    (process_method_func)daE_GB_Delete,
    (process_method_func)daE_GB_Execute,
    (process_method_func)daE_GB_IsDelete,
    (process_method_func)daE_GB_Draw,
};

/* 806C786C-806C789C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GB */
extern actor_process_profile_definition g_profile_E_GB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GB,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_gb_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  139,                    // mPriority
  &l_daE_GB_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
