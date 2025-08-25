/**
 * @file d_a_obj_udoor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_udoor.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"

//
// Declarations:
//

/* 80D20738-80D2079C 000078 0064+00 1/0 0/0 0/0 .text daObj_Udoor_Draw__FP15obj_udoor_class */
static int daObj_Udoor_Draw(obj_udoor_class* i_this) {
    g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* 80D2079C-80D209BC 0000DC 0220+00 2/1 0/0 0/0 .text daObj_Udoor_Execute__FP15obj_udoor_class */
static int daObj_Udoor_Execute(obj_udoor_class* i_this) {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->field_0x57c++;
    switch (i_this->field_0x567) {
        case 0:
            cLib_addCalcAngleS2(&i_this->shape_angle.y, 0, 2, 0x1000);
            break;
        case 1:
            i_this->field_0x580 = 2000.0f;
            i_this->field_0x567 = 2;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_RANCHHOUSE_DOOR_OPEN, &i_this->current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        case 2:
            cLib_addCalcAngleS2(&i_this->shape_angle.y, -25000, 1, 0x1000);
            break;
    }

    if (daPy_getPlayerActorClass()->checkFrontRollCrash() 
                    && player->current.pos.z < -20066.0f 
                    && player->current.pos.z > -20428.0f) {
        i_this->field_0x580 = 500.0f;
        i_this->field_0x57c = 0;
    }
    
    i_this->current.angle.y = i_this->field_0x580 * cM_ssin(i_this->field_0x57c * 9000);

    cLib_addCalc0(&i_this->field_0x580, 0.05f, 50.0f);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);

    if (i_this->field_0x570 == 0) {
        mDoMtx_YrotM(mDoMtx_stack_c::now, i_this->home.angle.y + i_this->shape_angle.y + i_this->current.angle.y);
    } else {
        mDoMtx_YrotM(mDoMtx_stack_c::now, i_this->home.angle.y - i_this->shape_angle.y - i_this->current.angle.y);
    }

    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::now);

    if (i_this->mpBgW != NULL) {
        PSMTXCopy(mDoMtx_stack_c::now, i_this->mBgMtx);
        i_this->mpBgW->Move();
    }
    return 1;
}

/* 80D209BC-80D209C4 0002FC 0008+00 1/0 0/0 0/0 .text daObj_Udoor_IsDelete__FP15obj_udoor_class */
static bool daObj_Udoor_IsDelete(obj_udoor_class* param_0) {
    return true;
}

/* 80D209C4-80D20A1C 000304 0058+00 1/0 0/0 0/0 .text daObj_Udoor_Delete__FP15obj_udoor_class */
static int daObj_Udoor_Delete(obj_udoor_class* i_this) {
    fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhase, "Obj_udoor");

    if (i_this->mpBgW != NULL) {
        dComIfG_Bgsp().Release(i_this->mpBgW);
    }
    return 1;
}

/* 80D20A1C-80D20B40 00035C 0124+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    static int bmdd[2] = { 4, 5 };

    static int dzbd[2] = { 8, 9 };

    obj_udoor_class* a_this = static_cast<obj_udoor_class*>(i_this);

    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("Obj_udoor", bmdd[a_this->field_0x570]);
    JUT_ASSERT(301, model_data != 0);

    a_this->mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBgW = new dBgW();
    if (a_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("Obj_udoor", dzbd[a_this->field_0x570]);
    if (a_this->mpBgW->Set(dzb, cBgW::MOVE_BG_e, &a_this->mBgMtx) == TRUE) {
        return 0;
    }

    a_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    
    return 1;
}

/* 80D20B40-80D20D48 000480 0208+00 1/0 0/0 0/0 .text            daObj_Udoor_Create__FP10fopAc_ac_c */
static cPhs__Step daObj_Udoor_Create(fopAc_ac_c* i_this) {
    static dCcD_SrcSph cc_sph_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    fopAcM_SetupActor(i_this, obj_udoor_class);
    obj_udoor_class* a_this = static_cast<obj_udoor_class*>(i_this);
    
    cPhs__Step phase_state = (cPhs__Step)dComIfG_resLoad(&a_this->mPhase, "Obj_udoor");
    if (phase_state == cPhs_COMPLEATE_e) {
        a_this->field_0x570 = a_this->base.parameters;
        if (a_this->field_0x570 == 0xff) {
            a_this->field_0x570 = 0;
        }

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0xD20)) {
            return cPhs_ERROR_e;
        }
        
        if (a_this->mpBgW != NULL) {
            if (dComIfG_Bgsp().Regist(a_this->mpBgW, a_this)) {
                return cPhs_ERROR_e;
            }
        }

        a_this->mCcStts.Init(0xff, 0, a_this);
        a_this->mCcSph.Set(cc_sph_src);
        a_this->mCcSph.SetStts(&a_this->mCcStts);
        fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());
        fopAcM_SetMin(a_this, -300.0f, -600.0, -300.0f);
        fopAcM_SetMax(a_this, 300.0f, 600.0, 300.0f);

        if (dComIfG_play_c::getLayerNo(0) != 1 && dComIfG_play_c::getLayerNo(0) != 3) {
            a_this->field_0x567 = 2;
        }
        daObj_Udoor_Execute(a_this);
    }

    return phase_state;
}

/* 80D20E6C-80D20E8C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Udoor_Method */
static actor_method_class l_daObj_Udoor_Method = {
    (process_method_func)daObj_Udoor_Create,
    (process_method_func)daObj_Udoor_Delete,
    (process_method_func)daObj_Udoor_Execute,
    (process_method_func)daObj_Udoor_IsDelete,
    (process_method_func)daObj_Udoor_Draw,
};

/* 80D20E8C-80D20EBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_UDOOR */
extern actor_process_profile_definition g_profile_OBJ_UDOOR = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_UDOOR,          // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(obj_udoor_class), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  77,                      // mPriority
  &l_daObj_Udoor_Method,   // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
