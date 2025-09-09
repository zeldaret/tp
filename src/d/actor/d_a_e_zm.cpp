/**
 * @file d_a_e_zm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_zm.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_ZM_HIO_cFv();
extern "C" void draw__8daE_ZM_cFv();
extern "C" static void daE_ZM_Draw__FP8daE_ZM_c();
extern "C" void setBck__8daE_ZM_cFiUcff();
extern "C" void setActionMode__8daE_ZM_cFii();
extern "C" void damage_check__8daE_ZM_cFv();
extern "C" void mCutTypeCheck__8daE_ZM_cFv();
extern "C" static void s_PointSearch__FPvPv();
extern "C" void executeSearchPoint__8daE_ZM_cFv();
extern "C" void executeWait__8daE_ZM_cFv();
extern "C" void executeMove__8daE_ZM_cFv();
extern "C" void executeAttack__8daE_ZM_cFv();
extern "C" void executeDamage__8daE_ZM_cFv();
extern "C" void executeDead__8daE_ZM_cFv();
extern "C" void executeBullet__8daE_ZM_cFv();
extern "C" void action__8daE_ZM_cFv();
extern "C" void mtx_set__8daE_ZM_cFv();
extern "C" void cc_set__8daE_ZM_cFv();
extern "C" void execute__8daE_ZM_cFv();
extern "C" static void daE_ZM_Execute__FP8daE_ZM_c();
extern "C" static bool daE_ZM_IsDelete__FP8daE_ZM_c();
extern "C" void _delete__8daE_ZM_cFv();
extern "C" static void daE_ZM_Delete__FP8daE_ZM_c();
extern "C" void CreateHeap__8daE_ZM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_ZM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daE_ZM_Create__FP8daE_ZM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_ZM_HIO_cFv();
extern "C" void __sinit_d_a_e_zm_cpp();
extern "C" static void func_80832884();
extern "C" static void func_8083288C();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_zm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
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
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
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
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void SetVsGrp__10cCcD_ObjCoFUl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
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
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
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

//
// Declarations:
//

class daE_ZM_HIO_c : public JORReflexible {
public:
    /* 8082F94C */ daE_ZM_HIO_c();
    /* 80832800 */ virtual ~daE_ZM_HIO_c() {}

    void genMessage(JORMContext*);

    /* ザントの首 Zant's Head */
    /* 0x04 */ s8 id;
    /* 0x08 */ f32 model_size;                          // モデルサイズ - Model Size
    /* 0x0C */ f32 occurance_range;                     // 出現範囲 - Occurance Range
    /* 0x10 */ f32 bullet_speed;                        // 弾速度 - Bullet Speed
    /* 0x14 */ s16 wait_time_after_attack;              // 攻撃後の待ち時間 - Wait Time After Attack
    /* 0x16 */ s16 wait_time_before_attack;             // 攻撃前の待ち時間 - Wait Time Before Attack
    /* 0x18 */ s16 wait_time_to_appear_after_attack;    // 攻撃終了後次回出現までの待ち時間 - Wait Time To Appear After Attack
    /* 0x1A */ s16 stun_time;                           // 麻痺時間 - Stun Time
};

/* 80832DFC-80832E40 000038 0044+00 1/1 0/0 0/0 .data            cc_zm_src__22@unnamed@d_a_e_zm_cpp@
 */
SECTION_DATA static u8 data_80832DFC[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x45,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x25, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};

