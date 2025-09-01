/**
 * @file d_a_e_sm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_sm.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "f_op/f_op_actor_enemy.h"
#include "d/actor/d_a_arrow.h"
#include "Z2AudioLib/Z2Instances.h"


//
// Forward References:
//

extern "C" void __ct__12daE_Sm_HIO_cFv();
extern "C" void SetAnm__8daE_SM_cFiiff();
extern "C" void Draw__8daE_SM_cFv();
extern "C" static void way_bg_check__FP8daE_SM_cf4cXyzs();
extern "C" static void other_bg_check__FP8daE_SM_cP10fopAc_ac_c();
extern "C" static void pl_check__FP8daE_SM_cf();
extern "C" static void move_check__FP8daE_SM_cPi();
extern "C" void Particle_Set__8daE_SM_cFUs4cXyz4cXyz5csXyz();
extern "C" void ArrowCheck__8daE_SM_cFv();
extern "C" void E_SM_Damage__8daE_SM_cFv();
extern "C" void SmDamageCheck__8daE_SM_cFv();
extern "C" void E_SM_Normal__8daE_SM_cFv();
extern "C" void E_SM_Move__8daE_SM_cFv();
extern "C" void E_SM_Attack__8daE_SM_cFv();
extern "C" void Action__8daE_SM_cFv();
extern "C" void E_SM_C_Normal__8daE_SM_cFv();
extern "C" void E_SM_C_Fight__8daE_SM_cFv();
extern "C" void E_SM_C_Near_Escape__8daE_SM_cFv();
extern "C" void E_SM_C_Far_Escape__8daE_SM_cFv();
extern "C" void E_SM_C_Home_Escape__8daE_SM_cFv();
extern "C" void E_SM_C_Escape__8daE_SM_cFv();
extern "C" void E_SM_C_Free__8daE_SM_cFv();
extern "C" void E_SM_C_Death__8daE_SM_cFv();
extern "C" void C_DamageCheck__8daE_SM_cFv();
extern "C" void E_SM_C_Hook__8daE_SM_cFv();
extern "C" void CheckViewArea__8daE_SM_cFv();
extern "C" void CameraSet__8daE_SM_cFv();
extern "C" void SetStopCam__8daE_SM_cF4cXyzffs();
extern "C" void SetCMoveCam__8daE_SM_cF4cXyzff();
extern "C" void SetStopingCam__8daE_SM_cFv();
extern "C" void SetReleaseCam__8daE_SM_cFv();
extern "C" void DemoStart__8daE_SM_cFv();
extern "C" void DemoMid__8daE_SM_cFv();
extern "C" void E_SM_C_Demo__8daE_SM_cFv();
extern "C" void CoreAction__8daE_SM_cFv();
extern "C" void ArrowOn__8daE_SM_cFv();
extern "C" void Execute__8daE_SM_cFv();
extern "C" void setSmBaseMtx__8daE_SM_cFv();
extern "C" void setBaseMtx__8daE_SM_cFv();
extern "C" void CoCoreSet__8daE_SM_cFv();
extern "C" void CoSmSet__8daE_SM_cFv();
extern "C" static bool daE_SM_IsDelete__FP8daE_SM_c();
extern "C" static void daE_SM_Delete__FP8daE_SM_c();
extern "C" static void daE_SM_Draw__FP8daE_SM_c();
extern "C" static void daE_SM_Execute__FP8daE_SM_c();
extern "C" static void daE_SM_Create__FP10fopAc_ac_c();
extern "C" void Delete__8daE_SM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void CreateHeap__8daE_SM_cFv();
extern "C" void initCoSph__8daE_SM_cFv();
extern "C" void Create__8daE_SM_cFv();
extern "C" void __ct__8daE_SM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_Sm_HIO_cFv();
extern "C" void __sinit_d_a_e_sm_cpp();
extern "C" static void func_8079816C();
extern "C" static void func_80798174();
extern "C" void __dt__5csXyzFv();
extern "C" extern char const* const d_a_e_sm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGndThinCellingOff__9dBgS_AcchFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

/* 807987C4-80798818 -00001 0054+00 1/1 0/0 0/0 .data            @5019 */
SECTION_DATA static void* lit_5019[21] = {
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x8C),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x44),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x120),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x6BC),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x388),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x7F8),
    (void*)(((char*)E_SM_C_Home_Escape__8daE_SM_cFv) + 0x624),
};

/* 80798818-80798838 -00001 0020+00 1/1 0/0 0/0 .data            @5683 */
SECTION_DATA static void* lit_5683[8] = {
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0x48),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0x64),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0x100),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0x74),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0xD4),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0xE0),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0x100),
    (void*)(((char*)CoreAction__8daE_SM_cFv) + 0xF8),
};

/* 80798838-80798878 0000AC 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5956 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbbdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_SOFT_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80798878-807988B8 0000EC 0040+00 1/1 0/0 0/0 .data            core_sph_src$5957 */
static dCcD_SrcSph core_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0x4000, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80798908-80798914 00017C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80798914-80798920 000188 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80798920-8079892C 000194 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8079892C-80798938 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80798938-80798944 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80798944-80798968 0001B8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80798174,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079816C,
};

