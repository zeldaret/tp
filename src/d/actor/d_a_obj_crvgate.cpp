/**
 * @file d_a_obj_crvgate.cpp
 *
 */

#include "d/actor/d_a_obj_crvgate.h"
#include "d/actor/d_a_player.h"
#include "d/d_camera.h"
#include "d/d_cc_uty.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

#include "d/actor/d_a_obj_eff.h"

//
// Forward References:
//

// extern "C" void initCcCylinder__14daObjCRVGATE_cFv();
// extern "C" void setCcCylinder__14daObjCRVGATE_cFv();
// extern "C" static void daObjCRVGATE_Create__FP10fopAc_ac_c();
// extern "C" static void daObjCRVGATE_Delete__FP14daObjCRVGATE_c();
// extern "C" void checkOpen__14daObjCRVGATE_cFv();
// extern "C" void __dt__4cXyzFv();
// extern "C" void actionStartEvent__14daObjCRVGATE_cFv();
// extern "C" void actionWaitEvent__14daObjCRVGATE_cFv();
// extern "C" void Demo_Set__14daObjCRVGATE_cFv();
// extern "C" void SetOpen__14daObjCRVGATE_cFv();
// extern "C" void actionDemoEvent__14daObjCRVGATE_cFv();
// extern "C" void event_proc_call__14daObjCRVGATE_cFv();
// extern "C" void CheckVec__14daObjCRVGATE_cFv();
// extern "C" void KeyVib__14daObjCRVGATE_cFv();
// extern "C" void DoorVib__14daObjCRVGATE_cFv();
// extern "C" void VibStop__14daObjCRVGATE_cFv();
// extern "C" void CloseVibration__14daObjCRVGATE_cFv();
// extern "C" void CloseAction__14daObjCRVGATE_cFv();
// extern "C" void OpenAction__14daObjCRVGATE_cFv();
// extern "C" void HakaiMotion__14daObjCRVGATE_cFv();
// extern "C" void DoorAction__14daObjCRVGATE_cFv();
// extern "C" void B_CloseAction__14daObjCRVGATE_cFv();
// extern "C" void SetB_Close__14daObjCRVGATE_cFv();
// extern "C" void setBaseMtx__14daObjCRVGATE_cFv();
// extern "C" static void daObjCRVGATE_Draw__FP14daObjCRVGATE_c();
// extern "C" static void daObjCRVGATE_Execute__FP14daObjCRVGATE_c();
// extern "C" void CreateHeap__14daObjCRVGATE_cFv();
// extern "C" void SetDoor__14daObjCRVGATE_cFv();
// extern "C" void create__14daObjCRVGATE_cFv();
// extern "C" void __dt__8cM3dGCylFv();
// extern "C" void __dt__8cM3dGAabFv();
// extern "C" void __dt__8dCcD_SphFv();
// extern "C" void __ct__8dCcD_SphFv();
// extern "C" void __dt__8cM3dGSphFv();
// extern "C" void __dt__12dBgS_ObjAcchFv();
// extern "C" void __ct__4cXyzFv();
// extern "C" static bool daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c();
// extern "C" void Create__14daObjCRVGATE_cFv();
// extern "C" void Execute__14daObjCRVGATE_cFPPA3_A4_f();
// extern "C" void Draw__14daObjCRVGATE_cFv();
// extern "C" void Delete__14daObjCRVGATE_cFv();
// extern "C" void func_80BD30A8();
// extern "C" void func_80BD30B0();
// extern "C" extern char const* const d_a_obj_crvgate__stringBase0;

//
// External References:
//

// extern "C" void mDoMtx_YrotM__FPA4_fs();
// extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
// extern "C" void transM__14mDoMtx_stack_cFfff();
// extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
// extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
// extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
// extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
// extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
// extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
// extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
// extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
// extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
// extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
// extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
// extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
// extern "C" void fpcSch_JudgeByID__FPvPv();
// extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
// extern "C" void dComIfGp_getReverb__Fi();
// extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
// extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
// extern "C" void reset__14dEvt_control_cFv();
// extern "C" void StartShock__12dVibration_cFii4cXyz();
// extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
// extern "C" void __ct__12dBgS_AcchCirFv();
// extern "C" void __dt__9dBgS_AcchFv();
// extern "C" void __ct__9dBgS_AcchFv();
// extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
// extern "C" void __ct__16dBgS_MoveBgActorFv();
// extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
// extern "C" bool ToFore__16dBgS_MoveBgActorFv();
// extern "C" bool ToBack__16dBgS_MoveBgActorFv();
// extern "C" void
// MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
// extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
// extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
// extern "C" void SetObj__16dBgS_PolyPassChkFv();
// extern "C" void __ct__10dCcD_GSttsFv();
// extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
// extern "C" void __ct__12dCcD_GObjInfFv();
// extern "C" void __dt__12dCcD_GObjInfFv();
// extern "C" void ChkTgHit__12dCcD_GObjInfFv();
// extern "C" void ChkCoHit__12dCcD_GObjInfFv();
// extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
// extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
// extern "C" void Start__9dCamera_cFv();
// extern "C" void Stop__9dCamera_cFv();
// extern "C" void SetTrimSize__9dCamera_cFl();
// extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
// extern "C" void dCam_getBody__Fv();
// extern "C" void Eye__9dCamera_cFv();
// extern "C" void Center__9dCamera_cFv();
// extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
// extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
// extern "C" void GetAc__8cCcD_ObjFv();
// extern "C" void Set__4cCcSFP8cCcD_Obj();
// extern "C" void __ct__5csXyzFsss();
// extern "C" void SetC__8cM3dGSphFRC4cXyz();
// extern "C" void cLib_addCalcAngleS__FPsssss();
// extern "C" void cLib_chaseAngleS__FPsss();
// extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
// extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
// extern "C" void __ct__16Z2SoundObjSimpleFv();
// extern "C" void __dl__FPv();
// extern "C" void __construct_array();
// extern "C" void _savegpr_21();
// extern "C" void _savegpr_23();
// extern "C" void _savegpr_25();
// extern "C" void _savegpr_26();
// extern "C" void _savegpr_28();
// extern "C" void _savegpr_29();
// extern "C" void _restgpr_21();
// extern "C" void _restgpr_23();
// extern "C" void _restgpr_25();
// extern "C" void _restgpr_26();
// extern "C" void _restgpr_28();
// extern "C" void _restgpr_29();
// extern "C" extern void* __vt__8dCcD_Sph[36];
// extern "C" extern void* __vt__8dCcD_Cyl[36];
// extern "C" extern void* __vt__9dCcD_Stts[11];
// extern "C" extern void* __vt__12cCcD_SphAttr[25];
// extern "C" extern void* __vt__12cCcD_CylAttr[25];
// extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
// extern "C" extern void* __vt__9cCcD_Stts[8];
// extern "C" u8 now__14mDoMtx_stack_c[48];
// extern "C" extern u8 g_dComIfG_gameInfo[122384];
// extern "C" u8 sincosTable___5JMath[65536];
// extern "C" f32 mGroundY__11fopAcM_gc_c;
// extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BD30C0-80BD3100 000000 0040+00 12/12 0/0 0/0 .rodata          ccCylSrc$3774 */
SECTION_RODATA static u8 const ccCylSrc[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
};
// COMPILER_STRIP_GATE(0x80BD30C0, &ccCylSrc);