/* 80832E40-80832E80 00007C 0040+00 1/1 0/0 0/0 .data cc_zm_at_src__22@unnamed@d_a_e_zm_cpp@ */
SECTION_DATA static u8 data_80832E40[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80832E80-80832E84 0000BC 0004+00 1/1 0/0 0/0 .data            eff_delete_id$4116 */
// static u16 eff_delete_id[2] = {
//     0x8869,
//     0x886A,
// };

/* 80832E84-80832E8C 0000C0 0006+02 1/1 0/0 0/0 .data            eff_bullet_id$4543 */
SECTION_DATA static u8 eff_bullet_id[6 + 2 /* padding */] = {
    0x88,
    0x66,
    0x88,
    0x67,
    0x88,
    0x68,
    /* padding */
    0x00,
    0x00,
};

/* 80832E8C-80832E94 0000C8 0008+00 1/1 0/0 0/0 .data            eff_bullet_delete_id$4544 */
SECTION_DATA static u8 eff_bullet_delete_id[8] = {
    0x88, 0x62, 0x88, 0x63, 0x88, 0x64, 0x88, 0x65,
};

/* 80832E94-80832EB0 -00001 001C+00 1/1 0/0 0/0 .data            @4712 */
SECTION_DATA static void* lit_4712[7] = {
    (void*)(((char*)action__8daE_ZM_cFv) + 0x48), (void*)(((char*)action__8daE_ZM_cFv) + 0x54),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x60), (void*)(((char*)action__8daE_ZM_cFv) + 0x6C),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x78), (void*)(((char*)action__8daE_ZM_cFv) + 0x84),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x90),
};

/* 80832F00-80832F0C 00013C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80832F0C-80832F18 000148 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80832F18-80832F24 000154 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80832F24-80832F30 000160 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80832F30-80832F3C 00016C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80832F3C-80832F48 000178 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80832F48-80832F6C 000184 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8083288C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80832884,
};

/* 80832F6C-80832F78 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_ZM_HIO_c */
SECTION_DATA extern void* __vt__12daE_ZM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_ZM_HIO_cFv,
};

/* 8082F94C-8082F9A0 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__12daE_ZM_HIO_cFv */
daE_ZM_HIO_c::daE_ZM_HIO_c() {
    id = -1;
    model_size = 2.0f;
    bullet_speed = 35.0f;
    occurance_range = 300.0f;
    wait_time_before_attack = 60;
    wait_time_after_attack = 60;
    stun_time = 200;
    wait_time_to_appear_after_attack = 100;
}

/* 80832F80-80832F84 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 80832F90-80832FAC 000018 001C+00 11/11 0/0 0/0 .bss             l_HIO */
static daE_ZM_HIO_c l_HIO;