/* 80798968-80798974 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__12daE_Sm_HIO_c */
SECTION_DATA extern void* __vt__12daE_Sm_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_Sm_HIO_cFv,
};

/* 8079222C-80792260 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__12daE_Sm_HIO_cFv */
daE_Sm_HIO_c::daE_Sm_HIO_c() {
    field_0x4 = -1;
    basic_size = 1.0f;
    pl_notice_dist = 1000.0f;
    core_size = 1.0f;
}

/* 80792260-8079230C 000120 00AC+00 13/13 0/0 0/0 .text            SetAnm__8daE_SM_cFiiff */
void daE_SM_c::SetAnm(int i_index, int i_attr, f32 i_rate, f32 i_morf) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_SM", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    mAnm = i_index;
}

/* 8079230C-80792604 0001CC 02F8+00 1/1 0/0 0/0 .text            Draw__8daE_SM_cFv */
int daE_SM_c::Draw() {
    J3DModel* model = mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (field_0x698 != 0) {
        J3DModelData* modelData = model->getModelData();
        J3DMaterial* material1 = modelData->getMaterialNodePointer(1);
        material1->getTevColor(0)->r = field_0x690 * -255.0f;
        material1->getTevColor(0)->g = field_0x690 * -255.0f;
        material1->getTevColor(0)->b = field_0x690 * -255.0f;

        J3DMaterial* material2 = modelData->getMaterialNodePointer(2);
        material2->getTevColor(0)->r = field_0x690 * -255.0f;
        material2->getTevColor(0)->g = field_0x690 * -255.0f;
        material2->getTevColor(0)->b = field_0x690 * -255.0f;
    }

    if (field_0x683 == 0) {
        mpModelMorf->entryDL();
    }

    if (field_0x9c4 != 0) {
        cXyz sp68;
        sp68.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp68, 400.0f, 100.0f, current.pos.y,
                                        field_0xa60.GetGroundH(), field_0xa60.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    if (field_0x684 == 0) {
        g_env_light.setLightTevColorType_MAJI(field_0x5b8, &tevStr);
        fopAcM_setEffectMtx(this, field_0x5b8->getModelData());
        field_0x5b8->getModelData()->getMaterialNodePointer(0)->getTevKColor(1)->a = field_0x694 * 167.0f;
        mDoExt_modelUpdateDL(field_0x5b8);
        dComIfGd_setSimpleShadow(&field_0x990, field_0xc78.GetGroundH(), (TREG_F(10) + 195.0f) * (field_0x6f0 / field_0x6e0),
                                 field_0xc78.m_gnd, 0, -field_0x6b8, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80792604-80792720 0004C4 011C+00 3/3 0/0 0/0 .text            way_bg_check__FP8daE_SM_cf4cXyzs */
static BOOL way_bg_check(daE_SM_c* i_this, f32 param_2, cXyz param_3, s16 param_4) {
    dBgS_LinChk lin_chk;
    cXyz sp94, i_start, i_end;

    i_start = param_3;
    i_start.y += 80.0f;
    cMtx_YrotS(*calc_mtx, param_4);
    sp94.x = 0.0f;
    sp94.y = 80.0f;
    sp94.z = param_2;
    MtxPosition(&sp94, &i_end);
    i_end += param_3;
    lin_chk.Set(&i_start, &i_end, i_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 80792720-807927F8 0005E0 00D8+00 1/1 0/0 0/0 .text            other_bg_check__FP8daE_SM_cP10fopAc_ac_c */
static BOOL other_bg_check(daE_SM_c* i_this, fopAc_ac_c* param_2) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz sp98, i_start, i_end;

    i_end = param_2->current.pos;
    i_end.y += 80.0f;
    i_start = a_this->current.pos;
    i_start.y += 80.0f;
    lin_chk.Set(&i_start, &i_end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 807927F8-8079285C 0006B8 0064+00 1/1 0/0 0/0 .text            pl_check__FP8daE_SM_cf */
static BOOL pl_check(daE_SM_c* i_this, f32 param_2) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (fabsf(i_this->current.pos.y - player->current.pos.y) < 500.0f && !other_bg_check(i_this, player)) {
        return TRUE;
    }

    return FALSE;
}

/* 8079285C-807928A4 00071C 0048+00 2/2 0/0 0/0 .text            move_check__FP8daE_SM_cPi */
static BOOL move_check(daE_SM_c* i_this, int* param_2) {
    *param_2 = -1;
    
    if (pl_check(i_this, i_this->field_0x970)) {
        *param_2 = 0;
    }
}

/* 807928A4-80792914 000764 0070+00 1/1 0/0 0/0 .text            Particle_Set__8daE_SM_cFUs4cXyz4cXyz5csXyz */
void daE_SM_c::Particle_Set(u16 i_resID, cXyz i_scale, cXyz i_pos, csXyz i_rotation) {
    dComIfGp_particle_set(i_resID, &i_pos, &tevStr, &i_rotation, &i_scale);
}

/* 80792914-80792C20 0007D4 030C+00 1/1 0/0 0/0 .text            ArrowCheck__8daE_SM_cFv */
void daE_SM_c::ArrowCheck() {
    cXyz* tgHitPosP = mCoSm.GetTgHitPosP();
    field_0x6d4 = 10;
    
    if (((daArrow_c*)mAtInfo.mpActor)->changeActorControll()) {
        field_0x6f9[field_0x6f8] = 1;
        daArrow_c* arrow_p;
        fopAcM_SearchByID(field_0x718[field_0x6f8], (fopAc_ac_c**)&arrow_p);

        if (arrow_p != NULL) {
            arrow_p->deleteArrow();
        }

        if (tgHitPosP != NULL) {
            field_0x718[field_0x6f8] = fopAcM_GetID(mAtInfo.mpActor);
            cXyz sp64(field_0x990 - *tgHitPosP);
            sp64.y += field_0x6f0 * (KREG_F(1) + 70.0f);
            field_0x808[field_0x6f8].y = cM_rndFX(1000.0f) + cM_atan2s(sp64.x, sp64.z);
            field_0x808[field_0x6f8].x = cM_rndFX(1000.0f) + -(cM_atan2s(sp64.y, JMAFastSqrt(sp64.x * sp64.x + sp64.z * sp64.z)));

            f32 fVar1 = 230.0f;
            if (field_0x808[field_0x6f8].x < 0) {
                fVar1 = HREG_F(10) + 130.0f;
            }

            field_0x790[field_0x6f8] = field_0x6f0 * -fVar1;
            field_0x8bc[field_0x6f8].y = mAtInfo.mpActor->shape_angle.y - field_0x808[field_0x6f8].y;
            field_0x8bc[field_0x6f8].x = mAtInfo.mpActor->shape_angle.x - field_0x808[field_0x6f8].x;
            field_0x6f8++;

            if (field_0x6f8 == 30) {
                field_0x6f8 = 0;
            }
        }
    }

    if (mAction != 5 && mAction != 1) {
        mAction = 2;
    }

    field_0x6dc = XREG_F(12) + 0.05f + cM_rndFX(XREG_F(13) + 0.01f);
    field_0x978 = cM_rndFX(0.1f) + -0.3f;
    field_0x6c0[0] = 50;
    field_0x980 = XREG_F(14) + 2500.0f;
}

/* 80792C20-80792E70 000AE0 0250+00 3/3 0/0 0/0 .text            E_SM_Damage__8daE_SM_cFv */
void daE_SM_c::E_SM_Damage() {
    field_0x6bc += (s16)((field_0x980 + 1000.0f) / field_0x6f0);
    mCoSm.OffAtSetBit();

    if (field_0x6c0[0] != 0) {
        f32 fVar1;

        if (field_0x685 == 1) {
            fVar1 = field_0x978 * cM_ssin(field_0x6be);
        } else {
            fVar1 = field_0x978;
        }

        field_0x6be += (s16)(3000.0f / field_0x6f0);
        cLib_addCalc2(&field_0x6e4, field_0x974, 0.3f, 1.0f);
        cLib_addCalc2(&field_0x6e0, fVar1 + 1.0f, 0.3f, 1.0f);
        cLib_addCalc2(&field_0x6dc, field_0x97c + 0.005f, 0.05f, 0.5f);
        cLib_addCalc2(&field_0x980, 0.0f, 0.01f, 1000.0f);
        cLib_chaseF(&field_0x974, 0.0f, 0.01f);
        cLib_chaseF(&field_0x978, 0.0f, 0.105f);
        cLib_chaseF(&field_0x97c, 0.0f, 0.03f);
    } else {
        field_0x685 = 0;

        if (mCoreAction != 4 && health > 0 && mCoreAction != 7 && mAction != 5 && mAction != 1) {
            if (mCoreAction != 3 && mCoreAction != 5) {
                if (mAnm == 0x1E) {
                    if (mpModelMorf->isStop()) {
                        SetAnm(0x14, J3DFrameCtrl::EMode_LOOP, 1.0f, 3.0f);
                        mAction = 0;
                        field_0x98a = 0;
                    }
                } else {
                    SetAnm(0x14, J3DFrameCtrl::EMode_LOOP, 1.0f, 3.0f);
                    mAction = 0;
                    field_0x98a = 0;
                }
            } else {
                mAction = 3;
                field_0x98a = 0;
            }
        }
    }
}

/* ############################################################################################## */
/* 8079866C-80798670 00008C 0004+00 0/1 0/0 0/0 .rodata          @4460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4460 = 15.0f;
COMPILER_STRIP_GATE(0x8079866C, &lit_4460);
#pragma pop

/* 80798670-80798674 000090 0004+00 0/7 0/0 0/0 .rodata          @4461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4461 = 20.0f;
COMPILER_STRIP_GATE(0x80798670, &lit_4461);
#pragma pop

/* 80798674-80798678 000094 0004+00 0/7 0/0 0/0 .rodata          @4462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4462 = 5.0f;
COMPILER_STRIP_GATE(0x80798674, &lit_4462);
#pragma pop

/* 80798678-80798680 000098 0004+04 0/2 0/0 0/0 .rodata          @4463 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4463[1 + 1 /* padding */] = {
    3.0f / 50.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80798678, &lit_4463);
#pragma pop

/* 80798680-80798688 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4464 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4464[8] = {
    0xBF, 0xD6, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66,
};
COMPILER_STRIP_GATE(0x80798680, &lit_4464);
#pragma pop

/* 80798688-8079868C 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = 1.5f;
COMPILER_STRIP_GATE(0x80798688, &lit_4465);
#pragma pop

/* 80792E70-807936B4 000D30 0844+00 1/1 0/0 0/0 .text            SmDamageCheck__8daE_SM_cFv */
void daE_SM_c::SmDamageCheck() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz pos = fopAcM_GetPosition(player);

    if (field_0x6d4 != 0) {
        mCoSm.ClrTgHit();
        mCoSm.ClrAtHit();
        return;
    }

    field_0xe50.Move();
    field_0xe8c.Move();

    if (mCoSm.ChkAtHit()) {
        field_0x6d4 = 10;
        s16 sVar1 = cLib_targetAngleY(&field_0x990, &pos);

        if (!player->checkPlayerGuard()) {
            player->setThrowDamage(sVar1, 15.0f, 20.0f, 1, 0, 0);
        }

        mCoSm.ClrAtHit();
        return;
    }

    if (!mCoSm.ChkTgHit()) {
        cXyz* hookshotTopPos = player->getHookshotTopPos();
        if (hookshotTopPos == NULL) {
            return;
        }

       cXyz sp34(field_0x990);
       sp34.y += 100.0f;
       
        if (sp34.abs(*hookshotTopPos) >= field_0x6f0 * 100.0f) {
            return;
        }

        if (!daPy_getPlayerActorClass()->checkHookshotShootReturnMode()) {
            return;
        }

        field_0x6be = 0;
        field_0x6c0[0] = 50;
        field_0x685 = 0;
        field_0x9a8 = 0.0f;
        field_0x6dc = cM_rndF(0.01f) + 0.05f;
        field_0x978 = cM_rndFX(0.05f) + -0.3f;
        field_0x97c = 0.0f;
        field_0x6c0[0] = 50;
        field_0x980 = 2500.0f;

        mSoundSimple.startSound(Z2SE_EN_SC_SL_REBOUND, 0, -1);
        mAction = 2;
        cLib_addCalc2(&field_0x69c, 0.0f, 0.05f, 100.0f);
        return;
    }

    field_0xa10 = 1;
    mAtInfo.mpCollider = mCoSm.GetTgHitObj();
    at_power_check(&mAtInfo);
    field_0x6d4 = 10;

    if (mCoreAction == 3 && (field_0x6b6 == 7 || field_0x6b6 == 6)) {
        field_0x6d4 = 0;
        mCoSm.ClrTgHit();
    }

    if (mAction != 5 && mAction != 1 && mCoreAction != 3 && mCoreAction != 4) {
        if (mAnm == 30 || mAnm == 0x15) {
            if (mpModelMorf->isStop()) {
                int iVar1;
                move_check(this, &iVar1);
                if (iVar1 < 0) {
                    if (cM_rndF(1.0f) >= 0.5f) {
                        SetAnm(0x1E, J3DFrameCtrl::EMode_NONE, 1.0f, 5.0f);
                        mSound.startCreatureVoice(Z2SE_EN_SC_V_WHISTLE, -1);
                    } else {
                        SetAnm(0x15, J3DFrameCtrl::EMode_NONE, 1.0f, 5.0f);
                        mSound.startCreatureVoice(Z2SE_EN_SC_V_PROVOKE, -1);
                    }
                } else {
                    mAction = 5;
                    field_0x98a = 0;
                }
            }
        } else {
            if (cM_rndF(1.0f) < 0.5f) {
                SetAnm(0x15, J3DFrameCtrl::EMode_NONE, 1.0f, 5.0f);
                mSound.startCreatureVoice(Z2SE_EN_SC_V_PROVOKE, -1);
            } else {
                SetAnm(0x1E, J3DFrameCtrl::EMode_NONE, 1.0f, 5.0f);
                mSound.startCreatureVoice(Z2SE_EN_SC_V_WHISTLE, -1);
            }
        }
    }
    
    field_0x6be = 0;
    field_0x6c0[0] = 50;
    field_0x685 = 0;
    field_0x9a8 = 0.0f;
    speedF = 0.0f;
    field_0x6dc = 0.06f;
    field_0x97c = 0.0f;
    field_0x980 = 2500.0f;
    mCoSm.OffAtSetBit();

    s16 sVar2;
    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW)) {
        mSoundSimple.startSound(Z2SE_EN_SC_SL_REBOUND, 0, -1);
        ArrowCheck();
        sVar2 = mAction;
    } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
        field_0x6dc = 0.06f;
        field_0x978 += -0.35f;
        field_0x97c = 0.0f;
        field_0x6c0[0] = 50;
        field_0x980 = 2500.0f;
        mSoundSimple.startSound(Z2SE_EN_SC_SL_REBOUND, 0, -1);
        sVar2 = mAction;
    } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
        mCoCore.OnTgSetBit();
        mCoCore.OffTgNoHitMark();
        field_0x684 = 1;
        mCoSm.ClrTgHit();
        field_0x6d4 = 10;
        field_0x682 = 1;
        cXyz i_scale(1.5f, 1.5f, 1.5f);
        dComIfGp_particle_set(0x85BF, &current.pos, &tevStr, &current.angle, &i_scale);
    }
}

