/**
 * @file d_a_obj_magLiftRot.cpp
 * 
*/

#include "d/actor/d_a_obj_magLiftRot.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#include "dol2asm.h"
#include "m_Do/m_Do_hostIO.h"
#include "d/d_bg_w.h"
#include "SSystem/SComponent/c_math.h"


//
// Forward References:
//

extern "C" void __ct__18daMagLiftRot_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__14daMagLiftRot_cFv();
extern "C" void CreateHeap__14daMagLiftRot_cFv();
extern "C" void create__14daMagLiftRot_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Execute__14daMagLiftRot_cFPPA3_A4_f();
extern "C" void moveLift__14daMagLiftRot_cFv();
extern "C" void init_modeMove__14daMagLiftRot_cFv();
extern "C" void modeMove__14daMagLiftRot_cFv();
extern "C" void init_modeWait__14daMagLiftRot_cFv();
extern "C" void modeWait__14daMagLiftRot_cFv();
extern "C" void init_modeMoveWait__14daMagLiftRot_cFv();
extern "C" void modeMoveWait__14daMagLiftRot_cFv();
extern "C" void Draw__14daMagLiftRot_cFv();
extern "C" void Delete__14daMagLiftRot_cFv();
extern "C" static void daMagLiftRot_Draw__FP14daMagLiftRot_c();
extern "C" static void daMagLiftRot_Execute__FP14daMagLiftRot_c();
extern "C" static void daMagLiftRot_Delete__FP14daMagLiftRot_c();
extern "C" static void daMagLiftRot_Create__FP10fopAc_ac_c();
extern "C" void __dt__18daMagLiftRot_HIO_cFv();
extern "C" void __sinit_d_a_obj_magLiftRot_cpp();
extern "C" extern char const* const d_a_obj_magLiftRot__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C8FAE8-80C8FAEC 000000 0004+00 6/6 0/0 0/0 .rodata          @3627 */
SECTION_RODATA static u8 const lit_3627[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C8FAE8, &lit_3627);

/* 80C8FAEC-80C8FAF0 000004 0004+00 0/1 0/0 0/0 .rodata          @3628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3628 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C8FAEC, &lit_3628);
#pragma pop

/* 80C8FAF0-80C8FAF4 000008 0004+00 0/1 0/0 0/0 .rodata          @3629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3629 = 8.0f;
COMPILER_STRIP_GATE(0x80C8FAF0, &lit_3629);
#pragma pop

/* 80C8FAF4-80C8FAF8 00000C 0004+00 0/1 0/0 0/0 .rodata          @3630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3630 = 200.0f;
COMPILER_STRIP_GATE(0x80C8FAF4, &lit_3630);
#pragma pop

/* 80C8FAF8-80C8FAFC 000010 0004+00 0/1 0/0 0/0 .rodata          @3631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3631 = 45.0f;
COMPILER_STRIP_GATE(0x80C8FAF8, &lit_3631);
#pragma pop

/* 80C8FAFC-80C8FB00 000014 0004+00 0/1 0/0 0/0 .rodata          @3632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3632 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C8FAFC, &lit_3632);
#pragma pop

/* 80C8FB00-80C8FB04 000018 0004+00 0/1 0/0 0/0 .rodata          @3633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3633 = 10.0f;
COMPILER_STRIP_GATE(0x80C8FB00, &lit_3633);
#pragma pop

/* 80C8FB04-80C8FB08 00001C 0004+00 1/7 0/0 0/0 .rodata          @3634 */
SECTION_RODATA static f32 const lit_3634 = 1.0f;
COMPILER_STRIP_GATE(0x80C8FB04, &lit_3634);

