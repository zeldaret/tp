/**
 * @file d_a_e_bi.cpp
 * 
*/

#include "d/actor/d_a_e_bi.h"
#include "d/d_cc_d.h"
#include "d/d_bomb.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "Z2AudioLib/Z2Instances.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_BI_HIO_cFv();
extern "C" static void anm_init__FP10e_bi_classifUcf();
extern "C" static void daE_BI_Draw__FP10e_bi_class();
extern "C" static void pl_check__FP10e_bi_classf();
extern "C" static void damage_check__FP10e_bi_class();
extern "C" static void e_bi_wait__FP10e_bi_class();
extern "C" static void e_bi_up__FP10e_bi_class();
extern "C" static void e_bi_move__FP10e_bi_class();
extern "C" static void e_bi_ex__FP10e_bi_class();
extern "C" static void e_bi_water__FP10e_bi_class();
extern "C" static void e_bi_disap__FP10e_bi_class();
extern "C" static void water_check__FP10e_bi_class();
extern "C" static void action__FP10e_bi_class();
extern "C" static void s_fw_sub__FPvPv();
extern "C" static void ride_movebg_init__FP10e_bi_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void daE_BI_Execute__FP10e_bi_class();
extern "C" static bool daE_BI_IsDelete__FP10e_bi_class();
extern "C" static void daE_BI_Delete__FP10e_bi_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_BI_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_BI_HIO_cFv();
extern "C" void __sinit_d_a_e_bi_cpp();
extern "C" static void func_8068D360();
extern "C" static void func_8068D368();
extern "C" static void func_8068D370();
extern "C" static void func_8068D378();
extern "C" static void func_8068D380();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_bi__stringBase0;

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
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
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
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

/* 8068D924-8068D930 000038 000A+02 1/1 0/0 0/0 .data            ex_eff_id$4336 */
// static u16 ex_eff_id[5] = {
//     0x0A0D,
//     0x0A0E,
//     0x0A0F,
//     0x0A10,
//     0x0A11,
// };

/* 8068D930-8068D938 000044 0008+00 1/1 0/0 0/0 .data            w_eff_id$4525 */
// static u16 w_eff_id[4] = {
//     0x01B8, 0x01B9, 0x01BA, 0x01BB,
// };

/* 8068D938-8068D958 -00001 0020+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[8] = {
    (void*)(((char*)action__FP10e_bi_class) + 0x17C),
    (void*)(((char*)action__FP10e_bi_class) + 0x18C),
    (void*)(((char*)action__FP10e_bi_class) + 0x198),
    (void*)(((char*)action__FP10e_bi_class) + 0x1DC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1DC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1A8),
    (void*)(((char*)action__FP10e_bi_class) + 0x1BC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1D4),
};

/* 8068D958-8068D99C 00006C 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$4970 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        20.0f // mHeight
    } // mCyl
};

/* 8068D99C-8068D9DC 0000B0 0040+00 1/1 0/0 0/0 .data            at_sph_src$4971 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8068DA2C-8068DA38 000140 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8068DA38-8068DA44 00014C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8068DA44-8068DA50 000158 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8068DA50-8068DA74 000164 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D380,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D378,
};

/* 8068DA74-8068DA80 000188 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8068DA80-8068DA8C 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8068DA8C-8068DA98 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8068DA98-8068DAC8 0001AC 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D360,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D370,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D368,
};

/* 8068DAC8-8068DAD4 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BI_HIO_c */
SECTION_DATA extern void* __vt__12daE_BI_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BI_HIO_cFv,
};

/* 8068A5EC-8068A634 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_BI_HIO_cFv */
daE_BI_HIO_c::daE_BI_HIO_c() {
    field_0x4 = -1;
    basic_size = 1.0f;
    search_range = 400.0f;
    track_range = 600.0f;
    time_to_get_going = 30;
    movement_spd = 10.0f;
}