/* ############################################################################################## */
/* 8079868C-80798690 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4542 = -9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8079868C, &lit_4542);
#pragma pop

/* 80798690-80798694 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4543 = 32767.0f;
COMPILER_STRIP_GATE(0x80798690, &lit_4543);
#pragma pop

/* 80798694-80798698 0000B4 0004+00 0/4 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4544 = 50.0f;
COMPILER_STRIP_GATE(0x80798694, &lit_4544);
#pragma pop

/* 80798698-8079869C 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = -0.0f;
COMPILER_STRIP_GATE(0x80798698, &lit_4545);
#pragma pop

/* 8079869C-807986A0 0000BC 0004+00 0/3 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4546 = 2.0f;
COMPILER_STRIP_GATE(0x8079869C, &lit_4546);
#pragma pop

/* 807986A0-807986A4 0000C0 0004+00 0/5 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4547 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807986A0, &lit_4547);
#pragma pop

/* 807989C0-807989CC 000048 000C+00 1/1 0/0 0/0 .bss             @3936 */
static u8 lit_3936[12];

/* 807989CC-807989E0 000054 0014+00 4/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 807989E0-807989E4 000068 0004+00 3/4 0/0 0/0 .bss             s_Dis__22@unnamed@d_a_e_sm_cpp@ */
static u8 data_807989E0[4];

