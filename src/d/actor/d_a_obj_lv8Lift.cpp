/**
 * @file d_a_obj_lv8Lift.cpp
 * 
*/

#include "d/actor/d_a_obj_lv8Lift.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_bg_w.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daL8Lift_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daL8Lift_cFv();
extern "C" void CreateHeap__10daL8Lift_cFv();
extern "C" void create__10daL8Lift_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void lightSet__10daL8Lift_cFv();
extern "C" void rideCallBack__10daL8Lift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void Execute__10daL8Lift_cFPPA3_A4_f();
extern "C" void moveLift__10daL8Lift_cFv();
extern "C" void modeAcc__10daL8Lift_cFv();
extern "C" void init_modeMove__10daL8Lift_cFv();
extern "C" void modeMove__10daL8Lift_cFv();
extern "C" void init_modeBrk__10daL8Lift_cFv();
extern "C" void modeBrk__10daL8Lift_cFv();
extern "C" void init_modeWaitInit__10daL8Lift_cFv();
extern "C" void modeWaitInit__10daL8Lift_cFv();
extern "C" void init_modeWait__10daL8Lift_cFv();
extern "C" void modeWait__10daL8Lift_cFv();
extern "C" void init_modeMoveWait__10daL8Lift_cFv();
extern "C" void modeMoveWait__10daL8Lift_cFv();
extern "C" void init_modeOnAnm__10daL8Lift_cFv();
extern "C" void modeOnAnm__10daL8Lift_cFv();
extern "C" void init_modeStop__10daL8Lift_cFv();
extern "C" void modeStop__10daL8Lift_cFv();
extern "C" void init_modeInitSet__10daL8Lift_cFv();
extern "C" void modeInitSet__10daL8Lift_cFv();
extern "C" void init_modeInitSet2__10daL8Lift_cFv();
extern "C" void modeInitSet2__10daL8Lift_cFv();
extern "C" void liftReset__10daL8Lift_cFv();
extern "C" void setNextPoint__10daL8Lift_cFv();
extern "C" void Draw__10daL8Lift_cFv();
extern "C" void Delete__10daL8Lift_cFv();
extern "C" static void daL8Lift_Draw__FP10daL8Lift_c();
extern "C" static void daL8Lift_Execute__FP10daL8Lift_c();
extern "C" static void daL8Lift_Delete__FP10daL8Lift_c();
extern "C" static void daL8Lift_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daL8Lift_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv8Lift_cpp();
extern "C" static void func_80C89F3C();
extern "C" static void func_80C89F44();
extern "C" u8 const mSpeed__10daL8Lift_c[64];
extern "C" extern char const* const d_a_obj_lv8Lift__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" bool __eq__4cXyzCFRC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

UNK_REL_DATA

/* 80C8A024-80C8A030 -00001 000C+00 0/1 0/0 0/0 .data            @3822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeAcc__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A030-80C8A03C -00001 000C+00 0/1 0/0 0/0 .data            @3823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A03C-80C8A048 -00001 000C+00 0/1 0/0 0/0 .data            @3824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBrk__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A048-80C8A054 -00001 000C+00 0/1 0/0 0/0 .data            @3825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A054-80C8A060 -00001 000C+00 0/2 0/0 0/0 .data            @3826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitInit__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A060-80C8A06C -00001 000C+00 0/1 0/0 0/0 .data            @3827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOnAnm__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A06C-80C8A078 -00001 000C+00 0/1 0/0 0/0 .data            @3828 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3828[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveWait__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A078-80C8A084 -00001 000C+00 0/1 0/0 0/0 .data            @3829 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeStop__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A084-80C8A090 -00001 000C+00 0/1 0/0 0/0 .data            @3830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeInitSet__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A090-80C8A09C -00001 000C+00 0/1 0/0 0/0 .data            @3831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeInitSet2__10daL8Lift_cFv,
};
#pragma pop

/* 80C8A09C-80C8A114 000098 0078+00 0/1 0/0 0/0 .data            mode_proc$3821 */
static u8 mode_proc[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C8872C-80C88790 0000EC 0064+00 1/1 0/0 0/0 .text            __ct__14daL8Lift_HIO_cFv */
daL8Lift_HIO_c::daL8Lift_HIO_c() {
    mStopDisappearTime = 30;
    mStartMoveTime = 60;
    mColorAnmFrame = 1;

    mColorR = 3;
    mColorG = 150;
    mColorB = 255;

    mLightColorR = 3;
    mLightColorG = 150;
    mLightColorB = 255;

    mLightRadius = 600.0f;
}

/* 80C887D8-80C88860 000198 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daL8Lift_cFv */
void daL8Lift_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::now);
}

