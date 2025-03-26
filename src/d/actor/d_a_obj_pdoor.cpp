/**
 * @file d_a_obj_pdoor.cpp
 * 
*/

#include "d/actor/d_a_obj_pdoor.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_lib.h"
#include "SSystem/SComponent/c_math.h"
#include "cmath.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "dol2asm.h"

/* 80CA9E98-80CA9F9C 000078 0104+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static fopAc_ac_c* PPCallBack(fopAc_ac_c* i_this, fopAc_ac_c* param_2, s16 param_3,
                           dBgW_Base::PushPullLabel param_4) {
    int iVar2 = cLib_checkBit<int>(param_4, 3);
    if (iVar2) {
        cXyz acStack_40 = param_2->current.pos - i_this->current.pos;
        mDoMtx_stack_c::YrotS(-i_this->shape_angle.y);
        mDoMtx_stack_c::multVec(&acStack_40, &acStack_40);
        int bVar1;
        if (acStack_40.z > 0.0f) {
            bVar1 = cLib_checkBit(iVar2, 1) == 0 ? 1 : 0;
        } else {
            bVar1 = cLib_checkBit(iVar2, 1) != 0;
        }
        for (int i = 0; i < 2; i++) {
            if (i == bVar1) {
                static_cast<daObjPDoor_c*>(i_this)->field_0x5b6[i]++;
            } else {
                static_cast<daObjPDoor_c*>(i_this)->field_0x5b6[i] = 0;
            }
        }
        static_cast<daObjPDoor_c*>(i_this)->field_0x5b5 = 1;
        static_cast<daObjPDoor_c*>(i_this)->mPushPullLabel = param_4;
    }
    return i_this;
}

/* 80CA9F9C-80CA9FD8 00017C 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjPDoor_cFv */
void daObjPDoor_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CA9FD8-80CAA03C 0001B8 0064+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjPDoor_cFv */
void daObjPDoor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

UNK_REL_DATA

/* 80CAAB6C-80CAAB70 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_OsuDoor";

/* 80CAAB70-80CAAB88 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static f32 l_cull_box[6] = {
    0.0f, 0.0f, -600.0f,
    600.0f, 1000.0f, 600.0f,
};

/* 80CAA03C-80CAA14C 00021C 0110+00 1/0 0/0 0/0 .text            Create__12daObjPDoor_cFv */
int daObjPDoor_c::Create() {
    BOOL isSw = fopAcM_isSwitch(this, getSwbit());
    BOOL isSw2 = fopAcM_isSwitch(this, getSwbit2());
    if (!isSw && !isSw2) {
        mDoorDirection = 0;
    } else if (isSw) {
        mDoorDirection = 1;
        shape_angle.y = home.angle.y + 0x1555;
    } else if (!isSw2) {
        OS_REPORT("城下町押引扉：SW1,SW2共にＯＮになっています！\n");
        JUT_PANIC(235, "0");
    } else {
        mDoorDirection = -1;
        shape_angle.y = home.angle.y - 0x1555;
    }
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    mpBgW->SetPushPullCallback(PPCallBack);
    fopAcM_setCullSizeBox(this, l_cull_box[0], l_cull_box[1], l_cull_box[2], l_cull_box[3],
                          l_cull_box[4], l_cull_box[5]);
    return 1;
}

/* 80CAA14C-80CAA1BC 00032C 0070+00 1/0 0/0 0/0 .text            CreateHeap__12daObjPDoor_cFv */
int daObjPDoor_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(270, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? TRUE : FALSE;
}

/* 80CAA1BC-80CAA23C 00039C 0080+00 1/1 0/0 0/0 .text            create1st__12daObjPDoor_cFv */
int daObjPDoor_c::create1st() {
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName, 8, NULL, 0x4230, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    return rv;
}

/* 80CAA23C-80CAA290 00041C 0054+00 1/0 0/0 0/0 .text            Execute__12daObjPDoor_cFPPA3_A4_f
 */
