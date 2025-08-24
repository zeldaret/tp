/**
 * @file d_a_obj_bhbridge.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bhbridge.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "d/actor/d_a_player.h"
#include <cmath.h>

/* 80BB5318-80BB5380 000078 0068+00 1/1 0/0 0/0 .text RideOn_Angle__15daObjBhbridge_cFRsfsf */
void daObjBhbridge_c::RideOn_Angle(s16& param_1, f32 param_2, s16 param_3, f32 param_4) {
    cLib_addCalcAngleS(&param_1, param_3 * (param_2 / param_4), 1, 0x100, 1);
}

/* 80BB5380-80BB558C 0000E0 020C+00 1/1 0/0 0/0 .text            Check_RideOn__15daObjBhbridge_cFv
 */
int daObjBhbridge_c::Check_RideOn() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& playerPos = fopAcM_GetPosition(player);
    f32 playerSpeed = 0.0f;
    s16 sVar8 = 0;
    field_0x5de = 1;
    s16 sVar7 = cLib_targetAngleY(&current.pos, &playerPos);
    f32 playerDist = current.pos.abs(playerPos);
    f32 dVar12 = playerDist * cM_scos(sVar7 - shape_angle.y);
    f32 dVar10 = -playerDist * cM_ssin(sVar7 - shape_angle.y);
    RideOn_Angle(field_0x5ce.x, dVar12, 0x50, 180.0f);
    f32 var_f27 = 0.0f;
    field_0x5de = 1;
    playerSpeed = fopAcM_GetSpeedF(player);
    if (playerSpeed > 0.0f) {
        sVar8 = 0x400;
        field_0x5b0 = 0x150;
    }
    f32 dVar13 = 1.0f - (std::abs(dVar10) / 300.0f);
    field_0x5d4 = HREG_F(3) * (1.0f - (std::abs(dVar12) / 2500.0f) * dVar13);
    cLib_addCalc(&field_0x5a0, sVar8, HREG_F(13) + 0.05f, 100.0f, 0);
    return 0;
}

/* 80BB558C-80BB55B8 0002EC 002C+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjBhbridge_cFv */
void daObjBhbridge_c::initBaseMtx() {
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80BB55B8-80BB5614 000318 005C+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjBhbridge_cFv */
void daObjBhbridge_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BB5614-80BB5678 000374 0064+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_1, fopAc_ac_c* i_this, fopAc_ac_c* param_3) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (!((daObjBhbridge_c*)i_this)->field_0x5de &&
        player->current.pos.y - player->old.pos.y < -1.0f)
    {
        ((daObjBhbridge_c*)i_this)->field_0x5a8 = -6.0f;
    }
    ((daObjBhbridge_c*)i_this)->Check_RideOn();
}