/* 80C8FB08-80C8FB0C 000020 0004+00 0/1 0/0 0/0 .rodata          @3635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3635 = 7.0f;
COMPILER_STRIP_GATE(0x80C8FB08, &lit_3635);
#pragma pop

/* 80C8FB0C-80C8FB10 000024 0004+00 0/1 0/0 0/0 .rodata          @3636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3636 = 60.0f;
COMPILER_STRIP_GATE(0x80C8FB0C, &lit_3636);
#pragma pop

/* 80C8FB10-80C8FB14 000028 0004+00 0/1 0/0 0/0 .rodata          @3637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3637 = 30.0f;
COMPILER_STRIP_GATE(0x80C8FB10, &lit_3637);
#pragma pop

/* 80C8FB14-80C8FB18 00002C 0004+00 0/1 0/0 0/0 .rodata          @3638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3638 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C8FB14, &lit_3638);
#pragma pop

/* 80C8FB74-80C8FB74 00008C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C8FB74 = "MagLiftS";
SECTION_DEAD static char const* const stringBase_80C8FB7D = "MagLiftM";
SECTION_DEAD static char const* const stringBase_80C8FB86 = "MagLiftL";
#pragma pop

/* 80C8FB90-80C8FB9C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C8FB9C-80C8FBB0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C8FBB0-80C8FBBC -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static char* l_arcName[3] = {"MagLiftS", "MagLiftM", "MagLiftL"};

/* 80C8FBBC-80C8FBC8 -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__14daMagLiftRot_cFv,
};
#pragma pop

/* 80C8FBC8-80C8FBD4 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__14daMagLiftRot_cFv,
};
#pragma pop

/* 80C8FBD4-80C8FBE0 -00001 000C+00 0/1 0/0 0/0 .data            @3858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveWait__14daMagLiftRot_cFv,
};
#pragma pop

/* 80C8FBE0-80C8FC04 000050 0024+00 0/1 0/0 0/0 .data            mode_proc$3855 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C8FC04-80C8FC10 000074 000C+00 1/1 0/0 0/0 .data            selLabel$3897 */
SECTION_DATA static u32 selLabel_3897[] = {Z2SE_OBJ_MAGNELIFT_TURN_S, Z2SE_OBJ_MAGNELIFT_TURN_M,
                                           Z2SE_OBJ_MAGNELIFT_TURN_L};

/* 80C8FC10-80C8FC1C 000080 000C+00 1/1 0/0 0/0 .data            selLabel$3963 */
SECTION_DATA static u32 selLabel_3963[] = {Z2SE_OBJ_MAGNELIFT_STOP_S, Z2SE_OBJ_MAGNELIFT_STOP_M,
                                           Z2SE_OBJ_MAGNELIFT_STOP_L};

/* 80C8FC1C-80C8FC3C -00001 0020+00 1/0 0/0 0/0 .data            l_daMagLiftRot_Method */
static actor_method_class l_daMagLiftRot_Method = {
    (process_method_func)daMagLiftRot_Create__FP10fopAc_ac_c,
    (process_method_func)daMagLiftRot_Delete__FP14daMagLiftRot_c,
    (process_method_func)daMagLiftRot_Execute__FP14daMagLiftRot_c,
    0,
    (process_method_func)daMagLiftRot_Draw__FP14daMagLiftRot_c,
};

/* 80C8FC3C-80C8FC6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MagLiftRot */
extern actor_process_profile_definition g_profile_Obj_MagLiftRot = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MagLiftRot,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x00000634,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  493,                    // mPriority
  &l_daMagLiftRot_Method, // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C8FC6C-80C8FC78 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C8FC78-80C8FCA0 0000E8 0028+00 1/1 0/0 0/0 .data            __vt__14daMagLiftRot_c */
SECTION_DATA extern void* __vt__14daMagLiftRot_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daMagLiftRot_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__14daMagLiftRot_cFPPA3_A4_f,
    (void*)Draw__14daMagLiftRot_cFv,
    (void*)Delete__14daMagLiftRot_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8FCA0-80C8FCAC 000110 000C+00 2/2 0/0 0/0 .data            __vt__18daMagLiftRot_HIO_c */
SECTION_DATA extern void* __vt__18daMagLiftRot_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daMagLiftRot_HIO_cFv,
};

/* 80C8FCAC-80C8FCB8 00011C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C8E94C-80C8E9E0 0000EC 0094+00 1/1 0/0 0/0 .text            __ct__18daMagLiftRot_HIO_cFv */
daMagLiftRot_HIO_c::daMagLiftRot_HIO_c() {
    // NONMATCHING
}

/* 80C8E9E0-80C8EA28 000180 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C8EA28-80C8EB1C 0001C8 00F4+00 2/2 0/0 0/0 .text            setBaseMtx__14daMagLiftRot_cFv */
void daMagLiftRot_c::setBaseMtx() {
    scale.x = field_0x62c;
    scale.y = 1.0f;
    scale.z = field_0x630;

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::ZXYrotM(field_0x5e6.x, field_0x5e6.y, field_0x5e6.z);
    mDoMtx_stack_c::transM(field_0x5ec.x, field_0x5ec.y, field_0x5ec.z);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);

    // this generates a cXyz dtor symbol with causes issues,
    // but this function doesnt match unless it's like this??
    mpModel->setBaseScale(cXyz(1.0f, 1.0f, 1.0f));

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}


