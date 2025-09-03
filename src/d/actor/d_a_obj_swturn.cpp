/**
 * @file d_a_obj_swturn.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swturn.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "cmath.h"

/* 80D0206C-80D02074 000000 0008+00 5/5 0/0 0/0 .rodata          l_bmd */
static u32 const l_bmd[2] = {
    4, 4,
};

/* 80D02074-80D0207C 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static u32 const l_dzb[2] = {
    7, 7,
};

/* 80D0207C-80D02084 000010 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[2] = {
    0x4530, 0x2BE0,
};

/* 80D02084-80D02088 000018 0004+00 0/3 0/0 0/0 .rodata          l_rot_time */
static s16 const l_rot_time[2] = {0x5A, 0x1E};

/* 80D02088-80D0208C 00001C 0002+02 0/1 0/0 0/0 .rodata          l_tame_time_1st */
static u8 const l_tame_time_1st[2] = {
    0x2F, 0x2F,
};

/* 80D0208C-80D02090 000020 0002+02 0/1 0/0 0/0 .rodata          l_tame_time_cnt */
static u8 const l_tame_time_cnt[2] = {
    0x23, 0x23,
};

/* 80D00BD8-80D00CD8 000078 0100+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static fopAc_ac_c* PPCallBack(fopAc_ac_c* i_this, fopAc_ac_c* param_2, s16 param_3,
                              dBgW_Base::PushPullLabel param_4) {
    int pushBits = cLib_checkBit((int)param_4, dBgW_Base::PPLABEL_PUSH | dBgW_Base::PPLABEL_PULL);
    if (pushBits != 0) {
        cXyz dist = param_2->current.pos - i_this->current.pos;
        mDoMtx_stack_c::YrotS(-i_this->shape_angle.y);
        mDoMtx_stack_c::multVec(&dist, &dist);
        int bVar1;
        if (dist.x > 0.0f) {
            bVar1 = cLib_checkBit(pushBits, (int)dBgW_Base::PPLABEL_PULL) ? 0 : 1;
        } else {
            bVar1 = cLib_checkBit(pushBits, (int)dBgW_Base::PPLABEL_PULL) ? 1 : 0;
        }
        for (int i = 0; i < 2; i++) {
            if (i == bVar1) {
                static_cast<daObjSwTurn_c*>(i_this)->field_0x5b0[i]++;
                ;
            } else {
                static_cast<daObjSwTurn_c*>(i_this)->field_0x5b0[i] = 0;
            }
        }
        static_cast<daObjSwTurn_c*>(i_this)->field_0x5af = 1;
        static_cast<daObjSwTurn_c*>(i_this)->mPushPullLabel = param_4;
    }
    return i_this;
}

/* 80D00CD8-80D00D14 000178 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjSwTurn_cFv */
void daObjSwTurn_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D00D14-80D00D78 0001B4 0064+00 3/3 0/0 0/0 .text            setBaseMtx__13daObjSwTurn_cFv */
void daObjSwTurn_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80D00D78-80D00EE4 000218 016C+00 1/0 0/0 0/0 .text            Create__13daObjSwTurn_cFv */
int daObjSwTurn_c::Create() {
    if (mKind == KIND_0) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            field_0x5c4 = 1;
        } else {
            field_0x5c4 = 0;
        }
        field_0x5cf = 0;
        field_0x5ce = 1;
    } else if (mKind == KIND_1) {
        u8 count = getCount();
        u8 revCount = getRevCount();
        if (count == 0xff) {
            count = 12;
        }
        if (revCount == 0xff) {
            revCount = 12;
        }
        field_0x5ce = count;
        field_0x5cf = revCount;
        if (fopAcM_isSwitch(this, getSwNo())) {
            field_0x5c4 = field_0x5ce;
        } else {
            if (fopAcM_isSwitch(this, getSwNo2())) {
                field_0x5c4 = -field_0x5cf;
            } else {
                field_0x5c4 = 0;
            }
        }
    }
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this,  mModel->getModelData());
    mpBgW->SetPushPullCallback(PPCallBack);
    init_modeWait();
    MoveBGExecute();
    initBaseMtx();
    return 1;
}

/* 80D020EC-80D020F4 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "P_Lv4tsw",
    "P_Lv4tswD",
};

/* 80D00EE4-80D00F64 000384 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daObjSwTurn_cFv */
int daObjSwTurn_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mModelType], l_bmd[mModelType]);
    JUT_ASSERT(347, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != 0 ? TRUE : FALSE;
}