/* 807989E4-807989E8 00006C 0002+02 9/10 0/0 0/0 .bss s_TargetAngle__22@unnamed@d_a_e_sm_cpp@ */
static u8 data_807989E4[2 + 2 /* padding */];

/* 807936B4-80793B64 001574 04B0+00 1/1 0/0 0/0 .text            E_SM_Normal__8daE_SM_cFv */
void daE_SM_c::E_SM_Normal() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986A4-807986A8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4548 = 700.0f;
COMPILER_STRIP_GATE(0x807986A4, &lit_4548);
#pragma pop

/* 807986A8-807986AC 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4587 = 1500.0f;
COMPILER_STRIP_GATE(0x807986A8, &lit_4587);
#pragma pop

/* 807986AC-807986B0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = 45.0f;
COMPILER_STRIP_GATE(0x807986AC, &lit_4588);
#pragma pop

/* 807986B0-807986B4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4589 = 8.0f;
COMPILER_STRIP_GATE(0x807986B0, &lit_4589);
#pragma pop

/* 807986B4-807986B8 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4590 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x807986B4, &lit_4590);
#pragma pop

/* 807986B8-807986BC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4591 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807986B8, &lit_4591);
#pragma pop

/* 807986BC-807986C0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4592 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x807986BC, &lit_4592);
#pragma pop

/* 807986C0-807986C4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4593 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x807986C0, &lit_4593);
#pragma pop

/* 80793B64-80793E18 001A24 02B4+00 1/1 0/0 0/0 .text            E_SM_Move__8daE_SM_cFv */
void daE_SM_c::E_SM_Move() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986C4-807986C8 0000E4 0004+00 0/3 0/0 0/0 .rodata          @4637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4637 = 2000.0f;
COMPILER_STRIP_GATE(0x807986C4, &lit_4637);
#pragma pop

