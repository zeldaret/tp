/**
 * @file d_a_e_df.cpp
 *
 */

#include "d/actor/d_a_e_df.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

//
// Forward References:
//

// extern "C" void __ct__12daE_DF_HIO_cFv();
// extern "C" void CreateHeap__8daE_DF_cFv();
// extern "C" void useHeapInit__FP10fopAc_ac_c();
// extern "C" void initCcCylinder__8daE_DF_cFv();
// extern "C" void setCcCylinder__8daE_DF_cFv();
// extern "C" void SetAnm__8daE_DF_cFiiff();
// extern "C" void CameraSet__8daE_DF_cFf();
// extern "C" void DemoStart__8daE_DF_cFv();
// extern "C" void SetReleaseCam__8daE_DF_cFv();
// extern "C" void ctrlJoint__8daE_DF_cFP8J3DJointP8J3DModel();
// extern "C" void JointCallBack__FP8J3DJointi();
// extern "C" void s_obj_sub__FPvPv();
// extern "C" void Link_Eat_Pos__8daE_DF_cFv();
// extern "C" void Set_Angle__8daE_DF_cFP4cXyz();
// extern "C" void Obj_Damage__8daE_DF_cFv();
// extern "C" void DamageAction__8daE_DF_cFv();
// extern "C" void BombEatAction__8daE_DF_cFv();
// extern "C" void Spid_Out__8daE_DF_cFv();
// extern "C" void LinkEatAction__8daE_DF_cFv();
// extern "C" void Mogu_Mogu__8daE_DF_cFv();
// extern "C" void ObjEatAction__8daE_DF_cFv();
// extern "C" void EatAction__8daE_DF_cFv();
// extern "C" void SearchAction__8daE_DF_cFv();
// extern "C" void WaitAction__8daE_DF_cFv();
// extern "C" void MissAction__8daE_DF_cFv();
// extern "C" void Action__8daE_DF_cFv();
// extern "C" void Execute__8daE_DF_cFv();
// extern "C" void Yazirushi__8daE_DF_cFv();
// extern "C" void Draw__8daE_DF_cFv();
// extern "C" void Delete__8daE_DF_cFv();
// extern "C" void setBaseMtx__8daE_DF_cFv();
// extern "C" void daE_DF_Draw__FP8daE_DF_c();
// extern "C" void daE_DF_Execute__FP8daE_DF_c();
// extern "C" bool daE_DF_IsDelete__FP8daE_DF_c();
// extern "C" void daE_DF_Delete__FP8daE_DF_c();
// extern "C" void Create__8daE_DF_cFv();
// extern "C" void __dt__8cM3dGCylFv();
// extern "C" void __dt__8cM3dGAabFv();
// extern "C" void __dt__10dCcD_GSttsFv();
// extern "C" void daE_DF_Create__FP10fopAc_ac_c();
// extern "C" void __dt__10cCcD_GSttsFv();
// extern "C" void __dt__12daE_DF_HIO_cFv();
// extern "C" void __sinit_d_a_e_df_cpp();
// extern "C" char const* const d_a_e_df__stringBase0;

//
// External References:
//

// extern "C" void mDoMtx_YrotM__FPA4_fs();
// extern "C" void mDoMtx_ZrotM__FPA4_fs();
// extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
// extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
// extern "C" void
// __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
// extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
// extern "C" void play__16mDoExt_McaMorfSOFUlSc();
// extern "C" void entryDL__16mDoExt_McaMorfSOFv();
// extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
// extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
// extern "C" void __ct__10fopAc_ac_cFv();
// extern "C" void fopAc_IsActor__FPv();
// extern "C" void fopAcM_delete__FP10fopAc_ac_c();
// extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
// extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
// extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
// extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
// extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
// extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
// extern "C" void fpcEx_Search__FPFPvPv_PvPv();
// extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfGp_getReverb__Fi();
// extern "C" void onSwitch__10dSv_info_cFii();
// extern "C" void isSwitch__10dSv_info_cCFii();
// extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
// extern "C" void reset__14dEvt_control_cFv();
// extern "C" void
// set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
// extern "C" void
// set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
// extern "C" void StartShock__12dVibration_cFii4cXyz();
// extern "C" void StartQuake__12dVibration_cFii4cXyz();
// extern "C" void StopQuake__12dVibration_cFi();
// extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
// extern "C" void __ct__11dBgS_LinChkFv();
// extern "C" void __dt__11dBgS_LinChkFv();
// extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
// extern "C" void __ct__10dCcD_GSttsFv();
// extern "C" void Move__10dCcD_GSttsFv();
// extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
// extern "C" void __ct__12dCcD_GObjInfFv();
// extern "C" void ChkTgHit__12dCcD_GObjInfFv();
// extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
// extern "C" void getHitSeID__12dCcD_GObjInfFUci();
// extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
// extern "C" void Start__9dCamera_cFv();
// extern "C" void Stop__9dCamera_cFv();
// extern "C" void SetTrimSize__9dCamera_cFl();
// extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
// extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
// extern "C" void dCam_getBody__Fv();
// extern "C" void Eye__9dCamera_cFv();
// extern "C" void Center__9dCamera_cFv();
// extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
// extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
// extern "C" void dKy_darkworld_check__Fv();
// extern "C" void Set__4cCcSFP8cCcD_Obj();
// extern "C" void __mi__4cXyzCFRC3Vec();
// extern "C" void cM_atan2s__Fff();
// extern "C" void SetC__8cM3dGCylFRC4cXyz();
// extern "C" void cLib_chaseAngleS__FPsss();
// extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
// extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
// extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
// extern "C" void __ct__15Z2CreatureEnemyFv();
// extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
// extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
// extern "C" void* __nw__FUl();
// extern "C" void __dl__FPv();
// extern "C" void checkPass__12J3DFrameCtrlFf();
// extern "C" void _savegpr_19();
// extern "C" void _savegpr_25();
// extern "C" void _savegpr_28();
// extern "C" void _savegpr_29();
// extern "C" void _restgpr_19();
// extern "C" void _restgpr_25();
// extern "C" void _restgpr_28();
// extern "C" void _restgpr_29();
// extern "C" void* __vt__8dCcD_Cyl[36];
// extern "C" void* __vt__9dCcD_Stts[11];
// extern "C" void* __vt__12cCcD_CylAttr[25];
// extern "C" void* __vt__14cCcD_ShapeAttr[22];
// extern "C" void* __vt__9cCcD_Stts[8];
// extern "C" u8 now__14mDoMtx_stack_c[48];
// extern "C" u8 mCurrentMtx__6J3DSys[48];
// extern "C" u8 sincosTable___5JMath[65536];
// extern "C" f32 mGroundY__11fopAcM_gc_c;
// extern "C" u8 m_midnaActor__9daPy_py_c[4];
// extern "C" void __register_global_object();

