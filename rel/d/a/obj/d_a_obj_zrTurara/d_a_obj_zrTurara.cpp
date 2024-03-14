/**
 * d_a_obj_zrTurara.cpp
 * Object - Zora River Stalactite
 */

#include "rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__16daZrTurara_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daZrTurara_cFv();
extern "C" void CreateHeap__12daZrTurara_cFv();
extern "C" void create__12daZrTurara_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void Execute__12daZrTurara_cFPPA3_A4_f();
extern "C" void move__12daZrTurara_cFv();
extern "C" void modeWait__12daZrTurara_cFv();
extern "C" void init_modeBreak__12daZrTurara_cFv();
extern "C" void modeBreak__12daZrTurara_cFv();
extern "C" void init_modeEnd__12daZrTurara_cFv();
extern "C" void modeEnd__12daZrTurara_cFv();
extern "C" void Draw__12daZrTurara_cFv();
extern "C" void Delete__12daZrTurara_cFv();
extern "C" static void daZrTurara_Draw__FP12daZrTurara_c();
extern "C" static void daZrTurara_Execute__FP12daZrTurara_c();
extern "C" static void daZrTurara_Delete__FP12daZrTurara_c();
extern "C" static void daZrTurara_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__16daZrTurara_HIO_cFv();
extern "C" void __sinit_d_a_obj_zrTurara_cpp();
extern "C" u8 const mCcDObjInfo__12daZrTurara_c[48];
extern "C" extern char const* const d_a_obj_zrTurara__stringBase0;
extern "C" u8 mCcDCyl__12daZrTurara_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80D41608-80D41614 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D41614-80D41628 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D4159C-80D415A0 000000 0004+00 3/4 0/0 0/0 .rodata          @3657 */
SECTION_RODATA static f32 const lit_3657 = 250.0f;
COMPILER_STRIP_GATE(0x80D4159C, &lit_3657);

/* 80D4056C-80D4059C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daZrTurara_HIO_cFv */
daZrTurara_HIO_c::daZrTurara_HIO_c() {
    mDebrisNum = 5;
    // mDebrisRange = 250.0f;
    mDebrisRange = FLOAT_LABEL(lit_3657);
}

/* 80D4178C-80D41798 000014 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static daZrTurara_HIO_c l_HIO;

/* 80D415A0-80D415D0 000004 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daZrTurara_c */
dCcD_SrcGObjInf const daZrTurara_c::mCcDObjInfo = {
    {0, {
        {0, 0, 0},
        {0x20, 0x11},
        {0}
    }},
    {1, 0, 1, 0, 0},
    {0xA, 0, 0, 0, 2},
    {0}
};

/* 80D41628-80D4166C 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daZrTurara_c */
dCcD_SrcCyl daZrTurara_c::mCcDCyl = {
    mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80D4166C-80D41678 -00001 000C+00 0/1 0/0 0/0 .data            @3916 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3916[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daZrTurara_cFv,
};
#pragma pop

/* 80D41678-80D41684 -00001 000C+00 0/1 0/0 0/0 .data            @3917 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3917[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__12daZrTurara_cFv,
};
#pragma pop

/* 80D41684-80D41690 -00001 000C+00 0/1 0/0 0/0 .data            @3918 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3918[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__12daZrTurara_cFv,
};
#pragma pop

/* 80D41690-80D416B4 000088 0024+00 0/1 0/0 0/0 .data            mode_proc$3915 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D416B4-80D416D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daZrTurara_Method */
static actor_method_class l_daZrTurara_Method = {
    (process_method_func)daZrTurara_Create__FP10fopAc_ac_c,
    (process_method_func)daZrTurara_Delete__FP12daZrTurara_c,
    (process_method_func)daZrTurara_Execute__FP12daZrTurara_c,
    (process_method_func)NULL,
    (process_method_func)daZrTurara_Draw__FP12daZrTurara_c,
};

/* 80D416D4-80D41704 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_zrTurara */
extern actor_process_profile_definition g_profile_Obj_zrTurara = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_zrTurara,
    &g_fpcLf_Method.mBase,
    sizeof(daZrTurara_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x28C,
    &l_daZrTurara_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80D41704-80D41710 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D41710-80D4171C 000108 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D4171C-80D41728 000114 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D41728-80D41734 000120 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D41734-80D4175C 00012C 0028+00 1/1 0/0 0/0 .data            __vt__12daZrTurara_c */
extern "C" extern void* __vt__12daZrTurara_c[10];

/* 80D4175C-80D41768 000154 000C+00 2/2 0/0 0/0 .data            __vt__16daZrTurara_HIO_c */
extern "C" extern void* __vt__16daZrTurara_HIO_c[3];

/* 80D41768-80D41774 000160 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
extern "C" extern void* __vt__14mDoHIO_entry_c[3];

/* 80D415D0-80D415D4 000034 0004+00 3/4 0/0 0/0 .rodata          @3699 */
SECTION_RODATA static f32 const lit_3699 = 1.0f;
COMPILER_STRIP_GATE(0x80D415D0, &lit_3699);

/* 80D405E4-80D40714 000164 0130+00 2/2 0/0 0/0 .text            setBaseMtx__12daZrTurara_cFv */
void daZrTurara_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
    // cXyz scale(1.0f, 1.0f, 1.0f);
    cXyz scale(FLOAT_LABEL(lit_3699), FLOAT_LABEL(lit_3699), FLOAT_LABEL(lit_3699));
    mpBaseModel->setBaseScale(scale);
    mpBaseModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
    mpRockModel->setBaseScale(scale);
    mpRockModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mRockBgMtx);
}