/* 807986C8-807986CC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4638 = 2600.0f;
COMPILER_STRIP_GATE(0x807986C8, &lit_4638);
#pragma pop

/* 807986CC-807986D0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4639 = 0x3D27EF9E;
COMPILER_STRIP_GATE(0x807986CC, &lit_4639);
#pragma pop

/* 807986D0-807986D4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4640 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x807986D0, &lit_4640);
#pragma pop

/* 807986D4-807986D8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807986D4, &lit_4641);
#pragma pop

/* 80793E18-80794100 001CD8 02E8+00 1/1 0/0 0/0 .text            E_SM_Attack__8daE_SM_cFv */
void daE_SM_c::E_SM_Attack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986D8-807986DC 0000F8 0004+00 0/3 0/0 0/0 .rodata          @4690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4690 = 10.0f;
COMPILER_STRIP_GATE(0x807986D8, &lit_4690);
#pragma pop

/* 80794100-80794338 001FC0 0238+00 1/1 0/0 0/0 .text            Action__8daE_SM_cFv */
void daE_SM_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986DC-807986E0 0000FC 0004+00 2/2 0/0 0/0 .rodata          @4703 */
SECTION_RODATA static f32 const lit_4703 = 63.0f;
COMPILER_STRIP_GATE(0x807986DC, &lit_4703);