/* ############################################################################################## */
/* 80C8FB18-80C8FB24 000030 000C+00 0/1 0/0 0/0 .rodata          l_bmdIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static int const l_bmdIdx[] = {4, 4, 6};
COMPILER_STRIP_GATE(0x80C8FB18, &l_bmdIdx);
#pragma pop

/* 80C8FB24-80C8FB30 00003C 000C+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static int const l_dzbIdx[] = {7, 7, 15};
COMPILER_STRIP_GATE(0x80C8FB24, &l_dzbIdx);
#pragma pop

/* 80C8FB30-80C8FB3C 000048 000C+00 2/3 0/0 0/0 .rodata          l_btkIdx */
SECTION_RODATA static int const l_btkIdx[] = {-1, -1, 12};
COMPILER_STRIP_GATE(0x80C8FB30, &l_btkIdx);

/* 80C8FB3C-80C8FB48 000054 000C+00 2/3 0/0 0/0 .rodata          l_brkIdx */
SECTION_RODATA static int const l_brkIdx[] = {-1, -1, 9};
COMPILER_STRIP_GATE(0x80C8FB3C, &l_brkIdx);

/* 80C8EB1C-80C8EC64 0002BC 0148+00 1/0 0/0 0/0 .text            CreateHeap__14daMagLiftRot_cFv */
int daMagLiftRot_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmdIdx[mType]);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    if (l_btkIdx[mType] != -1) {
        J3DAnmTextureSRTKey* res =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[mType], l_btkIdx[mType]);
        mBtk.init(modelData, res, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    }

    if (l_brkIdx[mType] != -1) {
        J3DAnmTevRegKey* res =
            (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[mType], l_brkIdx[mType]);
        mBrk.init(modelData, res, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    }

    return 1;
}


