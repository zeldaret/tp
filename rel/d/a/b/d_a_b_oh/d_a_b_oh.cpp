/**
 * d_a_b_oh.cpp
 * Morpheel Tentacle
 */

#include "rel/d/a/b/d_a_b_oh/d_a_b_oh.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "rel/d/a/b/d_a_b_ob/d_a_b_ob.h"

#define ACTION_START 0
#define ACTION_WAIT 1
#define ACTION_ATTACK 2
#define ACTION_CAUGHT 3
#define ACTION_END 10
#define ACTION_NON 11

//
// Forward References:
//

extern "C" void __ct__12daB_OH_HIO_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daB_OH_Draw__FP10b_oh_class();
extern "C" static void start__FP10b_oh_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void wait__FP10b_oh_class();
extern "C" static void attack__FP10b_oh_class();
extern "C" static void caught__FP10b_oh_class();
extern "C" static void end__FP10b_oh_class();
extern "C" static void non__FP10b_oh_class();
extern "C" static void action__FP10b_oh_class();
extern "C" static void damage_check__FP10b_oh_class();
extern "C" static void daB_OH_Execute__FP10b_oh_class();
extern "C" static bool daB_OH_IsDelete__FP10b_oh_class();
extern "C" static void daB_OH_Delete__FP10b_oh_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daB_OH_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__12daB_OH_HIO_cFv();
extern "C" void __sinit_d_a_b_oh_cpp();
extern "C" extern char const* const d_a_b_oh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void startTentacleSound__12Z2CreatureOIF10JAISoundIDUcUlSc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8061D9D4-8061D9D8 000000 0004+00 12/12 0/0 0/0 .rodata          @3650 */
SECTION_RODATA static f32 const lit_3650 = 1.0f;
COMPILER_STRIP_GATE(0x8061D9D4, &lit_3650);

/* 8061D9D8-8061D9DC 000004 0004+00 1/2 0/0 0/0 .rodata          @3651 */
SECTION_RODATA static f32 const lit_3651 = 70.0f;
COMPILER_STRIP_GATE(0x8061D9D8, &lit_3651);

/* 8061DA7C-8061DAAC -00001 0030+00 1/1 0/0 0/0 .data            @4166 */
SECTION_DATA static void* lit_4166[12] = {
    (void*)(((char*)action__FP10b_oh_class) + 0xA0),
    (void*)(((char*)action__FP10b_oh_class) + 0xB0),
    (void*)(((char*)action__FP10b_oh_class) + 0xC0),
    (void*)(((char*)action__FP10b_oh_class) + 0xDC),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0x118),
    (void*)(((char*)action__FP10b_oh_class) + 0xFC),
    (void*)(((char*)action__FP10b_oh_class) + 0x10C),
};

/* 8061DAAC-8061DAEC 000030 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4457 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0, {{0, 0, 12}, {0xD8FBFDFF, 3}, 0x15}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {0x80}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            60.0f,
        },
    },
};

/* 8061DAEC-8061DB0C -00001 0020+00 1/0 0/0 0/0 .data            l_daB_OH_Method */
SECTION_DATA static void* l_daB_OH_Method[8] = {
    (void*)daB_OH_Create__FP10fopAc_ac_c,
    (void*)daB_OH_Delete__FP10b_oh_class,
    (void*)daB_OH_Execute__FP10b_oh_class,
    (void*)daB_OH_IsDelete__FP10b_oh_class,
    (void*)daB_OH_Draw__FP10b_oh_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 8061DB0C-8061DB3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_OH */
SECTION_DATA extern void* g_profile_B_OH[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00D20000, (void*)&g_fpcLf_Method,
    (void*)0x00001F88, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00DA0000, (void*)&l_daB_OH_Method,
    (void*)0x00044000, (void*)0x020E0000,
};

/* 8061DB3C-8061DB48 0000C0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8061DB48-8061DB54 0000CC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8061DB54-8061DB60 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8061DB60-8061DB6C 0000E4 000C+00 2/2 0/0 0/0 .data            __vt__12daB_OH_HIO_c */
SECTION_DATA extern void* __vt__12daB_OH_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daB_OH_HIO_cFv,
};

/* 8061B72C-8061B75C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__12daB_OH_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_OH_HIO_c::daB_OH_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__ct__12daB_OH_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8061D9DC-8061D9E0 000008 0004+00 1/2 0/0 0/0 .rodata          @3692 */
SECTION_RODATA static f32 const lit_3692 = -100.0f;
COMPILER_STRIP_GATE(0x8061D9DC, &lit_3692);

