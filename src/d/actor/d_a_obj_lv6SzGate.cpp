/**
* @file d_a_obj_lv6SzGate.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6SzGate.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

/* 80C76688-80C766A0 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {{-1200.0f, -300.0f, -100.0f}, {1200.0f, 300.0f, 100.0f}};

/* 80C767E4-80C767FC 000014 0018+00 4/4 0/0 0/0 .bss             l_HIO */
static daLv6SzGate_HIO_c l_HIO;

/* 80C7586C-80C758B8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__17daLv6SzGate_HIO_cFv */
daLv6SzGate_HIO_c::daLv6SzGate_HIO_c() {
    mSpeed = 4.0f;
    field_0x08 = 30.0f;
    field_0x0c = 15.0f;
    field_0x10 = 400.0f;
    mShockStrength = 3;
}

void daLv6SzGate_HIO_c::genMessage(JORMContext* arg) {
    // NONMATCHING
}

/* 80C75900-80C75A54 000180 0154+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv6SzGate_cFv */
void daLv6SzGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(-200.0f - field_0x5e4, 0.0f, 0.0f);

    field_0x5a8->setBaseScale(scale);
    field_0x5a8->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), mBgMtx);

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y + 0x10000 - 0x8000, shape_angle.z);
    mDoMtx_stack_c::transM(-200.0f - field_0x5e4, 0.0f, 0.0f);

    field_0x5ac->setBaseScale(scale);
    field_0x5ac->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), mMtx);
}

/* 80C75A54-80C75C0C 0002D4 01B8+00 1/0 0/0 0/0 .text            CreateHeap__13daLv6SzGate_cFv */
int daLv6SzGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6SzGate", 6);
    field_0x5a8 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);

    if (field_0x5a8 == NULL) {
        return 0;
    }

    field_0x5ac = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (field_0x5ac == NULL) {
        return 0;
    }

    field_0x5e8 = new dBgW();

    if (field_0x5e8 != NULL &&
        !field_0x5e8->Set(static_cast<cBgD_t*>(dComIfG_getObjectRes("L6SzGate", 15)), 1, &mMtx))
    {
        field_0x5e8->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
    } else {
        field_0x5e8 = NULL;
        return 0;
    }

    field_0x5b0.init(modelData, static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("L6SzGate", 9)),
                     1, 0, 1.0f, 0, -1);
    field_0x5c8.init(modelData,
                     static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("L6SzGate", 12)), 1, 0,
                     1.0f, 0, -1);

    return 1;
}

/* 80C75C0C-80C75DD0 00048C 01C4+00 1/1 0/0 0/0 .text            create__13daLv6SzGate_cFv */
cPhs__Step daLv6SzGate_c::create() {
    fopAcM_SetupActor(this, daLv6SzGate_c);

    cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, "L6SzGate"));
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6SzGate", 15, dBgS_MoveBGProc_TypicalRotY, 0x1d80, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, field_0x5a8->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                              l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.y);

        if (field_0x5e8 != NULL) {
            g_dComIfG_gameInfo.play.mBgs.Regist(field_0x5e8, this);
            field_0x5e8->Move();
        }
        field_0x5e2 = getSw();
        field_0x5e3 = fopAcM_isSwitch(this, field_0x5e2);
        field_0x5e4 = 0.0f;
        if (field_0x5e3 != 0) {
            field_0x5e4 = l_HIO.field_0x10;
            init_modeEnd();
        } else {
            init_modeWait();
        }
        setBaseMtx();
    }
    return phase;
}

/* 80C75E18-80C75E78 000698 0060+00 1/0 0/0 0/0 .text            Execute__13daLv6SzGate_cFPPA3_A4_f
 */
int daLv6SzGate_c::Execute(Mtx** param_0) {
    moveGate();
    *param_0 = &field_0x5a8->getBaseTRMtx();
    setBaseMtx();
    if (field_0x5e8 != NULL) {
        field_0x5e8->Move();
    }
    return 1;
}

/* 80C75E78-80C75F64 0006F8 00EC+00 1/1 0/0 0/0 .text            moveGate__13daLv6SzGate_cFv */
void daLv6SzGate_c::moveGate() {
    typedef void (daLv6SzGate_c::*daLv6SzGate_modeFunc)();
    static daLv6SzGate_modeFunc mode_proc[] = {
        &daLv6SzGate_c::modeWait, &daLv6SzGate_c::modeOpenWait0, &daLv6SzGate_c::modeOpenWait,
        &daLv6SzGate_c::modeOpen, &daLv6SzGate_c::modeClose,     &daLv6SzGate_c::modeEnd,
    };

    (this->*mode_proc[mMode])();
}

/* 80C75F64-80C75F70 0007E4 000C+00 2/2 0/0 0/0 .text            init_modeWait__13daLv6SzGate_cFv */
void daLv6SzGate_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80C75F70-80C75FC0 0007F0 0050+00 1/0 0/0 0/0 .text            modeWait__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeWait() {
    if (fopAcM_isSwitch(this, field_0x5e2)) {
        init_modeOpenWait0();
    }
}

/* 80C75FC0-80C75FD8 000840 0018+00 1/1 0/0 0/0 .text init_modeOpenWait0__13daLv6SzGate_cFv */
void daLv6SzGate_c::init_modeOpenWait0() {
    field_0x5e1 = getWaitTime();
    mMode = MODE_OPENWAIT0;
}

