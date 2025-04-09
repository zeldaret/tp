/**
 * @file d_a_e_ms.cpp
 * 
*/

#include "d/actor/d_a_e_ms.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/actor/d_a_obj_carry.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_MS_HIO_cFv();
extern "C" static void anm_init__FP10e_ms_classifUcf();
extern "C" static void pl_check__FP10e_ms_classf();
extern "C" static void daE_MS_Draw__FP10e_ms_class();
extern "C" static void sibuki_set__FP10e_ms_class();
extern "C" static void ms_disappear__FP10e_ms_class();
extern "C" static void s_d_sub__FPvPv();
extern "C" static void search_dokuro__FP10e_ms_class();
extern "C" static void way_set__FP10e_ms_class();
extern "C" static void e_ms_normal__FP10e_ms_class();
extern "C" static void e_ms_attack__FP10e_ms_class();
extern "C" static void search_ground_1__FP10e_ms_class();
extern "C" void __ct__4cXyzFv();
extern "C" static void e_ms_swim__FP10e_ms_class();
extern "C" static void e_ms_dokuro__FP10e_ms_class();
extern "C" static void e_ms_damage__FP10e_ms_class();
extern "C" static void e_ms_wolfbite__FP10e_ms_class();
extern "C" static void e_ms_standby__FP10e_ms_class();
extern "C" static void damage_check__FP10e_ms_class();
extern "C" static void action__FP10e_ms_class();
extern "C" static void anm_se_set__FP10e_ms_class();
extern "C" static void daE_MS_Execute__FP10e_ms_class();
extern "C" static bool daE_MS_IsDelete__FP10e_ms_class();
extern "C" static void daE_MS_Delete__FP10e_ms_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_MS_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_MS_HIO_cFv();
extern "C" void __sinit_d_a_e_ms_cpp();
extern "C" static void func_80729090();
extern "C" static void func_80729098();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_ms__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
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
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80729648-80729674 -00001 002C+00 1/1 0/0 0/0 .data            @4628 */
SECTION_DATA static void* lit_4628[11] = {
    (void*)(((char*)action__FP10e_ms_class) + 0xE4),
    (void*)(((char*)action__FP10e_ms_class) + 0xF8),
    (void*)(((char*)action__FP10e_ms_class) + 0x10C),
    (void*)(((char*)action__FP10e_ms_class) + 0x118),
    (void*)(((char*)action__FP10e_ms_class) + 0x128),
    (void*)(((char*)action__FP10e_ms_class) + 0x13C),
    (void*)(((char*)action__FP10e_ms_class) + 0x168),
    (void*)(((char*)action__FP10e_ms_class) + 0x168),
    (void*)(((char*)action__FP10e_ms_class) + 0x168),
    (void*)(((char*)action__FP10e_ms_class) + 0x168),
    (void*)(((char*)action__FP10e_ms_class) + 0x154),
};

/* 80729674-8072967C 000064 0008+00 1/1 0/0 0/0 .data            eff_id$4781 */
SECTION_DATA static u8 eff_id_4781[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8072967C-807296BC 00006C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4909 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807296BC-807296FC 0000AC 0040+00 1/1 0/0 0/0 .data            at_sph_src$4910 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SOFT_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80725B8C-80725BD4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_MS_HIO_cFv */
daE_MS_HIO_c::daE_MS_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.0f;
    field_0xc = 15.0f;
    field_0x10 = 40.0f;
    field_0x14 = 4.0f;
    field_0x18 = 450.0f;
}

/* 80725BD4-80725C80 000134 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_ms_classifUcf */
static void anm_init(e_ms_class* i_this, int param_2, f32 param_3, u8 param_4, f32 param_5) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_MS", param_2), param_4, param_3, param_5, 0.0f, -1.0f);
    i_this->field_0x5d0 = param_2;
}

/* 80725C80-80725CCC 0001E0 004C+00 3/3 0/0 0/0 .text            pl_check__FP10e_ms_classf */
static int pl_check(e_ms_class* i_this, f32 param_2) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    if (i_this->field_0x680 < param_2 && !fopAcM_otherBgCheck(i_this, player)) {
        return 1;
    }
        
    return 0;
}