//
// Declarations:
//

inline void daE_DF_genMessage(JORMContext* param_1) {
    // NONMATCHING
    // param_1->genLabel(&@119317, 0x80000001, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // param_1->genSlider(&@119318, (f32*)(this + 8), 0.0f, 100.0f, 0, NULL, 0xffff, 0xffff, 0x200,
    //                    0x18);
    // return;
}

/* ############################################################################################## */
/* 806AA08C-806AA098 000088 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
// SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10cCcD_GSttsFv,
// };

/* 806AA098-806AA0A4 000094 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
// SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10dCcD_GSttsFv,
// };

/* 806AA0A4-806AA0B0 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
// SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGCylFv,
// };

/* 806AA0B0-806AA0BC 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

/* 806AA0BC-806AA0C8 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_DF_HIO_c */
// SECTION_DATA extern void* __vt__12daE_DF_HIO_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12daE_DF_HIO_cFv,
// };

/* 806A76EC-806A7710 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__12daE_DF_HIO_cFv */
daE_DF_HIO_c::daE_DF_HIO_c() {
    this->field_0x4 = -1;
    this->mSpeed = 0.0f;
}

/* ############################################################################################## */
/* 806A9FFC-806A9FFC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_806A9FFC = "E_DF";
// #pragma pop

/* 806A7710-806A7808 000110 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_DF_cFv */
int daE_DF_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* pJVar1;
    u32 uVar2;
    J3DAnmTransform* pJVar3;
    J3DModel* pJVar4;
    u8 uVar5;

    pJVar1 = (J3DModelData*)dComIfG_getObjectRes("E_DF", 0xd);
    if (pJVar1 == NULL) {
        // uVar2 = JUTAssertion::getSDevice();
        // JUTAssertion::showAssert(uVar2, @119338, 0xa1, @119339);
        // m_Do_printf::OSPanic(@119338, 0xa1, &@119340);
    }
    mpMorfSO =
        new mDoExt_McaMorfSO(pJVar1, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_DF", 10),
                             2, 1.0f, 0, -1, (Z2Creature*)&mCreatureSound, 0x80000, 0x11000084);
    if ((mpMorfSO == NULL) || (pJVar4 = mpMorfSO->getModel(), pJVar4 == NULL)) {
        uVar5 = 0;
    } else {
        uVar5 = 1;
    }
    return uVar5;
}

/* 806A7808-806A7828 000208 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* param_0) {
    ((daE_DF_c*)param_0)->CreateHeap();
}

/* ############################################################################################## */

/* 806A7828-806A78A0 000228 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_DF_cFv */
void daE_DF_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1},                 // mGObjTg
            {0x0},                                              // mGObjCo
        },                                                      // mObjInf
        {
            {0.0f, 0.0f, 0.0f},  // mCenter
            150.0f,              // mRadius
            158.0f               // mHeight
        }  // mCyl
    };

    mStts.Init(0xff, 0xff, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mStts);
    mCyl.SetC(current.pos);
    mCyl.OnTgNoHitMark();
    mCyl.OnTgIronBallRebound();
}

/* 806A78A0-806A78D4 0002A0 0034+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_DF_cFv */
void daE_DF_c::setCcCylinder() {
    dComIfG_Ccsp()->Set(&mCyl);
}

/* ############################################################################################## */
/* 806A9FA0-806A9FA4 000070 0004+00 1/1 0/0 0/0 .rodata          @3977 */
// SECTION_RODATA static f32 const lit_3977 = -1.0f;
// COMPILER_STRIP_GATE(0x806A9FA0, &lit_3977);