/* 80BB5678-80BB56A4 0003D8 002C+00 1/0 0/0 0/0 .text daObjBhbridge_Draw__FP15daObjBhbridge_c */
static int daObjBhbridge_Draw(daObjBhbridge_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BB56A4-80BB56C4 000404 0020+00 1/0 0/0 0/0 .text daObjBhbridge_Execute__FP15daObjBhbridge_c
 */
static int daObjBhbridge_Execute(daObjBhbridge_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BB56C4-80BB56CC 000424 0008+00 1/0 0/0 0/0 .text daObjBhbridge_IsDelete__FP15daObjBhbridge_c
 */
static int daObjBhbridge_IsDelete(daObjBhbridge_c* i_this) {
    return 1;
}

/* 80BB56CC-80BB56F0 00042C 0024+00 1/0 0/0 0/0 .text daObjBhbridge_Delete__FP15daObjBhbridge_c */
static int daObjBhbridge_Delete(daObjBhbridge_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80BB5FAC-80BB5FB0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "BHBridge";

inline int daObjBhbridge_c::create() {
    fopAcM_SetupActor(this, daObjBhbridge_c);
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "M_BHbridge.dzb");
        JUT_ASSERT(109, dzb_id != -1);
        rv = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x15a0, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcch.CrrPos(dComIfG_Bgsp());
        cXyz cStack_90(current.pos.x, current.pos.y + 300.0f + HREG_F(1), current.pos.z);
        dBgS_ObjGndChk_Spl adStack_84;
        adStack_84.SetPos(&cStack_90);
        f32 ground = dComIfG_Bgsp().GroundCross(&adStack_84);
        if (ground != -1000000000.0f) {
            current.pos.y = ground + 100.0f;
        }
    }
    return rv;
}

/* 80BB5934-80BB59AC 000694 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjBhbridge_cFv */
inline int daObjBhbridge_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_BHbridge.bmd");
    JUT_ASSERT(83, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? TRUE : FALSE;
}

/* 80BB56F0-80BB58C4 000450 01D4+00 1/0 0/0 0/0 .text daObjBhbridge_Create__FP10fopAc_ac_c */
static int daObjBhbridge_Create(fopAc_ac_c* a_this) {
    daObjBhbridge_c* i_this = static_cast<daObjBhbridge_c*>(a_this);
    fpc_ProcID id = fopAcM_GetID(a_this);
    return i_this->create();
}

/* 80BB59AC-80BB5A14 00070C 0068+00 1/0 0/0 0/0 .text            Create__15daObjBhbridge_cFv */
inline int daObjBhbridge_c::Create() {
    fopAcM_setCullSizeBox(this, -400.0f, -800.0f, -1000.0f, 400.0f, 300.0f, 1000.0f);
    initBaseMtx();
    mpBgW->SetRideCallback(rideCallBack);
    return cPhs_COMPLEATE_e;
}

/* 80BB5A14-80BB5E10 000774 03FC+00 1/0 0/0 0/0 .text Execute__15daObjBhbridge_cFPPA3_A4_f */
inline int daObjBhbridge_c::Execute(f32 (**i_mtxP)[3][4]) {
    cXyz cStack_5c(current.pos.x, current.pos.y + HREG_F(0), current.pos.z);
    f32 dVar10 = current.pos.y;
    if (fopAcM_wt_c::waterCheck(&cStack_5c)) {
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_BH_HASHI_LV, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                      -1.0f, 0);
        dVar10 = HREG_F(7) + fopAcM_wt_c::getWaterY();
        field_0x5a4 = true;
    } else {
        cStack_5c.y += HREG_F(1);
        current.pos.y = mAcch.GetGroundH();
    }
    if (field_0x5a4) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz& local_60 = fopAcM_GetPosition(player);
        field_0x5ca += TREG_S(1) + 0x350 + field_0x5a0 * 2.0f + field_0x5a8 * HREG_F(9);
        field_0x5cc += TREG_S(1) + 0x350 + field_0x5a0 * 2.0f + field_0x5a8 * HREG_F(9);
        if (field_0x5a0 > 512.0f && !field_0x5c6) {
            field_0x5c6 = true;
            if (field_0x5a4) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_BH_HASHI_TRG, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }
        } else {
            if (field_0x5a0 < 256.0f) {
                field_0x5c6 = false;
            }
        }
        cLib_addCalc(&current.pos.y,
                     (HREG_F(4) + 5.0f) * cM_ssin(field_0x5cc + oREG_S(3) + field_0x5dc) +
                         (dVar10 + field_0x5a8 * 11.0f) + field_0x5d4,
                     0.1f, 15.0f, 0.1f);
        cLib_addCalcAngleS(&shape_angle.x, field_0x5ce.x + ((nREG_F(0) + 0.5f) * field_0x5b0) * cM_ssin(field_0x5ca + oREG_S(1) + 0x2000 + field_0x5dc), 2, 0x100, 1);
        cLib_addCalcAngleS(&shape_angle.z, field_0x5ce.z + ((nREG_F(1) + 1.0f) * field_0x5b0) * cM_ssin(field_0x5cc + oREG_S(2) + field_0x5dc), 2, 0x100, 1);
        if (!field_0x5de) {
            cLib_addCalcAngleS(&field_0x5ce.x, 0, 2, 0x100, 1);
            cLib_addCalcAngleS(&field_0x5ce.z, 0, 2, 0x100, 1);
            cLib_addCalc(&field_0x5d4, 0.0f, 0.2f, 100.0f, 0.0f);
            cLib_addCalc(&field_0x5a0, 0.0f, HREG_F(13) + 0.05f, 100.0f, 0.0f);
        }
        cLib_addCalc(&field_0x5a8, 0.0f, 0.2f, 100.0f, 0.0f);
        field_0x5de = false;
        field_0x5b0 = 0x120;
    }
    *i_mtxP = &mBgMtx;
    setBaseMtx();
    mAcch.CrrPos(dComIfG_Bgsp());
    return 1;
}

/* 80BB5E10-80BB5EB4 000B70 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjBhbridge_cFv */
inline int daObjBhbridge_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80BB5EB4-80BB5EE8 000C14 0034+00 1/0 0/0 0/0 .text            Delete__15daObjBhbridge_cFv */
inline int daObjBhbridge_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BB5FB0-80BB5FD0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjBhbridge_Method */
static actor_method_class l_daObjBhbridge_Method = {
    (process_method_func)daObjBhbridge_Create,
    (process_method_func)daObjBhbridge_Delete,
    (process_method_func)daObjBhbridge_Execute,
    (process_method_func)daObjBhbridge_IsDelete,
    (process_method_func)daObjBhbridge_Draw,
};

/* 80BB5FD0-80BB6000 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Bhbridge */
extern actor_process_profile_definition g_profile_Obj_Bhbridge = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Bhbridge,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjBhbridge_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  459,                     // mPriority
  &l_daObjBhbridge_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BB5F84-80BB5F84 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