/* 80725CCC-80725DEC 00022C 0120+00 1/0 0/0 0/0 .text            daE_MS_Draw__FP10e_ms_class */
static int daE_MS_Draw(e_ms_class* i_this) {
    // NONMATCHING
    if (i_this->field_0xba5) {
        return 1;
    }
    
    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    
    dComIfGd_setListDark();
    i_this->mpModelMorf->entryDL();
    dComIfGd_setList();

    cXyz mShadowPos(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
    // f32 mGroundH = i_this->mAcch.GetGroundH();
    i_this->field_0x5d4 = dComIfGd_setShadow(i_this->field_0x5d4, 1, model, &mShadowPos, 400.0f, 
        i_this->field_0x770, 40.0f, 0.0f, *(cBgS_PolyInfo *)&i_this->mAcch, 
        &i_this->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());


    return 1;
}

/* 80725DEC-80725ED4 00034C 00E8+00 2/2 0/0 0/0 .text            sibuki_set__FP10e_ms_class */
static void sibuki_set(e_ms_class* i_this) {
    if (!i_this->field_0xba7) {
        i_this->field_0xba7 = 20;
        cXyz sp20(i_this->current.pos);
        sp20.y = i_this->field_0x690;
        fopKyM_createWpillar(&sp20, 1.0f, 0);
        if (i_this->field_0x690 - i_this->field_0x770 > 50.0f) {
            i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_ASASE_S, 0, -1);
        } else {
            i_this->mSound.startCreatureSound(Z2SE_EN_MS_FALLWATER, 0, -1);
        }
    }

}

/* 80725ED4-80725FF0 000434 011C+00 1/1 0/0 0/0 .text            ms_disappear__FP10e_ms_class */
static void ms_disappear(e_ms_class* i_this) {
    fopAcM_createDisappear(i_this, &i_this->eyePos, 10, 0, 0x26);
    int i_no = (fopAcM_GetParam(i_this) >> 0x10) & 0xff;
    if (i_no != 0xff) {
        dComIfGs_onSwitch(i_no, fopAcM_GetRoomNo(i_this));
    }

    if (i_this->field_0x5b6 == 1) {
        i_this->current = i_this->home;
        i_this->old = i_this->current;
        i_this->health = 1;
        i_this->field_0x67e = 0;
        i_this->field_0x5b4 = 0;
        if (i_this->field_0x5b8 != 0xff) {
            i_this->field_0xba6 = 1;
        }
    } else {
        fopAcM_delete(i_this);
    }
}

/* ############################################################################################## */
/* 807297C0-807297C4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 807297C4-807297C8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 807297C8-807297CC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 807297CC-807297D0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 807297D0-807297D4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 807297D4-807297D8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 807297D8-807297DC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 807297DC-807297E0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 807297E0-807297E4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 807297E4-807297E8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 807297E8-807297EC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 807297EC-807297F0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 807297F0-807297F4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 807297F4-807297F8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 807297F8-807297FC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 807297FC-80729800 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 807297FC 0001+00 data_807297FC @1009 */
/* 807297FD 0003+00 data_807297FD None */
static u8 struct_807297FC[4];

/* 80729800-8072980C 000048 000C+00 1/1 0/0 0/0 .bss             @3816 */
static u8 lit_3816[12];

/* 8072980C-80729828 000054 001C+00 7/8 0/0 0/0 .bss             l_HIO */
static daE_MS_HIO_c l_HIO;

/* 80729828-80729878 000070 0050+00 2/2 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[20];

/* 80729878-8072987C 0000C0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 80725FF0-8072606C 000550 007C+00 1/1 0/0 0/0 .text            s_d_sub__FPvPv */
static void* s_d_sub(void* param_1, void* param_2) {
    daObjCarry_c* i_this = (daObjCarry_c*)param_1;
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == 0x2fc &&
        i_this->getType() == 5 && target_info_count < 20) {
        target_info[target_info_count] = (fopAc_ac_c*)param_1;
        target_info_count++;
    }

    return NULL;
}