/* 80C89F64-80C89FA4 000004 0040+00 0/1 0/0 0/0 .rodata          mSpeed__10daL8Lift_c */
f32 const daL8Lift_c::mSpeed[16] = {
    5.0f, 6.6666665f, 8.333333f, 10.0f, 11.666667f, 13.333333f,
    15.0f, 16.666666f, 18.333334f, 20.0f, 21.666666, 23.333334,
    25.0f, 26.666666f, 28.333334f, 3.3333333f
};

/* 80C88860-80C88928 000220 00C8+00 1/0 0/0 0/0 .text            CreateHeap__10daL8Lift_cFv */
int daL8Lift_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L8Lift", 5);
    mpModel = mDoExt_J3DModel__create(modelData, 0, 0x11000284);
    if (!mpModel) {
        return 0;
    }

    mBtk.init(modelData, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("L8Lift", 8),
        1, 0, 1.0f, 0, -1);
    JUT_ASSERT("d_a_obj_lv8Lift.cpp", 0xcf, "res == 1");

    return 1;
}

/* 80C8A1E8-80C8A1F4 000008 000C+00 1/1 0/0 0/0 .bss             @3621 */
static u8 lit_3621[12];

/* 80C8A1F4-80C8A208 000014 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static daL8Lift_HIO_c l_HIO;

/* 80C88928-80C88C44 0002E8 031C+00 1/1 0/0 0/0 .text            create__10daL8Lift_cFv */
int daL8Lift_c::create() {
    fopAcM_SetupActor(this, daL8Lift_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L8Lift");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L8Lift", 11, dBgS_MoveBGProc_TypicalRotY, 0xd40, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mAcchCir.SetWall(100.0f, 150.0f);
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);

        mPathID = getPthID();
        dPath* mPath = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
        if (!mPath) {
            OS_REPORT("[マグネ岩空中リフト]%d番のパスが見つかりませんでした\n", mPathID);
            return cPhs_INIT_e;
        }

        dPnt* dPnt = mPath->m_points;
        current.pos = dPnt->m_position;
        mPathDirection = 1;
        mCurrentPoint = 0;
        mMoveSpeed = mSpeed[getMoveSpeed()];
        speedF = 0.0f;
        mSwbit = getSw();
        lightSet();
        mLightSet = 0;
        field_0x808 = 1;
        
        if (mSwbit == 0xff) {
            mBtk.setFrame(mBtk.getEndFrame() - 1.0f);
            mLightSet = 1;
            dKy_plight_set(&mLight);
            init_modeWaitInit();
        } else {
            mNoRideOffSwTimer = 0;
            mIsSwitch = fopAcM_isSwitch(this, mSwbit);
            if (mIsSwitch) {
                init_modeOnAnm();
            } else {
                if (mpBgW) {
                    dComIfG_Bgsp().Release(mpBgW);
                }
                field_0x808 = 0;
                init_modeMoveWait();
            }
        }

        setBaseMtx();
        mpBgW->SetRideCallback(rideCallBack);
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        
        J3DGXColor* color = mpModel->getModelData()->getMaterialNodePointer(0)->getTevKColor(1);
        color->r = l_HIO.mColorR;
        color->g = l_HIO.mColorG;
        color->b = l_HIO.mColorB;
    }

    return phase_state;
}

/* 80C88D6C-80C88DBC 00072C 0050+00 2/2 0/0 0/0 .text            lightSet__10daL8Lift_cFv */
void daL8Lift_c::lightSet() {
    mLight.mPosition = current.pos;
    mLight.mColor.r = l_HIO.mLightColorR;
    mLight.mColor.g = l_HIO.mLightColorG;
    mLight.mColor.b = l_HIO.mLightColorB;
    mLight.mPow = l_HIO.mLightRadius;
    mLight.mFluctuation = 1.0f;
}

/* 80C88DBC-80C88DD4 00077C 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__10daL8Lift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c  */
void daL8Lift_c::rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_this, fopAc_ac_c* i_rideActor) {
    if (fopAcM_GetName(i_rideActor) == PROC_ALINK) {
        ((daL8Lift_c*)i_this)->mPlayerRide = true;
    }
}

/* 80C88DD4-80C88E34 000794 0060+00 1/0 0/0 0/0 .text            Execute__10daL8Lift_cFPPA3_A4_f */
int daL8Lift_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8A208-80C8A20C 000028 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C8A208[4];

/* 80C88E34-80C890B8 0007F4 0284+00 1/1 0/0 0/0 .text            moveLift__10daL8Lift_cFv */
void daL8Lift_c::moveLift() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C89FC0-80C89FC4 000060 0004+00 0/2 0/0 0/0 .rodata          @3894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3894 = 30.0f;
COMPILER_STRIP_GATE(0x80C89FC0, &lit_3894);
#pragma pop