/* 80C75FD8-80C76010 000858 0038+00 1/0 0/0 0/0 .text            modeOpenWait0__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeOpenWait0() {
    if (field_0x5e1 != 0) {
        --field_0x5e1;
    } else {
        init_modeOpenWait();
    }
}

/* 80C76010-80C76094 000890 0084+00 1/1 0/0 0/0 .text init_modeOpenWait__13daLv6SzGate_cFv */
void daLv6SzGate_c::init_modeOpenWait() {
    mDoAud_seStart(Z2SE_OBJ_L6_MARIO_GATE_ON, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = MODE_OPENWAIT;
}

/* 80C76094-80C760F0 000914 005C+00 1/0 0/0 0/0 .text            modeOpenWait__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeOpenWait() {
    int iVar1 = field_0x5b0.play();
    int iVar2 = field_0x5c8.play();
    if (iVar1 == 1 || iVar2 == 1) {
        init_modeOpen();
    }
}

/* 80C760F0-80C760FC 000970 000C+00 1/1 0/0 0/0 .text            init_modeOpen__13daLv6SzGate_cFv */
void daLv6SzGate_c::init_modeOpen() {
    mMode = MODE_OPEN;
}

/* 80C760FC-80C7624C 00097C 0150+00 1/0 0/0 0/0 .text            modeOpen__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeOpen() {
    float tmp = cLib_addCalc(&field_0x5e4, l_HIO.field_0x10, 0.2f, l_HIO.mSpeed, 0.5f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_MARIO_GATE_MV, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (tmp == 0.0f) {
        mDoAud_seStart(Z2SE_OBJ_L6_MARIO_GATE_OFF, &current.pos, 0,
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
        init_modeEnd();
    }
}

/* 80C7624C-80C76328 000ACC 00DC+00 1/0 0/0 0/0 .text            modeClose__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeClose() {
    f32 fVar1 = cLib_chaseF(&speedF, l_HIO.field_0x08, l_HIO.field_0x0c);
    fVar1 = cLib_addCalc(&field_0x5e4, 0.0f, 1.0f, fopAcM_GetSpeedF(this), 5.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_MARIO_GATE_MV, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (fVar1 == 0.0f) {
        init_modeWait();
    }
}

/* 80C76328-80C76344 000BA8 001C+00 2/2 0/0 0/0 .text            init_modeEnd__13daLv6SzGate_cFv */
void daLv6SzGate_c::init_modeEnd() {
    field_0x5b0.setPlaySpeed(-1.0f);
    field_0x5c8.setPlaySpeed(-1.0f);
    mMode = MODE_END;
}

/* 80C76344-80C7637C 000BC4 0038+00 1/0 0/0 0/0 .text            modeEnd__13daLv6SzGate_cFv */
void daLv6SzGate_c::modeEnd() {
    field_0x5b0.play();
    field_0x5c8.play();
}

/* 80C7637C-80C76490 000BFC 0114+00 1/0 0/0 0/0 .text            Draw__13daLv6SzGate_cFv */
int daLv6SzGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x5a8, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x5ac, &tevStr);

    J3DModelData* tmp = field_0x5a8->getModelData();
    field_0x5b0.entry(tmp);
    field_0x5c8.entry(tmp);
    tmp = field_0x5ac->getModelData();
    field_0x5b0.entry(tmp);
    field_0x5c8.entry(tmp);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(field_0x5a8);
    mDoExt_modelUpdateDL(field_0x5ac);
    dComIfGd_setList();

    return 1;
}

/* 80C76490-80C764F8 000D10 0068+00 1/0 0/0 0/0 .text            Delete__13daLv6SzGate_cFv */
int daLv6SzGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6SzGate");
    if (field_0x5e8 != NULL) {
        if (field_0x5e8->ChkUsed()) {
            dComIfG_Bgsp().Release(field_0x5e8);
        }
    }
    return 1;
}

/* 80C764F8-80C76524 000D78 002C+00 1/0 0/0 0/0 .text            daLv6SzGate_Draw__FP13daLv6SzGate_c
 */
static int daLv6SzGate_Draw(daLv6SzGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C76524-80C76544 000DA4 0020+00 1/0 0/0 0/0 .text daLv6SzGate_Execute__FP13daLv6SzGate_c */
static int daLv6SzGate_Execute(daLv6SzGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C76544-80C76564 000DC4 0020+00 1/0 0/0 0/0 .text daLv6SzGate_Delete__FP13daLv6SzGate_c */
static int daLv6SzGate_Delete(daLv6SzGate_c* i_this) {
    fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80C76564-80C76584 000DE4 0020+00 1/0 0/0 0/0 .text            daLv6SzGate_Create__FP10fopAc_ac_c
 */
static int daLv6SzGate_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daLv6SzGate_c*>(i_this)->create();
}

/* 80C76730-80C76750 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6SzGate_Method */
static actor_method_class l_daLv6SzGate_Method = {
    (process_method_func)daLv6SzGate_Create,  (process_method_func)daLv6SzGate_Delete,
    (process_method_func)daLv6SzGate_Execute, (process_method_func)NULL,
    (process_method_func)daLv6SzGate_Draw,
};

/* 80C76750-80C76780 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6SzGate */
extern actor_process_profile_definition g_profile_Obj_Lv6SzGate = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv6SzGate,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daLv6SzGate_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    628,                     // mPriority
    &l_daLv6SzGate_Method,   // sub_method
    0x00040000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