/* 80D40714-80D40844 000294 0130+00 1/0 0/0 0/0 .text            CreateHeap__12daZrTurara_cFv */
int daZrTurara_c::CreateHeap() {
    J3DModelData* base_model_data = (J3DModelData*)dComIfG_getObjectRes("M_DrpRock", 5);
    mpBaseModel = mDoExt_J3DModel__create(base_model_data, 0x80000, 0x11000084);
    if (mpBaseModel == NULL) {
        return 0;
    }
    J3DModelData* rock_model_data = (J3DModelData*)dComIfG_getObjectRes("M_DrpRock", 4);
    mpRockModel = mDoExt_J3DModel__create(rock_model_data, 0x80000, 0x11000084);
    if (mpRockModel == NULL) {
        return 0;
    }
    mpRockBgW = new dBgW();
    if (mpRockBgW == NULL ||
        mpRockBgW->Set((cBgD_t*)dComIfG_getObjectRes("M_DrpRock", 8), 1, &mRockBgMtx))
    {
        mpRockBgW = NULL;
        return 0;
    }
    return 1;
}

/* 80D415D4-80D415DC 000038 0004+04 1/1 0/0 0/0 .rodata          @3831 */
SECTION_RODATA static f32 const lit_3831[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D415D4, &lit_3831);

/* 80D415DC-80D415E4 000040 0008+00 1/1 0/0 0/0 .rodata          @3833 */
SECTION_RODATA static u8 const lit_3833[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D415DC, &lit_3833);