/* 8082F9A0-8082FBB4 000140 0214+00 1/1 0/0 0/0 .text            draw__8daE_ZM_cFv */
int daE_ZM_c::draw() {
    if (field_0x726 == 10) {
        return 1;
    }

    cXyz pos;

    if (field_0x726 == 20) {
        return 1;
    }
    
    if (mAction != 5 && field_0x726 < 10 && attention_info.distances[fopAc_attn_BATTLE_e] == 0) {
        return 1;
    }
    
    if (field_0x72a != 0xFF && !fopAcM_isSwitch(this, field_0x72a)) {
        return 1;
    }

    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(2, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    J3DModelData* modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* matNodeP = modelData->getMaterialNodePointer(i);

        if (matNodeP != NULL) {
            matNodeP->getTevColor(0)->r = field_0x708[0];
            matNodeP->getTevColor(0)->g = field_0x708[1];
            matNodeP->getTevColor(0)->b = field_0x708[2];
        }
    }

    mpModelMorf->entryDL();

    if (field_0x6f4.y != l_HIO.model_size) {
        return 1;
    }

    pos.set(current.pos.x, current.pos.y + 10.0f, current.pos.z);
    dComIfGd_setSimpleShadow(&pos, mBgc.GetGroundH(), (BREG_F(18) + 70.0f) * l_HIO.model_size, mBgc.m_gnd, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    return 1;
}

/* 8082FBB4-8082FBD4 000354 0020+00 1/0 0/0 0/0 .text            daE_ZM_Draw__FP8daE_ZM_c */
static int daE_ZM_Draw(daE_ZM_c* i_this) {
    return i_this->draw();
}

/* 8082FBD4-8082FC80 000374 00AC+00 6/6 0/0 0/0 .text            setBck__8daE_ZM_cFiUcff */
void daE_ZM_c::setBck(int i_anm, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_ZM", i_anm), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    mAnm = i_anm;
}

/* 8082FC80-8082FC8C 000420 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_ZM_cFii */
void daE_ZM_c::setActionMode(int i_action, int i_actionMode) {
    mAction = i_action;
    mActionMode = i_actionMode;
}

/* 8082FC8C-808301E0 00042C 0554+00 1/1 0/0 0/0 .text            damage_check__8daE_ZM_cFv */
void daE_ZM_c::damage_check() {
    if (field_0x723 != 0) {
        return;
    }

    if (mAction == 6) {
        return;
    }

    if (field_0x6f4.y != l_HIO.model_size || health <= 1) {
        return;
    }

    csXyz angle;
    cXyz sp2c, sp38;
    bool bVar1 = false;

    if (parentActorID != 0 && mAction != 4) {
        daE_ZM_c* zm_p;
        if (fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&zm_p) != 0 && zm_p != NULL && zm_p->mActionMode >= 10) {
            sp2c = zm_p->current.pos - current.pos;

            if (sp2c.abs() < BREG_F(1) + 300.0f) {
                zm_p->health = 1;
                field_0x714 = 0.0f;
                mCyl.OffTgStopNoConHit();
                mCyl.ClrTgHit();
                setBck(4, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                setActionMode(4, 10);
                return;
            }
        }
    }

    cXyz i_effPos;
    i_effPos.set(current.pos);
    i_effPos.y += XREG_F(19) + 200.0f;
    scale.set(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    setMidnaBindEffect(this, &mSound, &i_effPos, &scale);

    if (mCyl.ChkTgHit()) {
        mAtInfo.mpCollider = mCyl.GetTgHitObj();
        field_0x723 = 10;
        sp2c = current.pos - *mCyl.GetTgHitPosP();
        sp38.set(*mCyl.GetTgHitPosP());
        angle.x = 0;
        angle.y = sp2c.atan2sX_Z();
        angle.z = 0;

        if (!mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_NORMAL_SWORD) && !mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_UNK)) {
            if (mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_IRON_BALL) || mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT) || mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_ARROW)) {
                def_se_set(&mSound, mAtInfo.mpCollider, 0x28, NULL);
                dComIfGp_setHitMark(2, this, &sp38, &angle, NULL, 0);
            }

            mStts.Move();
            return;
        }

        if (mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_MIDNA_LOCK)) {
            bVar1 = true;
            def_se_set(&mSound, mAtInfo.mpCollider, 31, 0);
            dComIfGp_setHitMark(3, this, &sp38, &angle, NULL, 0);
            health += -0x50;
        } else {
            cc_at_check(this, &mAtInfo);

            if (mAtInfo.mHitStatus == 0) {
                dComIfGp_setHitMark(1, this, &sp38, &angle, NULL, 0);
            } else {
                dComIfGp_setHitMark(3, this, &sp38, &angle, NULL, 0);
            }
        }

        if (health > 1) {
            field_0x72d++;

            if (bVar1 || field_0x72d < 3) {
                if (bVar1 || mCutTypeCheck()) {
                    field_0x723 = 8;
                    mCyl.ClrTgHit();
                    mCyl.OnTgStopNoConHit();
                    setActionMode(4, 1);
                    return;
                } else {
                    setActionMode(4, 0);
                }
            } else {
                field_0x725 = 0;
                setActionMode(1, 2);
            }
        } else {
            setActionMode(5, 0);
        }
    }

    mCyl.OffTgStopNoConHit();
    mStts.Move();
}

/* 808301E0-80830288 000980 00A8+00 1/1 0/0 0/0 .text            mCutTypeCheck__8daE_ZM_cFv */
bool daE_ZM_c::mCutTypeCheck() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (player->getCutCount() >= 4) {
        return true;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || player->getCutType() == daPy_py_c::CUT_TYPE_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL ||
        player->getCutType() == daPy_py_c::CUT_TYPE_TURN_LEFT) {
        return true;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH ||
        player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT ||
        player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B) {
        return true;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) {
        return true;
    }

    return false;
}