/* 80C89FC4-80C89FC8 000064 0004+00 0/3 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3895 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C89FC4, &lit_3895);
#pragma pop

/* 80C89FC8-80C89FD0 000068 0004+04 2/5 0/0 0/0 .rodata          @3896 */
SECTION_RODATA static f32 const lit_3896[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C89FC8, &lit_3896);

/* 80C890B8-80C89198 000A78 00E0+00 1/0 0/0 0/0 .text            modeAcc__10daL8Lift_cFv */
void daL8Lift_c::modeAcc() {
    // NONMATCHING
}

/* 80C89198-80C891A4 000B58 000C+00 1/1 0/0 0/0 .text            init_modeMove__10daL8Lift_cFv */
void daL8Lift_c::init_modeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C89FD0-80C89FD8 000070 0008+00 0/2 0/0 0/0 .rodata          @3978 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3978[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C89FD0, &lit_3978);
#pragma pop

/* 80C89FD8-80C89FE0 000078 0008+00 0/2 0/0 0/0 .rodata          @3979 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3979[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C89FD8, &lit_3979);
#pragma pop

/* 80C89FE0-80C89FE8 000080 0008+00 0/2 0/0 0/0 .rodata          @3980 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3980[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C89FE0, &lit_3980);
#pragma pop

/* 80C89FE8-80C89FEC 000088 0004+00 0/1 0/0 0/0 .rodata          @3981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3981 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C89FE8, &lit_3981);
#pragma pop

/* 80C89FEC-80C89FF0 00008C 0004+00 0/1 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3982 = 300.0f;
COMPILER_STRIP_GATE(0x80C89FEC, &lit_3982);
#pragma pop

/* 80C891A4-80C894BC 000B64 0318+00 1/0 0/0 0/0 .text            modeMove__10daL8Lift_cFv */
void daL8Lift_c::modeMove() {
    // NONMATCHING
}

/* 80C894BC-80C894C8 000E7C 000C+00 1/1 0/0 0/0 .text            init_modeBrk__10daL8Lift_cFv */
void daL8Lift_c::init_modeBrk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C89FF0-80C89FF4 000090 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 0.5f;
COMPILER_STRIP_GATE(0x80C89FF0, &lit_4030);
#pragma pop

/* 80C894C8-80C896C8 000E88 0200+00 1/0 0/0 0/0 .text            modeBrk__10daL8Lift_cFv */
void daL8Lift_c::modeBrk() {
    // NONMATCHING
}

/* 80C896C8-80C896D4 001088 000C+00 3/3 0/0 0/0 .text            init_modeWaitInit__10daL8Lift_cFv
 */
void daL8Lift_c::init_modeWaitInit() {
    // NONMATCHING
}

/* 80C896D4-80C89708 001094 0034+00 1/0 0/0 0/0 .text            modeWaitInit__10daL8Lift_cFv */
void daL8Lift_c::modeWaitInit() {
    // NONMATCHING
}

/* 80C89708-80C89714 0010C8 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daL8Lift_cFv */
void daL8Lift_c::init_modeWait() {
    // NONMATCHING
}

/* 80C89714-80C89720 0010D4 000C+00 1/0 0/0 0/0 .text            modeWait__10daL8Lift_cFv */
void daL8Lift_c::modeWait() {
    // NONMATCHING
}

/* 80C89720-80C8972C 0010E0 000C+00 3/3 0/0 0/0 .text            init_modeMoveWait__10daL8Lift_cFv
 */
void daL8Lift_c::init_modeMoveWait() {
    // NONMATCHING
}

/* 80C8972C-80C89770 0010EC 0044+00 1/0 0/0 0/0 .text            modeMoveWait__10daL8Lift_cFv */
void daL8Lift_c::modeMoveWait() {
    // NONMATCHING
}

/* 80C89770-80C89820 001130 00B0+00 3/3 0/0 0/0 .text            init_modeOnAnm__10daL8Lift_cFv */
void daL8Lift_c::init_modeOnAnm() {
    // NONMATCHING
}

/* 80C89820-80C89874 0011E0 0054+00 1/0 0/0 0/0 .text            modeOnAnm__10daL8Lift_cFv */
void daL8Lift_c::modeOnAnm() {
    // NONMATCHING
}

/* 80C89874-80C898DC 001234 0068+00 1/1 0/0 0/0 .text            init_modeStop__10daL8Lift_cFv */
void daL8Lift_c::init_modeStop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C89FF4-80C89FF8 000094 0004+00 1/1 0/0 0/0 .rodata          @4110 */
SECTION_RODATA static f32 const lit_4110 = 20.0f;
COMPILER_STRIP_GATE(0x80C89FF4, &lit_4110);