/* 80D40844-80D40B1C 0003C4 02D8+00 1/1 0/0 0/0 .text            create__12daZrTurara_cFv */
#ifdef NONMATCHING
// matches with literals
cPhs__Step daZrTurara_c::create() {
    fopAcM_SetupActor(this, daZrTurara_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "M_DrpRock");
    if (step == cPhs_COMPLEATE_e) {
        cPhs__Step bg_step = (cPhs__Step)MoveBGCreate("M_DrpRock", 9, dBgS_MoveBGProc_TypicalRotY,
                                                      0x2800, NULL);
        if (bg_step == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        mSw2 = getSwBit2();
        mDrawRock = true;
        mCcStatus.Init(0xff, 0xff, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStatus);
        u8 sw1 = getSwBit1();
        if (fopAcM_isSwitch(this, sw1)) {
            if (mpRockBgW != NULL) {
                dComIfG_Bgsp().Release(mpRockBgW);
                mpRockBgW->Move();
            }
            mCcCyl.OffTgSetBit();
            mDrawRock = false;
            init_modeEnd();
        } else if (mpRockBgW != NULL) {
            dComIfG_Bgsp().Regist(mpRockBgW, this);
            mpRockBgW->Move();
        }
        fopAcM_SetMtx(this, mpBaseModel->getBaseTRMtx());
        J3DJoint* base_joint = mpBaseModel->getModelData()->getJointNodePointer(0);
        J3DJoint* rock_joint = mpRockModel->getModelData()->getJointNodePointer(0);
        fopAcM_setCullSizeBox(
            this,
            scale.x * rock_joint->getMin()->x,
            scale.y * rock_joint->getMin()->y,
            scale.z * rock_joint->getMin()->z,
            scale.x * base_joint->getMax()->x,
            scale.y * base_joint->getMax()->y,
            scale.z * base_joint->getMax()->z
        );
        u8 scale = getScale();
        if (scale == 0xff) {
            scale = 0;
        }
        mScaleF = scale * 0.1f + 1.0f;
        setBaseMtx();
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daZrTurara_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/create__12daZrTurara_cFv.s"
}
#pragma pop
#endif

/* 80D40B1C-80D40B64 00069C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80D40B64-80D40BAC 0006E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D40BAC-80D40C08 00072C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80D40C08-80D40C68 000788 0060+00 1/0 0/0 0/0 .text            Execute__12daZrTurara_cFPPA3_A4_f
 */
int daZrTurara_c::Execute(Mtx** i_mtxP) {
    move();
    *i_mtxP = &mpBaseModel->getBaseTRMtx();
    setBaseMtx();
    if (mpRockBgW != NULL) {
        mpRockBgW->Move();
    }
    return 1;
}

/* 80D415E4-80D415E8 000048 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 130.0f;
COMPILER_STRIP_GATE(0x80D415E4, &lit_3926);
#pragma pop

/* 80D415E8-80D415EC 00004C 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 450.0f;
COMPILER_STRIP_GATE(0x80D415E8, &lit_3927);
#pragma pop

/* 80D415EC-80D415F0 000050 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 500.0f;
COMPILER_STRIP_GATE(0x80D415EC, &lit_3928);
#pragma pop

/* 80D41798-80D4179C 000020 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D41798[4];

/* 80D40C68-80D40D88 0007E8 0120+00 1/1 0/0 0/0 .text            move__12daZrTurara_cFv */
#ifdef NONMATCHING
// matches with literals
void daZrTurara_c::move() {
    typedef void (daZrTurara_c::*daZrTurara_modeFunc)();
    static daZrTurara_modeFunc mode_proc[3] = {
        &modeWait,
        &modeBreak,
        &modeEnd,
    };
    (this->*mode_proc[mMode])();
    mCcCyl.SetR(130.0f);
    mCcCyl.SetH(450.0f);
    cXyz pos = current.pos;
    pos.y -= 500.0f;
    mCcCyl.SetC(pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTurara_c::move() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/move__12daZrTurara_cFv.s"
}
#pragma pop
#endif

/* 80D40D88-80D40E0C 000908 0084+00 1/0 0/0 0/0 .text            modeWait__12daZrTurara_cFv */
void daZrTurara_c::modeWait() {
    if (mSw2 != 0xff && fopAcM_isSwitch(this, mSw2)) {
        init_modeBreak();
    }
    if (mCcCyl.ChkTgHit() && mCcCyl.GetTgHitGObj()->GetAtType() == AT_TYPE_BOMB) {
        init_modeBreak();
    }
}

/* 80D415F0-80D415F4 000054 0004+00 1/1 0/0 0/0 .rodata          @4013 */
SECTION_RODATA static f32 const lit_4013 = -1.0f;
COMPILER_STRIP_GATE(0x80D415F0, &lit_4013);

/* 80D40E0C-80D410E0 00098C 02D4+00 1/1 0/0 0/0 .text            init_modeBreak__12daZrTurara_cFv */
#ifdef NONMATCHING
// matches with literals
void daZrTurara_c::init_modeBreak() {
    mDoAud_seStart(Z2SE_OBJ_RG_ROCK_BREAK, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (mpRockBgW != NULL) {
        dComIfG_Bgsp().Release(mpRockBgW);
        mpRockBgW->Move();
    }
    mDrawRock = false;
    mCcCyl.OffTgSetBit();
    cXyz scale(mScaleF, mScaleF, mScaleF);
    dComIfGp_particle_set(0x8a93, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a94, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a95, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a96, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a97, &current.pos, NULL, &scale);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8a98, &current.pos, NULL, &scale);
    u8 sw1 = getSwBit1();
    fopAcM_onSwitch(this, sw1);
    mDebrisCount = 0;
    mBreakTimer = 0;
    mMode = 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTurara_c::init_modeBreak() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/init_modeBreak__12daZrTurara_cFv.s"
}
#pragma pop
#endif

/* 80D415F4-80D415F8 000058 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 200.0f;
COMPILER_STRIP_GATE(0x80D415F4, &lit_4059);
#pragma pop

/* 80D415F8-80D415FC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 20.0f;
COMPILER_STRIP_GATE(0x80D415F8, &lit_4060);
#pragma pop

/* 80D410E0-80D412A0 000C60 01C0+00 1/0 0/0 0/0 .text            modeBreak__12daZrTurara_cFv */
#ifdef NONMATCHING
// regalloc
void daZrTurara_c::modeBreak() {
    cXyz scale(mScaleF, mScaleF, mScaleF);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8a98, &current.pos, NULL, &scale);
    if (mBreakTimer != 0) {
        mBreakTimer--;
    } else {
        cXyz pos = current.pos;
        pos.y -= 200.0f;
        pos.x += l_HIO.mDebrisRange * cM_rndFX(1.0f);
        pos.y += l_HIO.mDebrisRange * cM_rndFX(1.0f);
        fopAcM_create(PROC_Obj_zrTuraraRc, getScale(), &pos,
                      fopAcM_GetRoomNo(this), NULL, NULL, 0xff);
        mDebrisCount++;
        mBreakTimer = cM_rndF(1.0f) * 20.0f;
        if (mDebrisCount >= l_HIO.mDebrisNum) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey);
            if (emitter != NULL) {
                emitter->becomeInvalidEmitter();
            }
            init_modeEnd();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTurara_c::modeBreak() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/modeBreak__12daZrTurara_cFv.s"
}
#pragma pop
#endif

/* 80D412A0-80D412AC 000E20 000C+00 2/2 0/0 0/0 .text            init_modeEnd__12daZrTurara_cFv */
void daZrTurara_c::init_modeEnd() {
    mMode = 2;
}

/* 80D412AC-80D412B0 000E2C 0004+00 1/0 0/0 0/0 .text            modeEnd__12daZrTurara_cFv */
void daZrTurara_c::modeEnd() {
    /* empty function */
}

/* 80D412B0-80D41380 000E30 00D0+00 1/0 0/0 0/0 .text            Draw__12daZrTurara_cFv */
int daZrTurara_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBaseModel->mModelData, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpRockModel->mModelData, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpBaseModel);
    if (mDrawRock) {
        mDoExt_modelUpdateDL(mpRockModel);
    }
    dComIfGd_setList();
    return 1;
}