/* 80BD3100-80BD3104 000040 0004+00 0/2 0/0 0/0 .rodata          @3792 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3792 = 100.0f;
// COMPILER_STRIP_GATE(0x80BD3100, &lit_3792);
// #pragma pop

/* 80BD3104-80BD3108 000044 0004+00 0/2 0/0 0/0 .rodata          @3793 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3793 = 95.0f;
// COMPILER_STRIP_GATE(0x80BD3104, &lit_3793);
// #pragma pop

/* 80BD3108-80BD3110 000048 0004+04 1/9 0/0 0/0 .rodata          @3794 */
// UNUSED ?
// SECTION_RODATA static u8 const lit_3794[4 + 4 /* padding */] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
//     /* padding */
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x80BD3108, &lit_3794);

/* 80BD3110-80BD3118 000050 0008+00 2/6 0/0 0/0 .rodata          @3796 */
// UNUSED ?
// SECTION_RODATA static u8 const lit_3796[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80BD3110, &lit_3796);

/* 80BD0398-80BD0500 000078 0168+00 1/1 0/0 0/0 .text            initCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::initCcCylinder() {
    mStts.Init(0xff, 0xff, this);

    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::transM(i * 95.0f + 100.0f, 0, 0);
        mDoMtx_stack_c::multVecZero(&mXyzSph[i]);
    }

    mSph[0].Set(*(dCcD_SrcSph*)&ccCylSrc);
    mSph[0].SetStts(&mStts);
    mSph[0].SetC(mXyzSph[0]);

    mSph[1].Set(*(dCcD_SrcSph*)&ccCylSrc);
    mSph[1].SetStts(&mStts);
    mSph[1].SetC(mXyzSph[1]);

    mSph[2].Set(*(dCcD_SrcSph*)&ccCylSrc);
    mSph[2].SetStts(&mStts);
    mSph[2].SetC(mXyzSph[2]);
}

/* ############################################################################################## */
/* 80BD3118-80BD311C 000058 0004+00 0/1 0/0 0/0 .rodata          @3817 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3817 = 80.0f;
// COMPILER_STRIP_GATE(0x80BD3118, &lit_3817);
// #pragma pop

/* 80BD311C-80BD3120 00005C 0004+00 0/1 0/0 0/0 .rodata          @3818 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3818 = 130.0f;
// COMPILER_STRIP_GATE(0x80BD311C, &lit_3818);
// #pragma pop

/* 80BD0500-80BD0658 0001E0 0158+00 1/1 0/0 0/0 .text            setCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::setCcCylinder() {
    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::YrotM(mCylY);
        mDoMtx_stack_c::transM(i * 95.0f + 80.0f, 130.0f, 0);
        mDoMtx_stack_c::multVecZero(&mXyzSph[i]);
    }

    mSph[0].SetC(mXyzSph[0]);
    dComIfG_Ccsp()->Set((cCcD_Obj*)&mSph[0]);

    mSph[1].SetC(mXyzSph[1]);
    dComIfG_Ccsp()->Set((cCcD_Obj*)&mSph[1]);

    mSph[2].SetC(mXyzSph[2]);
    dComIfG_Ccsp()->Set((cCcD_Obj*)&mSph[2]);
}

/* 80BD0658-80BD0678 000338 0020+00 1/0 0/0 0/0 .text            daObjCRVGATE_Create__FP10fopAc_ac_c
 */
static int daObjCRVGATE_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjCRVGATE_c*>(i_this)->create();
}