/* 80794338-807943C4 0021F8 008C+00 1/1 0/0 0/0 .text            E_SM_C_Normal__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Normal() {
    // NONMATCHING
}

/* 807943C4-80794458 002284 0094+00 1/1 0/0 0/0 .text            E_SM_C_Fight__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Fight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986E0-807986E4 000100 0004+00 0/2 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = 600.0f;
COMPILER_STRIP_GATE(0x807986E0, &lit_4764);
#pragma pop

/* 807986E4-807986E8 000104 0004+00 0/2 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4765 = 11.0f;
COMPILER_STRIP_GATE(0x807986E4, &lit_4765);
#pragma pop

/* 80794458-8079473C 002318 02E4+00 1/1 0/0 0/0 .text            E_SM_C_Near_Escape__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Near_Escape() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986E8-807986EC 000108 0004+00 0/1 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4825 = 12000.0f;
COMPILER_STRIP_GATE(0x807986E8, &lit_4825);
#pragma pop

/* 8079473C-807949CC 0025FC 0290+00 1/1 0/0 0/0 .text            E_SM_C_Far_Escape__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Far_Escape() {
    // NONMATCHING
}

/* 807949CC-807951EC 00288C 0820+00 2/1 0/0 0/0 .text            E_SM_C_Home_Escape__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Home_Escape() {
    // NONMATCHING
}

/* 807951EC-80795244 0030AC 0058+00 1/1 0/0 0/0 .text            E_SM_C_Escape__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Escape() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807986EC-807986F0 00010C 0004+00 0/0 0/0 0/0 .rodata          @5011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5011 = 220.0f;
COMPILER_STRIP_GATE(0x807986EC, &lit_5011);
#pragma pop

/* 807986F0-807986F4 000110 0004+00 0/0 0/0 0/0 .rodata          @5012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5012 = 73.0f;
COMPILER_STRIP_GATE(0x807986F0, &lit_5012);
#pragma pop

/* 807986F4-807986F8 000114 0004+00 0/0 0/0 0/0 .rodata          @5013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5013 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807986F4, &lit_5013);
#pragma pop

/* 807986F8-807986FC 000118 0004+00 0/0 0/0 0/0 .rodata          @5014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5014 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x807986F8, &lit_5014);
#pragma pop

/* 807986FC-80798700 00011C 0004+00 0/0 0/0 0/0 .rodata          @5015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5015 = 9.0f / 25.0f;
COMPILER_STRIP_GATE(0x807986FC, &lit_5015);
#pragma pop

/* 80798700-80798704 000120 0004+00 0/0 0/0 0/0 .rodata          @5016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5016 = 6.0f;
COMPILER_STRIP_GATE(0x80798700, &lit_5016);
#pragma pop

/* 80798704-80798708 000124 0004+00 0/0 0/0 0/0 .rodata          @5017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5017 = 17.0f;
COMPILER_STRIP_GATE(0x80798704, &lit_5017);
#pragma pop

/* 80798708-8079870C 000128 0004+00 0/0 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5018 = 3.5f;
COMPILER_STRIP_GATE(0x80798708, &lit_5018);
#pragma pop

/* 8079870C-80798710 00012C 0004+00 0/1 0/0 0/0 .rodata          @5100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5100 = 7.0f;
COMPILER_STRIP_GATE(0x8079870C, &lit_5100);
#pragma pop

/* 80798710-80798714 000130 0004+00 0/1 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5101 = 53.0f;
COMPILER_STRIP_GATE(0x80798710, &lit_5101);
#pragma pop

/* 80798714-80798718 000134 0004+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5102 = 32.0f;
COMPILER_STRIP_GATE(0x80798714, &lit_5102);
#pragma pop

/* 80795244-80795530 003104 02EC+00 3/3 0/0 0/0 .text            E_SM_C_Free__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Free() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798718-8079871C 000138 0004+00 0/1 0/0 0/0 .rodata          @5191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5191 = 35.0f;
COMPILER_STRIP_GATE(0x80798718, &lit_5191);
#pragma pop

/* 8079871C-80798720 00013C 0004+00 0/1 0/0 0/0 .rodata          @5192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5192 = -15.0f;
COMPILER_STRIP_GATE(0x8079871C, &lit_5192);
#pragma pop

/* 80798720-80798724 000140 0004+00 0/1 0/0 0/0 .rodata          @5193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5193 = 4.0f;
COMPILER_STRIP_GATE(0x80798720, &lit_5193);
#pragma pop

/* 80798724-80798728 000144 0004+00 0/1 0/0 0/0 .rodata          @5194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5194 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80798724, &lit_5194);
#pragma pop

/* 80795530-807958A0 0033F0 0370+00 1/1 0/0 0/0 .text            E_SM_C_Death__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Death() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798728-8079872C 000148 0004+00 0/1 0/0 0/0 .rodata          @5365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5365 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80798728, &lit_5365);
#pragma pop

/* 8079872C-80798730 00014C 0004+00 0/1 0/0 0/0 .rodata          @5366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5366 = -33.0f / 100.0f;
COMPILER_STRIP_GATE(0x8079872C, &lit_5366);
#pragma pop

/* 807958A0-80795E64 003760 05C4+00 1/1 0/0 0/0 .text            C_DamageCheck__8daE_SM_cFv */
void daE_SM_c::C_DamageCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798730-80798734 000150 0004+00 1/3 0/0 0/0 .rodata          @5413 */
SECTION_RODATA static f32 const lit_5413 = 40.0f;
COMPILER_STRIP_GATE(0x80798730, &lit_5413);