/* 80C898DC-80C899D0 00129C 00F4+00 1/0 0/0 0/0 .text            modeStop__10daL8Lift_cFv */
void daL8Lift_c::modeStop() {
    // NONMATCHING
}

/* 80C899D0-80C89A04 001390 0034+00 2/2 0/0 0/0 .text            init_modeInitSet__10daL8Lift_cFv */
void daL8Lift_c::init_modeInitSet() {
    // NONMATCHING
}

/* 80C89A04-80C89A24 0013C4 0020+00 1/0 0/0 0/0 .text            modeInitSet__10daL8Lift_cFv */
void daL8Lift_c::modeInitSet() {
    // NONMATCHING
}

/* 80C89A24-80C89A58 0013E4 0034+00 1/1 0/0 0/0 .text            init_modeInitSet2__10daL8Lift_cFv
 */
void daL8Lift_c::init_modeInitSet2() {
    // NONMATCHING
}

/* 80C89A58-80C89A78 001418 0020+00 1/0 0/0 0/0 .text            modeInitSet2__10daL8Lift_cFv */
void daL8Lift_c::modeInitSet2() {
    // NONMATCHING
}

/* 80C89A78-80C89ADC 001438 0064+00 2/2 0/0 0/0 .text            liftReset__10daL8Lift_cFv */
void daL8Lift_c::liftReset() {
    // NONMATCHING
}

/* 80C89ADC-80C89C10 00149C 0134+00 1/1 0/0 0/0 .text            setNextPoint__10daL8Lift_cFv */
void daL8Lift_c::setNextPoint() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C89FF8-80C89FFC 000098 0004+00 0/1 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = -100.0f;
COMPILER_STRIP_GATE(0x80C89FF8, &lit_4213);
#pragma pop

/* 80C89C10-80C89DC8 0015D0 01B8+00 1/0 0/0 0/0 .text            Draw__10daL8Lift_cFv */
int daL8Lift_c::Draw() {
    // NONMATCHING
}

/* 80C89DC8-80C89E18 001788 0050+00 1/0 0/0 0/0 .text            Delete__10daL8Lift_cFv */
int daL8Lift_c::Delete() {
    // NONMATCHING
}

/* 80C89E18-80C89E44 0017D8 002C+00 1/0 0/0 0/0 .text            daL8Lift_Draw__FP10daL8Lift_c */
static void daL8Lift_Draw(daL8Lift_c* param_0) {
    // NONMATCHING
}

/* 80C89E44-80C89E64 001804 0020+00 1/0 0/0 0/0 .text            daL8Lift_Execute__FP10daL8Lift_c */
static void daL8Lift_Execute(daL8Lift_c* param_0) {
    // NONMATCHING
}

/* 80C89E64-80C89E84 001824 0020+00 1/0 0/0 0/0 .text            daL8Lift_Delete__FP10daL8Lift_c */
static void daL8Lift_Delete(daL8Lift_c* param_0) {
    // NONMATCHING
}

/* 80C89E84-80C89EA4 001844 0020+00 1/0 0/0 0/0 .text            daL8Lift_Create__FP10fopAc_ac_c */
static void daL8Lift_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

// /* 80C89EA4-80C89F00 001864 005C+00 2/1 0/0 0/0 .text            __dt__14daL8Lift_HIO_cFv */
// daL8Lift_HIO_c::~daL8Lift_HIO_c() {
//     // NONMATCHING
// }

/* 80C89F00-80C89F3C 0018C0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv8Lift_cpp */
void __sinit_d_a_obj_lv8Lift_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C89F00, __sinit_d_a_obj_lv8Lift_cpp);
#pragma pop

/* 80C89F3C-80C89F44 0018FC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C89F3C() {
    // NONMATCHING
}

/* 80C89F44-80C89F4C 001904 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C89F44() {
    // NONMATCHING
}

/* 80C89FFC-80C89FFC 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80C8A114-80C8A134 -00001 0020+00 1/0 0/0 0/0 .data            l_daL8Lift_Method */
static actor_method_class l_daL8Lift_Method = {
    (process_method_func)daL8Lift_Create__FP10fopAc_ac_c,
    (process_method_func)daL8Lift_Delete__FP10daL8Lift_c,
    (process_method_func)daL8Lift_Execute__FP10daL8Lift_c,
    0,
    (process_method_func)daL8Lift_Draw__FP10daL8Lift_c,
};

/* 80C8A134-80C8A164 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8Lift */
extern actor_process_profile_definition g_profile_Obj_Lv8Lift = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8Lift,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daL8Lift_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  645,                    // mPriority
  &l_daL8Lift_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