/* 8061B75C-8061B8B0 00011C 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
// matches with literals
#ifdef NONMATCHING
static int nodeCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        int jnt_no = param_0->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        b_oh_class* this_ = (b_oh_class*)model_p->getUserArea();

        if (this_ != NULL && jnt_no >= this_->field_0xca8 && jnt_no <= 29) {
            PSMTXCopy(model_p->i_getAnmMtx(jnt_no), *calc_mtx);
            mDoMtx_YrotM(*calc_mtx, this_->field_0x61c[jnt_no].y + this_->field_0x784[jnt_no].y);
            mDoMtx_ZrotM(*calc_mtx, this_->field_0x61c[jnt_no].x + this_->field_0x784[jnt_no].x);
            MtxTrans(this_->mTentacleLength + -100.0f, 1.0f, 1.0f, 1);
            PSMTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            MtxScale(1.0f, this_->field_0x8ec[jnt_no] + this_->field_0x9dc[jnt_no],
                     this_->field_0x8ec[jnt_no] + this_->field_0x9dc[jnt_no], 1);
            model_p->i_setAnmMtx(jnt_no, *calc_mtx);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int nodeCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/nodeCallBack__FP8J3DJointi.s"
}
#pragma pop
#endif

/* 8061B8B0-8061B960 000270 00B0+00 1/0 0/0 0/0 .text            daB_OH_Draw__FP10b_oh_class */
static int daB_OH_Draw(b_oh_class* i_this) {
    if (i_this->mAction == ACTION_NON) {
        return 1;
    }

    J3DModel* model_p = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->mTevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &i_this->mTevStr);

    i_this->mpBtk->entry(model_p->getModelData());
    i_this->mpBrk->entry(model_p->getModelData());
    i_this->mInvisModel.entryDL(NULL);
    return 1;
}

/* ############################################################################################## */
/* 8061D9E0-8061D9E4 00000C 0004+00 0/1 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = -1500.0f;
COMPILER_STRIP_GATE(0x8061D9E0, &lit_3781);
#pragma pop

/* 8061D9E4-8061D9E8 000010 0004+00 0/1 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8061D9E4, &lit_3782);
#pragma pop

/* 8061D9E8-8061D9EC 000014 0004+00 0/3 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8061D9E8, &lit_3783);
#pragma pop

/* 8061D9EC-8061D9F0 000018 0004+00 0/2 0/0 0/0 .rodata          @3784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3784 = 30.0f;
COMPILER_STRIP_GATE(0x8061D9EC, &lit_3784);
#pragma pop

/* 8061D9F0-8061D9F4 00001C 0004+00 0/2 0/0 0/0 .rodata          @3785 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3785 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x8061D9F0, &lit_3785);
#pragma pop

/* 8061D9F4-8061D9F8 000020 0004+00 0/1 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8061D9F4, &lit_3786);
#pragma pop

/* 8061DB78-8061DB7C 000008 0001+03 2/2 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8061DB7C-8061DB80 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8061DB80-8061DB84 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8061DB84-8061DB88 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8061DB88-8061DB8C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8061DB8C-8061DB90 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8061DB90-8061DB94 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8061DB94-8061DB98 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8061DB98-8061DB9C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8061DB9C-8061DBA0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8061DBA0-8061DBA4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8061DBA4-8061DBA8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8061DBA8-8061DBAC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8061DBAC-8061DBB0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8061DBB0-8061DBB4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8061DBB4-8061DBB8 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 8061DBB4 0001+00 data_8061DBB4 @1009 */
/* 8061DBB5 0003+00 data_8061DBB5 None */
#pragma push
#pragma force_active on
static u8 struct_8061DBB4;
#pragma pop

static u8 data_8061DBB5;

/* 8061DBC4-8061DBD4 000054 0010+00 2/3 0/0 0/0 .bss             l_HIO */
static daB_OH_HIO_c l_HIO;

/* 8061DBD4-8061DBD8 000064 0004+00 6/7 0/0 0/0 .bss             boss */
static b_ob_class* boss;

/* 8061DBD8-8061DBDC 000068 0004+00 0/1 0/0 0/0 .bss             Cinit */
#pragma push
#pragma force_active on
static int Cinit;
#pragma pop