/* 80798734-80798738 000154 0004+00 0/2 0/0 0/0 .rodata          @5414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5414 = 800.0f;
COMPILER_STRIP_GATE(0x80798734, &lit_5414);
#pragma pop

/* 80798738-8079873C 000158 0004+00 0/1 0/0 0/0 .rodata          @5415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5415 = -60.0f;
COMPILER_STRIP_GATE(0x80798738, &lit_5415);
#pragma pop

/* 80798780-80798780 0001A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80798785 = "D_SB01";
#pragma pop

/* 80795E64-80796060 003D24 01FC+00 1/1 0/0 0/0 .text            E_SM_C_Hook__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Hook() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079873C-80798740 00015C 0004+00 0/1 0/0 0/0 .rodata          @5430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5430 = 608.0f;
COMPILER_STRIP_GATE(0x8079873C, &lit_5430);
#pragma pop

/* 80798740-80798744 000160 0004+00 0/1 0/0 0/0 .rodata          @5431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5431 = 448.0f;
COMPILER_STRIP_GATE(0x80798740, &lit_5431);
#pragma pop

/* 80796060-807960E4 003F20 0084+00 1/1 0/0 0/0 .text            CheckViewArea__8daE_SM_cFv */
void daE_SM_c::CheckViewArea() {
    // NONMATCHING
}

/* 807960E4-80796204 003FA4 0120+00 1/1 0/0 0/0 .text            CameraSet__8daE_SM_cFv */
void daE_SM_c::CameraSet() {
    // NONMATCHING
}

/* 80796204-80796324 0040C4 0120+00 2/2 0/0 0/0 .text            SetStopCam__8daE_SM_cF4cXyzffs */
void daE_SM_c::SetStopCam(cXyz param_0, f32 param_1, f32 param_2, s16 param_3) {
    // NONMATCHING
}

/* 80796324-80796368 0041E4 0044+00 1/1 0/0 0/0 .text            SetCMoveCam__8daE_SM_cF4cXyzff */
void daE_SM_c::SetCMoveCam(cXyz param_0, f32 param_1, f32 param_2) {
    // NONMATCHING
}

/* 80796368-807963EC 004228 0084+00 1/1 0/0 0/0 .text            SetStopingCam__8daE_SM_cFv */
void daE_SM_c::SetStopingCam() {
    // NONMATCHING
}

/* 807963EC-80796490 0042AC 00A4+00 1/1 0/0 0/0 .text            SetReleaseCam__8daE_SM_cFv */
void daE_SM_c::SetReleaseCam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798744-80798748 000164 0004+00 0/1 0/0 0/0 .rodata          @5563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5563 = 300.0f;
COMPILER_STRIP_GATE(0x80798744, &lit_5563);
#pragma pop

/* 80796490-80796628 004350 0198+00 1/1 0/0 0/0 .text            DemoStart__8daE_SM_cFv */
void daE_SM_c::DemoStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798748-8079874C 000168 0004+00 0/1 0/0 0/0 .rodata          @5623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5623 = 25.0f;
COMPILER_STRIP_GATE(0x80798748, &lit_5623);
#pragma pop

/* 80796628-807968A0 0044E8 0278+00 1/1 0/0 0/0 .text            DemoMid__8daE_SM_cFv */
void daE_SM_c::DemoMid() {
    // NONMATCHING
}

/* 807968A0-807968E4 004760 0044+00 1/1 0/0 0/0 .text            E_SM_C_Demo__8daE_SM_cFv */
void daE_SM_c::E_SM_C_Demo() {
    // NONMATCHING
}

/* 807968E4-80796AEC 0047A4 0208+00 2/1 0/0 0/0 .text            CoreAction__8daE_SM_cFv */
void daE_SM_c::CoreAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079874C-80798750 00016C 0004+00 0/0 0/0 0/0 .rodata          @5681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5681 = -25.0f;
COMPILER_STRIP_GATE(0x8079874C, &lit_5681);
#pragma pop

/* 80798750-80798754 000170 0004+00 0/0 0/0 0/0 .rodata          @5682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5682 = -9.0f;
COMPILER_STRIP_GATE(0x80798750, &lit_5682);
#pragma pop

/* 80798754-80798758 000174 0004+00 0/2 0/0 0/0 .rodata          @5741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5741 = -20.0f;
COMPILER_STRIP_GATE(0x80798754, &lit_5741);
#pragma pop

/* 80796AEC-80796D80 0049AC 0294+00 1/1 0/0 0/0 .text            ArrowOn__8daE_SM_cFv */
void daE_SM_c::ArrowOn() {
    // NONMATCHING
}

/* 80796D80-80796FC4 004C40 0244+00 1/1 0/0 0/0 .text            Execute__8daE_SM_cFv */
void daE_SM_c::Execute() {
    // NONMATCHING
}

/* 80796FC4-80797274 004E84 02B0+00 1/1 0/0 0/0 .text            setSmBaseMtx__8daE_SM_cFv */
void daE_SM_c::setSmBaseMtx() {
    // NONMATCHING
}

/* 80797274-8079730C 005134 0098+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_SM_cFv */
void daE_SM_c::setBaseMtx() {
    // NONMATCHING
}

/* 8079730C-80797444 0051CC 0138+00 1/1 0/0 0/0 .text            CoCoreSet__8daE_SM_cFv */
void daE_SM_c::CoCoreSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80798758-8079875C 000178 0004+00 0/1 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5883 = 150.0f;
COMPILER_STRIP_GATE(0x80798758, &lit_5883);
#pragma pop

