/**
 * @file d_a_obj_sm_door.cpp
 * Object - Sacred Meadow Door
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_sm_door.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_e_pm.h"

/* 80CD968C-80CD9690 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "sm_door";

/* 80CD85B8-80CD85D8 000078 0020+00 1/0 0/0 0/0 .text            daObjSM_DOOR_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObjSM_DOOR_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjSM_DOOR_c*>(i_this)->create();
}

/* 80CD85D8-80CD85FC 000098 0024+00 1/0 0/0 0/0 .text daObjSM_DOOR_Delete__FP14daObjSM_DOOR_c */
static int daObjSM_DOOR_Delete(daObjSM_DOOR_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80CD85FC-80CD8784 0000BC 0188+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_this) {
    fopAc_ac_c* actor = static_cast<fopAc_ac_c*>(i_actor);
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    cXyz& actor_pos = fopAcM_GetPosition(actor);
    cXyz& pos = fopAcM_GetPosition(_this);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_PM
        && actor_pos.absXZ(pos) < 800.0f)
    {
        return i_actor;
    }
    return NULL;
}

/* 80CD8784-80CD8790 000244 000C+00 1/1 0/0 0/0 .text            ChangeModel__14daObjSM_DOOR_cFv */
void daObjSM_DOOR_c::ChangeModel() {
    mUseAlphaModel = true;
}

f32 dummy_literal() {
    return 1000.0f;
}

/* 80CD8790-80CD8A40 000250 02B0+00 1/1 0/0 0/0 .text            Action__14daObjSM_DOOR_cFv */
void daObjSM_DOOR_c::Action() {
    switch (mMode) {
    case 0: {
        daE_PM_c* skullkid = (daE_PM_c*)fpcM_Search(s_obj_sub, this);
        if (skullkid != NULL) {
            if (skullkid->DoorChk() == 2) {
                ChangeModel();
                mMode++;
            }
            if (skullkid->DoorChk() == 5) {
                fopAcM_delete(this);
                fopAcM_delete(skullkid);
            }
        }
        break;
    }

    case 1: {
        daE_PM_c* skullkid = (daE_PM_c*)fpcM_Search(s_obj_sub, this);
        if (skullkid != NULL) {
            if (current.pos.absXZ(fopAcM_GetPosition(skullkid)) < 600.0f) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_PM_WALL_FADEAWAY, &current.pos,
                                         0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                mMode++;
                ReleaceDzb();
            }
            if (skullkid->DoorChk() == 5) {
                fopAcM_delete(this);
                fopAcM_delete(skullkid);
            }
        }
        break;
    }

    case 2:
        mAlpha -= 3.0f;
        if (mAlpha < 4) {
            fopAcM_delete(this);
        }
        break;
    }
}

/* 80CD8A40-80CD8A90 000500 0050+00 2/2 0/0 0/0 .text            SetDzb__14daObjSM_DOOR_cFv */
int daObjSM_DOOR_c::SetDzb() {
    if (mpBgW != NULL && dComIfG_Bgsp().Regist(mpBgW, this)) {
        return 0;
    }
    return 1;
}

/* 80CD8A90-80CD8AF8 000550 0068+00 3/3 0/0 0/0 .text            ReleaceDzb__14daObjSM_DOOR_cFv */
int daObjSM_DOOR_c::ReleaceDzb() {
    if (mpBgW != NULL && mpBgW->ChkUsed() && dComIfG_Bgsp().Release(mpBgW)) {
        return 0;
    }
    return 1;
}

/* 80CD8AF8-80CD8BBC 0005B8 00C4+00 1/1 0/0 0/0 .text            DrawChk1__14daObjSM_DOOR_cFv */
void daObjSM_DOOR_c::DrawChk1() {
    if (mSwBit != 0xff && dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this)) && mActive == false) {
        if (SetDzb()) {
            mActive = true;
        }
    } else if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))
                              && mActive == true) {
        if (ReleaceDzb()) {
            mActive = false;
        }
    }
}

/* 80CD8BBC-80CD8C80 00067C 00C4+00 1/1 0/0 0/0 .text            DrawChk2__14daObjSM_DOOR_cFv */
void daObjSM_DOOR_c::DrawChk2() {
    if (mSwBit != 0xff && !dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this)) && mActive == false) {
        if (SetDzb()) {
            mActive = true;
        }
    } else if (mSwBit != 0xff && dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))
                              && mActive == true) {
        if (ReleaceDzb()) {
            mActive = false;
        }
    }
}

/* 80CD8C80-80CD8D00 000740 0080+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjSM_DOOR_cFv */
void daObjSM_DOOR_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    if (!mUseAlphaModel) {
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    } else {
        mpAlphaModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CD8D00-80CD8D2C 0007C0 002C+00 1/0 0/0 0/0 .text daObjSM_DOOR_Draw__FP14daObjSM_DOOR_c */
static int daObjSM_DOOR_Draw(daObjSM_DOOR_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CD8D2C-80CD8D4C 0007EC 0020+00 2/1 0/0 0/0 .text daObjSM_DOOR_Execute__FP14daObjSM_DOOR_c */
static int daObjSM_DOOR_Execute(daObjSM_DOOR_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CD90A4-80CD9258 000B64 01B4+00 1/0 0/0 0/0 .text            CreateHeap__14daObjSM_DOOR_cFv */
inline int daObjSM_DOOR_c::CreateHeap() {
    J3DModelData* model_data;
    J3DModelData* alpha_model_data;

    if (mType == 0) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorA.bmd");
        alpha_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorA_Alpha.bmd");
    } else if (mType == 1) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorBl.bmd");
        alpha_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorBl_Alpha.bmd");
    } else if (mType == 2) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorWo.bmd");
        alpha_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "A_SM_DoorWo_Alpha.bmd");
    }

    mpAlphaModel = mDoExt_J3DModel__create(alpha_model_data, 0x80000, 0x11000084);
    if (mpAlphaModel == NULL) {
        return 0;
    }

    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80CD8D4C-80CD902C 00080C 02E0+00 1/1 0/0 0/0 .text            create__14daObjSM_DOOR_cFv */
