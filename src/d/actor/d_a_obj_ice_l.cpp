/**
 * @file d_a_obj_ice_l.cpp
 * 
*/

#include "d/actor/d_a_obj_ice_l.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void RideOn_Angle__12daObjIce_l_cFRsfsf();
extern "C" void Check_RideOn__12daObjIce_l_cF4cXyz();
extern "C" void initBaseMtx__12daObjIce_l_cFv();
extern "C" void setBaseMtx__12daObjIce_l_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjIce_l_Draw__FP12daObjIce_l_c();
extern "C" static void daObjIce_l_Execute__FP12daObjIce_l_c();
extern "C" static bool daObjIce_l_IsDelete__FP12daObjIce_l_c();
extern "C" static void daObjIce_l_Delete__FP12daObjIce_l_c();
extern "C" static void daObjIce_l_Create__FP10fopAc_ac_c();
extern "C" void create__12daObjIce_l_cFv();
extern "C" void CreateHeap__12daObjIce_l_cFv();
extern "C" void Create__12daObjIce_l_cFv();
extern "C" void Execute__12daObjIce_l_cFPPA3_A4_f();
extern "C" void Draw__12daObjIce_l_cFv();
extern "C" void Delete__12daObjIce_l_cFv();
extern "C" extern char const* const d_a_obj_ice_l__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
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
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C2078C-80C20794 000000 0004+04 4/4 0/0 0/0 .rodata          @3675 */
SECTION_RODATA static u8 const lit_3675[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80C2078C, &lit_3675);

/* 80C20794-80C2079C 000008 0008+00 1/3 0/0 0/0 .rodata          @3677 */
SECTION_RODATA static u8 const lit_3677[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C20794, &lit_3677);

/* 80C1F9F8-80C1FA60 000078 0068+00 1/1 0/0 0/0 .text            RideOn_Angle__12daObjIce_l_cFRsfsf
 */
void daObjIce_l_c::RideOn_Angle(s16& i_angle, f32 param_1, s16 param_2, f32 param_3) {
    cLib_addCalcAngleS(&i_angle, param_2 * (param_1 / param_3), 1, 0x100, 1);
}

/* ############################################################################################## */
/* 80C2079C-80C207A4 000010 0008+00 0/2 0/0 0/0 .rodata          @3733 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3733[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2079C, &lit_3733);
#pragma pop

/* 80C207A4-80C207AC 000018 0008+00 0/2 0/0 0/0 .rodata          @3734 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3734[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C207A4, &lit_3734);
#pragma pop

/* 80C207AC-80C207B4 000020 0008+00 0/2 0/0 0/0 .rodata          @3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3735[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C207AC, &lit_3735);
#pragma pop

/* 80C207B4-80C207B8 000028 0004+00 0/1 0/0 0/0 .rodata          @3736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3736 = 352.0f;
COMPILER_STRIP_GATE(0x80C207B4, &lit_3736);
#pragma pop

/* 80C207B8-80C207BC 00002C 0004+00 0/2 0/0 0/0 .rodata          @3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3737 = 600.0f;
COMPILER_STRIP_GATE(0x80C207B8, &lit_3737);
#pragma pop

/* 80C207BC-80C207C0 000030 0004+00 0/1 0/0 0/0 .rodata          @3738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3738 = 500.0f;
COMPILER_STRIP_GATE(0x80C207BC, &lit_3738);
#pragma pop

/* 80C207C0-80C207C4 000034 0004+00 0/1 0/0 0/0 .rodata          @3739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3739 = 48.0f;
COMPILER_STRIP_GATE(0x80C207C0, &lit_3739);
#pragma pop

/* 80C207C4-80C207C8 000038 0004+00 0/1 0/0 0/0 .rodata          @3740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3740 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x80C207C4, &lit_3740);
#pragma pop

/* 80C207C8-80C207CC 00003C 0004+00 0/2 0/0 0/0 .rodata          @3741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3741 = 100.0f;
COMPILER_STRIP_GATE(0x80C207C8, &lit_3741);
#pragma pop

/* 80C1FA60-80C1FCCC 0000E0 026C+00 1/1 0/0 0/0 .text            Check_RideOn__12daObjIce_l_cF4cXyz
 */