/* 80830288-8083033C 000A28 00B4+00 1/1 0/0 0/0 .text            s_PointSearch__FPvPv */
static void* s_PointSearch(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_ZM && ((daE_ZM_c*)i_actor)->field_0x726 == 10 &&
        ((daE_ZM_c*)i_data)->field_0x728 == ((daE_ZM_c*)i_actor)->field_0x728) {
        ((daE_ZM_c*)i_data)->field_0x66c[((daE_ZM_c*)i_data)->field_0x6e5] = ((daE_ZM_c*)i_actor)->current.pos;
        ((daE_ZM_c*)i_data)->field_0x6e5++;

        if (((daE_ZM_c*)i_data)->field_0x6e5 >= 10) {
            ((daE_ZM_c*)i_data)->field_0x6e5 = 0;
        }
    }

    return NULL;
}

/* 8083033C-80830398 000ADC 005C+00 1/1 0/0 0/0 .text            executeSearchPoint__8daE_ZM_cFv */
void daE_ZM_c::executeSearchPoint() {
    if (field_0x725 == 0) {
        field_0x6e5 = 0;
        fpcM_Search(s_PointSearch, this);
        setActionMode(1, 0);
    }
}

/* 80830398-808309DC 000B38 0644+00 1/1 0/0 0/0 .text            executeWait__8daE_ZM_cFv */
void daE_ZM_c::executeWait() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz i_scale(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    cXyz sp44;

    if (field_0x725 != 0) {
        return;
    }

    switch (mActionMode) {
        case 0: {
            if (field_0x726 == 1) {
                if (field_0x6e4 >= field_0x6e5) {
                    field_0x6e4 = 0;
                }

                current.pos.set(field_0x66c[field_0x6e4]);
                field_0x6e4++;
            } else if (field_0x726 == 2) {
                field_0x6e4 = cM_rndF(field_0x6e5);

                if (field_0x6e4 >= field_0x6e5) {
                    field_0x6e4 = 0;
                }

                current.pos.set(field_0x66c[field_0x6e4]);
            } else {
                sp44 = home.pos - player->current.pos;

                if (sp44.abs() > l_HIO.occurance_range) {
                    return;
                }

                current.pos.x = home.pos.x + cM_rndFX(l_HIO.occurance_range);
                current.pos.z = home.pos.z + cM_rndFX(l_HIO.occurance_range);
            }

            attention_info.distances[fopAc_attn_BATTLE_e] = 3;
            fopAcM_OnStatus(this, 0);
            attention_info.flags |= 4;
            mCyl.OnTgSetBit();
            mCyl.OnCoSetBit();
            field_0x6f4.set(0.0f, l_HIO.model_size * 5.0f, 0.0f);
            sp44.set(current.pos);
            sp44.y += field_0x71c;
            mSound.startCreatureSound(Z2SE_EN_ZM_EMERGE, 0, -1);
            dComIfGp_particle_set(0x8861, &sp44, &shape_angle, &i_scale);
            
            s16 sVar1 = fopAcM_searchPlayerAngleY(this);
            current.angle.y = sVar1;
            shape_angle.y = sVar1;
            home.pos.set(current.pos);
            home.pos.y += 100.0f;
            setBck(6, J3DFrameCtrl::EMode_NONE, 3.0f, 0.0f);
            mpModelMorf->setFrame(0.0f);
            mActionMode = 1;
            // fallthrough
        }
        case 1:
            cLib_addCalc2(&field_0x6f4.x, l_HIO.model_size, 0.7f, 1.0f);
            cLib_addCalc2(&field_0x6f4.y, l_HIO.model_size, 0.8f, 2.0f);
            cLib_addCalc2(&field_0x6f4.z, l_HIO.model_size, 0.7f, 1.0f);

            if (fabsf(field_0x6f4.y - l_HIO.model_size) <= 0.1f) {
                field_0x6f4.set(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
                setActionMode(2, 0);
            }
            break;
            
        case 2:
            mStts.Move();
            mCyl.OffTgSetBit();
            mCyl.OffCoSetBit();
            field_0x72d = 0;
            field_0x714 = 0.0f;
            field_0x700.z = 0;
            field_0x700.x = 0;
            sp44.set(current.pos);
            sp44.y += field_0x71c;

            static u16 eff_delete_id[2] = {
                0x8869,
                0x886A,
            };

            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(eff_delete_id[i], &sp44, &shape_angle, &i_scale);
            }

            mSound.startCreatureSound(Z2SE_EN_ZM_DISAPPER, 0, -1);
            mActionMode++;
            // fallthrough
        case 3:
            cLib_addCalc0(&field_0x6f4.x, 0.7f, 1.0f);
            cLib_addCalc2(&field_0x6f4.y, l_HIO.model_size * 5.0f, 0.8f, 2.0f);
            cLib_addCalc0(&field_0x6f4.z, 0.7f, 1.0f);

            if (fabsf(field_0x6f4.y - l_HIO.model_size * 5.0f) <= 0.1f) {
                field_0x725 = l_HIO.wait_time_to_appear_after_attack;
                attention_info.distances[fopAc_attn_BATTLE_e] = 0;
                fopAcM_OffStatus(this, 0);
                attention_info.flags &= 0xFFFFFFFB;
                shape_angle.x = 0;
                field_0x6f4.set(0.0f, 0.0f, 0.0f);
                setActionMode(1, 0);
            }
            break;
    }
}