/* 8061B960-8061BB18 000320 01B8+00 1/1 0/0 0/0 .text            start__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void start(b_oh_class* i_this) {
    cXyz sp28;

    switch (i_this->mActionPhase) {
    case 0:
        if (boss->field_0x4788 != i_this->field_0x5c8) {
            i_this->field_0xcac = -1500.0f;
        } else {
            i_this->field_0x608 = 0.3f;
            i_this->mActionPhase = 1;
        }
        break;
    case 1:
        if (i_this->field_0xcac < -100.0f) {
            for (int i = 0; i < 28; i++) {
                PSMTXCopy(i_this->mpMorf->getModel()->i_getAnmMtx(i), mDoMtx_stack_c::get());
                mDoMtx_stack_c::multVecZero(&sp28);

                if (sp28.y > boss->field_0x47a0) {
                    sp28.y = boss->field_0x47a0;
                    i_this->field_0x1f80 =
                        dComIfGp_particle_set(i_this->field_0x1f80, 0x8808, &sp28, NULL, NULL);
                    break;
                }
            }
        }

        cLib_addCalc0(&i_this->field_0xcac, 0.1f, 30.0f);
        cLib_addCalc2(&i_this->field_0x608, 0.3f, 0.1f, 0.005f);
        break;
    case 2:
        cLib_addCalc2(&i_this->field_0x608, 1.0f, 0.1f, 0.05f);
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void start(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/start__FP10b_oh_class.s"
}
#pragma pop
#endif

/* 8061BB18-8061BB54 0004D8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8061D9F8-8061D9FC 000024 0004+00 0/1 0/0 0/0 .rodata          @3805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3805 = 60.0f;
COMPILER_STRIP_GATE(0x8061D9F8, &lit_3805);
#pragma pop

/* 8061D9FC-8061DA00 000028 0004+00 0/1 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = -23000.0f;
COMPILER_STRIP_GATE(0x8061D9FC, &lit_3806);
#pragma pop

/* 8061DA00-8061DA04 00002C 0004+00 0/1 0/0 0/0 .rodata          @3807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3807 = 1300.0f;
COMPILER_STRIP_GATE(0x8061DA00, &lit_3807);
#pragma pop

/* 8061BB54-8061BC6C 000514 0118+00 1/1 0/0 0/0 .text            wait__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void wait(b_oh_class* i_this) {
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = (s16)(cM_rndF(30.0f) + 60.0f);
        break;
    case 1:
        cLib_addCalc2(&i_this->field_0x608, 1.0f, 0.1f, 0.005f);

        if (i_this->field_0xca8 == 0 && player_p->current.pos.y < -23000.0f &&
            i_this->mDistToPlayer < 1300.0f && i_this->mTimers[0] == 0 &&
            boss->field_0x4744 == 0 && boss->field_0x4794 == 0)
        {
            i_this->mAction = ACTION_ATTACK;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
            boss->field_0x4794 = 3;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void wait(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/wait__FP10b_oh_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8061DA04-8061DA08 000030 0004+00 0/2 0/0 0/0 .rodata          @3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3870[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8061DA04, &lit_3870);
#pragma pop

/* 8061DA08-8061DA0C 000034 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = -3.0f / 25.0f;
COMPILER_STRIP_GATE(0x8061DA08, &lit_3871);
#pragma pop

/* 8061DA0C-8061DA10 000038 0004+00 0/1 0/0 0/0 .rodata          @3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3872 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8061DA0C, &lit_3872);
#pragma pop

/* 8061DA10-8061DA14 00003C 0004+00 0/1 0/0 0/0 .rodata          @3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3873 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8061DA10, &lit_3873);
#pragma pop

/* 8061DA14-8061DA18 000040 0004+00 0/2 0/0 0/0 .rodata          @3874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3874 = 200.0f;
COMPILER_STRIP_GATE(0x8061DA14, &lit_3874);
#pragma pop

/* 8061DA18-8061DA1C 000044 0004+00 0/2 0/0 0/0 .rodata          @3875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3875 = 0.5f;
COMPILER_STRIP_GATE(0x8061DA18, &lit_3875);
#pragma pop

/* 8061DA1C-8061DA20 000048 0004+00 0/2 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3876 = 50.0f;
COMPILER_STRIP_GATE(0x8061DA1C, &lit_3876);
#pragma pop

/* 8061DA20-8061DA24 00004C 0004+00 0/1 0/0 0/0 .rodata          @3877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3877 = -24000.0f;
COMPILER_STRIP_GATE(0x8061DA20, &lit_3877);
#pragma pop

/* 8061DA24-8061DA28 000050 0004+00 0/2 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 1000.0f;
COMPILER_STRIP_GATE(0x8061DA24, &lit_3878);
#pragma pop

/* 8061DA28-8061DA2C 000054 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 3700.0f;
COMPILER_STRIP_GATE(0x8061DA28, &lit_3879);
#pragma pop

/* 8061DA2C-8061DA30 000058 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 11700.0f;
COMPILER_STRIP_GATE(0x8061DA2C, &lit_3880);
#pragma pop

/* 8061DA30-8061DA34 00005C 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 2.0f;
COMPILER_STRIP_GATE(0x8061DA30, &lit_3881);
#pragma pop

/* 8061DA34-8061DA38 000060 0004+00 0/1 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3882 = 4000.0f;
COMPILER_STRIP_GATE(0x8061DA34, &lit_3882);
#pragma pop

/* 8061DA38-8061DA3C 000064 0004+00 0/2 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3883 = 400.0f;
COMPILER_STRIP_GATE(0x8061DA38, &lit_3883);
#pragma pop

/* 8061BC6C-8061C070 00062C 0404+00 1/1 0/0 0/0 .text            attack__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void attack(b_oh_class* i_this) {
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
    i_this->field_0xca0++;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->field_0xc9c = 0.0f;
        i_this->field_0xca2 = 0;
        i_this->field_0xca4 = 0;

        if ((s16)(i_this->mAngleToPlayer - i_this->current.angle.y) > 0) {
            i_this->field_0xc88 = 1;
        } else {
            i_this->field_0xc88 = -1;
        }

        i_this->mActionPhase = 2;
        i_this->mTimers[0] = 100;
        i_this->field_0xca0 = 0;
        i_this->field_0xc98 = 0;
    case 1:
    case 2:
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = ACTION_WAIT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
            i_this->field_0xca2 = 0;
            return;
        }
    case 3:
        cLib_addCalcAngleS2(&i_this->field_0xc98, 0x200, 1, 32);

        if (i_this->field_0xca0 > 8) {
            cLib_addCalc2(&i_this->field_0xc90, -0.12f, 0.8f, 0.02f);
        }

        if (i_this->field_0xca0 < 70) {
            cLib_addCalcAngleS2(&i_this->field_0xca4, 0, 1, 500);
            cLib_addCalcAngleS2(&i_this->current.angle.y,
                                i_this->mAngleToPlayer + i_this->field_0xc88 * -0x600, 2, 0x400);
            cLib_addCalc2(&i_this->field_0xc9c, 200.0f, 0.5f, 50.0f);

            if (i_this->field_0xca0 < 30) {
                f32 fvar = player_p->current.pos.y - -24000.0f;
                if (fvar > 1000.0f) {
                    fvar = 1000.0f;
                }

                i_this->field_0xc96 = fvar + 3700.0f;

                cLib_addCalcAngleS2(&i_this->current.angle.x,
                                    (s16)(-fvar * 2.0f + 11700.0f) - 0x4000, 1, 1000);
            }
        } else {
            s16 var7;
            s16 var3;

            if (i_this->mTimers[1] != 0) {
                var7 = 6;
                var3 = i_this->field_0xc88 * 9000;
            } else {
                var7 = 10;
                var3 = i_this->field_0xc88 * 5000;
            }

            cLib_addCalcAngleS2(&i_this->field_0xca2, var7, 1, 1);
            cLib_addCalcAngleS2(&i_this->field_0xca4, var3, 1, 500);

            if (i_this->mTimers[1] == 0 || i_this->mTimers[1] > 10) {
                i_this->current.angle.y += (s16)(i_this->field_0xc88 * 300);
            }

            if (i_this->mActionPhase == 2) {
                for (int i = 7; i < 15; i++) {
                    if (i_this->mColliders[i].ChkCoHit()) {
                        cCcD_Obj* obj_p = i_this->mColliders[i].GetCoHitObj();
                        if (fopAcM_GetName(obj_p->GetAc()) == PROC_ALINK &&
                            !i_dComIfGp_event_runCheck())
                        {
                            if (!player_p->checkHookshotShootReturnMode() &&
                                boss->field_0x4744 == 0)
                            {
                                i_this->mActionPhase = 3;
                                boss->mDemoAction = 1;
                                boss->field_0x5ce8 = i_this->field_0x5c8;
                                i_this->mTimers[1] = 20;

                                if (boss->field_0x4752 != 1) {
                                    boss->field_0x4752 = 1;
                                    boss->field_0x4754 = 0;
                                    boss->field_0x4738 = 30;
                                    boss->field_0x473c = 2;
                                }

                                boss->field_0x59e0.startTentacleSound(
                                    Z2SE_EN_OI_TENT_SWING, i_this->field_0x5c8, 0,
                                    dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
                                break;
                            }
                        }
                    }
                }
            }
        }

        cLib_addCalcAngleS2(&i_this->field_0xc94, 22500, 1, 2000);
        cLib_addCalc2(&i_this->field_0xc8c, 4000.0f, 1.0f, 400.0f);
        if (i_this->mTimers[1] == 1) {
            i_this->mAction = ACTION_CAUGHT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void attack(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/attack__FP10b_oh_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8061DA3C-8061DA40 000068 0004+00 0/1 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = 500.0f;
COMPILER_STRIP_GATE(0x8061DA3C, &lit_3911);
#pragma pop

/* 8061C070-8061C1F8 000A30 0188+00 1/1 0/0 0/0 .text            caught__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void caught(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = 10;
        i_this->mTimers[1] = 50;
    case 1:
        i_this->field_0x60c = 500.0f;
        cLib_addCalcAngleS2(&i_this->field_0xca2, 6, 1, 1);
        cLib_addCalcAngleS2(&i_this->field_0xca4, i_this->field_0xc88 * 9000, 1, 500);

        if (i_this->mTimers[0] == 1) {
            boss->field_0x4738 = 21;
            boss->field_0x473c = 0;
            boss->field_0x59e0.startCreatureVoice(Z2SE_EN_OI_V_EAT, -1);
        }

        if (!(i_this->field_0x5cc & 0xF)) {
            dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (i_this->mTimers[1] == 0) {
            if (boss->mDemoAction != 0) {
                boss->mDemoAction = 3;
                boss->field_0x5c82 = 0;
            }

            i_this->mAction = ACTION_WAIT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void caught(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/caught__FP10b_oh_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8061DA40-8061DA44 00006C 0004+00 0/2 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 150.0f;
COMPILER_STRIP_GATE(0x8061DA40, &lit_3921);
#pragma pop

/* 8061C1F8-8061C298 000BB8 00A0+00 1/1 0/0 0/0 .text            end__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void end(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = 70;
        break;
    case 1:
        cLib_addCalc2(&i_this->field_0x60c, 1000.0f, 1.0f, 150.0f);

        if (i_this->mTimers[0] == 0) {
            cLib_addCalc0(&i_this->mTentacleLength, 1.0f, 1.0f);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void end(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/end__FP10b_oh_class.s"
}
#pragma pop
#endif

/* 8061C298-8061C2C4 000C58 002C+00 1/1 0/0 0/0 .text            non__FP10b_oh_class */
static void non(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        break;
    case 1:
        break;
    }
}