// float match issues
#ifdef NONMATCHING
int daObjIce_l_c::Check_RideOn(cXyz param_0) {
    fopAc_ac_c* player_p = (fopAc_ac_c*)daPy_getPlayerActorClass();
    s16 var_r29 = 0;
    field_0x5e6 = 1;

    s16 target = cLib_targetAngleY(&current.pos, &param_0);
    f32 dist_to_pos = current.pos.abs(param_0);

    f32 var_f31 = cM_scos(target - shape_angle.y);
    var_f31 *= dist_to_pos;

    f32 var_f30 = cM_ssin(target - shape_angle.y);
    var_f30 *= -dist_to_pos;

    RideOn_Angle(field_0x5d8.x, var_f31, 352.0f / field_0x5b4.x, field_0x5b4.x * 600.0f);
    RideOn_Angle(field_0x5d8.z, var_f30, 352.0f / field_0x5b4.x, field_0x5b4.x * 500.0f);
    field_0x5e6 = 1;

    f32 player_speed = fopAcM_GetSpeedF(player_p);
    if (player_speed > 0.0f) {
        var_r29 = player_speed * 48.0f;
        field_0x5ac = 0x150;
    }

    field_0x5e0 = 0.0f;
    cLib_addCalc(&field_0x5a0, var_r29, 0.015f, 100.0f, 0.0f);
    return 0;
}
#else
int daObjIce_l_c::Check_RideOn(cXyz param_0) {
    // NONMATCHING
}
#endif

/* 80C1FCCC-80C1FCF8 00034C 002C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjIce_l_cFv */
void daObjIce_l_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80C1FCF8-80C1FD5C 000378 0064+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjIce_l_cFv */
void daObjIce_l_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(field_0x5b4);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 80C207CC-80C207D0 000040 0004+00 0/1 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = -1.0f;
COMPILER_STRIP_GATE(0x80C207CC, &lit_3843);
#pragma pop

/* 80C207D0-80C207D4 000044 0004+00 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = -6.0f;
COMPILER_STRIP_GATE(0x80C207D0, &lit_3844);
#pragma pop

/* 80C1FD5C-80C20034 0003DC 02D8+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    cXyz* ball_pos = player_p->getIronBallCenterPos();
    cXyz& player_pos = fopAcM_GetPosition(player_p);
    daObjIce_l_c* ice_p = static_cast<daObjIce_l_c*>(param_1);

    //!@bug Missing parentheses causes this comparison to always evaluate to false
    if (!fopAcM_GetName(param_2) == PROC_ALINK) {
        ice_p->field_0x5f4 = 0x100;
        ice_p->field_0x5a4 = -1.0f;
        ice_p->field_0x5ac = 0x500;
    } else {
        ice_p->Check_RideOn(player_pos);
    }

    cXyz* ice_pos = &fopAcM_GetPosition(ice_p);
    if (ball_pos != NULL && ice_pos != NULL &&
        ice_pos->absXZ(*ball_pos) < ice_p->field_0x5b4.x * 600.0f)
    {
        ice_p->field_0x5f4 = 0x400;
        ice_p->field_0x5a4 = -6.0f;
        ice_p->field_0x5ac = 0x700;
        ice_p->Check_RideOn(*ball_pos);
    }

    if (player_p->checkBootsOrArmorHeavy()) {
        ice_p->field_0x5a4 = -6.0f;
        ice_p->field_0x5ac = 0x200;
        ice_p->Check_RideOn(player_pos);
    }

    if (ice_p->field_0x5b1 == 0xFF && fopAcM_GetName(param_2) == PROC_ALINK) {
        ice_p->field_0x5f4 = 0x300;
        ice_p->field_0x5a4 = -6.0f;
        ice_p->field_0x5ac = 0x1000;
        ice_p->Check_RideOn(player_pos);
    }
}


/* 80C20034-80C20060 0006B4 002C+00 1/0 0/0 0/0 .text            daObjIce_l_Draw__FP12daObjIce_l_c
 */