/* 80BD0678-80BD069C 000358 0024+00 1/0 0/0 0/0 .text daObjCRVGATE_Delete__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Delete(daObjCRVGATE_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* ############################################################################################## */
/* 80BD3120-80BD3128 000060 0008+00 0/3 0/0 0/0 .rodata          @3881 */
// UNUSED ?
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3881[8] = {
//     0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80BD3120, &lit_3881);
// #pragma pop

/* 80BD3128-80BD3130 000068 0008+00 0/3 0/0 0/0 .rodata          @3882 */
// UNUSED ?
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3882[8] = {
//     0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80BD3128, &lit_3882);
// #pragma pop

/* 80BD3130-80BD3138 000070 0008+00 0/4 0/0 0/0 .rodata          @3883 */
// UNUSED ?
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_3883[8] = {
//     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80BD3130, &lit_3883);
// #pragma pop

/* 80BD3138-80BD313C 000078 0004+00 0/3 0/0 0/0 .rodata          @3884 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3884 = 200.0f;
// COMPILER_STRIP_GATE(0x80BD3138, &lit_3884);
// #pragma pop

/* 80BD069C-80BD0844 00037C 01A8+00 1/1 0/0 0/0 .text            checkOpen__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::checkOpen() {
    if (dComIfGs_getKeyNum() == 0) {
        return 0;
    }

    daPy_py_c* player_p = daPy_getPlayerActorClass();
    s16 height_diff = fopAcM_GetAngle_p(this)->y - fopAcM_GetAngle_p(player_p)->y;

    if (abs(height_diff) < 0x5000) {
        return 0;
    }

    return mPos1.absXZ(player_p->current.pos) < 200.0f;
}

/* 80BD0844-80BD0880 000524 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
// extern "C" void __dt__4cXyzFv() {
//     // NONMATCHING
// }

/* 80BD0880-80BD0978 000560 00F8+00 1/1 0/0 0/0 .text actionStartEvent__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::actionStartEvent() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camera_body = dCam_getBody();

    if (eventInfo.checkCommandDemoAccrpt() == 0) {
        fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
        eventInfo.onCondition(0x0);
    } else {
        camera->mCamera.Stop();

        mFovY = 0;
        mFovX = camera_body->Fovy();

        mCamCenter = camera_body->Center();
        mCamEye = camera_body->Eye();

        camera->mCamera.SetTrimSize(3);
        mEventID = 2;
    }
}

/* ############################################################################################## */
/* 80BD313C-80BD3140 00007C 0004+00 2/5 0/0 0/0 .rodata          @3937 */
// SECTION_RODATA static f32 const lit_3937 = 1.0f;
// COMPILER_STRIP_GATE(0x80BD313C, &lit_3937);

/* 80BD3140-80BD3144 000080 0004+00 2/5 0/0 0/0 .rodata          @3938 */
// SECTION_RODATA static f32 const lit_3938 = -1.0f;
// COMPILER_STRIP_GATE(0x80BD3140, &lit_3938);

/* 80BD0978-80BD0A64 000658 00EC+00 1/1 0/0 0/0 .text            actionWaitEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionWaitEvent() {
    if (eventInfo.checkCommandDoor()) {
        daPy_py_c* player_p = daPy_getPlayerActorClass();
        player_p->changeOriginalDemo();
        player_p->changeDemoMode(1, 0, 0, 0);

        mEventID = 1;
        dComIfGp_setItemKeyNumCount(-1);
        mEventFlag = true;
        Demo_Set();

        Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_OPEN, &mPos1, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                 0);

        fopAcM_OffStatus(this, 0x100);
    } else {
        if (checkOpen() != 0) {
            eventInfo.onCondition(4);
        }
    }
}

/* ############################################################################################## */
/* 80BD3144-80BD3148 000084 0004+00 0/3 0/0 0/0 .rodata          @3990 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3990 = 300.0f;
// COMPILER_STRIP_GATE(0x80BD3144, &lit_3990);
// #pragma pop

/* 80BD3148-80BD314C 000088 0004+00 0/3 0/0 0/0 .rodata          @3991 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3991 = 500.0f;
// COMPILER_STRIP_GATE(0x80BD3148, &lit_3991);
// #pragma pop

/* 80BD0A64-80BD0B7C 000744 0118+00 1/1 0/0 0/0 .text            Demo_Set__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Demo_Set() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    cXyz* player_pos = fopAcM_GetPosition_p(player_p);

    s16 target_angle = cLib_targetAngleY(&current.pos, player_pos);
    fopAcM_GetPosition_p(this)->absXZ(*player_pos);  //?

    mCamEye.set(fopAcM_GetPosition_p(this)->x + cM_scos(target_angle + 0x1000) * 300.0f,
                fopAcM_GetPosition_p(this)->y + 500.0f,
                fopAcM_GetPosition_p(this)->z - cM_ssin(target_angle + 0x1000) * 300.0f);
    mCamCenter.set(fopAcM_GetPosition_p(this)->x, fopAcM_GetPosition_p(this)->y + 200.0f,
                   fopAcM_GetPosition_p(this)->z);
}

/* 80BD0B7C-80BD0B88 00085C 000C+00 2/2 0/0 0/0 .text            SetOpen__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetOpen() {
    mClosed = false;
}

/* ############################################################################################## */
/* 80BD314C-80BD3150 00008C 0004+00 0/1 0/0 0/0 .rodata          @4030 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4030 = -5.0f;
// COMPILER_STRIP_GATE(0x80BD314C, &lit_4030);
// #pragma pop

/* 80BD3150-80BD3154 000090 0004+00 0/2 0/0 0/0 .rodata          @4031 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4031 = 55.0f;
// COMPILER_STRIP_GATE(0x80BD3150, &lit_4031);
// #pragma pop

/* 80BD3154-80BD3158 000094 0004+00 0/1 0/0 0/0 .rodata          @4032 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4032 = 0.5f;
// COMPILER_STRIP_GATE(0x80BD3154, &lit_4032);
// #pragma pop

/* 80BD3158-80BD315C 000098 0004+00 0/1 0/0 0/0 .rodata          @4033 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4033 = 5.0f / 3.0f;
// COMPILER_STRIP_GATE(0x80BD3158, &lit_4033);
// #pragma pop

/* 80BD0B88-80BD0D28 000868 01A0+00 1/1 0/0 0/0 .text            actionDemoEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionDemoEvent() {
    if (!mDemoEventPlay) {
        mPos2.y += -5.0f;
        mPos1.y += mPos2.y;
        if (mPos1.y <= mMinHeight + 55.0f) {
            mDemoEventPlay = true;
            mPos1.y = mMinHeight + 55.0f;
            daObjEff::Act_c::make_land_smoke(&mPos1, 0.5f);
            mChaseAngle3 = 0x500;
        }
    } else {
        cLib_chaseAngleS(&mCloseAngle.x, 0x4000, mChaseAngle3);

        mChaseAngle3 += 0x300;

        if (mCloseAngle.x == 0x4000) {
            mEventID = 3;
            camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);

            dComIfGp_event_reset();

            SetOpen();
            mpDoor->SetOpen();
        }
    }
}

/* 80BD0D28-80BD0D90 000A08 0068+00 1/1 0/0 0/0 .text            event_proc_call__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::event_proc_call() {
    switch (mEventID) {
    case 0:
        actionWaitEvent();
        break;
    case 1:
        actionStartEvent();
        break;
    case 2:
        actionDemoEvent();
        break;
    case 3:
        mEventFlag = false;
        break;
    }
}

/* 80BD0D90-80BD0E1C 000A70 008C+00 1/1 0/0 0/0 .text            CheckVec__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::CheckVec() {
    cXyz player_pos = fopAcM_GetPosition(daPy_getPlayerActorClass());

    Mtx inv_mtx;
    mDoMtx_inverse(mpModelGate->getBaseTRMtx(), inv_mtx);
    mDoMtx_copy(inv_mtx, mDoMtx_stack_c::get());
    mDoMtx_multVec(mDoMtx_stack_c::get(), &player_pos, &player_pos);

    return player_pos.z > 0;
}

/* 80BD0E1C-80BD0F9C 000AFC 0180+00 1/1 0/0 0/0 .text            KeyVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::KeyVib() {
    mChaseAngle1 -= 0x21;
    mChaseAngle3 += mChaseAngle1;
    cLib_chaseAngleS(&mChaseAngle2, 0, 0x150);

    if (mChaseAngle2 != 0x0) {
        if (!mFlagSetDoor) {
            mpDoor->mCloseAngle.x = mChaseAngle2 * cM_ssin(mChaseAngle3);
            mCloseAngle.x = mChaseAngle2 * cM_ssin(mChaseAngle3);
            if (mCloseAngle.x > 0) {
                mpDoor->mCloseAngle.x = -mCloseAngle.x;
                mCloseAngle.x = -mCloseAngle.x;
            }
        } else {
            mCloseAngle.x = mChaseAngle2 * cM_ssin(mChaseAngle3);
            if (mCloseAngle.x > 0) {
                mCloseAngle.x = -mCloseAngle.x;
            }
        }
    } else {
        mFlagDoorStill = false;
    }
}

/* 80BD0F9C-80BD10C0 000C7C 0124+00 1/1 0/0 0/0 .text            DoorVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorVib() {
    mDoorVib.y -= 0x100;
    mDoorVib.z += mDoorVib.y;
    cLib_chaseAngleS(&mDoorVib.x, 0, 0x40);

    if (mDoorVib.x != 0) {
        if (mFlagSetDoor == 1) {
            mCylY = mDoorVib.x * cM_ssin(mDoorVib.z);
            mpDoor->mCylY = -mCylY;
        } else {
            mCylY = -mDoorVib.x * cM_ssin(mDoorVib.z);
            mpDoor->mCylY = -mCylY;
        }
    }
}

/* 80BD10C0-80BD10D0 000DA0 0010+00 1/1 0/0 0/0 .text            VibStop__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::VibStop() {
    mDoorVib.y = 0;
    mDoorVib.x = 0;
}

/* 80BD10D0-80BD1110 000DB0 0040+00 1/1 0/0 0/0 .text            CloseVibration__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::CloseVibration() {
    if (mClosed != 4) {
        KeyVib();
    }
    DoorVib();
}

/* ############################################################################################## */
/* 80BD315C-80BD3160 00009C 0004+00 0/2 0/0 0/0 .rodata          @4086 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4086 = 350.0f;
// COMPILER_STRIP_GATE(0x80BD315C, &lit_4086);
// #pragma pop

/* 80BD3160-80BD3164 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4087 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4087 = 120.0f;
// COMPILER_STRIP_GATE(0x80BD3160, &lit_4087);
// #pragma pop

/* 80BD3164-80BD3168 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4430 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4430 = 490.0f;
// COMPILER_STRIP_GATE(0x80BD3164, &lit_4430);
// #pragma pop

/* 80BD3168-80BD316C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4431 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4431 = 10.0f;
// COMPILER_STRIP_GATE(0x80BD3168, &lit_4431);
// #pragma pop

/* 80BD316C-80BD3170 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4432 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4432 = 70.0f;
// COMPILER_STRIP_GATE(0x80BD316C, &lit_4432);
// #pragma pop

/* 80BD3170-80BD3174 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4433 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4433 = -30.0f;
// COMPILER_STRIP_GATE(0x80BD3170, &lit_4433);
// #pragma pop

static f32 const dummyFloat1() {
    return 350.0f;
}
static f32 const dummyFloat2() {
    return 120.0f;
}

/* 80BD1110-80BD18E0 000DF0 07D0+00 2/2 0/0 0/0 .text            CloseAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::CloseAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz* player_pos = fopAcM_GetPosition_p(player);
    csXyz og_CloseAngle(mCloseAngle.x, mCloseAngle.y, mCloseAngle.z);

    if (mXyzSph[1].absXZ(*player_pos) < 300.0f && player->checkFrontRollCrash()) {
        if (mFlagSetDoor == 1) {
            mChaseAngle2 = -0x3000;
            mChaseAngle1 = 0x1500;
        } else {
            mpDoor->mChaseAngle2 = -0x4000;
            mpDoor->mChaseAngle1 = 0x1500;
        }

        if (!mAudioCloseFlag) {
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_ATTACK, &mPos1, 0, 0, 1.0f, 1.0f, -1.0f,
                                     -1.0f, 0);
        } else {
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        mDoorVib.y = 0x3000;
        mDoorVib.x = 0x500;
        mpDoor->VibStop();
        mFlagDoorStill = true;
    }

    for (int i = 0; i < 3; i++) {
        cLib_addCalcAngleS(&mCloseAngle.x, 0, 2, 0x2000, 0x400);

        if (mSph[i].ChkTgHit()) {
            if (!mAudioCloseFlag) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_ATTACK, &mPos1, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            } else if (mFlagSetDoor == 0xff) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }

            if (mFlagSetDoor == 1) {
                mChaseAngle2 = -0x3000;
                mChaseAngle1 = 0x1500;
            } else {
                mpDoor->mChaseAngle2 = -0x4000;
                mpDoor->mChaseAngle1 = 0x1500;
            }

            mDoorVib.y = 0x3000;
            mDoorVib.x = 0x500;
            mFlagDoorStill = true;
            mpDoor->VibStop();
            break;
        }
        if (mSph[i].ChkCoHit()) {
            cCcD_Obj* hitObj = mSph[i].GetCoHitObj();
            fopAc_ac_c* enemy_ac;

            if (fopAcM_GetName(hitObj->GetAc()) == PROC_E_WB && player->checkBoarRun() != 0 &&
                fopAcM_SearchByName(PROC_E_WB, &enemy_ac) != 0)
            {
                cXyz* enemy_speed = fopAcM_GetSpeed_p(enemy_ac);
                daPy_py_c* player = daPy_getPlayerActorClass();

                if (dComIfGp_event_runCheck() != 0) {
                    f32 dist = fopAcM_GetPosition(player).absXZ(mXyzSph[i]);

                    if (dist < 490.0f && enemy_speed->absXZ() > 0.0f) {
                        dComIfGp_getVibration().StartShock(5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                        fopAcM_seStartCurrent(this, 0x802C5, 0);
                        mpDoor->mClosed = 2;
                        mClosed = 2;
                        mFlagDoorStill = true;
                        mpDoor->mFlagDoorStill = true;
                        mDoorCnt = 0;

                        if (mFlagSetDoor == 1) {
                            mSomeDoorAngle1 = -0x7000;
                        } else {
                            mpDoor->mSomeDoorAngle1 = -0x7000;
                        }

                        mPos2.set(10.0f, 70.0f, -30.0f);
                    }
                }
            }
        }
    }

    CloseVibration();

    if (mClosed != 0x04) {
        mPos1.set(current.pos.x + cM_scos(shape_angle.y + mCylY) * 350.0f, 120.0f + current.pos.y,
                  current.pos.z - cM_ssin(shape_angle.y + mCylY) * 350.0f);
    } else {
        mCloseAngle = og_CloseAngle;
    }
}

/* ############################################################################################## */
/* 80BD3174-80BD3178 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4648 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4648 = 288.0f;
// COMPILER_STRIP_GATE(0x80BD3174, &lit_4648);
// #pragma pop

/* 80BD3178-80BD317C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4649 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4649 = 112.0f;
// COMPILER_STRIP_GATE(0x80BD3178, &lit_4649);
// #pragma pop

/* 80BD18E0-80BD21E4 0015C0 0904+00 1/1 0/0 0/0 .text            OpenAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::OpenAction() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    s16 targetCylY = mCylY;
    s16 initialCylY = targetCylY;
    s8 collision_cnt = 0;

    if (CheckVec() != 0) {
        cXyz* player_pos = fopAcM_GetPosition_p(player_p);
        if (mXyzSph[1].absXZ(*player_pos) < 300.0f && player_p->checkFrontRollCrash()) {
            mSomeDoorAngle1 = mCylY + 0x1000;
            mDoorOpen = true;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        for (int i = 0; i < 3; i++) {
            if (mSph[i].ChkTgHit() != 0) {
                mSomeDoorAngle1 = mCylY + 0x1000;
                mDoorOpen = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);

            } else {
                if (mSph[i].ChkCoHit() != 0) {
                    collision_cnt++;
                    cCcD_Obj* hit_obj = mSph[i].GetCoHitObj();
                    fopAc_ac_c* hit_actor = hit_obj->GetAc();

                    if (fopAcM_GetName(hit_actor) == PROC_E_WB) {
                        if (mFlagSetDoor == 0xff) {
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_BREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        }
                        daPy_py_c* player_p = daPy_getPlayerActorClass();
                        mSomeDoorAngle1 = mCylY + fopAcM_GetSpeedF(player_p) * 288.0f;
                        mDoorOpen = true;
                    } else {
                        initialCylY = mCylY + fopAcM_GetSpeedF(player_p) * 112.0f;
                        if (initialCylY > 0x4000) {
                            initialCylY = 0x4000;
                        }

                        if (initialCylY != targetCylY && !mUninitFlag) {
                            mUninitFlag = true;
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        } else if (initialCylY == targetCylY) {
                            mUninitFlag = false;
                        }
                    }
                    break;
                }
            }
        }

        if (initialCylY == targetCylY) {
            mUninitFlag = false;
        }

        if (mDoorOpen == 1) {
            if (mCylY > 0x4000) {
                mSomeDoorAngle1 = 0x4000 - (mSomeDoorAngle1 + -0x4000);
            }

            cLib_addCalcAngleS(&mCylY, mSomeDoorAngle1, 6, 0x2000, 0x50);
            if ((u16)(mCylY - mSomeDoorAngle1) < 0x100) {
                mDoorOpen = false;
            }
        } else {
            cLib_addCalcAngleS(&mCylY, initialCylY, 6, 0x2000, 0x50);
        }
    } else {
        cXyz* player_pos = fopAcM_GetPosition_p(player_p);
        if (mXyzSph[1].absXZ(*player_pos) < 300.0f && player_p->checkFrontRollCrash()) {
            mSomeDoorAngle1 = -0x1000;  //??
            mSomeDoorAngle1 = (mCylY + -0x1000);
            mDoorOpen = true;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        for (int i = 0; i < 3; ++i) {
            if (mSph[i].ChkTgHit() != 0) {
                mSomeDoorAngle1 = mCylY - 0x1000;
                mDoorOpen = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);

            } else {
                if (mSph[i].ChkCoHit() != 0) {
                    collision_cnt++;
                    cCcD_Obj* hit_obj = mSph[i].GetCoHitObj();
                    fopAc_ac_c* hit_actor = hit_obj->GetAc();

                    if (fopAcM_GetName(hit_actor) == 0xEF) {
                        daPy_py_c* player_p = daPy_getPlayerActorClass();

                        mSomeDoorAngle1 = mCylY - fopAcM_GetSpeedF(player_p) * 288.0f;
                        mDoorOpen = true;

                        if (mFlagSetDoor == 0xff) {
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_BREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        }
                    } else {
                        initialCylY = mCylY - fopAcM_GetSpeedF(player_p) * 112.0f;

                        if (mFlagSetDoor == 0x1) {
                            if (initialCylY < -0x2300) {
                                initialCylY = -0x2300;
                            }
                        } else if (initialCylY < -0x4000) {
                            initialCylY = -0x4000;
                        }

                        if (initialCylY != targetCylY && !mUninitFlag) {
                            mUninitFlag = true;
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        } else {
                            if (initialCylY == targetCylY) {
                                mUninitFlag = false;
                            }
                        }
                    }
                }
            }
        }

        if (initialCylY == targetCylY) {
            mUninitFlag = false;
        }

        if (mDoorOpen == 1) {
            if (mFlagSetDoor == 1) {
                if (mCylY < -0x2300) {
                    mSomeDoorAngle1 = -0x2300 - (mSomeDoorAngle1 + 0x2300);
                }
            } else if (mCylY < -0x4000) {
                mSomeDoorAngle1 = -0x4000 - (mSomeDoorAngle1 + 0x4000);
            }

            cLib_addCalcAngleS(&mCylY, mSomeDoorAngle1, 6, 0x2000, 0x50);
            if ((u16)(mCylY - mSomeDoorAngle1) < 0x100) {
                mDoorOpen = false;
            }
        } else {
            cLib_addCalcAngleS(&mCylY, initialCylY, 6, 0x2000, 0x50);
        }
    }
}

/* ############################################################################################## */
/* 80BD317C-80BD3180 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4663 */
// SECTION_RODATA static f32 const lit_4663 = -2.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80BD317C, &lit_4663);

/* 80BD21E4-80BD22C8 001EC4 00E4+00 1/1 0/0 0/0 .text            HakaiMotion__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::HakaiMotion() {
    if (mCylY < -0x6000) {
        mSomeDoorAngle1 = -0x6000 - (mSomeDoorAngle1 + 0x6000);
    }

    cLib_addCalcAngleS(&mCylY, (int)mSomeDoorAngle1, 6, 0x2000, 0x50);
    cLib_addCalcAngleS(&mpDoor->mCylY, (int)-mSomeDoorAngle1, 6, 0x2000, 0x50);

    if (mPos1.y <= mMinHeight) {
        mDoorCnt++;
        mPos1.y = mMinHeight;
        mCloseAngle.x = 0x4000;
        if (mDoorCnt > 3) {
            SetOpen();
            mpDoor->SetOpen();
        } else {
            mPos2.y = mPos2.y * -0.4f;
        }
    }
}

/* 80BD22C8-80BD2338 001FA8 0070+00 1/1 0/0 0/0 .text            DoorAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorAction() {
    switch (mClosed) {
    case 0:
        OpenAction();
        break;
    case 1:
        CloseAction();
        break;
    case 2:
        if (mFlagSetDoor == 1) {
            HakaiMotion();
        }
        break;
    case 4:
        B_CloseAction();
        break;
    default:
        break;
    }
}

/* ############################################################################################## */
/* 80BD3180-80BD3184 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4671          UNUSED */
// UNUSED?
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4671 = 50.0f;
COMPILER_STRIP_GATE(0x80BD3180, &lit_4671);
#pragma pop

/* 80BD3184-80BD3188 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4672          UNUSED */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4672 = -10.0f;
COMPILER_STRIP_GATE(0x80BD3184, &lit_4672);
#pragma pop

/* 80BD3188-80BD3190 0000C8 0004+04 0/1 0/0 0/0 .rodata          @4700 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4700[1 + 1 /* padding */] = {
//     7.0f / 10.0f,
//     /* padding */
//     0.0f,
// };
// COMPILER_STRIP_GATE(0x80BD3188, &lit_4700);
// #pragma pop

/* 80BD3190-80BD3198 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4701 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f64 const lit_4701 = -0.7;
// COMPILER_STRIP_GATE(0x80BD3190, &lit_4701);
// #pragma pop

/* 80BD2338-80BD245C 002018 0124+00 1/1 0/0 0/0 .text            B_CloseAction__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::B_CloseAction() {
    if (mSomeDoorAngle2 > 0x10) {
        cLib_chaseAngleS(&mCylY, mAction, mSomeDoorAngle2);
        if (mCylY == mAction) {
            if (!mAudioCloseFlag) {
                mAudioCloseFlag = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CLOSE, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }
            mSomeDoorAngle2 *= (7.0f / 10.0f);
            mAction = -0.7 * mAction;
        }
    } else {
        CloseAction();
    }
}

/* 80BD245C-80BD2528 00213C 00CC+00 0/0 0/0 1/1 .text            SetB_Close__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetB_Close() {
    Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                             0);

    if (mFlagSetDoor == 1) {
        mpDoor->SetB_Close();
    }

    mClosed = 0x4;
    mSomeDoorAngle2 = 0xc18;

    if (abs(mSomeDoorAngle2) < 0x500) {
        mSomeDoorAngle2 = 0x500;
    }

    if (mCylY > 0x0) {
        mAction = -0xa30;
    } else {
        mAction = 0xa30;
    }
}

/* ############################################################################################## */
/* 80BD3198-80BD319C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4757 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4757 = 35.0f;
// COMPILER_STRIP_GATE(0x80BD3198, &lit_4757);
// #pragma pop

/* 80BD319C-80BD31A0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4758 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4758 = -55.0f;
// COMPILER_STRIP_GATE(0x80BD319C, &lit_4758);
// #pragma pop

/* 80BD2528-80BD2624 002208 00FC+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::setBaseMtx() {
    cXyz local_18(0.0f, 0.0f, 35.0f);
    mDoMtx_stack_c::transS(mPos1);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(local_18);

    if (mDemoEventPlay == 1) {
        mDoMtx_stack_c::transM(0.0f, -55.0f, 0.0f);
    }

    mDoMtx_stack_c::ZXYrotM(mCloseAngle);

    if (mDemoEventPlay == 1) {
        mDoMtx_stack_c::transM(0.0f, 55.0f, 0.0f);
    }

    MTXCopy(mDoMtx_stack_c::get(), mpModelKey->mBaseTransformMtx);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(mCylY);
    MTXCopy(mDoMtx_stack_c::get(), mpModelGate->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD2624-80BD2650 002304 002C+00 1/0 0/0 0/0 .text daObjCRVGATE_Draw__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Draw(daObjCRVGATE_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BD2650-80BD2670 002330 0020+00 2/1 0/0 0/0 .text daObjCRVGATE_Execute__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Execute(daObjCRVGATE_c* i_this) {
    return i_this->MoveBGExecute();
}

/* ############################################################################################## */
/* 80BD31BC-80BD31BC 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_80BD31BC = "CrvGate";
// SECTION_DEAD static char const* const stringBase_80BD31C4 = "CaravanGate.bmd";
// SECTION_DEAD static char const* const stringBase_80BD31D4 = "CaravanKey.bmd";
// #pragma pop

/* 80BD31F4-80BD31F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvGate";

/* 80BD2670-80BD2758 002350 00E8+00 1/0 0/0 0/0 .text            CreateHeap__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::CreateHeap() {
    J3DModelData* modelDataGate = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "CaravanGate.bmd");
    mpModelGate = mDoExt_J3DModel__create(modelDataGate, 0x80000, 0x11000084);

    if (mpModelGate == NULL) {
        return 0;
    }

    if (!mFlagSetDoor) {
        J3DModelData* modelDataKey =
            (J3DModelData*)dComIfG_getObjectRes(l_arcName, "CaravanKey.bmd");
        mpModelKey = mDoExt_J3DModel__create(modelDataKey, 0x80000, 0x11000084);
    }

    /* Probably a bug? */
    if (mpModelGate == NULL) {
        return 0;
    }

    return 1;
}

/* ############################################################################################## */
/* 80BD31A0-80BD31A4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4833 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4833 = 700.0f;
// COMPILER_STRIP_GATE(0x80BD31A0, &lit_4833);
// #pragma pop

/* 80BD2758-80BD28C0 002438 0168+00 1/1 0/0 0/0 .text            SetDoor__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetDoor() {
    cXyz* ac_pos = fopAcM_GetPosition_p(this);
    csXyz* ac_angle = fopAcM_GetShapeAngle_p(this);

    cXyz child_pos(ac_pos->x + cM_scos(ac_angle->y) * 700.0f, ac_pos->y,
                   ac_pos->z - cM_ssin(ac_angle->y) * 700.0f);

    mPos1.set(ac_pos->x + cM_scos(ac_angle->y) * 350.0f, 120.0f + ac_pos->y,
              ac_pos->z - cM_ssin(ac_angle->y) * 350.0f);

    csXyz child_angle(ac_angle->x, ac_angle->y + 0x8000, ac_angle->z);

    if (mFlagSetDoor == 0xff) {
        attention_info.position = mPos1;
        attention_info.flags = 0x20;
        attention_info.distances[5] = 0xF;

        mFlagSetDoor = true;
        s8 child_room = fopAcM_GetRoomNo(this);
        fpc_ProcID parent_id = fopAcM_GetID(this);

        mDoorChild = fopAcM_createChild(PROC_Obj_CRVGATE, parent_id, 1, &child_pos, child_room,
                                        &child_angle, NULL, -1, 0);
        ;
        mDoorY = shape_angle.y;
    } else {
        mFlagSetDoor = false;
        mDoorY = shape_angle.y;
        fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&mpDoor);
    }
}

/* ############################################################################################## */
/* 80BD31A4-80BD31A8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4928 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4928 = -9.0f;
// COMPILER_STRIP_GATE(0x80BD31A4, &lit_4928);
// #pragma pop

/* 80BD31A8-80BD31AC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4929 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4929 = -100.0f;
// COMPILER_STRIP_GATE(0x80BD31A8, &lit_4929);
// #pragma pop

// /* 80BD31AC-80BD31B0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4930 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4930 = -200.0f;
// COMPILER_STRIP_GATE(0x80BD31AC, &lit_4930);
// #pragma pop

/* 80BD31BC-80BD31BC 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_80BD31E3 = "CaravanGate.dzb";
// #pragma pop

/* 80BD3248-80BD3254 000054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

/* 80BD3254-80BD3260 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
// SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGCylFv,
// };

/* 80BD3260-80BD326C 00006C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

/* 80BD326C-80BD3290 000078 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80BD30B0,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80BD30A8,
// };

/* 80BD3290-80BD32B8 00009C 0028+00 1/1 0/0 0/0 .data            __vt__14daObjCRVGATE_c */
// SECTION_DATA extern void* __vt__14daObjCRVGATE_c[10] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)CreateHeap__14daObjCRVGATE_cFv,
//     (void*)Create__14daObjCRVGATE_cFv,
//     (void*)Execute__14daObjCRVGATE_cFPPA3_A4_f,
//     (void*)Draw__14daObjCRVGATE_cFv,
//     (void*)Delete__14daObjCRVGATE_cFv,
//     (void*)IsDelete__16dBgS_MoveBgActorFv,
//     (void*)ToFore__16dBgS_MoveBgActorFv,
//     (void*)ToBack__16dBgS_MoveBgActorFv,
// };

/* 80BD28C0-80BD2BE4 0025A0 0324+00 1/1 0/0 0/0 .text            create__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::create() {
    fopAcM_SetupActor(this, daObjCRVGATE_c);
    int rv = dComIfG_resLoad(&mPhaseReq, l_arcName);

    if (rv == cPhs_COMPLEATE_e) {
        gravity = -9.0f;

        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "CaravanGate.dzb");
        rv = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1480, NULL);

        if (rv == cPhs_ERROR_e) {
            return rv;
        }

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);

        initCcCylinder();
        fopAcM_SetMtx(this, mpModelGate->getBaseTRMtx());
        mFlagSetDoor = (s8)fopAcM_GetParam(this);  // TODO Truncating

        SetDoor();

        mDemoEventPlay = false;
        mEventID = 0;
        mClosed = true;
        mPos2.set(0.0f, 0.0f, 0.0f);
        mCylY = 0;
        mPos3 = mPos1;

        for (int i = 0; i < 3; i++) {
            mSph[i].OnTgShield();  // ?
        }

        fopAcM_setCullSizeBox(this, -100.0f, 0.0, -200.0f, 500.0, 500.0, 200.0);

        cXyz acStack_40(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&acStack_40)) {
            mMinHeight = fopAcM_gc_c::getGroundY();
        }

        mAudioCloseFlag = false;
        mUninitFlag = false;
        daObjCRVGATE_Execute(this);
    }

    return rv;
}

/* 80BD2BE4-80BD2C2C 0028C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

/* 80BD2C2C-80BD2C74 00290C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

/* 80BD2C74-80BD2D40 002954 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
// extern "C" void __dt__8dCcD_SphFv() {
//     // NONMATCHING
// }

/* 80BD2D40-80BD2DC4 002A20 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
// extern "C" void __ct__8dCcD_SphFv() {
//     // NONMATCHING
// }

/* 80BD2DC4-80BD2E0C 002AA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

/* 80BD2E0C-80BD2E7C 002AEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

/* 80BD2E7C-80BD2E80 002B5C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
// extern "C" void __ct__4cXyzFv() {
//     /* empty function */
// }

/* 80BD2E80-80BD2E88 002B60 0008+00 1/0 0/0 0/0 .text daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c
 */
static int daObjCRVGATE_IsDelete(daObjCRVGATE_c* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 80BD31B0-80BD31B4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5063 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5063 = -1000.0f;
// COMPILER_STRIP_GATE(0x80BD31B0, &lit_5063);
// #pragma pop

/* 80BD31B4-80BD31B8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5064 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5064 = -500.0f;
// COMPILER_STRIP_GATE(0x80BD31B4, &lit_5064);
// #pragma pop

/* 80BD31B8-80BD31BC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5065 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5065 = 1000.0f;
// COMPILER_STRIP_GATE(0x80BD31B8, &lit_5065);
// #pragma pop

/* 80BD2E88-80BD2ECC 002B68 0044+00 1/0 0/0 0/0 .text            Create__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return 4;
}

/* ##############################################################################################
 */
/* 80BD32B8-80BD32BC 000000 0002+02 1/1 0/0 0/0 .bss s_CoCount__29@unnamed@d_a_obj_crvgate_cpp@
 */
namespace {
static u16 s_CoCount = 0;
}

/* 80BD2ECC-80BD2FB8 002BAC 00EC+00 1/0 0/0 0/0 .text Execute__14daObjCRVGATE_cFPPA3_A4_f
 */
int daObjCRVGATE_c::Execute(f32 (**param_0)[3][4]) {
    s_CoCount = 0;

    if (mFlagSetDoor == 1) {
        if (fopAcM_SearchByID(mDoorChild) != NULL && !mDoorLocated) {
            fopAcM_SearchByID(mDoorChild, (fopAc_ac_c**)&mpDoor);
            mDoorLocated = true;
            mEventFlag = false;
        }
        if (!mFlagDoorStill) {
            event_proc_call();
        }
    }
    if (!mEventFlag) {
        DoorAction();
    }
    *param_0 = &mBgMtx;
    setBaseMtx();
    if (mCnt != 0) {
        mCnt--;
    }
    setCcCylinder();
    return 1;
}

/* 80BD2FB8-80BD3074 002C98 00BC+00 1/0 0/0 0/0 .text            Draw__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModelGate->mModelData, &tevStr);

    if (mFlagSetDoor == 0x01) {
        g_env_light.setLightTevColorType_MAJI(mpModelKey->mModelData, &tevStr);
    }

    dComIfGd_setListBG();

    mDoExt_modelUpdateDL(mpModelGate);
    if (mFlagSetDoor == 0x01) {
        mDoExt_modelUpdateDL(mpModelKey);
    }
    return 1;
}

/* 80BD3074-80BD30A8 002D54 0034+00 1/0 0/0 0/0 .text            Delete__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80BD30A8-80BD30B0 002D88 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// void func_80BD30A8() {
//     // NONMATCHING
// }

/* 80BD30B0-80BD30B8 002D90 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// void func_80BD30B0() {
//     // NONMATCHING
// }

/* 80BD31F8-80BD3218 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVGATE_Method */
static actor_method_class l_daObjCRVGATE_Method = {
    (process_method_func)daObjCRVGATE_Create,  (process_method_func)daObjCRVGATE_Delete,
    (process_method_func)daObjCRVGATE_Execute, (process_method_func)daObjCRVGATE_IsDelete,
    (process_method_func)daObjCRVGATE_Draw,
};

/* 80BD3218-80BD3248 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVGATE */
extern actor_process_profile_definition g_profile_Obj_CRVGATE = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_CRVGATE,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjCRVGATE_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    466,                     // mPriority
    &l_daObjCRVGATE_Method,  // sub_method
    0x00040180,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