/* 80D00F64-80D01074 000404 0110+00 1/1 0/0 0/0 .text            create1st__13daObjSwTurn_cFv */
int daObjSwTurn_c::create1st() {
    mKind = getKind();
    mModelType = getModelType();
    if (mModelType == 15) {
        mModelType = 0;
    }
    if (field_0x5d0 == 0) {
        mRevCount = home.angle.x;
        field_0x5d4 = home.angle.z;
        current.angle.x = 0;
        shape_angle.x = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        shape_angle.z = 0;
        home.angle.z = 0;
        field_0x5d0 = 1;
    }
    int rv = dComIfG_resLoad(&mPhase, l_arcName[mModelType]);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName[mModelType], l_dzb[mModelType],
             dBgS_MoveBGProc_TypicalRotY, l_heap_size[mModelType], NULL);
         if (rv == cPhs_ERROR_e) {
            return rv;
         }
    }
    return rv;
}

/* 80D01074-80D010D4 000514 0060+00 1/0 0/0 0/0 .text            Execute__13daObjSwTurn_cFPPA3_A4_f
 */
int daObjSwTurn_c::Execute(Mtx** ppMtx) {
    field_0x5c8++;
    mode_proc_call();
    *ppMtx = &mBgMtx;
    setBaseMtx();
    field_0x5af = 0;
    return 1;
}

/* 80D010D4-80D01160 000574 008C+00 1/1 0/0 0/0 .text            mode_proc_call__13daObjSwTurn_cFv
 */
void daObjSwTurn_c::mode_proc_call() {
    static daObjSwTurn_c::modeFunc l_func[2] = {
        &daObjSwTurn_c::modeWait,
        &daObjSwTurn_c::modeRotate,
    };
    (this->*(l_func[mMode]))();
}

/* 80D01160-80D01198 000600 0038+00 3/3 0/0 0/0 .text            init_modeWait__13daObjSwTurn_cFv */
void daObjSwTurn_c::init_modeWait() {
    field_0x5ba = 0;
    field_0x5c0 = -1;
    for (int i = 0; i < 2; i++) {
        field_0x5b0[i] = 0;
    }
    mMode = MODE_WAIT;
}