int daObjPDoor_c::Execute(Mtx** ppMtx) {
    mode_proc_call();
    *ppMtx = &mBgMtx;
    setBaseMtx();
    field_0x5b5 = 0;
    return 1;
}

/* 80CAA290-80CAA31C 000470 008C+00 1/1 0/0 0/0 .text            mode_proc_call__12daObjPDoor_cFv */
void daObjPDoor_c::mode_proc_call() {
    static daObjPDoor_c::modeFunc l_func[2] = {
        &daObjPDoor_c::modeWait,
        &daObjPDoor_c::modeRotate,
    };
    (this->*(l_func[mMode]))();
}

/* 80CAA31C-80CAA354 0004FC 0038+00 1/1 0/0 0/0 .text            init_modeWait__12daObjPDoor_cFv */
void daObjPDoor_c::init_modeWait() {
    field_0x5ba = 0;
    field_0x5b0 = -1;
    for (int i = 0; i < 2; i++) {
        field_0x5b6[i] = 0;
    }
    mMode = MODE_WAIT;
}

/* 80CAA354-80CAA698 000534 0344+00 1/0 0/0 0/0 .text            modeWait__12daObjPDoor_cFv */
void daObjPDoor_c::modeWait() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    bool bVar3 = true;
    int iVar6 = -1;
    if (field_0x5b5 != 0) {
        for (int i = 0; i < 2; i++) {
            if (field_0x5b6[i] == (u8)(cLib_checkBit<int>(mPushPullLabel, dBgW_Base::PPLABEL_4) ? 0x23 : 0x23)) {
                field_0x5b0 = i;
            }
            if (field_0x5b6[i] != 0) {
                iVar6 = i;
            }
        }
        if ((field_0x5b0 == 0 && mDoorDirection == 1) ||
            (field_0x5b0 == 1 && mDoorDirection == -1))
        {
            field_0x5b0 = -1;
        } else {
            bVar3 = false;
        }
        bool bVar2 = true;
        if ((iVar6 == 0 && mDoorDirection == 1) ||
            (iVar6 == 1 && mDoorDirection == -1))
        {
            bVar2 = false;
        }
        if (bVar2) {
            if (iVar6 == 0) {
                cLib_addCalcAngleS2(&field_0x5bc, 500, 0x3c, 5);
            } else {
                cLib_addCalcAngleS2(&field_0x5bc, -500, 0x3c, 5);
            }
            field_0x5b4++;
            f32 dVar8 = std::fabs(cM_ssin(0x3e0 * field_0x5b4));
            field_0x5ba = ((field_0x5bc * dVar8) + 10.0f);
        }
        if (field_0x5b0 != -1) {
            ((daPy_py_c*)dComIfGp_getPlayer(0))->onPushPullKeep();
            init_modeRotate();
        }
    } else {
        field_0x5bc = 0;
        field_0x5b4 = 0;
        cLib_addCalcAngleS(&field_0x5ba, 0, 4, 0x32, 5);
    }
    shape_angle.y = home.angle.y + (mDoorDirection << 14) / 3 + field_0x5ba;
    if (bVar3) {
        for (int i = 0; i < 2; i = i + 1) {
            field_0x5b6[i] = 0;
        }
        field_0x5b0 = -1;
    }
    if (daPy_py_c::checkNowWolf()) {
        cXyz cStack_44 = player->current.pos - current.pos;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        mDoMtx_stack_c::multVec(&cStack_44, &cStack_44);
        if (cStack_44.z > 0.0f) {
            if (mDoorDirection == 1) {
                mpBgW->OffPushPullOk();
            } else {
                mpBgW->OnPushPullOk();
            }
        } else {
            if (mDoorDirection == -1) {
                mpBgW->OffPushPullOk();
            } else {
                mpBgW->OnPushPullOk();
            }
        }
    } else {
        mpBgW->OnPushPullOk();
    }
}