/* 8061C2C4-8061CB4C 000C84 0888+00 2/1 0/0 0/0 .text            action__FP10b_oh_class */
// close-ish
#ifdef NONMATCHING
static void action(b_oh_class* i_this) {
    BOOL bvar;
    int uvar;

    cXyz local_90;
    cXyz cstack_9c;

    i_this->mAngleToPlayer = fopAcM_searchPlayerAngleY(i_this);
    i_this->mDistToPlayer = fopAcM_searchPlayerDistance(i_this);

    fopAcM_OffStatus(i_this, 0);
    i_this->mAttentionInfo.mFlags = 0;

    uvar = 0;
    bvar = true;

    cLib_addCalcAngleS2(&i_this->field_0xc98, 0x800, 1, 0x10);

    switch (i_this->mAction) {
    case ACTION_START:
        start(i_this);
        uvar = 1;
        break;
    case ACTION_WAIT:
        wait(i_this);
        uvar = 1;
        break;
    case ACTION_ATTACK:
        attack(i_this);
        uvar = 2;
        boss->field_0x4794 = 180;
        break;
    case ACTION_CAUGHT:
        caught(i_this);
        bvar = false;
        uvar = 3;
        boss->field_0x4794 = 180;
        break;
    case ACTION_END:
        end(i_this);
        uvar = 1;
        break;
    case ACTION_NON:
        non(i_this);
        return;
    }

    if (boss->field_0x4752 == 2) {
        cLib_addCalc2(&i_this->field_0x60c, 500.0f, 1.0f, 80.0f);
    }

    if (uvar == 1) {
        f32 fvar15 = i_this->field_0x608 * 500.0f;
        f32 fvar14 = i_this->field_0x608 * 1500.0f;
        s16 tmp = 2000;

        for (int i = i_this->field_0xca8; i < 30; i++) {
            f32 fvar = 1.0f;
            if (i < 5) {
                fvar = i * 0.2f;
            } else if (i >= 20) {
                fvar = (i - 20) * 0.3f + 1.0f;
            }

            i_this->field_0x6d0[i].x = fvar * (fvar15 * cM_ssin(i_this->field_0x5f8 + (i * 1800)));
            i_this->field_0x6d0[i].y = fvar * (fvar14 * cM_ssin(i_this->field_0x5fa + (i * 1800)));

            i_this->field_0x838[i].x =
                tmp + fvar * (fvar15 * cM_ssin(i_this->field_0x5fa + (i * 7000)) * 0.5f);
            i_this->field_0x838[i].y =
                fvar * (fvar14 * cM_ssin(i_this->field_0x5f8 + (i * 7000)) * 0.5f);

            tmp -= 200;
            if (tmp < 0) {
                tmp = 0;
            }

            i_this->field_0x964[i] =
                i_this->field_0x610 + 1.0f +
                i_this->field_0x610 * cM_ssin(i_this->field_0x5f6 + i * -10000);
        }

        cLib_addCalcAngleS2(&i_this->current.angle.x, -0xF2C, 4, 100);
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->orig.angle.y, 4, 0x100);
    } else if (uvar == 2) {
        f32 fvar = i_this->field_0xc8c;
        for (int i = i_this->field_0xca8; i < 30; i++) {
            if (i >= 30 - i_this->field_0xca2) {
                i_this->field_0x6d0[i].y = i_this->field_0xca4;
            } else {
                i_this->field_0x6d0[i].y = 0;
            }

            if (i >= 13) {
                fvar *= i_this->field_0xc90 + 1.0f;
            }

            i_this->field_0x6d0[i].x =
                fvar * cM_ssin(i_this->field_0xc94 + i * i_this->field_0xc96);

            if (i >= 18) {
                i_this->field_0x838[i].x =
                    i_this->field_0xc9c * cM_ssin(i_this->field_0x5cc * 1000 + i * -4000);
            } else {
                i_this->field_0x838[i].x = 0;
            }

            i_this->field_0x838[i].y = 0;
            i_this->field_0x964[i] =
                i_this->field_0x610 + 1.0f +
                i_this->field_0x610 * cM_ssin(i_this->field_0x5f6 + i * -10000);
        }
    } else if (uvar == 3) {
        for (int i = i_this->field_0xca8; i < 30; i++) {
            i_this->field_0x838[i].y = 0;
            i_this->field_0x838[i].x = 0;

            if (i >= 30 - i_this->field_0xca2) {
                i_this->field_0x6d0[i].y = i_this->field_0xca4;
                i_this->field_0x6d0[i].x = 0;
                i_this->field_0x964[i] = 1.0f;
            } else {
                i_this->field_0x6d0[i].y = 0;
                i_this->field_0x6d0[i].x = 2250;
                i_this->field_0x964[i] =
                    i_this->field_0x610 + 1.0f +
                    i_this->field_0x610 * cM_ssin(i_this->field_0x5f6 + i * -10000);
            }
        }

        cLib_addCalcAngleS2(&i_this->current.angle.x, 0xA92, 4, 0x200);
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->orig.angle.y, 4, 0x800);
    }

    i_this->field_0x600 =
        (-i_this->field_0x614 - i_this->field_0x60c) + cM_ssin(i_this->field_0x5cc * 200) * 100.0f;
    i_this->field_0x604 = ((100.0f - i_this->field_0x614) - i_this->field_0x60c) +
                          cM_ssin(i_this->field_0x5cc * 200) * 100.0f;
    i_this->field_0x5f8 += (s16)i_this->field_0x600;
    i_this->field_0x5fa += (s16)i_this->field_0x604;
    i_this->field_0x5fc = i_this->field_0x60c + 2000.0f;
    i_this->field_0x5f6 += (s16)i_this->field_0x5fc;

    cLib_addCalc0(&i_this->field_0x60c, 0.1f, 50.0f);
    cLib_addCalc2(&i_this->field_0x610, 0.2f, 0.1f, 0.01f);

    if (uvar <= 3) {
        cLib_addCalc2(&i_this->mTentacleLength, l_HIO.mLength, 0.1f, 0.5f);
    }

    PSMTXCopy(i_this->mpMorf->getModel()->i_getAnmMtx(i_this->field_0x5c8 + 8),
              mDoMtx_stack_c::get());
    mDoMtx_stack_c::multVecZero(&i_this->current.pos);

    local_90.x = i_this->current.pos.x - boss->orig.pos.x;
    local_90.z = i_this->current.pos.z - boss->orig.pos.z;
    i_this->orig.angle.y = cM_atan2s(local_90.x, local_90.z);
    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 2, 0x2000);
    cLib_addCalcAngleS2(&i_this->shape_angle.x, i_this->current.angle.x, 2, 0x2000);

    for (int i = i_this->field_0xca8; i < 30; i++) {
        if (Cinit) {
            i_this->field_0x61c[i] = i_this->field_0x6d0[i];
            i_this->field_0x784[i] = i_this->field_0x838[i];
            i_this->field_0x8ec[i] = i_this->field_0x964[i];
        } else {
            cLib_addCalcAngleS2(&i_this->field_0x61c[i].x, i_this->field_0x6d0[i].x, 2,
                                i_this->field_0xc98);
            cLib_addCalcAngleS2(&i_this->field_0x61c[i].y, i_this->field_0x6d0[i].y, 2,
                                i_this->field_0xc98);
            cLib_addCalcAngleS2(&i_this->field_0x784[i].x, i_this->field_0x838[i].x, 2,
                                i_this->field_0xc98);
            cLib_addCalcAngleS2(&i_this->field_0x784[i].y, i_this->field_0x838[i].y, 2,
                                i_this->field_0xc98);
            cLib_addCalc2(&i_this->field_0x8ec[i], i_this->field_0x964[i], 0.5f, 0.2f);
            cLib_addCalc0(&i_this->field_0x9dc[i], 0.1f, 0.2f);
        }
    }

    for (int i = 0; i < 15; i++) {
        if (bvar && boss->mDemoAction == 0) {
            i_this->mColliders[i].OnCoSetBit();
        } else {
            i_this->mColliders[i].OffCoSetBit();
        }
    }

    Cinit = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/action__FP10b_oh_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8061DA44-8061DA48 000070 0004+00 0/0 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = 80.0f;