/* 80D01198-80D01770 000638 05D8+00 1/0 0/0 0/0 .text            modeWait__13daObjSwTurn_cFv */
void daObjSwTurn_c::modeWait() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    bool bVar4 = true;
    int iVar9 = -1;
    if (field_0x5af) {
        for (int i = 0; i < 2; i++) {
            u8 dVar1;
            if (cLib_checkBit(mPushPullLabel, dBgW_Base::PPLABEL_4)) {
                dVar1 = l_tame_time_1st[mKind];
            } else {
                dVar1 = l_tame_time_cnt[mKind];
            }
            if (field_0x5b0[i] == dVar1) {
                field_0x5c0 = i;
            }
            if (field_0x5b0[i] != 0) {
                iVar9 = i;
            }
        }
        if (mKind == KIND_0) {
            if ((field_0x5c0 == 0 && field_0x5c4 == 1) ||
                (field_0x5c0 == 1 && field_0x5c4 == 0))
            {
                field_0x5c0 = -1;
            } else {
                bVar4 = false;
            }
        } else if (mKind == KIND_1) {
            if ((field_0x5c0 == 0 && field_0x5c4 == field_0x5ce) ||
                (field_0x5c0 == 1 && field_0x5c4 == -field_0x5cf))
            {
                field_0x5c0 = -1;
            } else {
                bVar4 = false;
            }
        } else {
            bVar4 = false;
        }
        bool bVar3 = false;
        if (mKind == KIND_0) {
            if ((iVar9 == 0 && field_0x5c4 == 0) || (iVar9 == 1 && field_0x5c4 == 1)) {
                bVar3 = true;
            }
        } else if (mKind == KIND_1) {
            bVar3 = true;
            if ((iVar9 == 0 && field_0x5c4 == field_0x5ce) ||
                 (iVar9 == 1 && field_0x5c4 == -field_0x5cf))
            {
                bVar3 = false;
            }
        }
        if (bVar3) {
            if (!iVar9) {
                cLib_addCalcAngleS2(&field_0x5bc, 500,
                                                 0x3c, 5);
            } else {
                cLib_addCalcAngleS2(&field_0x5bc, -500,
                                                 0x3c, 5);
            }
            if (field_0x5c6 == 18) {
                if (mKind == KIND_0) {
                    fopAcM_seStart(this, Z2SE_OBJ_RL_SW_WALL_ON, 0);
                } else if (mKind == KIND_1) {
                    fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_ON, 0);
                }
            }
            field_0x5c6++;
            f32 dVar11 = std::fabs(cM_ssin(0x3e0 * field_0x5c6));
            field_0x5ba = (field_0x5bc * dVar11) + 10.0f;
            if (field_0x5ba == field_0x5dc) {
                field_0x5ba++;
            }
        }
        if (field_0x5c0 != -1) {
            if (getSwNo2() != 0xff) {
                fopAcM_onSwitch(this, getSwNo2());
            }
            ((daPy_py_c*)dComIfGp_getPlayer(0))->onPushPullKeep();
            init_modeRotate();
        }
    } else {
        if (field_0x5c6 >= 18) {
            field_0x5d1 = 1;
        }
        field_0x5bc = 0;
        field_0x5c6 = 0;
        s16 sVar2 = field_0x5ba;
        cLib_addCalcAngleS(&field_0x5ba, 0, 4, 0x32, 5);
        if (sVar2 != 0 && field_0x5ba == 0 && field_0x5d1 != 0 && mKind == KIND_0) {
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_WALL_OFF, 0);
            field_0x5d1 = 0;
        }
    }
    if (mKind == KIND_1) {
        shape_angle.y = home.angle.y + (field_0x5c4 << 14) / 3 + field_0x5ba;
    } else {
        shape_angle.y = home.angle.y + (field_0x5c4 << 14) + field_0x5ba;
    }
    if (bVar4) {
        for (int i = 0; i < 2; i++) {
            field_0x5b0[i] = 0;
        }
        field_0x5c0 = -1;
    }
    if (daPy_py_c::checkNowWolf()) {
        cXyz local_44 = player->current.pos - current.pos;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        mDoMtx_stack_c::multVec(&local_44, &local_44);
        if (local_44.x > 0.0f) {
            if (field_0x5c4 == -field_0x5cf) {
                mpBgW->OffPushPullOk();
            } else {
                mpBgW->OnPushPullOk();
            }
        } else {
            if (field_0x5c4 == field_0x5ce) {
                mpBgW->OffPushPullOk();
            } else {
                mpBgW->OnPushPullOk();
            }
        }
    } else {
        mpBgW->OnPushPullOk();
    }
    field_0x5dc = field_0x5ba;
}

/* 80D01770-80D018B4 000C10 0144+00 1/1 0/0 0/0 .text            init_modeRotate__13daObjSwTurn_cFv
 */
void daObjSwTurn_c::init_modeRotate() {
    field_0x5bc = 0;
    field_0x5c6 = 0;
    if (mKind == KIND_1) {
        if (field_0x5c0 == 1) {
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_UP, 0);
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_DW, 0);
        }
    }
    field_0x5b8 = 0;
    field_0x5b4 = 32768.0f / l_rot_time[mKind];
    field_0x5cc = 0;
    mMode = MODE_ROTATE;
}

/* 80D018B4-80D01958 000D54 00A4+00 1/0 0/0 0/0 .text            modeRotate__13daObjSwTurn_cFv */
void daObjSwTurn_c::modeRotate() {
    switch(mKind) {
    case KIND_0:
        rotate_sub_0();
        fopAcM_seStartLevel(this, Z2SE_OBJ_RL_SW_WALL_MV, 0);
        break;
    case KIND_1:
        rotate_sub_1();
        break;
    }
}