/* 806A78D4-806A7980 0002D4 00AC+00 6/6 0/0 0/0 .text            SetAnm__8daE_DF_cFiiff */
void daE_DF_c::SetAnm(int i_index, int i_attr, f32 i_morf, f32 i_rate) {
    J3DAnmTransform* pJVar1 = (J3DAnmTransform*)dComIfG_getObjectRes("E_DF", i_index);
    mpMorfSO->setAnm(pJVar1, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    fafnir = i_index;
}

/* ############################################################################################## */
/* 806A9FA4-806A9FA8 000074 0004+00 0/1 0/0 0/0 .rodata          @4024 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4024 = 600.0f;
// COMPILER_STRIP_GATE(0x806A9FA4, &lit_4024);
// #pragma pop

/* 806A9FA8-806A9FAC 000078 0004+00 1/5 0/0 0/0 .rodata          @4025 */
// SECTION_RODATA static f32 const lit_4025 = 400.0f;
// COMPILER_STRIP_GATE(0x806A9FA8, &lit_4025);

/* 806A7980-806A7B40 000380 01C0+00 2/2 0/0 0/0 .text            CameraSet__8daE_DF_cFf */
void daE_DF_c::CameraSet(f32 param_1) {
    // NONMATCHING
    int iVar1;
    camera_class* pcVar2;
    dBgS* this_00;
    s16 sVar4;
    cXyz cStack_d4;
    cXyz cStack_c8;
    cXyz cStack_bc;
    cXyz cStack_b0;
    cXyz cStack_a4;
    cXyz cStack_98;
    dBgS_LinChk dStack_88;

    iVar1 = dComIfGp_getPlayerCameraID(0);
    pcVar2 = dComIfGp_getCamera(iVar1);
    cStack_98 = current.pos;
    cStack_98.y = cStack_98.y + 100.0f;
    cStack_a4 = cXyz();
    cStack_b0 = current.pos;
    cStack_b0.y = cStack_b0.y + 600.0f;
    cStack_bc.set(0.0f, 0.0f, param_1);
    dStack_88 = dBgS_LinChk();
    sVar4 = 0;
    for (int i = 0; i < 4; i++) {
        cLib_offsetPos(&cStack_a4, &cStack_b0, (int)sVar4, &cStack_bc);
        dStack_88.Set(&cStack_b0, &cStack_a4, NULL);
        iVar1 = dComIfG_Bgsp().LineCross(&dStack_88);
        if (iVar1 == 0) {
            cLib_offsetPos(&cStack_a4, &cStack_98, (int)sVar4, &cStack_bc);
            cStack_a4.y = cStack_a4.y + 400.0f;
            cStack_c8 = cStack_98;
            cStack_d4 = cStack_a4;
            pcVar2->mCamera.Set(cStack_c8, cStack_d4, saphira, 0);  // ??

            norbert = cStack_a4;
            ness = cStack_98;
            return;
        }
        sVar4 = sVar4 + -0x8000;
    };
}

/* 806A7B40-806A7C3C 000540 00FC+00 2/2 0/0 0/0 .text            DemoStart__8daE_DF_cFv */
int daE_DF_c::DemoStart() {
    // NONMATCHING
    int iVar1;
    camera_class* pcVar2;
    dCamera_c* this_00;
    double dVar3;
    cXyz cStack_28;
    cXyz cStack_1c;

    iVar1 = dComIfGp_getPlayerCameraID(0);
    pcVar2 = dComIfGp_getCamera(iVar1);
    this_00 = dCam_getBody();
    iVar1 = eventInfo.checkCommandDemoAccrpt();
    if (iVar1 != 0) {
        pcVar2->mCamera.Stop();
        dVar3 = this_00->Fovy();
        saphira = (f32)dVar3;
        cStack_1c = this_00->Center();
        ness = cStack_1c;

        cStack_28 = this_00->Eye();
        norbert = cStack_28;

        pcVar2->mCamera.SetTrimSize(3);
    } else {
        fopAcM_orderPotentialEvent(this, 2, 0xffef, 0);
        eventInfo.onCondition(2);
    }
    return iVar1 != 0;
}

/* 806A7C3C-806A7CE0 00063C 00A4+00 2/2 0/0 0/0 .text            SetReleaseCam__8daE_DF_cFv */
void daE_DF_c::SetReleaseCam() {
    // NONMATCHING
    int iVar1;
    camera_class* pcVar2;
    cXyz cStack_28;
    cXyz cStack_1c;

    iVar1 = dComIfGp_getPlayerCameraID(0);
    pcVar2 = dComIfGp_getCamera(iVar1);
    cStack_1c = ness;
    cStack_28 = norbert;
    pcVar2->mCamera.Reset(cStack_1c, cStack_28);
    pcVar2->mCamera.Start();
    pcVar2->mCamera.SetTrimSize(0);
    dComIfGp_event_reset();
}

/* ############################################################################################## */
/* 806A9FAC-806A9FB0 00007C 0004+00 1/1 0/0 0/0 .rodata          @4096 */
// SECTION_RODATA static f32 const lit_4096 = 4.0f / 5.0f;
// COMPILER_STRIP_GATE(0x806A9FAC, &lit_4096);

/* 806A9FB0-806A9FB8 000080 0008+00 2/2 0/0 0/0 .rodata          @4098 */
SECTION_RODATA static u8 const lit_4098[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A9FB0, &lit_4098);

/* 806A7CE0-806A7E30 0006E0 0150+00 1/1 0/0 0/0 .text ctrlJoint__8daE_DF_cFP8J3DJointP8J3DModel */
int daE_DF_c::ctrlJoint(J3DJoint* param_1, J3DModel* param_2) {
    // NONMATCHING
    uint uVar1;
    f32* pfVar2;

    uVar1 = param_1->getJntNo();
    uVar1 = uVar1 & 0xffff;
    mDoMtx_stack_c::copy(param_2->getAnmMtx(uVar1));
    if (uVar1 == 1) {
        mDoMtx_stack_c::YrotM((apsu).x);
        mDoMtx_stack_c::ZrotM((apsu).z);
    } else if (uVar1 == 0) {
        mDoMtx_stack_c::YrotM((s16)(int)((f32)(int)(apsu).x * 0.8f));
        mDoMtx_stack_c::ZrotM((s16)(int)((f32)(int)(apsu).z * 0.8f));
    }
    param_2->setAnmMtx(uVar1, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 806A7E30-806A7E7C 000830 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static int JointCallBack(J3DJoint* param_1, int param_2) {
    J3DModel* this0;
    daE_DF_c* this_00;

    if (param_2 == 0) {
        this0 = j3dSys.getModel();
        this_00 = (daE_DF_c*)this0->getUserArea();
        if (this_00 != NULL) {
            this_00->ctrlJoint(param_1, this0);
        }
    }
    return 1;
}

/* ############################################################################################## */
/* 806A9FB8-806A9FBC 000088 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 300.0f;
COMPILER_STRIP_GATE(0x806A9FB8, &lit_4163);
#pragma pop

/* 806A9FBC-806A9FC0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = -10.0f;
COMPILER_STRIP_GATE(0x806A9FBC, &lit_4164);
#pragma pop

/* 806A9FC0-806A9FC4 000090 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 170.0f;
COMPILER_STRIP_GATE(0x806A9FC0, &lit_4165);
#pragma pop

/* 806A9FC4-806A9FC8 000094 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 320.0f;
COMPILER_STRIP_GATE(0x806A9FC4, &lit_4166);
#pragma pop

/* 806A7E7C-806A8030 00087C 01B4+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* param_1, void* param_2) {
    // NONMATCHING
    Vec* pVVar1;
    cXyz* this0;

    pVVar1 = &fopAcM_GetPosition((fopAc_ac_c*)param_1);
    this0 = (cXyz*)&fopAcM_GetPosition((fopAc_ac_c*)param_2);
    fopAcM_GetSpeed((fopAc_ac_c*)param_1);
    if (fopAcM_IsActor(param_1)) {
        this0->absXZ(*pVVar1);
    }
    return NULL;
}

/* 806A8030-806A8098 000A30 0068+00 1/1 0/0 0/0 .text            Link_Eat_Pos__8daE_DF_cFv */
void daE_DF_c::Link_Eat_Pos() {
    daPy_py_c* pdVar1;
    cXyz acStack_28;

    acStack_28.set(current.pos.x, current.pos.y + 400.0f, current.pos.z);
    pdVar1 = daPy_getPlayerActorClass();
    pdVar1->setPlayerPosAndAngle(&acStack_28, 0, 0);
}

/* 806A8098-806A816C 000A98 00D4+00 1/1 0/0 0/0 .text            Set_Angle__8daE_DF_cFP4cXyz */
void daE_DF_c::Set_Angle(cXyz* param_1) {
    // NONMATCHING
    s16 sVar1;
    s16 sVar2;
    s16 sVar3;
    f32 fVar4;

    sVar1 = cLib_targetAngleY(&current.pos, param_1);
    sVar2 = cLib_targetAngleX(&current.pos, param_1);
    sVar3 = sVar1 - shape_angle.y;
    fVar4 = cM_ssin(sVar3);
    (apsu).x = (s16)(int)((f32) - (int)(s16)(0x4000 - sVar2) * fVar4);
    fVar4 = cM_scos(sVar3);
    (apsu).z = (s16)(int)((f32)(int)(s16)(0x4000 - sVar2) * fVar4);
}

/* 806A816C-806A8244 000B6C 00D8+00 1/1 0/0 0/0 .text            Obj_Damage__8daE_DF_cFv */
void daE_DF_c::Obj_Damage() {
    // NONMATCHING
    int iVar1;
    cCcD_Obj* pcVar2;
    u8 uVar4;
    u32 uVar3;
    cCcD_ObjHitInf* this_00;

    if (galeru == 0) {
        mStts.Move();
        iVar1 = mCyl.ChkTgHit();
        if (iVar1 != 0) {
            pcVar2 = mCyl.GetTgHitObj();
            (mAtInfo).mpCollider = pcVar2;
            iVar1 = mAtInfo.mpCollider->ChkAtType(0xd8000000);
            if (iVar1 == 0) {
                galeru = 10;
            } else {
                galeru = 0x14;
            }
            if ((mAtInfo).mAttackPower < 2) {
                galeru = 10;
            }
            uVar4 = ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSe();
            uVar3 = ::dCcD_GObjInf::getHitSeID(uVar4, 0);
            mCreatureSound.startCreatureVoice(uVar3, 0x2d);

            this_00 = mCyl.GetTgHitObj();
            iVar1 = this_00->ChkAtType(0x2000);
            if ((iVar1 == 0) && (iVar1 = this_00->ChkAtType(2), iVar1 == 0) &&
                (iVar1 = this_00->ChkAtType(0x10), iVar1 == 0))
            {
                this_00->ChkAtType(0x4000);
            }
            abraxas = 2;
            aido = 0;
            alduin = 0;
        }
    }
}

/* ############################################################################################## */
/* 806A9FC8-806A9FCC 000098 0004+00 1/6 0/0 0/0 .rodata          @4238 */
// SECTION_RODATA static f32 const lit_4238 = 5.0f;
// COMPILER_STRIP_GATE(0x806A9FC8, &lit_4238);

/* 806A8244-806A8368 000C44 0124+00 1/1 0/0 0/0 .text            DamageAction__8daE_DF_cFv */
void daE_DF_c::DamageAction() {
    // NONMATCHING
    char cVar1;
    u8 uVar2;
    int iVar3;
    JAISoundID aJStack_18[4];
    JAISoundID aJStack_14[16];

    cVar1 = aido;
    if (cVar1 == '\x01') {
        iVar3 = mpMorfSO->isStop();
        if (iVar3 != 0) {
            SetAnm(10, 2, 1.0f, 1.0f);
            mCreatureSound.startCreatureSound(0x701a1, 0, -1);
            abraxas = 0;
            aido = 1;
            alduin = 0;
        }
    } else if (cVar1 == false) {
        SetAnm(4, 0, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(0x7019b, 0, -1);
        aido++;
    }
}

/* 806A8368-806A8790 000D68 0428+00 1/1 0/0 0/0 .text            BombEatAction__8daE_DF_cFv */
void daE_DF_c::BombEatAction() {
    // NONMATCHING
    u8 bVar1;
    u8 uVar2;
    int iVar3;
    char cVar4;
    s8 sVar5;
    JAISoundID aJStack_18[4];
    JAISoundID aJStack_14[4];
    JAISoundID aJStack_10[8];

    bVar1 = alduin;
    if (bVar1 == 2) {
        cVar4 = Mogu_Mogu();
        if (cVar4 != false) {
            SetAnm(5, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(0x7019c, 0, -1);
            dComIfGp_particle_set(0x83b9, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83ba, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83bb, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83bc, &current.pos, &tevStr, &shape_angle, 0);
            alduin++;
        }
    } else if (bVar1 < 2) {
        if (bVar1 == 0) {
            brinsop = 100;
            iVar3 = DemoStart();
            if (iVar3 != 0) {
                CameraSet(400.0f);
                SetAnm(7, 0, 5.0f, 1.0f);
                mCreatureSound.startCreatureSound(0x7019e, 0, -1);
                alduin++;
            }
        } else {
            iVar3 = mpMorfSO->isStop();
            if (iVar3 != 0) {
                alduin++;
                SetAnm(8, 2, 5.0f, 1.0f);
            }
        }
    } else if (bVar1 == 4) {
        if (eingana == 0) {
            SetReleaseCam();
            fopAcM_delete(this);
        }
    } else if (bVar1 < 4) {
        iVar3 = mpMorfSO->isStop();
        if ((iVar3 == 0) || (fafnir != 5)) {
            iVar3 = mpMorfSO->isStop();
            if ((iVar3 != 0) && (fafnir == 6)) {
                if (katla != 0xff) {
                    sVar5 = fopAcM_GetRoomNo((fopAc_ac_c*)this);
                    iVar3 = dComIfGs_isSwitch(katla, (int)sVar5);
                    if (iVar3 == 0) {
                        sVar5 = fopAcM_GetRoomNo((fopAc_ac_c*)this);
                        dComIfGs_onSwitch(katla, (int)sVar5);
                    }
                }
                fopAcM_createDisappear(this, &current.pos, 10, 0, 0x30);
                eingana = 10;
                attention_info.flags = 0;
                alduin++;
            }
        } else {
            SetAnm(6, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(0x7019d, 0, -1);
        }
    }
    cLib_chaseAngleS(&apsu.x, 0, 0x100);
    cLib_chaseAngleS(&apsu.z, 0, 0x100);
}

/* ############################################################################################## */
/* 806A9FCC-806A9FD0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4370 = 24.0f;
COMPILER_STRIP_GATE(0x806A9FCC, &lit_4370);
#pragma pop

/* 806A9FD0-806A9FD4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4371 = 25.0f;
COMPILER_STRIP_GATE(0x806A9FD0, &lit_4371);
#pragma pop

/* 806A9FD4-806A9FD8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4372 = 60.0f;
COMPILER_STRIP_GATE(0x806A9FD4, &lit_4372);
#pragma pop

/* 806A9FD8-806A9FDC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4373 = 2.0f;
COMPILER_STRIP_GATE(0x806A9FD8, &lit_4373);
#pragma pop

/* 806A9FDC-806A9FE0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4374 = 15.0f;
COMPILER_STRIP_GATE(0x806A9FDC, &lit_4374);
#pragma pop

/* 806A8790-806A8938 001190 01A8+00 1/1 0/0 0/0 .text            Spid_Out__8daE_DF_cFv */
void daE_DF_c::Spid_Out() {
    // NONMATCHING
    daPy_py_c* pdVar1;
    int iVar2;
    s16 sVar4;
    dVibration_c* pdVar3;
    cXyz acStack_28;

    pdVar1 = daPy_getPlayerActorClass();
    iVar2 = mpMorfSO->checkFrame(24.0f);
    if (iVar2 == 0) {
        iVar2 = mpMorfSO->checkFrame(25.0f);
        if (iVar2 == 0) {
            iVar2 = mpMorfSO->checkFrame(2.0f);
            if (iVar2 == 0) {
                iVar2 = mpMorfSO->checkFrame(15.0f);
                if (iVar2 == 0) {
                    iVar2 = mpMorfSO->isStop();
                    if (iVar2 != 0) {
                        abraxas = 0;
                        aido = 0;
                        alduin = 0;
                    }
                } else {
                    dComIfGp_getVibration().StopQuake(0x1f);
                }
            } else {
                acStack_28.set(0.0f, 1.0f, 0.0f);
                dComIfGp_getVibration().StartQuake(3, 0x1f, acStack_28);
            }
        } else {
            fopAcM_SetSpeed(pdVar1, 0, 0, 0);
            sVar4 = cLib_targetAngleY(&current.pos, &norbert);
            pdVar1->setThrowDamage(0, 0x404e000000000000, (int)sVar4, 2, 0, 0);  // ???
            eingana = 0x28;
        }
    } else {
        fopAcM_SetSpeed(pdVar1, 0, 0, 0);
        SetReleaseCam();
        Link_Eat_Pos();
    }
}

/* ############################################################################################## */
/* 806A9FE0-806A9FE4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4444 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4444 = 4000.0f;
// COMPILER_STRIP_GATE(0x806A9FE0, &lit_4444);
// #pragma pop

/* 806A9FE4-806A9FE8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4445 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4445 = 10.0f;
// COMPILER_STRIP_GATE(0x806A9FE4, &lit_4445);
// #pragma pop

/* 806A8938-806A8C80 001338 0348+00 1/1 0/0 0/0 .text            LinkEatAction__8daE_DF_cFv */
void daE_DF_c::LinkEatAction() {
    // NONMATCHING
    u8 bVar1;
    daPy_py_c* this_00;
    u8 uVar2;
    int iVar3;
    char cVar4;
    dVibration_c* this_01;
    JAISoundID aJStack_38[4];
    JAISoundID aJStack_34[4];
    cXyz cStack_30;
    cXyz cStack_24;

    this_00 = daPy_getPlayerActorClass();
    cStack_24.set(current.pos.x, (current.pos.y - 4000.0f), current.pos.z);
    bVar1 = alduin;
    if (bVar1 == 2) {
        cVar4 = Mogu_Mogu();
        if (cVar4 != false) {
            alduin++;
            SetAnm(9, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(0x701a0, 0, -1);
            dComIfGp_particle_set(0x83bd, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83be, &current.pos, &tevStr, &shape_angle, 0);
        }
        iVar3 = mpMorfSO->checkFrame(10.0f);
        if (iVar3 != 0) {
            cStack_30.set(0.0f, 1.0f, 0.0f);
            dComIfGp_getVibration().StartShock(2, 0x1f, cStack_30);
        }
    } else if (bVar1 < 2) {
        if (bVar1 == 0) {
            brinsop = 100;
            this_00->setPlayerPosAndAngle(&cStack_24, 0, 0);
            iVar3 = DemoStart();
            if (iVar3 != 0) {
                SetAnm(7, 0, 5.0f, 1.0f);
                mCreatureSound.startCreatureSound(0x7019e, 0, -1);
                alduin++;
                CameraSet(400.0f);
                this_00->changeOriginalDemo();
                this_00->changeDemoMode(4, 7, 0, 0);
            }
        } else {
            this_00->setPlayerPosAndAngle(&cStack_24, 0, 0);
            this_00->changeDemoMode(4, 7, 0, 0);
            iVar3 = mpMorfSO->isStop();
            if (iVar3 != 0) {
                alduin++;
                SetAnm(8, 2, 5.0f, 1.0f);
            }
        }
    } else if (bVar1 < 4) {
        Spid_Out();
    }
    cLib_chaseAngleS(&apsu.x, 0, 0x100);
    cLib_chaseAngleS(&apsu.z, 0, 0x100);
}

/* 806A8C80-806A8D98 001680 0118+00 3/3 0/0 0/0 .text            Mogu_Mogu__8daE_DF_cFv */
int daE_DF_c::Mogu_Mogu() {
    // NONMATCHING
    u8 uVar1;
    int iVar2;
    JAISoundID aJStack_18[4];
    JAISoundID aJStack_14[4];
    JAISoundID aJStack_10[12];

    if (alduin < 5) {
        iVar2 = mpMorfSO->isLoop();
        if (iVar2 == 0) {
            uVar1 = 0;
        } else {
            alduin++;
            if ((brinsop == 0) || (brinsop == 1) || (brinsop == 7) ||
                (brinsop == 10 || (brinsop == 0xc) || (brinsop == 0xd)))
            {
                mCreatureSound.startCreatureSound(0x70232, 0, -1);
            } else if (brinsop == 6) {
                mCreatureSound.startCreatureSound(0x70233, 0, -1);
            } else {
                mCreatureSound.startCreatureSound(0x7019f, 0, -1);
            }
            uVar1 = 0;
        }
    } else {
        alduin = false;
        uVar1 = 1;
    }

    return uVar1;
}

/* 806A8D98-806A8ED4 001798 013C+00 1/1 0/0 0/0 .text            ObjEatAction__8daE_DF_cFv */
void daE_DF_c::ObjEatAction() {
    // NONMATCHING
    u8 bVar1;
    u8 uVar2;
    int iVar3;
    char cVar4;
    JAISoundID aJStack_18[20];

    bVar1 = alduin;
    if (bVar1 == 1) {
        iVar3 = mpMorfSO->isStop();
        if (iVar3 != 0) {
            alduin++;
            SetAnm(8, 2, 5.0f, 1.0f);
        }
    } else if (bVar1 == 0) {
        SetAnm(7, 0, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(0x7019e, 0, -1);
        alduin++;
    } else if ((bVar1 < 3) && (cVar4 = Mogu_Mogu(), cVar4 != false)) {
        abraxas = 0;
        aido = 0;
        alduin = 0;
    }
    cLib_chaseAngleS(&apsu.x, 0, 0x100);
    cLib_chaseAngleS(&apsu.z, 0, 0x100);
}

/* 806A8ED4-806A8F2C 0018D4 0058+00 1/1 0/0 0/0 .text            EatAction__8daE_DF_cFv */
void daE_DF_c::EatAction() {
    // NONMATCHING
    u8 bVar1;

    bVar1 = aido;
    if (bVar1 == 1) {
        LinkEatAction();
    } else if (bVar1 == 0) {
        ObjEatAction();
    } else if (bVar1 < 3) {
        BombEatAction();
    }
}

/* ############################################################################################## */
/* 806A9FE8-806A9FEC 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4566 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4566 = 200.0f;
// COMPILER_STRIP_GATE(0x806A9FE8, &lit_4566);
// #pragma pop

/* 806A8F2C-806A91B4 00192C 0288+00 1/1 0/0 0/0 .text            SearchAction__8daE_DF_cFv */
void daE_DF_c::SearchAction() {
    // NONMATCHING
    daPy_py_c* pdVar1;
    cXyz* pcVar2;
    int iVar3;
    s16 sVar5;
    daObjCarry_c* this_00;
    s16 sVar6;
    s32 sVar4;
    dVibration_c* this_01;
    f32 fVar7;
    cXyz cStack_28;

    pdVar1 = daPy_getPlayerActorClass();
    pcVar2 = (cXyz*)&fopAcM_GetPosition(pdVar1);
    fopAcM_GetSpeed_p(pdVar1);
    iVar3 = dComIfGp_checkPlayerStatus0(0, 0x100);
    if ((iVar3 != 0) && (fVar7 = pcVar2->abs(current.pos), fVar7 < 400.0f) &&
        (current.pos.y + 200.0f < pcVar2->y))
    {
        aido = 1;
        Set_Angle(pcVar2);
        sVar5 = cLib_targetAngleY(&current.pos, pcVar2);
        falkor = sVar5;
        abraxas = 1;
    }
    this_00 = (daObjCarry_c*)fpcM_Search(s_obj_sub, this);
    if (this_00 != NULL) {
        sVar6 = fopAcM_GetName(this_00);
        if (sVar6 == 0x2fc) {
            aido = 0;
            sVar4 = ((daObjCarry_c*)this_00)->getType();
            brinsop = sVar4;
            fopAcM_delete(this_00);
            Set_Angle(&fopAcM_GetPosition(this_00));
            abraxas = 1;
        } else {
            sVar6 = fopAcM_GetName(this_00);
            if ((sVar6 == 0xfd) && (eingana == 0)) {
                aido = 1;
                Set_Angle(pcVar2);
                sVar5 = cLib_targetAngleY(&current.pos, pcVar2);
                falkor = sVar5;
                abraxas = 1;
                cStack_28.set(0.0f, 1.0f, 0.0f);
                dComIfGp_getVibration().StartShock(5, 0x1f, cStack_28);

            } else {
                sVar6 = fopAcM_GetName(this_00);
                if (sVar6 == 0x221) {
                    Set_Angle(&fopAcM_GetPosition(this_00));
                    aido = 2;
                    fopAcM_delete(this_00);
                    abraxas = 1;
                }
            }
        }
    }
}

/* 806A91B4-806A9254 001BB4 00A0+00 1/1 0/0 0/0 .text            WaitAction__8daE_DF_cFv */
void daE_DF_c::WaitAction() {
    // NONMATCHING
    char cVar1;
    u8 uVar2;

    cVar1 = aido;
    if (cVar1 == '\x01') {
        SearchAction();
    } else if (cVar1 == false) {
        SetAnm(10, 2, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(0x701a1, 0, -1);
        aido++;
    }
}

/* 806A9254-806A9304 001C54 00B0+00 1/1 0/0 0/0 .text            MissAction__8daE_DF_cFv */
void daE_DF_c::MissAction() {
    // NONMATCHING
    char cVar1;
    int iVar2;

    cVar1 = aido;
    if (cVar1 == '\x01') {
        iVar2 = mpMorfSO->isStop();
        if (iVar2 != 0) {
            abraxas = 0;
            aido = 0;
            alduin = 0;
        }
    } else if (cVar1 == false) {
        SetAnm(7, 0, 5.0f, 1.0f);
        aido++;
    }
}

/* 806A9304-806A9384 001D04 0080+00 1/1 0/0 0/0 .text            Action__8daE_DF_cFv */
void daE_DF_c::Action() {
    // NONMATCHING
    u8 bVar1;

    bVar1 = abraxas;
    if (bVar1 == 2) {
        DamageAction();
        Obj_Damage();
    } else if (bVar1 < 2) {
        if (bVar1 == 0) {
            WaitAction();
            Obj_Damage();
        } else {
            EatAction();
        }
    } else if (bVar1 < 4) {
        MissAction();
    }
    return;
}

/* ############################################################################################## */
/* 806A9FEC-806A9FF0 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4621 */
// SECTION_RODATA static f32 const lit_4621 = 1.5f;
// COMPILER_STRIP_GATE(0x806A9FEC, &lit_4621);

/* 806A9FF0-806A9FF4 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4622 */
// SECTION_RODATA static f32 const lit_4622 = 38.0f;
// COMPILER_STRIP_GATE(0x806A9FF0, &lit_4622);

/* 806A9384-806A949C 001D84 0118+00 1/1 0/0 0/0 .text            Execute__8daE_DF_cFv */
int daE_DF_c::Execute() {
    // NONMATCHING
    int iVar1;
    u8 uVar2;
    s8 sVar3;
    char cVar4;
    JAISoundID aJStack_18[4];
    cXyz cStack_14;

    eingana = eingana + -1;
    if (eingana < 1) {
        eingana = 0;
    }
    Yazirushi();
    Action();
    cStack_14.set(1.5f, 1.5f, 1.5f);
    setMidnaBindEffect(this, &mCreatureSound, &current.pos, &cStack_14);
    if ((fafnir == 10) && (iVar1 = mpMorfSO->checkFrame(38.0f), iVar1 != 0)) {
        mCreatureSound.startCreatureSound(0x701a1, 0, -1);
    }
    if (galeru != 0) {
        galeru = galeru + -1;
    }
    sVar3 = fopAcM_GetRoomNo((fopAc_ac_c*)this);
    cVar4 = dComIfGp_getReverb((int)sVar3);
    mpMorfSO->play(0, cVar4);
    setBaseMtx();
    setCcCylinder();
    return 1;
}

/* ############################################################################################## */
/* 806A9FF4-806A9FF8 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4627 */
// SECTION_RODATA static f32 const lit_4627 = 80.0f;
// COMPILER_STRIP_GATE(0x806A9FF4, &lit_4627);

/* 806A949C-806A94E0 001E9C 0044+00 1/1 0/0 0/0 .text            Yazirushi__8daE_DF_cFv */
void daE_DF_c::Yazirushi() {
    // NONMATCHING
    eyePos.y = current.pos.y;
    eyePos.y = eyePos.y + 80.0f;
    attention_info.position.y = eyePos.y;
    attention_info.position.y = attention_info.position.y + 80.0f;
    attention_info.position.x = current.pos.x;
    attention_info.position.z = current.pos.z;
}

/* 806A94E0-806A9550 001EE0 0070+00 1/1 0/0 0/0 .text            Draw__8daE_DF_cFv */
int daE_DF_c::Draw() {
    J3DModel* pJVar1;

    pJVar1 = mpMorfSO->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(pJVar1, &tevStr);
    mpMorfSO->entryDL();
    return 1;
}

/* ############################################################################################## */
/* 806AA0D0-806AA0D4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 806A9550-806A95B8 001F50 0068+00 1/1 0/0 0/0 .text            Delete__8daE_DF_cFv */
int daE_DF_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "E_DF");
    if (mHIOInit != false) {
        l_initHIO = 0;
        // m_Do_hostIO::mDoHIO_deleteChild((int)DAT_80aaa2c0);
    }
    if (heap != NULL) {
        mpMorfSO->stopZelAnime();
    }
    return 1;
}

/* 806A95B8-806A9610 001FB8 0058+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_DF_cFv */
void daE_DF_c::setBaseMtx() {
    MtxP pfVar1;
    J3DModel* this_00;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    pfVar1 = mDoMtx_stack_c::get();
    this_00 = mpMorfSO->getModel();
    this_00->setBaseTRMtx(pfVar1);
    mpMorfSO->modelCalc();
}

/* 806A9610-806A9630 002010 0020+00 1/0 0/0 0/0 .text            daE_DF_Draw__FP8daE_DF_c */
static void daE_DF_Draw(daE_DF_c* param_1) {
    param_1->Draw();
}

/* 806A9630-806A9650 002030 0020+00 2/1 0/0 0/0 .text            daE_DF_Execute__FP8daE_DF_c */
static void daE_DF_Execute(daE_DF_c* param_1) {
    param_1->Execute();
}

/* 806A9650-806A9658 002050 0008+00 1/0 0/0 0/0 .text            daE_DF_IsDelete__FP8daE_DF_c */
static int daE_DF_IsDelete(daE_DF_c* param_1) {
    return 1;
}

/* 806A9658-806A9678 002058 0020+00 1/0 0/0 0/0 .text            daE_DF_Delete__FP8daE_DF_c */
static void daE_DF_Delete(daE_DF_c* param_1) {
    fopAcM_GetID(param_1);
    param_1->Delete();
    return;
}

/* ############################################################################################## */
/* 806A9FF8-806A9FFC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4811 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4811 = -200.0f;
// COMPILER_STRIP_GATE(0x806A9FF8, &lit_4811);
// #pragma pop

/* 806AA0D4-806AA0E0 00000C 000C+00 1/1 0/0 0/0 .bss             @3932 */
static u8 lit_3932[12];

/* 806AA0E0-806AA0EC 000018 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static daE_DF_HIO_c l_HIO;

/* 806A9678-806A9930 002078 02B8+00 1/1 0/0 0/0 .text            Create__8daE_DF_cFv */
int daE_DF_c::Create() {
    // NONMATCHING
    int iVar1;
    daE_DF_c* this_00;
    u32 uVar2;
    s8 sVar8;
    int iVar3;
    J3DModel* pJVar4;
    MtxP uVar5;
    bool bVar9;
    J3DJoint* this_01;
    J3DModelData* pJVar6;
    u16 uVar7;
    f32 fVar11;
    cXyz acStack_38;

    fopAcM_SetupActor(this, daE_DF_c);
    iVar1 = dComIfG_resLoad(&mPhaseReq, "E_DF");
    if (iVar1 == 4) {
        uVar2 = fopAcM_GetParam((fopAc_ac_c*)this);
        // m_Do_printf::OSReport(@120008, uVar2);
        uVar2 = fopAcM_GetParam((fopAc_ac_c*)this);
        katla = (u8)uVar2;
        if (katla != 0xff) {
            sVar8 = fopAcM_GetRoomNo((fopAc_ac_c*)this);
            iVar3 = dComIfGs_isSwitch(katla, (int)sVar8);
            if (iVar3 != 0) {
                // m_Do_printf::OSReport(&@120009);
                return 5;
            }
        }
        iVar3 = fopAcM_entrySolidHeap(this, useHeapInit, 0x1a40);
        if (iVar3 == 0) {
            iVar1 = 5;
        } else {
            if (l_initHIO == false) {
                l_initHIO = '\x01';
                mHIOInit = '\x01';
                // DAT_80aaa2c0 = m_Do_main::mDoHIO_createChild(&@119317, &l_HIO);
            }
            attention_info.flags = 4;
            pJVar4 = mpMorfSO->getModel();
            uVar5 = pJVar4->getBaseTRMtx();
            fopAcM_SetMtx(this, uVar5);
            fopAcM_SetMin((fopAc_ac_c*)this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax((fopAc_ac_c*)this, 200.0f, 200.0f, 200.0f);
            mCreatureSound.init(&current.pos, &eyePos, 3, 1);
            mCreatureSound.setEnemyName("E_DF");
            (mAtInfo).mpSound = (Z2Creature*)&mCreatureSound;
            (mAtInfo).mPowerType = 1;
            // ::cXyz::cXyz(acStack_38);
            acStack_38 = current.pos;
            acStack_38.y = acStack_38.y + 100.0f;
            bVar9 = fopAcM_gc_c::gndCheck(&acStack_38);
            if (bVar9) {
                fVar11 = fopAcM_gc_c::getGroundY();
                current.pos.y = fVar11;
            }
            initCcCylinder();
            pJVar4 = mpMorfSO->getModel();
            pJVar4->setUserArea((u32)this);
            for (int i = 0; i < pJVar4->getModelData()->getJointNum(); i++) {
                if (i != 0) {
                    this_01 = (J3DJoint*)pJVar6->getJointNodePointer(i);
                    this_01->setCallBack(JointCallBack);
                }
            }
            fopAcM_OffStatus(this, 0x4000);
            this->Execute();
        }
    }
    return iVar1;
}

/* 806A9930-806A9978 002330 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

/* 806A9978-806A99C0 002378 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

/* 806A99C0-806A9A1C 0023C0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
// extern "C" void __dt__10dCcD_GSttsFv() {
//     // NONMATCHING
// }

/* 806A9A1C-806A9A3C 00241C 0020+00 1/0 0/0 0/0 .text            daE_DF_Create__FP10fopAc_ac_c */
static void daE_DF_Create(fopAc_ac_c* param_1) {
    fopAcM_GetID(param_1);
    ((daE_DF_c*)param_1)->Create();
}

/* 806A9A3C-806A9A84 00243C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
// extern "C" void __dt__10cCcD_GSttsFv() {
//     // NONMATCHING
// }

/* 806A9A84-806A9ACC 002484 0048+00 2/1 0/0 0/0 .text            __dt__12daE_DF_HIO_cFv */
// daE_DF_HIO_c::~daE_DF_HIO_c() {
//     // NONMATCHING
// }

/* 806A9ACC-806A9B08 0024CC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_df_cpp */
// void __sinit_d_a_e_df_cpp() {
//     // NONMATCHING
// }

// #pragma push
// #pragma force_active on
// REGISTER_CTORS(0x806A9ACC, __sinit_d_a_e_df_cpp);
// #pragma pop

/* 806AA03C-806AA05C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DF_Method */
static actor_method_class l_daE_DF_Method = {
    (process_method_func)daE_DF_Create,  (process_method_func)daE_DF_Delete,
    (process_method_func)daE_DF_Execute, (process_method_func)daE_DF_IsDelete,
    (process_method_func)daE_DF_Draw,
};

/* 806AA05C-806AA08C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DF */
extern actor_process_profile_definition g_profile_E_DF = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_DF,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daE_DF_c),        // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    130,                     // mPriority
    &l_daE_DF_Method,        // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 806A9FFC-806A9FFC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