/* 8068A634-8068A6E0 000134 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_bi_classifUcf */
static void anm_init(e_bi_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_BI", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}

/* 8068A6E0-8068A90C 0001E0 022C+00 1/0 0/0 0/0 .text            daE_BI_Draw__FP10e_bi_class */
static int daE_BI_Draw(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    if (i_this->field_0xbad == 0) {
        return 1;
    }
    
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);
    J3DModelData* modelData = model->getModelData();
    modelData->getMaterialNodePointer(1)->getTevColor(1)->r = i_this->field_0x698;

    if (i_this->field_0x694 != 0) {
        model->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
        model->getModelData()->getMaterialNodePointer(2)->getShape()->hide();
        model->getModelData()->getMaterialNodePointer(1)->getShape()->show();
        model->getModelData()->getMaterialNodePointer(3)->getShape()->show();
    } else {
        model->getModelData()->getMaterialNodePointer(0)->getShape()->show();
        model->getModelData()->getMaterialNodePointer(2)->getShape()->show();
        model->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
        model->getModelData()->getMaterialNodePointer(3)->getShape()->hide();
    }

    i_this->mpModelMorf->entryDL();
    modelData->getMaterialNodePointer(1)->getTevColor(1)->r = 0;

    cXyz i_pos;
    i_pos.set(a_this->current.pos.x, a_this->current.pos.y + 100.0f + BREG_F(18), a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &i_pos,
                                            BREG_F(19) + 800.0f, 0.0f, a_this->current.pos.y,
                                            i_this->mObjAcch.GetGroundH(), i_this->mObjAcch.m_gnd,
                                            &a_this->tevStr, 0, 1.0f,
                                            dDlst_shadowControl_c::getSimpleTex());

    return 1;
}

/* 8068A90C-8068A96C 00040C 0060+00 3/3 0/0 0/0 .text            pl_check__FP10e_bi_classf */
static BOOL pl_check(e_bi_class* i_this, f32 param_2) {
    fopAc_ac_c* a_this = &i_this->actor;

    if (i_this->field_0x5b5 == 1) {
        return FALSE;
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    if (i_this->field_0x688 < param_2 && !fopAcM_otherBgCheck(a_this, player)) {
        return TRUE;
    }

    return FALSE;
}

/* 8068A96C-8068ABD8 00046C 026C+00 1/1 0/0 0/0 .text            damage_check__FP10e_bi_class */
static void damage_check(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    fopAc_ac_c* actor_p = dComIfGp_getPlayer(0);
    fopAc_ac_c* actor_p_2;

    if (i_this->field_0x692 == 0) {
        i_this->mStts.Move();

        if (i_this->field_0x82c.ChkAtShieldHit()) {
            i_this->mAction = 5;
            i_this->field_0x670 = 0;
            i_this->field_0x692 = 60;
            a_this->speedF = 0.0f;
            i_this->field_0x6a6 = i_this->field_0x684 + 0x8000;
        } else if (i_this->field_0x6f0.ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->field_0x6f0.GetTgHitObj();
            at_power_check(&i_this->mAtInfo);
            cc_at_check(a_this, &i_this->mAtInfo);

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                actor_p = dBomb_c::createEnemyBombHookshot(&a_this->eyePos, &a_this->current.angle, fopAcM_GetRoomNo(a_this));
                if (actor_p != NULL) {
                    actor_p_2 = fopAcM_SearchByID(i_this->field_0xba4);
                    if (actor_p_2 != NULL) {
                        actor_p_2->parentActorID = fopAcM_GetID(actor_p);
                    }

                    i_this->field_0x6b0 = 1;
                }
            }else if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                actor_p = dBomb_c::createEnemyBombBoomerang(&a_this->eyePos, &a_this->current.angle, fopAcM_GetRoomNo(a_this));
                if (actor_p != NULL) {
                    actor_p_2 = fopAcM_SearchByID(i_this->field_0xba4);
                    if (actor_p_2 != NULL) {
                        actor_p_2->parentActorID = fopAcM_GetID(actor_p);
                    }

                    i_this->field_0x6b0 = 1;
                }
            } else if (i_this->field_0x694 != 0 || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
                dBomb_c::createNormalBombExplode(&a_this->eyePos);
                i_this->field_0x6b0 = 1;
            } else {
                i_this->mAction = 5;
                i_this->field_0x670 = 0;
                i_this->field_0x692 = 60;
                a_this->speedF = 0.0f;

                if (i_this->mAtInfo.mHitType == HIT_TYPE_STUN) {
                    i_this->field_0x6a6 = actor_p->shape_angle.y;
                } else {
                    i_this->field_0x6a6 = i_this->field_0x684 + 0x8000;
                }
            }
        }
    }
}