/* 808309DC-80830AB8 00117C 00DC+00 1/1 0/0 0/0 .text            executeMove__8daE_ZM_cFv */
void daE_ZM_c::executeMove() {
    switch (mActionMode) {
        case 0:
            mCyl.SetCoVsGrp(16);
            setBck(6, J3DFrameCtrl::EMode_NONE, 3.0f, 0.0f);
            mpModelMorf->setFrame(0.0f);
            mActionMode = 1;
            // fallthrough
        case 1:
            cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchPlayerAngleY(this), 2, 0x600);

            if (field_0x722 == 0) {
                field_0x725 = l_HIO.wait_time_before_attack;
                setActionMode(3, 0);
            }
    }
}

/* 80830AB8-80830E28 001258 0370+00 1/1 0/0 0/0 .text            executeAttack__8daE_ZM_cFv */
void daE_ZM_c::executeAttack() {
    cXyz i_scale(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    J3DModel* model = mpModelMorf->getModel();
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp44, sp50;
    csXyz angle;
    cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchPlayerAngleY(this), 2, 0x600);

    if (field_0x725 == 0) {
        switch (mActionMode) {
            case 0:
                setBck(6, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mActionMode = 1;
                break;
            
            case 1:
                if ((int)mpModelMorf->getFrame() == 2) {
                    mSound.startCreatureSound(Z2SE_EN_ZM_PRE_ATK, 0, -1);
                }

                mDoMtx_stack_c::copy(model->getAnmMtx(0));
                mDoMtx_stack_c::multVecZero(&sp44);

                if (mpModelMorf->isStop()) {
                    angle = shape_angle;
                    sp50.set(player->current.pos);
                    sp50.y += BREG_F(17) + 60.0f;
                    sp50 -= sp44;
                    angle.x = sp50.atan2sY_XZ();

                    parentActorID = fopAcM_createChild(PROC_E_ZM, fopAcM_GetID(this), 20, &sp44, fopAcM_GetRoomNo(this), &angle, NULL, -1, NULL);
                    dComIfGp_particle_set(0x886B, &sp44, &shape_angle, &i_scale);
                    mSound.startCreatureSound(Z2SE_EN_ZM_BALL_OUT, 0, -1);
                    setBck(6, J3DFrameCtrl::EMode_NONE, 3.0f, -1.0f);
                    mActionMode = 2;
                } else {
                    field_0x730[0] = dComIfGp_particle_set(field_0x730[0], 0x886C, &sp44, &shape_angle, &i_scale);
                }
                break;

            case 2:
                if (mpModelMorf->isStop()) {
                    field_0x725 = l_HIO.wait_time_after_attack;
                    setActionMode(1, 2);
                }
                break;
        }
    }
}

/* ############################################################################################## */
/* 80832D64-80832D68 00006C 0004+00 0/1 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 4000.0f;
COMPILER_STRIP_GATE(0x80832D64, &lit_4448);
#pragma pop

/* 80832D68-80832D6C 000070 0004+00 0/1 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 12000.0f;
COMPILER_STRIP_GATE(0x80832D68, &lit_4449);
#pragma pop

/* 80832D6C-80832D70 000074 0004+00 0/2 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = 500.0f;
COMPILER_STRIP_GATE(0x80832D6C, &lit_4450);
#pragma pop

/* 80832D70-80832D74 000078 0004+00 0/1 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = -500.0f;
COMPILER_STRIP_GATE(0x80832D70, &lit_4451);
#pragma pop

/* 80830E28-808310C4 0015C8 029C+00 1/1 0/0 0/0 .text            executeDamage__8daE_ZM_cFv */
void daE_ZM_c::executeDamage() {
    // NONMATCHING
    switch (mActionMode) {
        case 1:
            field_0x714 = 12000.0f;
            break;
        
        case 12:
            if (field_0x725 == 0) {
                setBck(6, J3DFrameCtrl::EMode_NONE, 3.0f, 0.0f);
                field_0x725 = l_HIO.wait_time_after_attack;
                setActionMode(1, 2);
            }
            break;
    }
}

/* ############################################################################################## */
/* 80832D74-80832D78 00007C 0004+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4528 = 40.0f;
COMPILER_STRIP_GATE(0x80832D74, &lit_4528);
#pragma pop

/* 80832D78-80832D7C 000080 0004+00 0/2 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4529 = -20.0f;
COMPILER_STRIP_GATE(0x80832D78, &lit_4529);
#pragma pop

/* 80832D7C-80832D80 000084 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80832D7C, &lit_4530);
#pragma pop

/* 80832D80-80832D84 000088 0004+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4531 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80832D80, &lit_4531);
#pragma pop

/* 80832D84-80832D88 00008C 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = 30.0f;
COMPILER_STRIP_GATE(0x80832D84, &lit_4532);
#pragma pop

/* 80832D88-80832D8C 000090 0004+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = -6.0f;
COMPILER_STRIP_GATE(0x80832D88, &lit_4533);
#pragma pop

/* 808310C4-80831474 001864 03B0+00 1/1 0/0 0/0 .text            executeDead__8daE_ZM_cFv */
void daE_ZM_c::executeDead() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D8C-80832D90 000094 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4677 = 20.0f;
COMPILER_STRIP_GATE(0x80832D8C, &lit_4677);
#pragma pop

/* 80832D90-80832D94 000098 0004+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 250.0f;
COMPILER_STRIP_GATE(0x80832D90, &lit_4678);
#pragma pop

/* 80832D94-80832D98 00009C 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 0.5f;
COMPILER_STRIP_GATE(0x80832D94, &lit_4679);
#pragma pop

/* 80832D98-80832D9C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 1.5f;
COMPILER_STRIP_GATE(0x80832D98, &lit_4680);
#pragma pop

/* 80831474-80831930 001C14 04BC+00 1/1 0/0 0/0 .text            executeBullet__8daE_ZM_cFv */
void daE_ZM_c::executeBullet() {
    // NONMATCHING
}

/* 80831930-80831B08 0020D0 01D8+00 2/1 0/0 0/0 .text            action__8daE_ZM_cFv */
void daE_ZM_c::action() {
    // NONMATCHING
}

/* 80831B08-80831B9C 0022A8 0094+00 2/2 0/0 0/0 .text            mtx_set__8daE_ZM_cFv */
void daE_ZM_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D9C-80832DA0 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4711 = 1000.0f;
COMPILER_STRIP_GATE(0x80832D9C, &lit_4711);
#pragma pop

/* 80832DA0-80832DA8 0000A8 0008+00 0/0 0/0 0/0 .rodata          @4714 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4714[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80832DA0, &lit_4714);
#pragma pop

/* 80832DA8-80832DAC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4772 = -60.0f;
COMPILER_STRIP_GATE(0x80832DA8, &lit_4772);
#pragma pop

/* 80832DAC-80832DB0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773 = 140.0f;
COMPILER_STRIP_GATE(0x80832DAC, &lit_4773);
#pragma pop

/* 80831B9C-80831D64 00233C 01C8+00 1/1 0/0 0/0 .text            cc_set__8daE_ZM_cFv */
void daE_ZM_c::cc_set() {
    // NONMATCHING
}

/* 80831D64-80831E74 002504 0110+00 1/1 0/0 0/0 .text            execute__8daE_ZM_cFv */
void daE_ZM_c::execute() {
    // NONMATCHING
}

/* 80831E74-80831E94 002614 0020+00 1/0 0/0 0/0 .text            daE_ZM_Execute__FP8daE_ZM_c */
static void daE_ZM_Execute(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 80831E94-80831E9C 002634 0008+00 1/0 0/0 0/0 .text            daE_ZM_IsDelete__FP8daE_ZM_c */
static bool daE_ZM_IsDelete(daE_ZM_c* param_0) {
    return true;
}

/* 80831E9C-80831F2C 00263C 0090+00 1/1 0/0 0/0 .text            _delete__8daE_ZM_cFv */
void daE_ZM_c::_delete() {
    // NONMATCHING
}

/* 80831F2C-80831F4C 0026CC 0020+00 1/0 0/0 0/0 .text            daE_ZM_Delete__FP8daE_ZM_c */
static void daE_ZM_Delete(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 80831F4C-80832044 0026EC 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_ZM_cFv */
void daE_ZM_c::CreateHeap() {
    // NONMATCHING
}

/* 80832044-80832064 0027E4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832DB0-80832DB4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5031 = -400.0f;
COMPILER_STRIP_GATE(0x80832DB0, &lit_5031);
#pragma pop

/* 80832DB4-80832DB8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5032 = 400.0f;
COMPILER_STRIP_GATE(0x80832DB4, &lit_5032);
#pragma pop

/* 80832DB8-80832DB8 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80832DBD = "E_zm";
#pragma pop

/* 80832064-80832580 002804 051C+00 1/1 0/0 0/0 .text            create__8daE_ZM_cFv */
void daE_ZM_c::create() {
    // NONMATCHING
}

/* 80832580-808325C8 002D20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 808325C8-80832610 002D68 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80832610-80832658 002DB0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80832658-808326B4 002DF8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 808326B4-80832724 002E54 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80832724-80832794 002EC4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80832794-80832798 002F34 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80832798-808327B8 002F38 0020+00 1/0 0/0 0/0 .text            daE_ZM_Create__FP8daE_ZM_c */
static void daE_ZM_Create(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 808327B8-80832800 002F58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

// /* 80832800-80832848 002FA0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_ZM_HIO_cFv */
// daE_ZM_HIO_c::~daE_ZM_HIO_c() {
//     // NONMATCHING
// }

/* 80832848-80832884 002FE8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_zm_cpp */
void __sinit_d_a_e_zm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80832848, __sinit_d_a_e_zm_cpp);
#pragma pop

/* 80832884-8083288C 003024 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80832884() {
    // NONMATCHING
}

/* 8083288C-80832894 00302C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8083288C() {
    // NONMATCHING
}

/* 80832CA8-80832CE4 003448 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80832DB8-80832DB8 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80832EB0-80832ED0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ZM_Method */
static actor_method_class l_daE_ZM_Method = {
    (process_method_func)daE_ZM_Create,
    (process_method_func)daE_ZM_Delete,
    (process_method_func)daE_ZM_Execute,
    (process_method_func)daE_ZM_IsDelete,
    (process_method_func)daE_ZM_Draw,
};

/* 80832ED0-80832F00 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ZM */
extern actor_process_profile_definition g_profile_E_ZM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ZM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_ZM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  174,                    // mPriority
  &l_daE_ZM_Method,       // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