/* 80CAA698-80CAA6B4 000878 001C+00 1/1 0/0 0/0 .text            init_modeRotate__12daObjPDoor_cFv
 */
void daObjPDoor_c::init_modeRotate() {
    field_0x5bc = 0;
    field_0x5b4 = 0;
    field_0x5b8 = 0;
    mMode = MODE_ROTATE;
}

/* 80CAA6B4-80CAA968 000894 02B4+00 1/0 0/0 0/0 .text            modeRotate__12daObjPDoor_cFv */
void daObjPDoor_c::modeRotate() {
    daPy_getPlayerActorClass();
    field_0x5b8++;
    shape_angle.y = home.angle.y + (mDoorDirection << 14) / 3;
    field_0x5ba = ((f32)field_0x5b8 / 60.0f) * 5461.0f;
    if (field_0x5b0 == 1) {
        field_0x5ba = -field_0x5ba;
    }
    shape_angle.y += field_0x5ba;
    fopAcM_seStartLevel(this, Z2SE_OBJ_HYRULE_DR_MOVE, 0);
    if (field_0x5b8 == 60) {
        if (field_0x5b0 == 0) {
            mDoorDirection++;
        } else {
            mDoorDirection--;
        }
        if (mDoorDirection == 1) {
           fopAcM_onSwitch(this, getSwbit());
           fopAcM_offSwitch(this, getSwbit2());
        } else if (mDoorDirection == -1) {
           fopAcM_offSwitch(this, getSwbit());
           fopAcM_onSwitch(this, getSwbit2());
        } else if (mDoorDirection == 0) {
           fopAcM_offSwitch(this, getSwbit());
           fopAcM_offSwitch(this, getSwbit2());
        }
        ((daPy_py_c*)dComIfGp_getPlayer(0))->offPushPullKeep();
        dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        fopAcM_seStart(this, Z2SE_OBJ_HYRULE_DR_STOP, 0);
        init_modeWait();
    }
}

/* 80CAA968-80CAAA0C 000B48 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjPDoor_cFv */
int daObjPDoor_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80CAAA0C-80CAAA4C 000BEC 0040+00 1/0 0/0 0/0 .text            Delete__12daObjPDoor_cFv */
int daObjPDoor_c::Delete() {
    mpBgW->SetPushPullCallback(NULL);
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80CAAA4C-80CAAAAC 000C2C 0060+00 1/0 0/0 0/0 .text daObjPDoor_create1st__FP12daObjPDoor_c */
static int daObjPDoor_create1st(daObjPDoor_c* i_this) {
    fopAcM_SetupActor(i_this, daObjPDoor_c);
    return i_this->create1st();
}

/* 80CAAAAC-80CAAACC 000C8C 0020+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGDelete__FP12daObjPDoor_c */
static int daObjPDoor_MoveBGDelete(daObjPDoor_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CAAACC-80CAAAEC 000CAC 0020+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGExecute__FP12daObjPDoor_c
 */
static int daObjPDoor_MoveBGExecute(daObjPDoor_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CAAAEC-80CAAB18 000CCC 002C+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGDraw__FP12daObjPDoor_c */
static int daObjPDoor_MoveBGDraw(daObjPDoor_c* i_this) {
    return i_this->Draw();
}

/* 80CAABB8-80CAABD8 -00001 0020+00 1/0 0/0 0/0 .data            daObjPDoor_METHODS */
static actor_method_class daObjPDoor_METHODS = {
    (process_method_func)daObjPDoor_create1st,
    (process_method_func)daObjPDoor_MoveBGDelete,
    (process_method_func)daObjPDoor_MoveBGExecute,
    NULL,
    (process_method_func)daObjPDoor_MoveBGDraw,
};

/* 80CAABD8-80CAAC08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PushDoor */
extern actor_process_profile_definition g_profile_Obj_PushDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PushDoor,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPDoor_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  577,                    // mPriority
  &daObjPDoor_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};


/* 80CAAB40-80CAAB40 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