COMPILER_STRIP_GATE(0x8061DA44, &lit_4160);
#pragma pop

/* 8061DA48-8061DA4C 000074 0004+00 0/0 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 1500.0f;
COMPILER_STRIP_GATE(0x8061DA48, &lit_4161);
#pragma pop

/* 8061DA4C-8061DA50 000078 0004+00 0/0 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8061DA4C, &lit_4162);
#pragma pop

/* 8061DA50-8061DA54 00007C 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 100.0f;
COMPILER_STRIP_GATE(0x8061DA50, &lit_4163);
#pragma pop

/* 8061DA54-8061DA58 000080 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 2000.0f;
COMPILER_STRIP_GATE(0x8061DA54, &lit_4164);
#pragma pop

/* 8061DA58-8061DA5C 000084 0004+00 0/0 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8061DA58, &lit_4165);
#pragma pop

/* 8061DA5C-8061DA64 000088 0008+00 0/0 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4168[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8061DA5C, &lit_4168);
#pragma pop

/* 8061DA64-8061DA68 000090 0004+00 0/1 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = -1.0f;
COMPILER_STRIP_GATE(0x8061DA64, &lit_4216);
#pragma pop

/* 8061CB4C-8061CD98 00150C 024C+00 1/1 0/0 0/0 .text            damage_check__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static void damage_check(b_oh_class* i_this) {
    i_this->mCcStts.Move();

    if (i_this->field_0x5f4 == 0) {
        BOOL bvar = false;
        for (int i = 7; i < 15; i++) {
            if (i_this->mColliders[i].ChkTgHit()) {
                i_this->mAtInfo.mpCollider = i_this->mColliders[i].GetTgHitObj();
                i_this->mHealth = 1000;
                cc_at_check(i_this, &i_this->mAtInfo);

                PSMTXCopy(i_this->mpMorf->getModel()->i_getAnmMtx(i * 2 + 1),
                          mDoMtx_stack_c::get());
                mDoMtx_stack_c::multVecZero(&i_this->mEyePos);
                i_dComIfGp_setHitMark(1, i_this, &i_this->mEyePos, NULL, NULL, 0);
                mDoAud_seStart(Z2SE_EN_OI_HIT_TENTACLE, &i_this->mEyePos, 0, 0);

                bvar = true;
                i_this->field_0x5f4 = 20;
                break;
            }
        }

        if (i_this->mAction == ACTION_ATTACK && boss->field_0x5d10) {
            boss->field_0x5d10 = 0;
            bvar = true;
        }

        if (bvar) {
            i_this->field_0x60c = 2000.0f;
            i_this->field_0x610 = 0.5f;

            if (i_this->mAction != ACTION_WAIT) {
                i_this->mAction = ACTION_WAIT;
                i_this->mActionPhase = 0;
                i_this->field_0xc98 = 0;
                i_this->field_0xca2 = 0;
            }

            if (boss->mDemoAction != 0) {
                boss->mDemoAction = 100;
                boss->field_0x4738 = 30;
                boss->field_0x473c = 2;
                boss->field_0x4794 = 180;
            }

            i_this->field_0x5f4 = 6;
            boss->field_0x59e0.startCreatureVoice(Z2SE_EN_OI_V_TENT_DAMAGE, -1);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/damage_check__FP10b_oh_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8061DA68-8061DA6C 000094 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 20000.0f;
COMPILER_STRIP_GATE(0x8061DA68, &lit_4297);
#pragma pop

/* 8061CD98-8061D05C 001758 02C4+00 2/1 0/0 0/0 .text            daB_OH_Execute__FP10b_oh_class */
// matches with literals
#ifdef NONMATCHING
static int daB_OH_Execute(b_oh_class* i_this) {
    if (cDmrNowMidnaTalk()) {
        return 1;
    }

    if (i_this->field_0x5c8 == 0) {
        boss = (b_ob_class*)fopAcM_SearchByID(i_this->mParentPcId);
    }

    if (boss == NULL) {
        return 1;
    }

    if (boss->field_0x4752 == 5 && i_this->mAction != ACTION_END) {
        i_this->mAction = ACTION_END;
        i_this->mActionPhase = 0;
    }

    cXyz collider_center;

    i_this->field_0x5cc++;

    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (i_this->field_0x5f4 != 0) {
        i_this->field_0x5f4--;
    }

    damage_check(i_this);
    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y + i_this->field_0xcac,
                           i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    J3DModel* model_p = i_this->mpMorf->getModel();
    model_p->i_setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->play(NULL, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)), 0);
    i_this->mpBtk->play();
    i_this->mpBrk->play();
    i_this->mpMorf->modelCalc();

    int tmp = 1;
    if (i_this->mDistToPlayer > 150.0f && i_this->mAction == ACTION_WAIT) {
        tmp = i_this->field_0x5cc & 1;
    }

    for (int i = 0; i < 15; i++) {
        PSMTXCopy(model_p->i_getAnmMtx(tmp + i * 2), mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&collider_center);

        if (i_this->mAction >= ACTION_END) {
            collider_center.z -= 20000.0f;
        }

        i_this->mColliders[i].SetC(collider_center);

        if (i_this->mAction == ACTION_ATTACK) {
            i_this->mColliders[i].SetR(l_HIO.mModelSize * 70.0f);
        } else {
            i_this->mColliders[i].SetR(l_HIO.mModelSize * 50.0f);
        }

        dComIfG_Ccsp()->Set(&i_this->mColliders[i]);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_OH_Execute(b_oh_class* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/daB_OH_Execute__FP10b_oh_class.s"
}
#pragma pop
#endif

/* 8061D05C-8061D064 001A1C 0008+00 1/0 0/0 0/0 .text            daB_OH_IsDelete__FP10b_oh_class */
static int daB_OH_IsDelete(b_oh_class* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 8061DA74-8061DA74 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8061DA74 = "B_oh";
#pragma pop

/* 8061D064-8061D0B8 001A24 0054+00 1/0 0/0 0/0 .text            daB_OH_Delete__FP10b_oh_class */
static int daB_OH_Delete(b_oh_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "B_oh");
    if (i_this->field_0x1f86) {
        data_8061DBB5 = 0;
    }

    return 1;
}

/* ############################################################################################## */
/* 8061DA6C-8061DA70 000098 0004+00 0/1 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 39.0f;
COMPILER_STRIP_GATE(0x8061DA6C, &lit_4438);
#pragma pop

/* 8061D0B8-8061D39C 001A78 02E4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
// matches with literals
#ifdef NONMATCHING
static int useHeapInit(fopAc_ac_c* i_this) {
    b_oh_class* this_ = (b_oh_class*)i_this;

    this_->mpMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("B_oh", 0x29), NULL,
                                       NULL, NULL, 2, 1.0f, 0, -1, 1, NULL, 0, 0x11000284);
    if (this_->mpMorf == NULL || this_->mpMorf->getModel() == NULL) {
        return 0;
    }

    if (!this_->mInvisModel.create(this_->mpMorf->getModel(), 1)) {
        return 0;
    }

    this_->mpMorf->getModel()->setUserArea((u32)this_);

    for (u16 i = 0; i < this_->mpMorf->getModel()->getModelData()->getJointNum(); i++) {
        this_->mpMorf->getModel()->getModelData()->getJointNodePointer(i)->setCallBack(
            nodeCallBack);
    }

    this_->mpBtk = new mDoExt_btkAnm();
    if (this_->mpBtk == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_oh", 0x36);
    if (!this_->mpBtk->init(this_->mpMorf->getModel()->getModelData(), btk, TRUE, 2, 1.0f, 0, -1)) {
        return 0;
    }

    this_->mpBtk->setFrame(cM_rndF(39.0f));
    this_->mpBtk->setPlaySpeed(cM_rndFX(0.1f) + 1.0f);

    this_->mpBrk = new mDoExt_brkAnm();
    if (this_->mpBrk == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_oh", 0x2F);
    if (!this_->mpBrk->init(this_->mpMorf->getModel()->getModelData(), brk, TRUE, 2, 1.0f, 0, -1)) {
        return 0;
    }

    this_->mpBrk->setFrame(cM_rndF(39.0f));
    this_->mpBrk->setPlaySpeed(cM_rndFX(0.1f) + 1.0f);

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8061D39C-8061D3E4 001D5C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8061DA70-8061DA74 00009C 0004+00 0/1 0/0 0/0 .rodata          @4519 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4519 = 65536.0f;
COMPILER_STRIP_GATE(0x8061DA70, &lit_4519);
#pragma pop

/* 8061D3E4-8061D718 001DA4 0334+00 1/0 0/0 0/0 .text            daB_OH_Create__FP10fopAc_ac_c */
// matches with literals
#ifdef NONMATCHING
static int daB_OH_Create(fopAc_ac_c* i_this) {
    SETUP_ACTOR(b_oh_class);
    b_oh_class* this_ = (b_oh_class*)i_this;

    int phase = dComIfG_resLoad(&this_->mPhase, "B_oh");
    if (phase == cPhs_COMPLEATE_e) {
        this_->field_0x5c8 = fopAcM_GetParam(this_) & 0xFF;

        if (!fopAcM_entrySolidHeap(this_, useHeapInit, 0x23E0)) {
            return cPhs_ERROR_e;
        }

        if (!data_8061DBB5) {
            this_->field_0x1f86 = 1;
            data_8061DBB5 = 1;
            l_HIO.field_0x4 = -1;
        }

        this_->mHealth = 1000;
        this_->field_0x560 = 1000;

        this_->field_0x5cc = cM_rndF(65536.0f);
        this_->field_0x5f6 = cM_rndF(65536.0f);
        this_->field_0x5f8 = cM_rndF(65536.0f);
        this_->field_0x5fa = cM_rndF(65536.0f);
        this_->field_0x614 = cM_rndF(100.0f) + 400.0f;

        this_->mCcStts.Init(0xFF, 0, this_);
        for (int i = 0; i < 15; i++) {
            this_->mColliders[i].Set(cc_sph_src);
            this_->mColliders[i].SetStts(&this_->mCcStts);
            this_->mColliders[i].OnTgNoHitMark();
        }

        this_->current.angle.x = -0x3448;

        if (cDmr_SkipInfo) {
            this_->mAction = ACTION_WAIT;
            this_->mActionPhase = 1;
            this_->mTimers[0] = cM_rndF(100.0f) + 200.0f;
            this_->mTentacleLength = l_HIO.mLength;
            this_->field_0x608 = 1.0f;
            Cinit = 1;
        } else {
            this_->mAction = ACTION_START;
            Cinit = 0;
        }

        daB_OH_Execute(this_);
    }

    return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_OH_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/daB_OH_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8061D718-8061D7E4 0020D8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 8061D7E4-8061D868 0021A4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 8061D868-8061D8B0 002228 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8061D8B0-8061D8F8 002270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8061D8F8-8061D8FC 0022B8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8061D8FC-8061D938 0022BC 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__5csXyzFv.s"
}
#pragma pop

/* 8061D938-8061D93C 0022F8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8061D93C-8061D984 0022FC 0048+00 2/1 0/0 0/0 .text            __dt__12daB_OH_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_OH_HIO_c::~daB_OH_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_oh/d_a_b_oh/__dt__12daB_OH_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8061DBDC-8061DBE0 00006C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8061DBDC[4];
#pragma pop

/* 8061DBE0-8061DBE4 000070 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8061DBE0[4];
#pragma pop

/* 8061DBE4-8061DBE8 000074 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DBE4[4];
#pragma pop

/* 8061DBE8-8061DBEC 000078 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DBE8[4];
#pragma pop

/* 8061DBEC-8061DBF0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBEC[4];
#pragma pop

/* 8061DBF0-8061DBF4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBF0[4];
#pragma pop

/* 8061DBF4-8061DBF8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBF4[4];
#pragma pop

/* 8061DBF8-8061DBFC 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8061DBF8[4];
#pragma pop

/* 8061DBFC-8061DC00 00008C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8061DBFC[4];
#pragma pop

/* 8061DC00-8061DC04 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8061DC00[4];
#pragma pop

/* 8061DC04-8061DC08 000094 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DC04[4];
#pragma pop

/* 8061DC08-8061DC0C 000098 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DC08[4];
#pragma pop

/* 8061DC0C-8061DC10 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8061DC0C[4];
#pragma pop

/* 8061DC10-8061DC14 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC10[4];
#pragma pop

/* 8061DC14-8061DC18 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8061DC14[4];
#pragma pop

/* 8061DC18-8061DC1C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8061DC18[4];
#pragma pop

/* 8061DC1C-8061DC20 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8061DC1C[4];
#pragma pop

/* 8061DC20-8061DC24 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8061DC20[4];
#pragma pop

/* 8061DC24-8061DC28 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC24[4];
#pragma pop

/* 8061DC28-8061DC2C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8061DC28[4];
#pragma pop

/* 8061DC2C-8061DC30 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC2C[4];
#pragma pop

/* 8061DC30-8061DC34 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC30[4];
#pragma pop

/* 8061DC34-8061DC38 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC34[4];
#pragma pop

/* 8061DC38-8061DC3C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC38[4];
#pragma pop

/* 8061DC3C-8061DC40 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8061DC3C[4];
#pragma pop

/* 8061DA74-8061DA74 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
