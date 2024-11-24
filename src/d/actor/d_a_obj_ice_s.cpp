/**
 * @file d_a_obj_ice_s.cpp
 * 
*/

#include "d/actor/d_a_obj_ice_s.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "SSystem/SComponent/c_lib.h"
#include "SSystem/SComponent/c_math.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daOBJ_ICE_S_HIO_cFv();
extern "C" void RideOn_Angle__12daObjIce_s_cFRsfsf();
extern "C" void Check_LinkRideOn__12daObjIce_s_cF4cXyz();
extern "C" void Check_RideOn__12daObjIce_s_cF4cXyz();
extern "C" void initBaseMtx__12daObjIce_s_cFv();
extern "C" void setBaseMtx__12daObjIce_s_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjIce_s_Draw__FP12daObjIce_s_c();
extern "C" static void daObjIce_s_Execute__FP12daObjIce_s_c();
extern "C" static bool daObjIce_s_IsDelete__FP12daObjIce_s_c();
extern "C" static void daObjIce_s_Delete__FP12daObjIce_s_c();
extern "C" static void daObjIce_s_Create__FP10fopAc_ac_c();
extern "C" void create__12daObjIce_s_cFv();
extern "C" void CreateHeap__12daObjIce_s_cFv();
extern "C" void Create__12daObjIce_s_cFv();
extern "C" void Execute__12daObjIce_s_cFPPA3_A4_f();
extern "C" void Draw__12daObjIce_s_cFv();
extern "C" void Delete__12daObjIce_s_cFv();
extern "C" void __dt__17daOBJ_ICE_S_HIO_cFv();
extern "C" void __sinit_d_a_obj_ice_s_cpp();
extern "C" extern char const* const d_a_obj_ice_s__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __dl__FPv();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C21AF8-80C21AFC 000000 0004+00 6/6 0/0 0/0 .rodata          @3644 */
SECTION_RODATA static f32 const lit_3644 = 5000.0f;
COMPILER_STRIP_GATE(0x80C21AF8, &lit_3644);

/* 80C21AFC-80C21B00 000004 0004+00 1/1 0/0 0/0 .rodata          @3645 */
SECTION_RODATA static f32 const lit_3645 = 20.0f;
COMPILER_STRIP_GATE(0x80C21AFC, &lit_3645);

/* 80C21BA8-80C21BAC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_Ice_s";

/* 80C21BAC-80C21BCC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIce_s_Method */
static actor_method_class l_daObjIce_s_Method = {
    (process_method_func)daObjIce_s_Create__FP10fopAc_ac_c,
    (process_method_func)daObjIce_s_Delete__FP12daObjIce_s_c,
    (process_method_func)daObjIce_s_Execute__FP12daObjIce_s_c,
    (process_method_func)daObjIce_s_IsDelete__FP12daObjIce_s_c,
    (process_method_func)daObjIce_s_Draw__FP12daObjIce_s_c,
};

/* 80C21BCC-80C21BFC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Ice_s */
extern actor_process_profile_definition g_profile_Obj_Ice_s = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Ice_s,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjIce_s_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  457,                    // mPriority
  &l_daObjIce_s_Method,   // sub_method
  0x00044180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C21BFC-80C21C24 000054 0028+00 1/1 0/0 0/0 .data            __vt__12daObjIce_s_c */
SECTION_DATA extern void* __vt__12daObjIce_s_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjIce_s_cFv,
    (void*)Create__12daObjIce_s_cFv,
    (void*)Execute__12daObjIce_s_cFPPA3_A4_f,
    (void*)Draw__12daObjIce_s_cFv,
    (void*)Delete__12daObjIce_s_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C21C24-80C21C30 00007C 000C+00 2/2 0/0 0/0 .data            __vt__17daOBJ_ICE_S_HIO_c */
SECTION_DATA extern void* __vt__17daOBJ_ICE_S_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daOBJ_ICE_S_HIO_cFv,
};

/* 80C209AC-80C209DC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__17daOBJ_ICE_S_HIO_cFv */
daOBJ_ICE_S_HIO_c::daOBJ_ICE_S_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 5000.0f;
    field_0xc = 20.0f;
}