/* 80797444-807974E8 005304 00A4+00 1/1 0/0 0/0 .text            CoSmSet__8daE_SM_cFv */
void daE_SM_c::CoSmSet() {
    // NONMATCHING
}

/* 807974E8-807974F0 0053A8 0008+00 1/0 0/0 0/0 .text            daE_SM_IsDelete__FP8daE_SM_c */
static bool daE_SM_IsDelete(daE_SM_c* param_0) {
    return true;
}

/* 807974F0-80797510 0053B0 0020+00 1/0 0/0 0/0 .text            daE_SM_Delete__FP8daE_SM_c */
static void daE_SM_Delete(daE_SM_c* param_0) {
    // NONMATCHING
}

/* 80797510-80797530 0053D0 0020+00 1/0 0/0 0/0 .text            daE_SM_Draw__FP8daE_SM_c */
static void daE_SM_Draw(daE_SM_c* param_0) {
    // NONMATCHING
}

/* 80797530-80797550 0053F0 0020+00 2/1 0/0 0/0 .text            daE_SM_Execute__FP8daE_SM_c */
static void daE_SM_Execute(daE_SM_c* param_0) {
    // NONMATCHING
}

/* 80797550-80797570 005410 0020+00 1/0 0/0 0/0 .text            daE_SM_Create__FP10fopAc_ac_c */
static void daE_SM_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80797570-8079762C 005430 00BC+00 1/1 0/0 0/0 .text            Delete__8daE_SM_cFv */
void daE_SM_c::Delete() {
    // NONMATCHING
}

/* 8079762C-8079764C 0054EC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8079764C-80797784 00550C 0138+00 1/1 0/0 0/0 .text            CreateHeap__8daE_SM_cFv */
void daE_SM_c::CreateHeap() {
    // NONMATCHING
}

/* 80797784-80797858 005644 00D4+00 1/1 0/0 0/0 .text            initCoSph__8daE_SM_cFv */
void daE_SM_c::initCoSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079875C-80798760 00017C 0004+00 0/1 0/0 0/0 .rodata          @6098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6098 = -400.0f;
COMPILER_STRIP_GATE(0x8079875C, &lit_6098);
#pragma pop

/* 80798760-80798764 000180 0004+00 0/1 0/0 0/0 .rodata          @6099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6099 = -800.0f;
COMPILER_STRIP_GATE(0x80798760, &lit_6099);
#pragma pop

/* 80798764-80798768 000184 0004+00 0/1 0/0 0/0 .rodata          @6100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6100 = -200.0f;
COMPILER_STRIP_GATE(0x80798764, &lit_6100);
#pragma pop

/* 80798768-8079876C 000188 0004+00 0/1 0/0 0/0 .rodata          @6101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6101 = 120.0f;
COMPILER_STRIP_GATE(0x80798768, &lit_6101);
#pragma pop

/* 8079876C-80798770 00018C 0004+00 0/1 0/0 0/0 .rodata          @6102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6102 = 30.0f;
COMPILER_STRIP_GATE(0x8079876C, &lit_6102);
#pragma pop

/* 80798770-80798778 000190 0004+04 0/1 0/0 0/0 .rodata          @6103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6103[1 + 1 /* padding */] = {
    65535.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80798770, &lit_6103);
#pragma pop

/* 80798778-80798780 000198 0008+00 0/1 0/0 0/0 .rodata          @6105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6105[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80798778, &lit_6105);
#pragma pop

/* 80797858-80797CE0 005718 0488+00 1/1 0/0 0/0 .text            Create__8daE_SM_cFv */
void daE_SM_c::Create() {
    // NONMATCHING
}

/* 80797CE0-80797ED0 005BA0 01F0+00 1/1 0/0 0/0 .text            __ct__8daE_SM_cFv */
daE_SM_c::daE_SM_c() {
    // NONMATCHING
}

/* 80797ED0-80797F18 005D90 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80797F18-80797F60 005DD8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80797F60-80797FBC 005E20 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80797FBC-8079802C 005E7C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8079802C-8079809C 005EEC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8079809C-807980A0 005F5C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 807980A0-807980E8 005F60 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

// /* 807980E8-80798130 005FA8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_Sm_HIO_cFv */
// daE_Sm_HIO_c::~daE_Sm_HIO_c() {
//     // NONMATCHING
// }

/* 80798130-8079816C 005FF0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sm_cpp */
void __sinit_d_a_e_sm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80798130, __sinit_d_a_e_sm_cpp);
#pragma pop

/* 8079816C-80798174 00602C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8079816C() {
    // NONMATCHING
}

/* 80798174-8079817C 006034 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80798174() {
    // NONMATCHING
}

/* 80798590-807985CC 006450 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 807988B8-807988D8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SM_Method */
static actor_method_class l_daE_SM_Method = {
    (process_method_func)daE_SM_Create,
    (process_method_func)daE_SM_Delete,
    (process_method_func)daE_SM_Execute,
    (process_method_func)daE_SM_IsDelete,
    (process_method_func)daE_SM_Draw,
};

/* 807988D8-80798908 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SM */
extern actor_process_profile_definition g_profile_E_SM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_SM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  127,                    // mPriority
  &l_daE_SM_Method,       // sub_method
  0x000C0100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