static int daObjIce_l_Draw(daObjIce_l_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C20060-80C20080 0006E0 0020+00 1/0 0/0 0/0 .text daObjIce_l_Execute__FP12daObjIce_l_c */
static int daObjIce_l_Execute(daObjIce_l_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C20080-80C20088 000700 0008+00 1/0 0/0 0/0 .text daObjIce_l_IsDelete__FP12daObjIce_l_c */
static int daObjIce_l_IsDelete(daObjIce_l_c* i_this) {
    return 1;
}

/* 80C20088-80C200AC 000708 0024+00 1/0 0/0 0/0 .text            daObjIce_l_Delete__FP12daObjIce_l_c
 */
static int daObjIce_l_Delete(daObjIce_l_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80C200AC-80C200CC 00072C 0020+00 1/0 0/0 0/0 .text            daObjIce_l_Create__FP10fopAc_ac_c
 */
static int daObjIce_l_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjIce_l_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80C207D4-80C207D8 000048 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 1.0f;
COMPILER_STRIP_GATE(0x80C207D4, &lit_3934);
#pragma pop

/* 80C207D8-80C207DC 00004C 0004+00 0/2 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 300.0f;
COMPILER_STRIP_GATE(0x80C207D8, &lit_3935);
#pragma pop

/* 80C207DC-80C207E0 000050 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 32000.0f;
COMPILER_STRIP_GATE(0x80C207DC, &lit_3936);
#pragma pop

/* 80C207E0-80C207E4 000054 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 1000.0f;
COMPILER_STRIP_GATE(0x80C207E0, &lit_3937);
#pragma pop

/* 80C207E4-80C207EC 000058 0004+04 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938[1 + 1 /* padding */] = {
    3.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C207E4, &lit_3938);
#pragma pop

/* 80C207EC-80C207F4 000060 0008+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3940[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C207EC, &lit_3940);
#pragma pop

/* 80C2081C-80C2081C 000090 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C2081C = "V_Ice_l";
SECTION_DEAD static char const* const stringBase_80C20824 = "Ice_l.dzb";
#pragma pop

/* 80C20838-80C2083C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static char* l_arcName = "V_Ice_l";

/* 80C2083C-80C2085C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIce_l_Method */
static actor_method_class l_daObjIce_l_Method = {
    (process_method_func)daObjIce_l_Create__FP10fopAc_ac_c,
    (process_method_func)daObjIce_l_Delete__FP12daObjIce_l_c,
    (process_method_func)daObjIce_l_Execute__FP12daObjIce_l_c,
    (process_method_func)daObjIce_l_IsDelete__FP12daObjIce_l_c,
    (process_method_func)daObjIce_l_Draw__FP12daObjIce_l_c,
};

/* 80C2085C-80C2088C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Ice_l */
extern actor_process_profile_definition g_profile_Obj_Ice_l = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Ice_l,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x00000640,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  456,                    // mPriority
  &l_daObjIce_l_Method,   // sub_method
  0x00044180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C2088C-80C208B4 000054 0028+00 1/1 0/0 0/0 .data            __vt__12daObjIce_l_c */
SECTION_DATA extern void* __vt__12daObjIce_l_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjIce_l_cFv,
    (void*)Create__12daObjIce_l_cFv,
    (void*)Execute__12daObjIce_l_cFPPA3_A4_f,
    (void*)Draw__12daObjIce_l_cFv,
    (void*)Delete__12daObjIce_l_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C200CC-80C2030C 00074C 0240+00 1/1 0/0 0/0 .text            create__12daObjIce_l_cFv */
int daObjIce_l_c::create() {
    fopAcM_SetupActor(this, daObjIce_l_c);

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "Ice_l.dzb");
        JUT_ASSERT(108, dzb_id != -1);

        phase_state = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1440, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    field_0x5b1 = fopAcM_GetParam(this) & 0xFF;
    if (field_0x5b1 == 0) {
        field_0x5b0 = 1;
    }

    if (field_0x5b0 != 0) {
        if (dComIfGs_getCollectSmell() == SMELL_FISH) {
            field_0x5b1 = 1;
        } else {
            field_0x5b1 = 0xFF;
        }
    }

    u16 prm1 = (fopAcM_GetParam(this) >> 8) & 0xFF;
    if (prm1 == 0xFF) {
        prm1 = 0;
    }
    field_0x5b4.set(prm1 + 1.0f, 1.0f, prm1 + 1.0f);

    cXyz gndchk_pos(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    field_0x5e4 = cM_rndFX(32000.0f);

    dBgS_ObjGndChk_Spl gndchk;
    gndchk.SetPos(&gndchk_pos);
    field_0x5c0 = current.pos.y;

    f32 cull_size = field_0x5b4.x * 1000.0f;
    fopAcM_setCullSizeFar(this, 3.0f);
    fopAcM_setCullSizeBox(this, -cull_size, -cull_size, -cull_size, cull_size, cull_size,
                          cull_size);
    return phase_state;
}


/* 80C2030C-80C20384 00098C 0078+00 1/0 0/0 0/0 .text            CreateHeap__12daObjIce_l_cFv */
int daObjIce_l_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "Ice_l.bmd");
    JUT_ASSERT(82, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C20384-80C203C4 000A04 0040+00 1/0 0/0 0/0 .text            Create__12daObjIce_l_cFv */
int daObjIce_l_c::Create() {
    initBaseMtx();
    mpBgW->SetRideCallback(rideCallBack);
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 80C207F4-80C207F8 000068 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80C207F4, &lit_3994);
#pragma pop

/* 80C207F8-80C207FC 00006C 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 848.0f;
COMPILER_STRIP_GATE(0x80C207F8, &lit_3995);
#pragma pop

/* 80C207FC-80C20800 000070 0004+00 0/1 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3996 = 1.5f;
COMPILER_STRIP_GATE(0x80C207FC, &lit_3996);
#pragma pop

/* 80C20800-80C20804 000074 0004+00 0/1 0/0 0/0 .rodata          @3997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3997 = 21.0f;
COMPILER_STRIP_GATE(0x80C20800, &lit_3997);
#pragma pop

/* 80C20804-80C20808 000078 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3998 = 5.0f;
COMPILER_STRIP_GATE(0x80C20804, &lit_3998);
#pragma pop

/* 80C20808-80C2080C 00007C 0004+00 0/1 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3999 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C20808, &lit_3999);
#pragma pop

/* 80C2080C-80C20810 000080 0004+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4000 = 15.0f;
COMPILER_STRIP_GATE(0x80C2080C, &lit_4000);
#pragma pop

/* 80C20810-80C20814 000084 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 0.5f;
COMPILER_STRIP_GATE(0x80C20810, &lit_4001);
#pragma pop

/* 80C20814-80C20818 000088 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C20814, &lit_4002);
#pragma pop

/* 80C20818-80C2081C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C20818, &lit_4003);
#pragma pop

/* 80C203C4-80C206AC 000A44 02E8+00 1/0 0/0 0/0 .text            Execute__12daObjIce_l_cFPPA3_A4_f
 */
#ifdef NONMATCHING
int daObjIce_l_c::Execute(Mtx** param_0) {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    fopAcM_GetPosition(player_p);
    cXyz sp68(current.pos.x, current.pos.y - 300.0f, current.pos.z);

    cLib_chaseF(&field_0x5a4, 0.0f, 0.04f);
    field_0x5d4 += (field_0x5a0 * 1.5f) + 848.0f;
    field_0x5d6 += (field_0x5a0 * 1.5f) + 848.0f;

    cLib_addCalc(&current.pos.y,
                 field_0x5e0 + (field_0x5c0 + (21.0f * field_0x5a4) +
                                (cM_ssin(field_0x5d6 + field_0x5e4) * 5.0f)),
                 0.1f, 15.0f, 0.1f);
    cLib_addCalcAngleS(&shape_angle.x,
                       field_0x5d8.x +
                           (field_0x5ac * 0.5f * cM_ssin(0x2000 + field_0x5d4 + field_0x5e4)),
                       2, 0x100, 1);
    cLib_addCalcAngleS(&shape_angle.z,
                       field_0x5d8.z + (field_0x5ac * 0.5f * cM_ssin(field_0x5d6 + field_0x5e4)), 2,
                       0x100, 1);

    if (field_0x5e6 == 0) {
        cLib_addCalcAngleS(&field_0x5d8.x, 0, 2, 0x100, 1);
        cLib_addCalcAngleS(&field_0x5d8.z, 0, 2, 0x100, 1);
        cLib_addCalc(&field_0x5e0, 0.0f, 0.2f, 100.0f, 0.0f);
        cLib_addCalc(&field_0x5a0, 0.0f, 0.05f, 100.0f, 0.0f);
        cLib_chaseAngleS(&field_0x5ac, 0x120, 0x10);
    }

    field_0x5e6 = 0;
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}
#else
int daObjIce_l_c::Execute(Mtx** param_0) {
    // NONMATCHING
}
#endif

/* 80C206AC-80C20750 000D2C 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjIce_l_cFv */
int daObjIce_l_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListDarkBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C20750-80C20784 000DD0 0034+00 1/0 0/0 0/0 .text            Delete__12daObjIce_l_cFv */
int daObjIce_l_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}