cPhs__Step daObjSM_DOOR_c::create() {
    fopAcM_SetupActor(this, daObjSM_DOOR_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);

    if (step == cPhs_COMPLEATE_e) {
        gravity = -9.0f;
        mActive = true;
        mType = fopAcM_GetParam(this) & 0xF;
        mSwType = (fopAcM_GetParam(this) >> 4) & 0xF;
        mUseAlphaModel = false;

        int dzb_id;
        if (mType == 0) {
            mType = 0;
            dzb_id = dComIfG_getObjctResName2Index(l_arcName, "A_SM_DoorA.dzb");
        } else if (mType == 1) {
            mType = 1;
            dzb_id = dComIfG_getObjctResName2Index(l_arcName, "A_SM_DoorBl.dzb");
        } else if (mType == 2) {
            mType = 2;
            dzb_id = dComIfG_getObjctResName2Index(l_arcName, "A_SM_DoorWo.dzb");
        } else {
            mType = 0;
            dzb_id = dComIfG_getObjctResName2Index(l_arcName, "A_SM_DoorA.dzb");
        }

        mSwBit = fopAcM_GetParam(this) >> 8;

        step = (cPhs__Step)MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY,
                                        0x1F20, NULL);
        if (step == cPhs_ERROR_e) {
            return step;
        }

        fopAcM_SetMtx(this, mpAlphaModel->getBaseTRMtx());
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        mAlpha = 0xff;
        cXyz pos(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&pos)) {
            current.pos.y = fopAcM_gc_c::getGroundY();
        }
        fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);

        daObjSM_DOOR_Execute(this);
    }

    return step;
}

/* 80CD909C-80CD90A4 000B5C 0008+00 1/0 0/0 0/0 .text daObjSM_DOOR_IsDelete__FP14daObjSM_DOOR_c */
static int daObjSM_DOOR_IsDelete(daObjSM_DOOR_c* i_this) {
    return 1;
}

/* 80CD9258-80CD929C 000D18 0044+00 1/0 0/0 0/0 .text            Create__14daObjSM_DOOR_cFv */
inline int daObjSM_DOOR_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80CD929C-80CD930C 000D5C 0070+00 1/0 0/0 0/0 .text            Execute__14daObjSM_DOOR_cFPPA3_A4_f
 */
inline int daObjSM_DOOR_c::Execute(Mtx** i_mtxP) {
    if (mSwType == 0xF) {
        DrawChk1();
    } else if (mSwType == 0) {
        DrawChk2();
    }

    Action();
    *i_mtxP = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80CD930C-80CD9544 000DCC 0238+00 1/0 0/0 0/0 .text            Draw__14daObjSM_DOOR_cFv */
inline int daObjSM_DOOR_c::Draw() {
    if (mActive) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);

        if (!mUseAlphaModel) {
            g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
            dComIfGd_setListDarkBG();
            J3DModelData* model_data = mpModel->getModelData();
            for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
                model_data->getMaterialNodePointer(i)->getTevKColor(3)->a = mAlpha;
            }
            mDoExt_modelUpdateDL(mpModel);
            for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
                model_data->getMaterialNodePointer(i)->getTevKColor(0)->a = 0xFF;
            }
        } else {
            g_env_light.setLightTevColorType_MAJI(mpAlphaModel, &tevStr);
            dComIfGd_setListDarkBG();
            J3DModelData* model_data = mpAlphaModel->getModelData();
            for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
                model_data->getMaterialNodePointer(i)->getTevKColor(3)->a = mAlpha;
            }
            mDoExt_modelUpdateDL(mpAlphaModel);
            for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
                model_data->getMaterialNodePointer(i)->getTevKColor(0)->a = 0xFF;
            }
        }

        dComIfGd_setList();
    }

    return 1;
}

/* 80CD9544-80CD9578 001004 0034+00 1/0 0/0 0/0 .text            Delete__14daObjSM_DOOR_cFv */
inline int daObjSM_DOOR_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80CD9690-80CD96B0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSM_DOOR_Method */
static actor_method_class l_daObjSM_DOOR_Method = {
    (process_method_func)daObjSM_DOOR_Create,
    (process_method_func)daObjSM_DOOR_Delete,
    (process_method_func)daObjSM_DOOR_Execute,
    (process_method_func)daObjSM_DOOR_IsDelete,
    (process_method_func)daObjSM_DOOR_Draw,
};

/* 80CD96B0-80CD96E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SM_DOOR */
extern actor_process_profile_definition g_profile_Obj_SM_DOOR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SM_DOOR,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSM_DOOR_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  476,                    // mPriority
  &l_daObjSM_DOOR_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