/* ############################################################################################## */
/* 80C21B00-80C21B08 000008 0004+04 0/4 0/0 0/0 .rodata          @3686 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3686[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C21B00, &lit_3686);
#pragma pop

/* 80C21B08-80C21B10 000010 0008+00 1/3 0/0 0/0 .rodata          @3688 */
SECTION_RODATA static u8 const lit_3688[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C21B08, &lit_3688);

/* 80C209DC-80C20A44 00011C 0068+00 2/2 0/0 0/0 .text            RideOn_Angle__12daObjIce_s_cFRsfsf
 */
void daObjIce_s_c::RideOn_Angle(s16& param_1, f32 param_2, s16 param_3, f32 param_4) {
    cLib_addCalcAngleS(&param_1, param_3 * (param_2 / param_4), 5, 0x100, 1);
}

/* ############################################################################################## */
/* 80C21B10-80C21B18 000018 0008+00 0/3 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3746[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C21B10, &lit_3746);
#pragma pop

/* 80C21B18-80C21B20 000020 0008+00 0/3 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3747[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C21B18, &lit_3747);
#pragma pop

/* 80C21B20-80C21B28 000028 0008+00 0/3 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3748[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C21B20, &lit_3748);
#pragma pop

/* 80C21B28-80C21B2C 000030 0004+00 0/3 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 1000.0f;
COMPILER_STRIP_GATE(0x80C21B28, &lit_3749);
#pragma pop

/* 80C21B2C-80C21B30 000034 0004+00 0/1 0/0 0/0 .rodata          @3750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3750 = 98.0f;
COMPILER_STRIP_GATE(0x80C21B2C, &lit_3750);
#pragma pop

/* 80C21B30-80C21B34 000038 0004+00 0/1 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3751 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x80C21B30, &lit_3751);
#pragma pop

/* 80C21B34-80C21B38 00003C 0004+00 0/2 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = 100.0f;
COMPILER_STRIP_GATE(0x80C21B34, &lit_3752);
#pragma pop

/* 80C20A44-80C20C98 000184 0254+00 1/1 0/0 0/0 .text Check_LinkRideOn__12daObjIce_s_cF4cXyz */
// NONMATCHING
// float register issues around abs/sin/cos
bool daObjIce_s_c::Check_LinkRideOn(cXyz param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar8 = 0;
    field_0x5e8 = 1;
    s16 sVar7 = cLib_targetAngleY(&current.pos, &param_1);
    f32 dVar11 = current.pos.abs(param_1);
    f32 cosangle = (f32)cM_scos(sVar7 - shape_angle.y);
    cosangle = (-dVar11) * cosangle;
    f32 sinangle = (f32)cM_ssin(sVar7 - shape_angle.y);
    sinangle = dVar11 * sinangle;
    RideOn_Angle(field_0x5da, cosangle, -0xaa0, 1000.0f * field_0x5c8.x);
    RideOn_Angle(field_0x5de, sinangle, -0xaa0, 1000.0f * field_0x5c8.x);
    field_0x5e8 = 1;
    f32 speedF = fopAcM_GetSpeedF(player);
    if (speedF > 0.0f) {
        sVar8 = 98.0f * speedF;
    }
    field_0x5e0 = 1000.0f;
    cLib_addCalc(&field_0x5a0, sVar8, 0.015f, 100.0f, 1000.0f);
    cLib_chaseAngleS(&field_0x5ac, 0x120, 0x10);
    return false;
}

/* ############################################################################################## */
/* 80C21B38-80C21B3C 000040 0004+00 0/1 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3801 = 1024.0f;
COMPILER_STRIP_GATE(0x80C21B38, &lit_3801);
#pragma pop

/* 80C21C38-80C21C3C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C21C38[4];

/* 80C21C3C-80C21C48 00000C 000C+00 1/1 0/0 0/0 .bss             @3639 */
static u8 lit_3639[12];

/* 80C21C48-80C21C58 000018 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daOBJ_ICE_S_HIO_c l_HIO;

/* 80C20C98-80C20EC0 0003D8 0228+00 1/1 0/0 0/0 .text            Check_RideOn__12daObjIce_s_cF4cXyz
 */