UNK_REL_BSS;

/* 8068DB1C-8068DB20 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8068DB1C 0001+00 data_8068DB1C @1009 */
/* 8068DB1D 0003+00 data_8068DB1D None */
static u8 l_initHIO;

/* 8068DB2C-8068DB48 000054 001C+00 6/6 0/0 0/0 .bss             l_HIO */
static daE_BI_HIO_c l_HIO;

/* 8068ABD8-8068AED0 0006D8 02F8+00 1/1 0/0 0/0 .text            e_bi_wait__FP10e_bi_class */
static void e_bi_wait(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp28;

    switch (i_this->field_0x670) {
        case -2:
            anm_init(i_this, 4, 1.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->field_0x670 = 1;
            break;

        case 0:
            anm_init(i_this, 9, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureSound(Z2SE_EN_BI_CROUCH, 0, -1);
            i_this->field_0x670 = 1;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                if (i_this->field_0x5b5 == 1) {
                    i_this->mAction = 1;
                    i_this->field_0x670 = 0;
                } else {
                    anm_init(i_this, 10, 2.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                    i_this->field_0x670 = 2;
                    i_this->field_0x68c[0] = l_HIO.time_to_get_going;
                }
            }
            break;

        case 2:
            cLib_addCalc2(&a_this->current.pos.x, a_this->home.pos.x, 1.0f, 5.0f);
            cLib_addCalc2(&a_this->current.pos.z, a_this->home.pos.z, 1.0f, 5.0f);
            sp28 = a_this->current.pos - a_this->home.pos;
            sp28.y = 0.0f;

            if (sp28.abs() < 1.0f && !pl_check(i_this, l_HIO.search_range + 50.0f)) {
                i_this->mAction = 1;
                i_this->field_0x670 = 0;
            } else if (i_this->field_0x68c[0] == 0) {
                i_this->mAction = 2;
                i_this->field_0x670 = 0;
            }
            break;
    }
}

/* 8068AED0-8068B068 0009D0 0198+00 1/1 0/0 0/0 .text            e_bi_up__FP10e_bi_class */
static void e_bi_up(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    switch (i_this->field_0x670) {
        case 0:
            anm_init(i_this, 0xB, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureSound(Z2SE_EN_BI_STAND, 0, -1);
            i_this->field_0x670 = 1;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 8, 2.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->field_0x670 = 2;
            }
            break;

        case 2:
            if (pl_check(i_this, l_HIO.search_range)) {
                i_this->mAction = 0;
                i_this->field_0x670 = 0;
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x684, 4, 0x800);
    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 4, 0x2000);

    if (i_this->field_0x5b5 == 1 && i_this->field_0x670 >= 2) {
        fopAc_ac_c* actor_p = fopAcM_SearchByID(i_this->field_0xba8);
        if (actor_p != NULL && actor_p->field_0x567 != 0) {
            i_this->mAction = 7;
            i_this->field_0x670 = 0;
        }
    }
}

/* 8068B068-8068B428 000B68 03C0+00 1/1 0/0 0/0 .text            e_bi_move__FP10e_bi_class */
static void e_bi_move(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp40, sp4c;
    f32 fVar1 = 0.0f;
    sp40 = a_this->home.pos - a_this->current.pos;

    switch (i_this->field_0x670) {
        case 0:
            if (i_this->field_0x68c[0] == 0) {
                anm_init(i_this, 7, 3.0f, J3DFrameCtrl::EMode_LOOP, 3.0f);

                if (!pl_check(i_this, l_HIO.track_range)) {
                    i_this->field_0x670 = 5;
                } else {
                    i_this->field_0x670 = 1;
                }
            }
            break;

        case 1:
            fVar1 = l_HIO.movement_spd;
            i_this->field_0x680 = i_this->field_0x684;

            if (fopAcM_searchPlayerDistance(a_this) < KREG_F(7) + 150.0f) {
                i_this->field_0x670 = 2;
                anm_init(i_this, 5, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                fVar1 = 0.0f;
                a_this->speedF = fVar1;
            } else if (!pl_check(i_this, l_HIO.track_range)) {
                i_this->field_0x670 = 5;
            }
            break;

        case 2:
            i_this->field_0x988 = 1;

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x670 = 0;
                i_this->field_0x68c[0] = cM_rndF(20.0f);
                anm_init(i_this, 10, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 5:
            fVar1 = l_HIO.movement_spd;
            i_this->field_0x680 = cM_atan2s(sp40.x, sp40.z);
            sp40.y = 0.0f;

            if (i_this->field_0x694 == 0 && sp40.abs() < l_HIO.movement_spd * 1.5f) {
                i_this->mAction = 0;
                anm_init(i_this, 0xA, 2.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->field_0x670 = 2;
                i_this->field_0x68c[0] = l_HIO.time_to_get_going;
                // fVar1 = fVar2;
            } else {
                // fVar1 = fVar2;
                if (pl_check(i_this, l_HIO.search_range)) {
                    i_this->field_0x670 = 0;
                    i_this->field_0x68c[0] = 0;
                }
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x680, 2, 0x800);
    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, l_HIO.movement_spd);
    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 4, 0x2000);
}

/* 8068B428-8068B764 000F28 033C+00 1/1 0/0 0/0 .text            e_bi_ex__FP10e_bi_class */
static void e_bi_ex(e_bi_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp48, sp54;

    switch (i_this->field_0x670) {
        case 0:
            i_this->field_0x670 = 1;
            i_this->field_0x694 = 160;
            anm_init(i_this, 6, 10.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            f32 fVar1 = cM_rndF(0.2f) + 0.9f;
            i_this->field_0x6a2 = 0;
            i_this->field_0x6a4 = 3800.0f * fVar1;
            i_this->field_0x6a8 = fVar1 * 20.0f;
            a_this->speed.y = 23.0f;
            break;

        case 1:
            if (i_this->mObjAcch.ChkGroundHit()) {
                i_this->field_0x670 = 2;
                a_this->speed.y = 10.0f;
            }
            // fallthrough
        case 2:
            cLib_addCalc0(&i_this->field_0x6a8, 1.0f, 1.0f);
            cLib_addCalcAngleS2(&i_this->field_0x6a4, 0, 1, 200);
            break;
    }

    cMtx_YrotS(*calc_mtx, i_this->field_0x6a6);
    sp48.x = 0.0f;
    sp48.y = 0.0f;
    sp48.z = i_this->field_0x6a8;
    MtxPosition(&sp48, &sp54);
    a_this->current.pos += sp54;
    i_this->field_0x6a2 += i_this->field_0x6a4;

    if (i_this->field_0x694 != 0) {
        i_this->field_0x694--;
        i_this->mSound.startCreatureSoundLevel(Z2SE_OBJ_BOMB_IGNITION, 0, -1);
        i_this->field_0x696 += 0x1100;

        if (i_this->field_0x694 < 45) {
            i_this->field_0x696 += 0x1100;

            if (i_this->field_0x694 < 30) {
                i_this->field_0x696 += 0x1100;
            }
        }

        i_this->field_0x698 = 128.0f - cM_scos(i_this->field_0x696) * 127.0f;

        if (i_this->field_0x694 == 0) {
            dBomb_c::createNormalBombExplode(&a_this->eyePos);
            i_this->field_0x6b0 = 1;
        }

        static u16 ex_eff_id[5] = {
            0x0A0D,
            0x0A0E,
            0x0A0F,
            0x0A10,
            0x0A11,
        };

        for (int i = 0; i < 5; i++) {
            i_this->field_0xbc4[i] = dComIfGp_particle_set(i_this->field_0xbc4[i], ex_eff_id[i], &a_this->current.pos, &a_this->tevStr,
                                                           &a_this->shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->field_0xbc4[i]);
            
            if (emitter != NULL) {
                MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(0), *calc_mtx);
                emitter->setGlobalRTMatrix(*calc_mtx);
            }
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 4, 0x2000);
}

/* 8068B764-8068B938 001264 01D4+00 1/1 0/0 0/0 .text            e_bi_water__FP10e_bi_class */
static void e_bi_water(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp34, sp40;
    sp34 = a_this->home.pos - a_this->current.pos;

    switch (i_this->field_0x670) {
        case 0:
            anm_init(i_this, 7, 3.0f, J3DFrameCtrl::EMode_LOOP, 3.0f);
            i_this->field_0x670 = 1;
            i_this->field_0x68c[0] = 20;
            a_this->speed.y = 0.0f;
            // fallthrough
        case 1:
            if (i_this->field_0x68c[0] == 0) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                a_this->current.pos.y += a_this->speed.y;
                a_this->speed.y -= 0.1f;

                if (a_this->speed.y < -2.0f) {
                    a_this->speed.y = -2.0f;
                }

                cLib_addCalc0(&a_this->scale.x, 1.0f, 0.02f);
                cLib_addCalcAngleS2(&a_this->shape_angle.x, 0x7FFF, 0x10, 0x800);

                if (a_this->scale.x < 0.01f) {
                    i_this->field_0x6b0 = 1;
                }
            }
            break;
    }

    a_this->current.pos.x += a_this->speed.x;
    a_this->current.pos.z += a_this->speed.z;

    i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
    a_this->speed.x *= 0.9f;
    a_this->speed.z *= 0.9f;

    cXyz sp4c(a_this->current.pos);
    sp4c.y = i_this->field_0x6ac;

    if (fabsf(sp4c.y - a_this->current.pos.y) < 70.0f) {
        fopAcM_effHamonSet(&i_this->field_0xbe8, &sp4c, KREG_F(2) + 1.0f, 0.2f);
    }
}

/* 8068B938-8068BA28 001438 00F0+00 1/1 0/0 0/0 .text            e_bi_disap__FP10e_bi_class */
static void e_bi_disap(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    switch (i_this->field_0x670) {
        case 0:
            anm_init(i_this, 4, 10.0f, J3DFrameCtrl::EMode_NONE, 0.0f);
            i_this->field_0x660 = 40.0f;
            i_this->field_0x670 = 1;
            i_this->field_0x68c[0] = 10;
            break;

        case 1:
            if (i_this->field_0x68c[0] == 0) {
                i_this->field_0x660 -= 1.0f;

                if (i_this->field_0x660 < 0.0f) {
                    fopAcM_delete(a_this);
                    return;
                }
            }
            break;
    }

    i_this->mpModelMorf->setFrame(i_this->field_0x660);
}

/* 8068BA28-8068BAE0 001528 00B8+00 1/1 0/0 0/0 .text            water_check__FP10e_bi_class */
static BOOL water_check(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    Vec i_pos;
    dBgS_ObjGndChk_Spl gnd_chk_spl;

    i_pos.x = a_this->current.pos.x;
    i_pos.y = a_this->current.pos.y + 300.0f;
    i_pos.z = a_this->current.pos.z;
    gnd_chk_spl.SetPos(&i_pos);
    i_this->field_0x6ac = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);

    if (i_this->field_0x6ac > a_this->current.pos.y + 50.0f) {
        return TRUE;
    }

    return FALSE;
}

enum Action {
    /* 0x0 */ ACTION_WAIT,
    /* 0x1 */ ACTION_UP,
    /* 0x2 */ ACTION_MOVE,
    /* 0x5 */ ACTION_EX = 0x5,
    /* 0x6 */ ACTION_WATER,
    /* 0x7 */ ACTION_DISAP,
};

/* 8068BAE0-8068C068 0015E0 0588+00 2/1 0/0 0/0 .text            action__FP10e_bi_class */
static void action(e_bi_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp9c, spa8;

    i_this->field_0x684 = fopAcM_searchPlayerAngleY(a_this);
    i_this->field_0x688 = (a_this->home.pos - player->current.pos).abs();

    damage_check(i_this);

    s8 bVar1 = 1;
    s8 bVar2 = 0;
    s8 bVar3 = 0;
    s8 bVar4 = 1;

    switch (i_this->mAction) {
        case ACTION_WAIT:
            e_bi_wait(i_this);
            bVar3 = 1;
            break;

        case ACTION_UP:
            e_bi_up(i_this);
            break;

        case ACTION_MOVE:
            e_bi_move(i_this);
            bVar2 = 1;
            break;

        case ACTION_EX:
            e_bi_ex(i_this);
            bVar2 = 1;
            bVar3 = 1;
            break;

        case ACTION_WATER:
            e_bi_water(i_this);
            bVar1 = 0;
            bVar3 = 0;
            bVar4 = 0;
            break;

        case ACTION_DISAP:
            e_bi_disap(i_this);
            break;
    }

    if (fopAcM_GetRoomNo(a_this) == 3) {
        dBgS_LinChk lin_chk;
        sp9c = player->current.pos;
        sp9c.y += 150.0f;
        lin_chk.Set(&sp9c, &a_this->eyePos, a_this);

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            bVar1 = 0;
        }
    }

    if (bVar1 != 0) {
        fopAcM_OnStatus(a_this, 0);
        cLib_onBit<u32>(a_this->attention_info.flags, 4);
    } else {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    if (bVar2 != 0) {
        cXyz* ccMoveP = i_this->mStts.GetCCMoveP();
        if (ccMoveP != NULL) {
            a_this->current.pos.x += ccMoveP->x * 0.5f;
            a_this->current.pos.y += ccMoveP->y * 0.5f;
            a_this->current.pos.z += ccMoveP->z * 0.5f;
        }

        cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
        sp9c.x = 0.0f;
        sp9c.y = 0.0f;
        sp9c.z = a_this->speedF;
        MtxPosition(&sp9c, &spa8);
        a_this->speed.x = spa8.x;
        a_this->speed.z = spa8.z;
        a_this->current.pos += a_this->speed;
        a_this->speed.y -= 5.0f;
        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
    }

    if (bVar3 != 0) {
        cLib_onBit<u32>(a_this->attention_info.flags, 0x10);

        if (fopAcM_checkCarryNow(a_this)) {
            cLib_offBit<u32>(a_this->attention_info.flags, 0x10);
            fopAc_ac_c* bomb_p = dBomb_c::createEnemyBomb(&a_this->current.pos, &a_this->current.angle, fopAcM_GetRoomNo(a_this));

            if (bomb_p == NULL) {
                OS_REPORT("//////////////LEAF ID 2???\n");
            } else {
                fopAc_ac_c* actor_p = fopAcM_SearchByID(i_this->field_0xba4);
                if (actor_p != NULL) {
                    actor_p->parentActorID = fopAcM_GetID(bomb_p);

                    OS_REPORT("//////////////LEAF ID 1  %d\n", actor_p->parentActorID);
                }

                i_this->field_0x6b0 = 1;

                OS_REPORT("//////////////LEAF ID 1???\n");
            }
        }

        cLib_offBit<u32>(a_this->attention_info.flags, 4);
    } else {
        cLib_offBit<u32>(a_this->attention_info.flags, 0x10);
        cLib_onBit<u32>(a_this->attention_info.flags, 4);
    }

    if (bVar4 != 0 && water_check(i_this)) {
        i_this->mAction = 6;
        i_this->field_0x670 = 0;
        a_this->current.pos.y = i_this->field_0x6ac - (WREG_F(11) + 50.0f);
        cXyz i_pos(a_this->current.pos);

        static cXyz sc(0.8f, 0.8f, 0.8f);
        static u16 w_eff_id[4] = {
            0x01B8, 0x01B9, 0x01BA, 0x01BB,
        };

        for (int i = 0; i < 4; i++) {
            i_this->field_0xbd8[i] = dComIfGp_particle_set(i_this->field_0xbd8[i], w_eff_id[i], &i_pos, &a_this->tevStr,
                                                           &a_this->shape_angle, &sc, 0xFF, NULL,
                                                           -1, NULL, NULL, NULL);
        }

        i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_WATER_S, 0, -1);
    }

    cXyz i_effSize(0.75f, 0.75f, 0.75f);
    setMidnaBindEffect(&i_this->actor, &i_this->mSound, &a_this->eyePos, &i_effSize);
}

/* 8068C068-8068C1E8 001B68 0180+00 1/1 0/0 0/0 .text            s_fw_sub__FPvPv */
static void* s_fw_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_OBJ_FW) {
        cXyz sp28 = ((fopAc_ac_c*)i_actor)->current.pos - ((fopAc_ac_c*)i_data)->current.pos;
        if (sp28.abs() < XREG_F(18) + 500.0f) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8068C1E8-8068C350 001CE8 0168+00 1/1 0/0 0/0 .text            ride_movebg_init__FP10e_bi_class */
static void ride_movebg_init(e_bi_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp74, sp80;
    Vec i_pos;
    dBgS_ObjGndChk obj_gnd_chk;

    i_pos.x = a_this->current.pos.x;
    i_pos.y = a_this->current.pos.y + 200.0f;
    i_pos.z = a_this->current.pos.z;

    obj_gnd_chk.SetPos(&i_pos);
    i_pos.y = dComIfG_Bgsp().GroundCross(&obj_gnd_chk);
    a_this->current.pos.y = i_pos.y;

    fopAc_ac_c* actor_p = (fopAc_ac_c*)fpcM_Search(s_fw_sub, a_this);
    if (actor_p != NULL) {
        sp74 = a_this->current.pos - actor_p->current.pos;
        cMtx_YrotS(*calc_mtx, -actor_p->shape_angle.y);
        MtxPosition(&sp74, &i_this->field_0xbb0);
        i_this->field_0xba8 = fopAcM_GetID(actor_p);
        i_this->field_0xbad++;
    }
}

/* ############################################################################################## */
/* 8068D894-8068D898 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4906 = 27.0f;
COMPILER_STRIP_GATE(0x8068D894, &lit_4906);
#pragma pop

/* 8068D898-8068D89C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4907 = -27.0f;
COMPILER_STRIP_GATE(0x8068D898, &lit_4907);
#pragma pop

/* 8068D89C-8068D8A0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 7.5f;
COMPILER_STRIP_GATE(0x8068D89C, &lit_4908);
#pragma pop

/* 8068D8A0-8068D8A4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = 26.0f;
COMPILER_STRIP_GATE(0x8068D8A0, &lit_4909);
#pragma pop

/* 8068D8A4-8068D8A8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = 7.0f;
COMPILER_STRIP_GATE(0x8068D8A4, &lit_4910);
#pragma pop

/* 8068D8A8-8068D8AC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 18.0f;
COMPILER_STRIP_GATE(0x8068D8A8, &lit_4911);
#pragma pop

/* 8068D8AC-8068D8B0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912 = 8.0f;
COMPILER_STRIP_GATE(0x8068D8AC, &lit_4912);
#pragma pop

/* 8068D8B0-8068D8B4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4913 = 15.0f;
COMPILER_STRIP_GATE(0x8068D8B0, &lit_4913);
#pragma pop

/* 8068D8B4-8068D8B8 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = 45.0f;
COMPILER_STRIP_GATE(0x8068D8B4, &lit_4914);
#pragma pop

/* 8068D8B8-8068D8BC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4915 = -20000.0f;
COMPILER_STRIP_GATE(0x8068D8B8, &lit_4915);
#pragma pop

/* 8068D8BC-8068D8C0 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4916 = 25.0f;
COMPILER_STRIP_GATE(0x8068D8BC, &lit_4916);
#pragma pop

/* 8068D8C0-8068D8C4 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4917 = 120.0f;
COMPILER_STRIP_GATE(0x8068D8C0, &lit_4917);
#pragma pop

/* 8068D8C4-8068D8C8 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4918 = 90.0f;
COMPILER_STRIP_GATE(0x8068D8C4, &lit_4918);
#pragma pop

/* 8068D8C8-8068D8CC 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4919 = 17000.0f;
COMPILER_STRIP_GATE(0x8068D8C8, &lit_4919);
#pragma pop

/* 8068D8CC-8068D8D0 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = 30.0f;
COMPILER_STRIP_GATE(0x8068D8CC, &lit_4920);
#pragma pop

/* 8068C3C8-8068CA98 001EC8 06D0+00 2/1 0/0 0/0 .text            daE_BI_Execute__FP10e_bi_class */
static void daE_BI_Execute(e_bi_class* i_this) {
    // NONMATCHING
}

/* 8068CA98-8068CAA0 002598 0008+00 1/0 0/0 0/0 .text            daE_BI_IsDelete__FP10e_bi_class */
static bool daE_BI_IsDelete(e_bi_class* i_this) {
    return true;
}

/* 8068CAA0-8068CB08 0025A0 0068+00 1/0 0/0 0/0 .text            daE_BI_Delete__FP10e_bi_class */
static void daE_BI_Delete(e_bi_class* i_this) {
    // NONMATCHING
}

/* 8068CB08-8068CC00 002608 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D8D0-8068D8D4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5096 = -200.0f;
COMPILER_STRIP_GATE(0x8068D8D0, &lit_5096);
#pragma pop

/* 8068D8D4-8068D8D8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5097 = 65535.0f;
COMPILER_STRIP_GATE(0x8068D8D4, &lit_5097);
#pragma pop

/* 8068D8D8-8068D8D8 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068D8DD = "D_MN05A";
SECTION_DEAD static char const* const stringBase_8068D8E5 = "E_bi";
#pragma pop

/* 8068CC00-8068D080 002700 0480+00 1/0 0/0 0/0 .text            daE_BI_Create__FP10fopAc_ac_c */
static void daE_BI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8068D080-8068D0F0 002B80 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8068D0F0-8068D160 002BF0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8068D160-8068D1A8 002C60 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8068D1A8-8068D1F0 002CA8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8068D1F0-8068D238 002CF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8068D238-8068D294 002D38 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8068D294-8068D2DC 002D94 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8068D360-8068D368 002E60 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_8068D360() {
    // NONMATCHING
}

/* 8068D368-8068D370 002E68 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_8068D368() {
    // NONMATCHING
}

/* 8068D370-8068D378 002E70 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_8068D370() {
    // NONMATCHING
}

/* 8068D378-8068D380 002E78 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8068D378() {
    // NONMATCHING
}

/* 8068D380-8068D388 002E80 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8068D380() {
    // NONMATCHING
}

/* 8068D79C-8068D7D8 00329C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068DB48-8068DB58 000070 000C+04 0/0 0/0 0/0 .bss             @4522 */
#pragma push
#pragma force_active on
static u8 lit_4522[12 + 4 /* padding */];
#pragma pop

/* 8068DB58-8068DB64 000080 000C+00 0/0 0/0 0/0 .bss             sc$4521 */
// static cXyz sc;

AUDIO_INSTANCES;

/* 8068D9DC-8068D9FC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BI_Method */
static actor_method_class l_daE_BI_Method = {
    (process_method_func)daE_BI_Create,
    (process_method_func)daE_BI_Delete,
    (process_method_func)daE_BI_Execute,
    (process_method_func)daE_BI_IsDelete,
    (process_method_func)daE_BI_Draw,
};

/* 8068D9FC-8068DA2C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BI */
extern actor_process_profile_definition g_profile_E_BI = {
  fpcLy_CURRENT_e,        // mLayerID
  9,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_BI,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_bi_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  147,                    // mPriority
  &l_daE_BI_Method,       // sub_method
  0x100D0100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