/* 8072606C-807261E8 0005CC 017C+00 1/1 0/0 0/0 .text            search_dokuro__FP10e_ms_class */
static fopAc_ac_c* search_dokuro(e_ms_class* i_this) {
    // NONMATCHING
    for (int i = 0; i < 20; i++) {
        target_info[i] = 0;
    }

    fpcM_Search(s_d_sub, i_this);

    f32 fVar1 = 100.0f;
    if (target_info_count != 0) {
        cXyz sp58;
        int iVar1 = 0;
        do {
            do {
                fopAc_ac_c* mActor = target_info[iVar1];
                sp58 = mActor->current.pos - i_this->current.pos;
                f32 mSqrRt = JMAFastSqrt(sp58.x * sp58.x + sp58.z * sp58.z);
                
                if (mSqrRt < 0.0f && !fopAcM_otherBgCheck(i_this, target_info[iVar1])) {
                    return mActor;
                }

                if (target_info_count == iVar1) {
                    return NULL;
                }

                iVar1++;
            } while (iVar1 != target_info_count);

            fVar1 += 100.0f;
        } while (fVar1 <= 1000.0f);
    }

    return NULL;
}

/* 807261E8-80726360 000748 0178+00 1/1 0/0 0/0 .text            way_set__FP10e_ms_class */
static int way_set(e_ms_class* i_this) {
    // NONMATCHING
    f32 fVar1 = cM_rndF(65535.0f);
    f32 fVar2 = 1000.0f;
    cXyz spd0 = i_this->current.pos;
    spd0.y += 50.0f;
    // int iVar1 = 0;

    do {
        for (int i = 0; i < 16; i++) {
            cMtx_YrotS(*calc_mtx, fVar1);
            cXyz spe8(0.0f, 0.0f, fVar2);
            cXyz spdc;
            MtxPosition(&spdc, &spe8);
            spe8 += spd0;

            dBgS_LinChk dStack_c4;
            dStack_c4.Set(&spd0, &spe8, i_this);

            if (dComIfG_Bgsp().LineCross(&dStack_c4)) {
                i_this->field_0x5c8 = fVar1;
                return 1;
            }

            // fVar1 += 0x1000;
        }

        // fVar2 -= 150.0f;
        // iVar1++;
    } while (true);

    return 0;
}

/* 80726360-80726730 0008C0 03D0+00 1/1 0/0 0/0 .text            e_ms_normal__FP10e_ms_class */
static void e_ms_normal(e_ms_class* i_this) {
    // NONMATCHING
    f32 fVar1 = 0.0f;
    char cVar4 = 1;

    if ((i_this->field_0x67c & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
        i_this->mSound.startCreatureVoice(Z2SE_EN_NZ_V_NAKU, -1);
    }

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 14, 3.0f, 2, 1.0f);
            i_this->field_0x686 = cM_rndF(60.0f) + 30.0f;
            i_this->field_0x5b4 = 1;
            i_this->field_0x67c = cM_rndF(65535.0f);
            i_this->field_0x68a = 20;
            break;
        case 1:
            fVar1 = l_HIO.field_0xc;
            if (i_this->mpModelMorf->checkFrame(1.0f)) {
                i_this->field_0x5c8 += (int)cM_rndFX(2000.0f);
            }

            if (i_this->field_0x686 == 0 || i_this->field_0x68a == 0 && fopAcM_wayBgCheck(i_this, 200.0f, 50.0f)) {
                i_this->field_0x686 = cM_rndF(60.0f) + 30.0f;
                i_this->field_0x5b4 = 2;
                if (cM_rndF(1.0f) < 0.5f) {
                    anm_init(i_this, 16, 3.0f, 2, 1.0f);
                } else {
                    anm_init(i_this, 13, 3.0f, 2, 1.0f);
                }
            }
            break;
        case 2:
            if (i_this->field_0x686 == 0) {
                if (way_set(i_this)) {
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x686 = 10;
                }
            }
            break;
        case 5:
            if (i_this->field_0x686 == 0) {
                anm_init(i_this, 14, 3.0f, 2, 1.5f);
                i_this->field_0x686 = cM_rndF(60.0f) + 30.0f;
                i_this->field_0x5b4 = 6;
                i_this->field_0x5c8 = i_this->field_0x684 + 0x8000;
            }
            break;
        case 6:
            cVar4 = 0;
            fVar1 = l_HIO.field_0xc * 1.5f;
            if (i_this->mpModelMorf->checkFrame(1.0f)) {
                i_this->field_0x5c8 += (int)cM_rndFX(4000.0f);
            }

            if (i_this->field_0x68a == 0 && fopAcM_wayBgCheck(i_this, 200.0f, 50.0f)) {
                i_this->field_0x68a = 20;
                i_this->field_0x5c8 = i_this->current.angle.y + 0x8000;
            }

            if (i_this->field_0x686 == 0) {
                i_this->field_0x5b4 = 0;
            }
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x5c8, 2, 0x1000);
    cLib_addCalc2(&i_this->speedF, fVar1, 1.0f, l_HIO.field_0xc * 0.25f);

    if (i_this->field_0xba6 || (cVar4 != 0 && pl_check(i_this, l_HIO.field_0x18))) {
        i_this->field_0x67e = 1;
        i_this->field_0x5b4 = 0;
    }
}