/* ############################################################################################## */
/* 80C8FB48-80C8FB50 000060 0004+04 0/1 0/0 0/0 .rodata          @3816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3816[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C8FB48, &lit_3816);
#pragma pop

/* 80C8FB50-80C8FB58 000068 0008+00 0/1 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3818[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C8FB50, &lit_3818);
#pragma pop

/* 80C8EC64-80C8EF4C 000404 02E8+00 1/1 0/0 0/0 .text            create__14daMagLiftRot_cFv */
int daMagLiftRot_c::create() {
    fopAcM_SetupActor(this, daMagLiftRot_c);

    mType = 0;

    u8 prm = (fopAcM_GetParam(this) >> 8) & 0xFF;
    if (prm == 0 || prm == 0xFF) {
        mType = (fopAcM_GetParam(this) >> 0x10) & 0xFF;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (phase == cPhs_COMPLEATE_e) {
        u32 tmp = 0x1500;
        if (mType == 2) {
            tmp = 0x2500;
        }

        if (MoveBGCreate(l_arcName[mType], l_dzbIdx[mType], dBgS_MoveBGProc_TypicalRotY, tmp,
                         NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mpBgW->onStickWall();
        mpBgW->onStickRoof();

        field_0x5e1 = fopAcM_GetParam(this) & 0xFF;
        field_0x5e2 = -0x8000;
        field_0x5e4 = 0;

        if (field_0x5e1 == 0) {
            current.angle.y += 0x8000;
        }

        u8 prm = (fopAcM_GetParam(this) >> 8) & 0xFF;
        if (prm == 0 || prm == 0xFF) {
            field_0x62c = 1.0f;
        } else {
            field_0x62c = prm * 0.5f;
        }

        u8 prm2 = (fopAcM_GetParam(this) >> 0x10) & 0xFF;
        if (prm2 == 0 || prm2 == 0xFF) {
            field_0x630 = 1.0f;
        } else if (prm == 0 || prm == 0xFF) {
            field_0x630 = 1.0f;
        } else {
            field_0x630 = prm2 * 0.5f;
        }

        u8 prm3 = (fopAcM_GetParam(this) >> 0x18) & 0xFF;
        setBaseMtx();

        if (prm3 == 0xFF) {
            init_modeWait();
        } else {
            init_modeMoveWait();
        }

        mTimer = 0;
        field_0x5f8 = 0.0f;
        field_0x5e6.x = 0;
        field_0x5e6.y = 0;
        field_0x5e6.z = 0;
        mShakeStrength = 0.0f;
        mMoveStrength = 0.0f;
        field_0x5ec.x = 0.0f;
        field_0x5ec.y = 0.0f;
        field_0x5ec.z = 0.0f;
        mShakeYAmp = 0.0f;
        field_0x600 = 0.0f;
        mShakeDecay = 0.0f;
        mMaxShakeDecay = 0.0f;
        mMinShakeDecay = 0.0f;
        mXMoveAmp = 0.0f;
        mZMoveAmp = 0.0f;
        mMoveDecay = 0.0f;
        mMaxMoveDecay = 0.0f;
        mMinMoveDecay = 0.0f;
    }

    return phase;
}


/* 80C8EF4C-80C8EF94 0006EC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C8EF94-80C8F02C 000734 0098+00 1/0 0/0 0/0 .text            Execute__14daMagLiftRot_cFPPA3_A4_f
 */
int daMagLiftRot_c::Execute(Mtx** param_0) {
    moveLift();

    if (l_btkIdx[mType] != -1) {
        mBtk.play();
    }

    if (l_brkIdx[mType] != -1) {
        mBrk.play();
    }

    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* ############################################################################################## */
/* 80C8FB58-80C8FB60 000070 0004+04 1/2 0/0 0/0 .rodata          @3882 */
SECTION_RODATA static u32 const lit_3882[1 + 1 /* padding */] = {
    0x43360B61,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80C8FB58, &lit_3882);

/* 80C8FB60-80C8FB68 000078 0008+00 0/1 0/0 0/0 .rodata          @3885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3885[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C8FB60, &lit_3885);
#pragma pop

/* 80C8FCCC-80C8FD0C 000014 0040+00 4/4 0/0 0/0 .bss             l_HIO */
static daMagLiftRot_HIO_c l_HIO;

/* 80C8FD0C-80C8FD10 000054 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C8FD0C[4];

/* 80C8F02C-80C8F264 0007CC 0238+00 1/1 0/0 0/0 .text            moveLift__14daMagLiftRot_cFv */
void daMagLiftRot_c::moveLift() {
    typedef void (daMagLiftRot_c::*modeFunc)();
    static modeFunc mode_proc[] = {&daMagLiftRot_c::modeMove, &daMagLiftRot_c::modeWait,
                                   &daMagLiftRot_c::modeMoveWait};

    (this->*mode_proc[mMode])();

    field_0x5e6.z = mShakeStrength * cM_scos(field_0x5f8 * cM_deg2s(mShakeYAmp));
    cLib_addCalc(&mShakeStrength, 0.0f, mShakeDecay, mMaxShakeDecay, mMinShakeDecay);

    field_0x5ec.x = mMoveStrength * cM_scos(field_0x5f8 * cM_deg2s(mXMoveAmp));
    field_0x5ec.y = mMoveStrength * cM_ssin(field_0x5f8 * cM_deg2s(mZMoveAmp));
    cLib_addCalc(&mMoveStrength, 0.0f, mMoveDecay, mMaxMoveDecay, mMinMoveDecay);

    field_0x5f8 += 1.0f;
}


/* ############################################################################################## */
/* 80C8FB68-80C8FB6C 000080 0004+00 0/2 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = -1.0f;
COMPILER_STRIP_GATE(0x80C8FB68, &lit_3949);
#pragma pop

/* 80C8FB6C-80C8FB70 000084 0004+00 0/2 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 1515.0f;
COMPILER_STRIP_GATE(0x80C8FB6C, &lit_3950);
#pragma pop

/* 80C8FB70-80C8FB74 000088 0004+00 0/2 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = -1515.0f;
COMPILER_STRIP_GATE(0x80C8FB70, &lit_3951);
#pragma pop

/* 80C8F264-80C8F4A0 000A04 023C+00 1/1 0/0 0/0 .text            init_modeMove__14daMagLiftRot_cFv
 */
void daMagLiftRot_c::init_modeMove() {
    fopAcM_SetSpeedF(this, l_HIO.mInitSpeed);

    if (mType != 2) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp20(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp20, &sp20);
        sp20 += current.pos;

        mDoAud_seStart(selLabel_3897[mType], &sp20, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    } else {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp2C(0.0f, 0.0f, 1515.0f);
        mDoMtx_stack_c::multVec(&sp2C, &sp2C);
        sp2C += current.pos;

        cXyz sp38(0.0f, 0.0f, -1515.0f);
        mDoMtx_stack_c::multVec(&sp38, &sp38);
        sp38 += current.pos;

        mDoAud_seStart(selLabel_3897[mType], &sp2C, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mDoAud_seStart(selLabel_3897[mType], &sp38, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mMode = 0;
}


/* 80C8F4A0-80C8F538 000C40 0098+00 1/0 0/0 0/0 .text            modeMove__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeMove() {
    cLib_chaseF(&speedF, l_HIO.mMaxSpeed, l_HIO.mAcceleration);

    if (cLib_addCalcAngleS(&current.angle.z, field_0x5e2, 1, fopAcM_GetSpeedF(this) * 182.04445f,
                           1) == 0)
    {
        field_0x5e2 += 0x8000;
        field_0x5e4 = 0;
        init_modeWait();
    }
}


/* 80C8F538-80C8F7CC 000CD8 0294+00 3/3 0/0 0/0 .text            init_modeWait__14daMagLiftRot_cFv
 */
void daMagLiftRot_c::init_modeWait() {
    if (mType != 2) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp20(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp20, &sp20);
        sp20 += current.pos;

        mDoAud_seStart(selLabel_3963[mType], &sp20, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    } else {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp2C(0.0f, 0.0f, 1515.0f);
        mDoMtx_stack_c::multVec(&sp2C, &sp2C);
        sp2C += current.pos;

        cXyz sp38(0.0f, 0.0f, -1515.0f);
        mDoMtx_stack_c::multVec(&sp38, &sp38);
        sp38 += current.pos;

        mDoAud_seStart(selLabel_3963[mType], &sp2C, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mDoAud_seStart(selLabel_3963[mType], &sp38, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mTimer = l_HIO.mWaitTime;
    mShakeStrength = l_HIO.mShakeStrength;
    mShakeYAmp = l_HIO.mShakeAmpY;
    mShakeDecay = l_HIO.mShakeDecay;
    mMaxShakeDecay = l_HIO.mMaxShakeDecay;
    mMinShakeDecay = l_HIO.mMinShakeDecay;
    mMoveStrength = l_HIO.mMoveStrength;
    mXMoveAmp = l_HIO.mMoveAmpX;
    mZMoveAmp = l_HIO.mMoveAmpZ;
    mMoveDecay = l_HIO.mMoveDecay;
    mMaxMoveDecay = l_HIO.mMaxMoveDecay;
    mMinMoveDecay = l_HIO.mMinMoveDecay;
    mMode = 1;
}


/* 80C8F7CC-80C8F804 000F6C 0038+00 1/0 0/0 0/0 .text            modeWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeWait() {
    if (mTimer == 0) {
        init_modeMove();
    } else {
        mTimer--;
    }
}

/* 80C8F804-80C8F810 000FA4 000C+00 1/1 0/0 0/0 .text init_modeMoveWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::init_modeMoveWait() {
    mMode = 2;
}

/* 80C8F810-80C8F86C 000FB0 005C+00 1/0 0/0 0/0 .text            modeMoveWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeMoveWait() {
    u8 sw_on = fopAcM_isSwitch(this, (fopAcM_GetParam(this) >> 0x18) & 0xFF);

    if (sw_on) {
        mTimer = 15;
        init_modeWait();
    }
}

/* 80C8F86C-80C8F970 00100C 0104+00 1/0 0/0 0/0 .text            Draw__14daMagLiftRot_cFv */
int daMagLiftRot_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    if (l_btkIdx[mType] != -1) {
        mBtk.entry(modelData);
    }

    if (l_brkIdx[mType] != -1) {
        mBrk.entry(modelData);
    }

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C8F970-80C8F9B0 001110 0040+00 1/0 0/0 0/0 .text            Delete__14daMagLiftRot_cFv */
int daMagLiftRot_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mType]);
    return 1;
}

/* 80C8F9B0-80C8F9DC 001150 002C+00 1/0 0/0 0/0 .text daMagLiftRot_Draw__FP14daMagLiftRot_c */
static int daMagLiftRot_Draw(daMagLiftRot_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C8F9DC-80C8F9FC 00117C 0020+00 1/0 0/0 0/0 .text daMagLiftRot_Execute__FP14daMagLiftRot_c */
static int daMagLiftRot_Execute(daMagLiftRot_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C8F9FC-80C8FA1C 00119C 0020+00 1/0 0/0 0/0 .text daMagLiftRot_Delete__FP14daMagLiftRot_c */
static int daMagLiftRot_Delete(daMagLiftRot_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C8FA1C-80C8FA3C 0011BC 0020+00 1/0 0/0 0/0 .text            daMagLiftRot_Create__FP10fopAc_ac_c
 */
static int daMagLiftRot_Create(fopAc_ac_c* i_this) {
    return static_cast<daMagLiftRot_c*>(i_this)->create();
}

/* 80C8FA3C-80C8FA98 0011DC 005C+00 2/1 0/0 0/0 .text            __dt__18daMagLiftRot_HIO_cFv */
// daMagLiftRot_HIO_c::~daMagLiftRot_HIO_c() {
extern "C" void __dt__18daMagLiftRot_HIO_cFv() {
    // NONMATCHING
}