// NONMATCHING
// float issues. 
bool daObjIce_s_c::Check_RideOn(cXyz param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    field_0x5e8 = 1;
    s16 sVar7 = cLib_targetAngleY(&current.pos, &param_1);
    f32 dVar11 = current.pos.abs(param_1);
    f32 cosangle = (f32)cM_scos(sVar7 - shape_angle.y);
    cosangle = (-dVar11) * cosangle;
    f32 sinangle = (f32)cM_ssin(sVar7 - shape_angle.y);
    sinangle = dVar11 * sinangle;
    f32 fVar1;
    // !@bug fVar1 might be uninitialized
    if (field_0x5c5 == 0xff) {
        fVar1 = l_HIO.field_0x8;
    }
    RideOn_Angle(field_0x5da, cosangle, (fVar1 + 1024.0f) / field_0x5c8.x, 1000.0f * field_0x5c8.x);
    RideOn_Angle(field_0x5de, sinangle, (fVar1 + 1024.0f) / field_0x5c8.x, 1000.0f * field_0x5c8.x);
    field_0x5e8 = 1;
    field_0x5e0 = 1000.0f;
    return false;
}

/* 80C20EC0-80C20EEC 000600 002C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjIce_s_cFv */
void daObjIce_s_c::initBaseMtx() {
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80C20EEC-80C20F48 00062C 005C+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjIce_s_cFv */
void daObjIce_s_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 80C21B3C-80C21B40 000044 0004+00 0/1 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3905 = -1.0f;
COMPILER_STRIP_GATE(0x80C21B3C, &lit_3905);
#pragma pop

/* 80C21B40-80C21B44 000048 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = -13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C21B40, &lit_3906);
#pragma pop

/* 80C21B44-80C21B48 00004C 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 600.0f;
COMPILER_STRIP_GATE(0x80C21B44, &lit_3907);
#pragma pop

/* 80C21B48-80C21B4C 000050 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = -11.0f;
COMPILER_STRIP_GATE(0x80C21B48, &lit_3908);
#pragma pop

/* 80C20F48-80C21234 000688 02EC+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
 // NONMATCHING
 // reg alloc
static void rideCallBack(dBgW* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3) {
    daObjIce_s_c* ice = (daObjIce_s_c*)param_2;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& playerPos = fopAcM_GetPosition(player);
    cXyz* pVVar4 = player->getIronBallCenterPos();

    // !@bug misplaced ! operator. This condition is probably always false
    if (!fopAcM_GetName(param_3) == PROC_ALINK) {
        ice->field_0x5d8 = 0x100;
        ice->field_0x5a4 = -1.0f;
        ice->field_0x5ac = 0x500;
    } else {
        ice->field_0x5a4 = -1.3f;
        ice->Check_LinkRideOn(playerPos);
    }
    cXyz* icePos = &fopAcM_GetPosition(param_2);
    if (pVVar4 != NULL && icePos != NULL && icePos->absXZ(*pVVar4) < ice->field_0x5c8.x * 600.0f) {
        ice->field_0x5d8 = 0x300;
        ice->field_0x5a4 = -11.0f;
        ice->field_0x5ac = 0x1000;
        ice->Check_RideOn(*icePos);
    }
    if (player->checkBootsOrArmorHeavy()) {
        ice->field_0x5d8 = 0x300;
        ice->field_0x5a4 = -11.0f;
        ice->field_0x5ac = 0x1000;
        ice->Check_RideOn(playerPos);
    }
    if (ice->field_0x5c5 == 0xff &&
        fopAcM_GetName(param_3) == PROC_ALINK)
    {
        ice->field_0x5d8 = 0x300;
        ice->field_0x5a4 = -11.0f;
        ice->field_0x5ac = 0x1000;
        ice->Check_RideOn(playerPos);
    }
}

/* 80C21234-80C21260 000974 002C+00 1/0 0/0 0/0 .text            daObjIce_s_Draw__FP12daObjIce_s_c
 */
static int daObjIce_s_Draw(daObjIce_s_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C21260-80C21280 0009A0 0020+00 1/0 0/0 0/0 .text daObjIce_s_Execute__FP12daObjIce_s_c */
static int daObjIce_s_Execute(daObjIce_s_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C21280-80C21288 0009C0 0008+00 1/0 0/0 0/0 .text daObjIce_s_IsDelete__FP12daObjIce_s_c */
static int daObjIce_s_IsDelete(daObjIce_s_c* param_0) {
    return 1;
}

/* 80C21288-80C212AC 0009C8 0024+00 1/0 0/0 0/0 .text            daObjIce_s_Delete__FP12daObjIce_s_c
 */
static int daObjIce_s_Delete(daObjIce_s_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

/* 80C212AC-80C212CC 0009EC 0020+00 1/0 0/0 0/0 .text            daObjIce_s_Create__FP10fopAc_ac_c
 */
static int daObjIce_s_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjIce_s_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80C21B4C-80C21B50 000054 0004+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4000 = 500.0f;
COMPILER_STRIP_GATE(0x80C21B4C, &lit_4000);
#pragma pop

/* 80C21B50-80C21B54 000058 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 3.0f;
COMPILER_STRIP_GATE(0x80C21B50, &lit_4001);
#pragma pop

/* 80C21B54-80C21B58 00005C 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 1.0f;
COMPILER_STRIP_GATE(0x80C21B54, &lit_4002);
#pragma pop

/* 80C21B58-80C21B5C 000060 0004+00 0/1 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 32000.0f;
COMPILER_STRIP_GATE(0x80C21B58, &lit_4003);
#pragma pop

/* 80C21B5C-80C21B60 000064 0004+00 0/2 0/0 0/0 .rodata          @4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4004 = 300.0f;
COMPILER_STRIP_GATE(0x80C21B5C, &lit_4004);
#pragma pop

/* 80C21B60-80C21B68 000068 0008+00 0/1 0/0 0/0 .rodata          @4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4006[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C21B60, &lit_4006);
#pragma pop

/* 80C21B8C-80C21B8C 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C21B94 = "Ice_s.dzb";
#pragma pop

/* 80C212CC-80C2157C 000A0C 02B0+00 1/1 0/0 0/0 .text            create__12daObjIce_s_cFv */
int daObjIce_s_c::create() {
    fopAcM_SetupActor(this, daObjIce_s_c);
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "Ice_s.dzb");
        JUT_ASSERT(185, dzb_id != -1);
        rv = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1440, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    if (data_80C21C38[0] == 0) {
        data_80C21C38[0] = 1;
        field_0x640 = 1;
        l_HIO.field_0x4 = -1;
    }
    field_0x5c5 = fopAcM_GetParam(this);
    if (field_0x5c5 == 0) {
        field_0x5c4 = 1;
    }
    if (field_0x5c4 != 0) {
        if (dComIfGs_getCollectSmell() == SMELL_FISH) {
            field_0x5c5 = 1;
        } else {
            field_0x5c5 = 0xff;
        }
    }
    f32 dVar11 = field_0x5c8.x * 500.0f;
    fopAcM_setCullSizeFar(this, 3.0f);
    fopAcM_setCullSizeBox(this, -dVar11, -dVar11, -dVar11, dVar11, dVar11, dVar11);
    u8 uVar7 = (fopAcM_GetParam(this) & 0xffff) >> 8;
    if (uVar7 == 0xff) {
        uVar7 = 0;
    }
    field_0x5c8.set(uVar7 + 1.0f, 1.0f, uVar7 + 1.0f);
    field_0x5e6 = cM_rndFX(32000.0f);
    cXyz cStack_c4(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    dBgS_ObjGndChk_Spl adStack_b8;
    adStack_b8.SetPos(&cStack_c4);
    field_0x5b0 = current.pos.x;
    f32 dVar12 = field_0x5c8.x * 500.0f;
    fopAcM_SetMin(this, -dVar12, -dVar12, -dVar12);
    fopAcM_SetMax(this, dVar12, dVar12, dVar12);
    return rv;
}

/* ############################################################################################## */
/* 80C21B8C-80C21B8C 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C21B9E = "Ice_s.bmd";
#pragma pop

/* 80C2157C-80C215F4 000CBC 0078+00 1/0 0/0 0/0 .text            CreateHeap__12daObjIce_s_cFv */
int daObjIce_s_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "Ice_s.bmd");
    JUT_ASSERT(157, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? 1 : 0;
}

/* 80C215F4-80C21634 000D34 0040+00 1/0 0/0 0/0 .text            Create__12daObjIce_s_cFv */
int daObjIce_s_c::Create() {
    initBaseMtx();
    mpBgW->SetRideCallback(rideCallBack);
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 80C21B68-80C21B6C 000070 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80C21B68, &lit_4060);
#pragma pop

/* 80C21B6C-80C21B70 000074 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 848.0f;
COMPILER_STRIP_GATE(0x80C21B6C, &lit_4061);
#pragma pop

/* 80C21B70-80C21B74 000078 0004+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C21B70, &lit_4062);
#pragma pop

/* 80C21B74-80C21B78 00007C 0004+00 0/1 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = 6.0f;
COMPILER_STRIP_GATE(0x80C21B74, &lit_4063);
#pragma pop

/* 80C21B78-80C21B7C 000080 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 5.0f;
COMPILER_STRIP_GATE(0x80C21B78, &lit_4064);
#pragma pop

/* 80C21B7C-80C21B80 000084 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C21B7C, &lit_4065);
#pragma pop

/* 80C21B80-80C21B84 000088 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 0.5f;
COMPILER_STRIP_GATE(0x80C21B80, &lit_4066);
#pragma pop

/* 80C21B84-80C21B88 00008C 0004+00 0/1 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C21B84, &lit_4067);
#pragma pop

/* 80C21B88-80C21B8C 000090 0004+00 0/1 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C21B88, &lit_4068);
#pragma pop

/* 80C21634-80C21964 000D74 0330+00 1/0 0/0 0/0 .text            Execute__12daObjIce_s_cFPPA3_A4_f
 */
int daObjIce_s_c::Execute(f32 (**param_1)[3][4]) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAcM_GetPosition(player);
    cXyz cStack_68(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    f32 dVar7 = l_HIO.field_0xc;
    cLib_chaseF(&field_0x5a4, 0.0f, 0.04f);
    cLib_chaseS(&field_0x5d8, 0, 0x100);
    field_0x5d4 += 848.0f + 1.8f * field_0x5a0;
    field_0x5d6 += 848.0f + 1.8f * field_0x5a0;
    cLib_addCalc(&current.pos.y,
                 field_0x5e0 + (field_0x5b0 + field_0x5a4 * (6.0f + dVar7) +
                     (5.0f * cM_ssin(field_0x5d6 + field_0x5e6))),
                 0.1f, 1000.0f, 0.1f);
    cLib_addCalcAngleS(&shape_angle.x, field_0x5da + ((0.5f * field_0x5ac) * cM_ssin(0x2000 + field_0x5d4 + field_0x5e6 + field_0x5d8)), 2, 0x100, 1);
    cLib_addCalcAngleS(&shape_angle.z, field_0x5de + ((0.5f * field_0x5ac) * cM_ssin(field_0x5d6 + field_0x5e6 + field_0x5d8)), 2, 0x100, 1);
    if (field_0x5e8 == 0) {
        cLib_addCalcAngleS(&field_0x5da, 0, 2, 0x100, 1);
        cLib_addCalcAngleS(&field_0x5de, 0, 2, 0x100, 1);
        cLib_addCalc(&field_0x5e0, 0, 0.2f, 100.0f, 0);
        cLib_addCalc(&field_0x5a0, 0, 0.05f, 100.0f, 0);
        field_0x5e4 = 0;
        cLib_chaseAngleS(&field_0x5ac, 0x120, 0x10);
    }
    field_0x5e8 = 0;
    *param_1 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80C21964-80C21A08 0010A4 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjIce_s_cFv */
int daObjIce_s_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListDarkBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80C21A08-80C21A60 001148 0058+00 1/0 0/0 0/0 .text            Delete__12daObjIce_s_cFv */
int daObjIce_s_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    if (field_0x640 != 0) {
        data_80C21C38[0] = 0;
    }
    return 1;
}

/* 80C21A60-80C21AA8 0011A0 0048+00 2/1 0/0 0/0 .text            __dt__17daOBJ_ICE_S_HIO_cFv */
daOBJ_ICE_S_HIO_c::~daOBJ_ICE_S_HIO_c() {}

/* 80C21AA8-80C21AE4 0011E8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_ice_s_cpp */
void __sinit_d_a_obj_ice_s_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C21AA8, __sinit_d_a_obj_ice_s_cpp);
#pragma pop

/* 80C21B8C-80C21B8C 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