/* ############################################################################################## */
/* 8072957C-80729580 000078 0004+00 0/2 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = 300.0f;
COMPILER_STRIP_GATE(0x8072957C, &lit_4180);
#pragma pop

/* 80729580-80729584 00007C 0004+00 0/4 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 10.0f;
COMPILER_STRIP_GATE(0x80729580, &lit_4181);
#pragma pop

/* 80726730-80726A70 000C90 0340+00 1/1 0/0 0/0 .text            e_ms_attack__FP10e_ms_class */
static void e_ms_attack(e_ms_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80729584-80729588 000080 0004+00 0/2 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 70.0f;
COMPILER_STRIP_GATE(0x80729584, &lit_4297);
#pragma pop

/* 80729588-8072958C 000084 0004+00 0/2 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = 10000.0f;
COMPILER_STRIP_GATE(0x80729588, &lit_4298);
#pragma pop

/* 80726A70-80726F54 000FD0 04E4+00 1/1 0/0 0/0 .text            search_ground_1__FP10e_ms_class */
static void search_ground_1(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80726F54-80726F58 0014B4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 8072958C-80729590 000088 0004+00 0/2 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 5.0f;
COMPILER_STRIP_GATE(0x8072958C, &lit_4323);
#pragma pop

/* 80729590-80729594 00008C 0004+00 0/3 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 20.0f;
COMPILER_STRIP_GATE(0x80729590, &lit_4324);
#pragma pop

/* 80726F58-80727100 0014B8 01A8+00 1/1 0/0 0/0 .text            e_ms_swim__FP10e_ms_class */
static void e_ms_swim(e_ms_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80729594-80729598 000090 0004+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 75.0f;
COMPILER_STRIP_GATE(0x80729594, &lit_4397);
#pragma pop

/* 80729598-8072959C 000094 0004+00 0/1 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = 90.0f;
COMPILER_STRIP_GATE(0x80729598, &lit_4398);
#pragma pop

/* 8072959C-807295A0 000098 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 65.0f;
COMPILER_STRIP_GATE(0x8072959C, &lit_4399);
#pragma pop

/* 807295A0-807295A4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = -2.0f;
COMPILER_STRIP_GATE(0x807295A0, &lit_4400);
#pragma pop

/* 807295A4-807295A8 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4401 = 2.0f;
COMPILER_STRIP_GATE(0x807295A4, &lit_4401);
#pragma pop

/* 80727100-807274D8 001660 03D8+00 1/1 0/0 0/0 .text            e_ms_dokuro__FP10e_ms_class */
static void e_ms_dokuro(e_ms_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807295A8-807295AC 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = -30.0f;
COMPILER_STRIP_GATE(0x807295A8, &lit_4431);
#pragma pop

/* 807274D8-80727704 001A38 022C+00 1/1 0/0 0/0 .text            e_ms_damage__FP10e_ms_class */
static void e_ms_damage(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80727704-80727834 001C64 0130+00 1/1 0/0 0/0 .text            e_ms_wolfbite__FP10e_ms_class */
static void e_ms_wolfbite(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80727834-80727894 001D94 0060+00 1/1 0/0 0/0 .text            e_ms_standby__FP10e_ms_class */
static void e_ms_standby(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80727894-80727A20 001DF4 018C+00 1/1 0/0 0/0 .text            damage_check__FP10e_ms_class */
static void damage_check(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80727A20-8072803C 001F80 061C+00 2/1 0/0 0/0 .text            action__FP10e_ms_class */
static void action(e_ms_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807295AC-807295B0 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4619 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4619 = 500.0f;
COMPILER_STRIP_GATE(0x807295AC, &lit_4619);
#pragma pop

/* 807295B0-807295B4 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4620 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4620 = -7.0f;
COMPILER_STRIP_GATE(0x807295B0, &lit_4620);
#pragma pop

/* 807295B4-807295B8 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4621 = -80.0f;
COMPILER_STRIP_GATE(0x807295B4, &lit_4621);
#pragma pop

/* 807295B8-807295BC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4622 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807295B8, &lit_4622);
#pragma pop

/* 807295BC-807295C0 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4623 = 45.0f;
COMPILER_STRIP_GATE(0x807295BC, &lit_4623);
#pragma pop

/* 807295C0-807295C4 0000BC 0004+00 0/0 0/0 0/0 .rodata          @4624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4624 = 47.0f;
COMPILER_STRIP_GATE(0x807295C0, &lit_4624);
#pragma pop

/* 807295C4-807295C8 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4625 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4625 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807295C4, &lit_4625);
#pragma pop

/* 807295C8-807295CC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4626 = 35.0f;
COMPILER_STRIP_GATE(0x807295C8, &lit_4626);
#pragma pop

/* 807295CC-807295D0 0000C8 0004+00 0/0 0/0 0/0 .rodata          @4627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4627 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807295CC, &lit_4627);
#pragma pop

/* 807295D0-807295D4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 44.0f;
COMPILER_STRIP_GATE(0x807295D0, &lit_4735);
#pragma pop

/* 807295D4-807295D8 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4736 = 6.0f;
COMPILER_STRIP_GATE(0x807295D4, &lit_4736);
#pragma pop

/* 807295D8-807295DC 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = 6.5f;
COMPILER_STRIP_GATE(0x807295D8, &lit_4737);
#pragma pop

/* 807295DC-807295E0 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = 8.0f;
COMPILER_STRIP_GATE(0x807295DC, &lit_4738);
#pragma pop

/* 807295E0-807295E4 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = 2.5f;
COMPILER_STRIP_GATE(0x807295E0, &lit_4739);
#pragma pop

/* 807295E4-807295E8 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 4.5f;
COMPILER_STRIP_GATE(0x807295E4, &lit_4740);
#pragma pop

/* 807295E8-807295EC 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4741 = 9.5f;
COMPILER_STRIP_GATE(0x807295E8, &lit_4741);
#pragma pop

/* 8072803C-80728464 00259C 0428+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_ms_class */
static void anm_se_set(e_ms_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807295EC-807295F0 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4857 = -400.0f;
COMPILER_STRIP_GATE(0x807295EC, &lit_4857);
#pragma pop

/* 807295F0-807295F4 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = -60.0f;
COMPILER_STRIP_GATE(0x807295F0, &lit_4858);
#pragma pop

/* 807295F4-807295F8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4859 = -20.0f;
COMPILER_STRIP_GATE(0x807295F4, &lit_4859);
#pragma pop

/* 807295F8-807295FC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4860 = 7.0f;
COMPILER_STRIP_GATE(0x807295F8, &lit_4860);
#pragma pop

/* 807295FC-807295FC 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80729601 = "D_MN10";
#pragma pop

/* 8072987C-8072988C 0000C4 000C+04 0/1 0/0 0/0 .bss             @4778 */
#pragma push
#pragma force_active on
static u8 lit_4778[12 + 4 /* padding */];
#pragma pop

/* 8072988C-80729898 0000D4 000C+00 0/1 0/0 0/0 .bss             sc$4777 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80728464-80728920 0029C4 04BC+00 2/1 0/0 0/0 .text            daE_MS_Execute__FP10e_ms_class */
static void daE_MS_Execute(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80728920-80728928 002E80 0008+00 1/0 0/0 0/0 .text            daE_MS_IsDelete__FP10e_ms_class */
static bool daE_MS_IsDelete(e_ms_class* param_0) {
    return true;
}

/* 80728928-80728990 002E88 0068+00 1/0 0/0 0/0 .text            daE_MS_Delete__FP10e_ms_class */
static void daE_MS_Delete(e_ms_class* param_0) {
    // NONMATCHING
}

/* 80728990-80728A88 002EF0 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807295FC-807295FC 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80729608 = "E_ms";
#pragma pop

/* 80728A88-80728DF8 002FE8 0370+00 1/0 0/0 0/0 .text            daE_MS_Create__FP10fopAc_ac_c */
static void daE_MS_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80728DF8-80728E40 003358 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80728E40-80728E88 0033A0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80728E88-80728EE4 0033E8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80728EE4-80728F54 003444 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80728F54-80728FC4 0034B4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80728FC4-8072900C 003524 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80729054-80729090 0035B4 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ms_cpp */
void __sinit_d_a_e_ms_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80729054, __sinit_d_a_e_ms_cpp);
#pragma pop

/* 80729090-80729098 0035F0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80729090() {
    // NONMATCHING
}

/* 80729098-807290A0 0035F8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80729098() {
    // NONMATCHING
}

/* 807294B4-807294F0 003A14 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80729898-8072989C 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80729898[4];
#pragma pop

/* 8072989C-807298A0 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8072989C[4];
#pragma pop

/* 807298A0-807298A4 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807298A0[4];
#pragma pop

/* 807298A4-807298A8 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807298A4[4];
#pragma pop

/* 807298A8-807298AC 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298A8[4];
#pragma pop

/* 807298AC-807298B0 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298AC[4];
#pragma pop

/* 807298B0-807298B4 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807298B0[4];
#pragma pop

/* 807298B4-807298B8 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807298B4[4];
#pragma pop

/* 807298B8-807298BC 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807298B8[4];
#pragma pop

/* 807298BC-807298C0 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807298BC[4];
#pragma pop

/* 807298C0-807298C4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807298C0[4];
#pragma pop

/* 807298C4-807298C8 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807298C4[4];
#pragma pop

/* 807298C8-807298CC 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807298C8[4];
#pragma pop

/* 807298CC-807298D0 000114 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298CC[4];
#pragma pop

/* 807298D0-807298D4 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807298D0[4];
#pragma pop

/* 807298D4-807298D8 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807298D4[4];
#pragma pop

/* 807298D8-807298DC 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807298D8[4];
#pragma pop

/* 807298DC-807298E0 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807298DC[4];
#pragma pop

/* 807298E0-807298E4 000128 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807298E0[4];
#pragma pop

/* 807298E4-807298E8 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807298E4[4];
#pragma pop

/* 807298E8-807298EC 000130 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807298E8[4];
#pragma pop

/* 807298EC-807298F0 000134 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298EC[4];
#pragma pop

/* 807298F0-807298F4 000138 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298F0[4];
#pragma pop

/* 807298F4-807298F8 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807298F4[4];
#pragma pop

/* 807298F8-807298FC 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807298F8[4];
#pragma pop

/* 807295FC-807295FC 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 807296FC-8072971C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MS_Method */
static actor_method_class l_daE_MS_Method = {
    (process_method_func)daE_MS_Create,
    (process_method_func)daE_MS_Delete,
    (process_method_func)daE_MS_Execute,
    (process_method_func)daE_MS_IsDelete,
    (process_method_func)daE_MS_Draw,
};

/* 8072971C-8072974C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MS */
extern actor_process_profile_definition g_profile_E_MS = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_MS,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_ms_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  177,                   // mPriority
  &l_daE_MS_Method,      // sub_method
  0x00050100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
