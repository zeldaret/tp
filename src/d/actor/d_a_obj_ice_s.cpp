/**
 * @file d_a_obj_ice_s.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ice_s.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "d/d_s_play.h"
#include "SSystem/SComponent/c_lib.h"
#include "SSystem/SComponent/c_math.h"
#include <cmath.h>

/* 80C21BA8-80C21BAC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_Ice_s";

/* 80C209AC-80C209DC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__17daOBJ_ICE_S_HIO_cFv */
daOBJ_ICE_S_HIO_c::daOBJ_ICE_S_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 5000.0f;
    field_0xc = 20.0f;
}

f32 dummyLiteral() { return 0.0f; }

/* 80C209DC-80C20A44 00011C 0068+00 2/2 0/0 0/0 .text            RideOn_Angle__12daObjIce_s_cFRsfsf
 */
void daObjIce_s_c::RideOn_Angle(s16& param_1, f32 param_2, s16 param_3, f32 param_4) {
    cLib_addCalcAngleS(&param_1, param_3 * (param_2 / param_4), 5, 0x100, 1);
}

/* 80C21C38-80C21C3C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_HIOInit;

/* 80C21C48-80C21C58 000018 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daOBJ_ICE_S_HIO_c l_HIO;

/* 80C20A44-80C20C98 000184 0254+00 1/1 0/0 0/0 .text Check_LinkRideOn__12daObjIce_s_cF4cXyz */
bool daObjIce_s_c::Check_LinkRideOn(cXyz param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 speedF = 0.0f;
    s16 sVar8 = 0;
    field_0x5e8 = 1;
    s16 sVar7 = cLib_targetAngleY(&current.pos, &param_1);
    f32 dVar11 = current.pos.abs(param_1);
    f32 cosangle = (-dVar11) * cM_scos(sVar7 - shape_angle.y);
    f32 sinangle = dVar11 * cM_ssin(sVar7 - shape_angle.y);
    f32 var_f27;
    if (field_0x5c5 == 0xff) {
        var_f27 = l_HIO.field_0x8;
    }
    RideOn_Angle(field_0x5da, cosangle, -0xaa0, (XREG_F(0) + 1000.0f) * field_0x5c8.x);
    RideOn_Angle(field_0x5de, sinangle, -0xaa0, (XREG_F(0) + 1000.0f) * field_0x5c8.x);
    f32 var_f26 = 0.0f;
    field_0x5e8 = 1;
    speedF = fopAcM_GetSpeedF(player);
    if (speedF > 0.0f) {
        sVar8 = (HREG_F(15) + 98.0f) * speedF;
    }
    field_0x5e0 = HREG_F(3) * (1.0f - std::abs(cosangle) / 2500.0f * (1.0f - (std::abs(sinangle) / 300.0f)));
    cLib_addCalc(&field_0x5a0, sVar8, HREG_F(13) + 0.015f, 100.0f, 0.0f);
    cLib_chaseAngleS(&field_0x5ac, 0x120, 0x10);
    return false;
}

/* 80C20C98-80C20EC0 0003D8 0228+00 1/1 0/0 0/0 .text            Check_RideOn__12daObjIce_s_cF4cXyz
 */
bool daObjIce_s_c::Check_RideOn(cXyz param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 var_f27 = 0.0f;
    int var_r27 = 0;
    field_0x5e8 = 1;
    s16 sVar7 = cLib_targetAngleY(&current.pos, &param_1);
    f32 dVar11 = current.pos.abs(param_1);
    f32 cosangle = -dVar11 * cM_scos(sVar7 - shape_angle.y);
    f32 sinangle = dVar11 * cM_ssin(sVar7 - shape_angle.y);
    f32 fVar1;
    // !@bug fVar1 might be uninitialized
    if (field_0x5c5 == 0xff) {
        fVar1 = l_HIO.field_0x8;
    }
    RideOn_Angle(field_0x5da, cosangle, (yREG_F(0) + 1024.0f + fVar1) / field_0x5c8.x, (XREG_F(0) + 1000.0f) * field_0x5c8.x);
    RideOn_Angle(field_0x5de, sinangle, (yREG_F(0) + 1024.0f + fVar1) / field_0x5c8.x, (XREG_F(0) + 1000.0f) * field_0x5c8.x);
    f32 var_f26 = 0.0f;
    field_0x5e8 = 1;
    field_0x5e0 = HREG_F(3) * (1.0f - std::abs(cosangle) / 2500.0f * (1.0f - (std::abs(sinangle) / 300.0f)));;
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

/* 80C20F48-80C21234 000688 02EC+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
 // NONMATCHING
 // reg alloc
static void rideCallBack(dBgW* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3) {
    (void)param_1;
    cXyz* icePos;
    daObjIce_s_c* ice = (daObjIce_s_c*)param_2;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& playerPos = fopAcM_GetPosition(player);
    cXyz* pBallCenter = player->getIronBallCenterPos();

    // !@bug misplaced ! operator. This condition is probably always false
    if (!fopAcM_GetName(param_3) == PROC_ALINK) {
        ice->field_0x5d8 = 0x100;
        ice->field_0x5a4 = -1.0f;
        ice->field_0x5ac = 0x500;
    } else {
        ice->field_0x5a4 = -1.3f;
        ice->Check_LinkRideOn(playerPos);
    }

    icePos = &fopAcM_GetPosition(param_2);
    if (pBallCenter != NULL && icePos != NULL && icePos->absXZ(*pBallCenter) < ice->field_0x5c8.x * 600.0f) {
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
    if (!l_HIOInit) {
        l_HIOInit = TRUE;
        field_0x640 = 1;
        l_HIO.field_0x4 = -1;
    }
    field_0x5c5 = fopAcM_GetParam(this);
    if (field_0x5c5 == 0) {
        field_0x5c4 = 1;
    }
    if (field_0x5c4 != 0) {
        if (dComIfGs_getCollectSmell() == fpcNm_ITEM_SMELL_FISH) {
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
    field_0x5b0 = current.pos.y;
    f32 dVar12 = field_0x5c8.x * 500.0f;
    fopAcM_SetMin(this, -dVar12, -dVar12, -dVar12);
    fopAcM_SetMax(this, dVar12, dVar12, dVar12);
    return rv;
}

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
        l_HIOInit = FALSE;
    }
    return 1;
}


/* 80C21BAC-80C21BCC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIce_s_Method */
static actor_method_class l_daObjIce_s_Method = {
    (process_method_func)daObjIce_s_Create,
    (process_method_func)daObjIce_s_Delete,
    (process_method_func)daObjIce_s_Execute,
    (process_method_func)daObjIce_s_IsDelete,
    (process_method_func)daObjIce_s_Draw,
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

/* 80C21B8C-80C21B8C 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