/* 80D01958-80D01B60 000DF8 0208+00 1/1 0/0 0/0 .text            rotate_sub_0__13daObjSwTurn_cFv */
void daObjSwTurn_c::rotate_sub_0() {
    field_0x5b8++;
    shape_angle.y = home.angle.y + (field_0x5c4 << 14);
    field_0x5ba = ((f32)field_0x5b8 / l_rot_time[mKind]) * 16384.0f;
    if (field_0x5c0 == 1) {
        field_0x5ba = -field_0x5ba;
    }
    shape_angle.y += + field_0x5ba;
    if (field_0x5b8 == l_rot_time[mKind]) {
        if (field_0x5c0 == 0) {
            field_0x5c4++;
        } else {
            field_0x5c4--;
        }
        if (field_0x5c4 == 1) {
            fopAcM_onSwitch(this, getSwNo());
        } else {
            fopAcM_offSwitch(this, getSwNo());
        }
        ((daPy_py_c*)dComIfGp_getPlayer(0))->offPushPullKeep();
        fopAcM_seStart(this, Z2SE_OBJ_RL_SW_WALL_OFF, 0);
        dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80D01B60-80D01EB0 001000 0350+00 1/1 0/0 0/0 .text            rotate_sub_1__13daObjSwTurn_cFv */
void daObjSwTurn_c::rotate_sub_1() {
    daPy_getPlayerActorClass();
    field_0x5b8++;
    shape_angle.y = home.angle.y + (field_0x5c4 << 14) / 3;
    field_0x5ba = ((f32)field_0x5b8 / l_rot_time[mKind]) * 5461.0f;
    if (field_0x5c0 == 1) {
        field_0x5ba = -field_0x5ba;
    }
    shape_angle.y += + field_0x5ba;
    if (field_0x5b8 == l_rot_time[mKind]) {
        if (field_0x5c0 == 0) {
            field_0x5c4++;
        } else {
            field_0x5c4--;
        }
        if (field_0x5c4 == field_0x5ce) {
            fopAcM_onSwitch(this, getSwNo());
            fopAcM_offSwitch(this, getSwNo2());
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_OFF, 0);
        } else if (field_0x5c4 == -field_0x5cf) {
            fopAcM_offSwitch(this, getSwNo());
            fopAcM_onSwitch(this, getSwNo2());
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_OFF_TOP, 0);
        } else if (field_0x5c4 == 0) {
            fopAcM_offSwitch(this, getSwNo());
            fopAcM_offSwitch(this, getSwNo2());
        }
        if (field_0x5c4 != field_0x5ce && field_0x5c4 != -field_0x5cf) {
            fopAcM_seStart(this, Z2SE_OBJ_RL_SW_ELVTR_OFF_TOP, 0);
        }
        ((daPy_py_c*)dComIfGp_getPlayer(0))->offPushPullKeep();
        dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80D01EB0-80D01F58 001350 00A8+00 1/0 0/0 0/0 .text            Draw__13daObjSwTurn_cFv */
int daObjSwTurn_c::Draw() {
    setBaseMtx();
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80D01F58-80D01F98 0013F8 0040+00 1/0 0/0 0/0 .text            Delete__13daObjSwTurn_cFv */
int daObjSwTurn_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mModelType]);
    return 1;
}

/* 80D01F98-80D01FF8 001438 0060+00 1/0 0/0 0/0 .text daObjSwTurn_create1st__FP13daObjSwTurn_c */
static int daObjSwTurn_create1st(daObjSwTurn_c* i_this) {
    fopAcM_SetupActor(i_this, daObjSwTurn_c);
    return i_this->create1st();
}

/* 80D01FF8-80D02018 001498 0020+00 1/0 0/0 0/0 .text daObjSwTurn_MoveBGDelete__FP13daObjSwTurn_c
 */
static int daObjSwTurn_MoveBGDelete(daObjSwTurn_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D02018-80D02038 0014B8 0020+00 1/0 0/0 0/0 .text daObjSwTurn_MoveBGExecute__FP13daObjSwTurn_c
 */
static int daObjSwTurn_MoveBGExecute(daObjSwTurn_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D02038-80D02064 0014D8 002C+00 1/0 0/0 0/0 .text daObjSwTurn_MoveBGDraw__FP13daObjSwTurn_c */
static int daObjSwTurn_MoveBGDraw(daObjSwTurn_c* i_this) {
    return i_this->Draw();
}

/* 80D02124-80D02144 -00001 0020+00 1/0 0/0 0/0 .data            daObjSwTurn_METHODS */
static actor_method_class daObjSwTurn_METHODS = {
    (process_method_func)daObjSwTurn_create1st,
    (process_method_func)daObjSwTurn_MoveBGDelete,
    (process_method_func)daObjSwTurn_MoveBGExecute,
    NULL,
    (process_method_func)daObjSwTurn_MoveBGDraw,
};

/* 80D02144-80D02174 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwTurn */
extern actor_process_profile_definition g_profile_Obj_SwTurn = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwTurn,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwTurn_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  14,                     // mPriority
  &daObjSwTurn_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};


/* 80D020B8-80D020B8 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