/* 80D41380-80D413E8 000F00 0068+00 1/0 0/0 0/0 .text            Delete__12daZrTurara_cFv */
int daZrTurara_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "M_DrpRock");
    if (mpRockBgW != NULL && mpRockBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpRockBgW);
    }
    return 1;
}

/* 80D413E8-80D41414 000F68 002C+00 1/0 0/0 0/0 .text            daZrTurara_Draw__FP12daZrTurara_c
 */
static int daZrTurara_Draw(daZrTurara_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D41414-80D41434 000F94 0020+00 1/0 0/0 0/0 .text daZrTurara_Execute__FP12daZrTurara_c */
static int daZrTurara_Execute(daZrTurara_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D41434-80D41454 000FB4 0020+00 1/0 0/0 0/0 .text            daZrTurara_Delete__FP12daZrTurara_c
 */
static int daZrTurara_Delete(daZrTurara_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D41454-80D41474 000FD4 0020+00 1/0 0/0 0/0 .text            daZrTurara_Create__FP10fopAc_ac_c
 */
static cPhs__Step daZrTurara_Create(fopAc_ac_c* i_this) {
    return static_cast<daZrTurara_c*>(i_this)->create();
}

/* 80D41474-80D414BC 000FF4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTurara/d_a_obj_zrTurara/__dt__10cCcD_GSttsFv.s"
}
#pragma pop
