/**
 * @file d_a_obj_Lv5Key.cpp
 * Snowpeak Ruins Key Lock
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_Lv5Key.h"
#include "d/d_com_inf_game.h"

static int useHeapInit(fopAc_ac_c*);

/* 80B9C9B4-80B9C9B8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Lv5_KEY";

/* 80B9B9B8-80B9BA94 000078 00DC+00 1/1 0/0 0/0 .text            CreateHeap__13daObjLv5Key_cFv */
int daObjLv5Key_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 7);
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(0, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    if (!mBck.init(pbck, TRUE, J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1, false)) {
        return 0;
    }

    return 1;
}

/* 80B9BA94-80B9BB5C 000154 00C8+00 1/1 0/0 0/0 .text            Init__13daObjLv5Key_cFv */
int daObjLv5Key_c::Init() {
    initCcSph();
    fopAcM_setCullSizeBox(this, -50.0f, 30.0f, -20.0f, 50.0f, -90.0f, 20.0f);
    setLocalOffset(0.0f, 0.0f, 0.0f);
    setStatus(STATUS_WAIT);

    mAction = NULL;
    setAction(&Wait, 1);
    return cPhs_COMPLEATE_e;
}

/* 80B9BB5C-80B9BBCC 00021C 0070+00 1/1 0/0 0/0 .text            setBgc__13daObjLv5Key_cFv */
void daObjLv5Key_c::setBgc() {
    OS_REPORT("-------------setBgc!!\n");
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), NULL, NULL);
    mAcch.SetGndThinCellingOff();
    mAcchCir.SetWall(30.0f, 30.0f);
}

/* 80B9BBCC-80B9BC2C 00028C 0060+00 1/1 0/0 0/0 .text            initCcSph__13daObjLv5Key_cFv */
void daObjLv5Key_c::initCcSph() {
    static const dCcD_SrcSph ccShpSrc = {
        {
            {0x0, {{0x400, 0x1, 0x0}, {0xD8FBFDFF, 0x11}, 0x0}},  // mObj
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                   // mGObjTg
            {0x0},                                                // mGObjCo
        },                                                        // mObjInf
        {
            {{0.0f, -17.8f, 0.0f}, 35.0f}  // mSph
        }  // mSphAttr
    };

    mCcStts.Init(0x3C, 0xFF, this);
    mCcSph.Set(ccShpSrc);
    mCcSph.SetStts(&mCcStts);
    mCcSph.SetC(current.pos);
}

/* 80B9BC2C-80B9BCEC 0002EC 00C0+00 1/1 0/0 0/0 .text            setCcSph__13daObjLv5Key_cFv */
void daObjLv5Key_c::setCcSph() {
    cXyz center(0.0f, -17.5f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&center, &center);

    mCcSph.SetC(center);
    mCcSph.SetR(35.0f);
    dComIfG_Ccsp()->Set(&mCcSph);

    if (mCcSph.ChkTgHit()) {
        mCcSph.ClrTgHit();
    }
}

/* 80B9BCEC-80B9BD0C 0003AC 0020+00 1/0 0/0 0/0 .text            daObjLv5Key_Create__FP10fopAc_ac_c
 */
static int daObjLv5Key_Create(fopAc_ac_c* i_this) {
    return ((daObjLv5Key_c*)i_this)->create_1st();
}

/* 80B9BD0C-80B9BD30 0003CC 0024+00 1/0 0/0 0/0 .text daObjLv5Key_Delete__FP13daObjLv5Key_c */
static int daObjLv5Key_Delete(daObjLv5Key_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 80B9BD30-80B9BDD8 0003F0 00A8+00 5/5 0/0 0/0 .text
 * setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi        */
void daObjLv5Key_c::setAction(daObjLv5Key_c::actionFunc i_action, int param_1) {
    if (mAction != i_action) {
        if (mAction != NULL) {
            mMode = -1;
            (this->*mAction)(param_1);
        }

        mMode = 0;
        mAction = i_action;
        (this->*mAction)(param_1);
    }
}

/* 80B9BDD8-80B9BE24 000498 004C+00 1/1 0/0 0/0 .text            Action__13daObjLv5Key_cFv */
void daObjLv5Key_c::Action() {
    if (mAction == NULL) {
        OS_REPORT("ACTION NOT SET!!\n");
    } else {
        (this->*mAction)(0);
    }
}

/* 80B9BE24-80B9BF08 0004E4 00E4+00 2/0 0/0 0/0 .text            Wait__13daObjLv5Key_cFi */
void daObjLv5Key_c::Wait(int param_0) {
    switch (mMode) {
    case -1:
        break;
    case 0:
        setStatus(STATUS_WAIT);
        mBck.setPlaySpeed(0.0f);
        mMode = 1;
        break;
    case 1:
        if (is_open_start()) {
            setBgc();
            setAction(&Open, 1);
        } else if (is_shake_start()) {
            setAction(&Shake, 1);
        }
    }
}

/* 80B9BF08-80B9BFDC 0005C8 00D4+00 1/0 0/0 0/0 .text            Open__13daObjLv5Key_cFi */
void daObjLv5Key_c::Open(int param_0) {
    switch (mMode) {
    case -1:
        break;
    case 0:
        mBck.setPlaySpeed(1.0f);
        mCcSph.OffCoSetBit();
        mMode = 1;
        break;
    case 1:
        mBck.play();

        if (mBck.isStop()) {
            setAction(&Fall, 1);
        }
    }
}

/* 80B9BFDC-80B9C17C 00069C 01A0+00 1/0 0/0 0/0 .text            Fall__13daObjLv5Key_cFi */
void daObjLv5Key_c::Fall(int param_0) {
    switch (mMode) {
    case -1:
        break;
    case 0:
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        fopAcM_SetGravity(this, -6.0f);
        mMode = 1;
        break;
    case 1:
        fopAcM_calcSpeed(this);
        fopAcM_posMove(this, NULL);

        f32 old_y = current.pos.y;
        current.pos.y -= 88.0f;
        mAcch.CrrPos(dComIfG_Bgsp());
        current.pos.y = old_y;

        OS_REPORT("FALL SPD = %f\n", speed.y);

        if (mAcch.ChkGroundHit()) {
            fopAcM_GetSpeed(this);
            fopAcM_SetSpeedF(this, 4.0f);
            fopAcM_SetSpeed(this, 0.0f, 22.0f, 0.0f);

            setRotateSpd(0x120, 0, 0);
            mMode = 2;
        }
        break;
    case 2:
        RotateAngle();

        fopAcM_calcSpeed(this);
        fopAcM_posMove(this, NULL);
        OS_REPORT("BOUND SPD = %f\n", speed.y);

        f32 prev_y = current.pos.y;
        current.pos.y -= 87.0f;
        mAcch.CrrPos(dComIfG_Bgsp());
        current.pos.y = prev_y;

        if (mAcch.ChkGroundHit()) {
            setAction(&Land, 1);
        }
    }
}

/* 80B9C17C-80B9C268 00083C 00EC+00 1/0 0/0 0/0 .text            Land__13daObjLv5Key_cFi */
void daObjLv5Key_c::Land(int param_0) {
    switch (mMode) {
    case -1:
        break;
    case 0:
        TranslateByNowDirect(0.0f, 0.0f, 18.4f);
        setLocalOffset(-17.4, -74.7f, 8.7f);
        setRotateAccel(0x2C0, 0, 0);
        mRotateSpd.x -= 0x10;
        mRotateSpd.z = 0;

        mMode = 1;
        break;
    case 1:
        calcRotateSpd();
        OS_REPORT("ROTATE SPD = %x\n", mRotateSpd.x);
        RotateAngle();

        if (shape_angle.x >= 0x4000) {
            shape_angle.x = 0x4000;
            setStatus(STATUS_OPEN);
            mMode = -1;
        }
    }
}

/* 80B9C268-80B9C3B0 000928 0148+00 1/0 0/0 0/0 .text            Shake__13daObjLv5Key_cFi */
void daObjLv5Key_c::Shake(int param_0) {
    switch (mMode) {
    case -1:
        break;
    case 0:
        setLocalOffset(0.0f, 0.0f, 0.0f);
        setTimer(30);
        mMode = 1;
        break;
    case 1:
        if (countdown()) {
            setShakeNum(2);
            setRotateSpd(-0x100, 0, 0);
            setRotateAccel(0x2A, 0, 0);
            mMode = 2;
        }
        break;
    case 2:
        calcRotateSpd();
        RotateAngle();

        if (shape_angle.x >= 0) {
            shape_angle.x = 0;
            setRotateSpd(-0x100, 0, 0);
            decShakeNum();

            if (is_shake_end()) {
                setAction(&Wait, 1);
            }
        }
    }
}

/* 80B9C3B0-80B9C410 000A70 0060+00 1/1 0/0 0/0 .text TranslateByNowDirect__13daObjLv5Key_cFfff */
void daObjLv5Key_c::TranslateByNowDirect(f32 i_x, f32 i_y, f32 i_z) {
    cXyz trans;
    trans.set(i_x, i_y, i_z);

    mDoMtx_stack_c::ZXYrotS(shape_angle);
    mDoMtx_stack_c::multVec(&trans, &trans);
    current.pos += trans;
}

/* 80B9C410-80B9C450 000AD0 0040+00 1/1 0/0 0/0 .text            Execute__13daObjLv5Key_cFv */
int daObjLv5Key_c::Execute() {
    Action();
    setBaseMtx();
    setCcSph();
    return 1;
}

/* 80B9C450-80B9C500 000B10 00B0+00 1/1 0/0 0/0 .text            Draw__13daObjLv5Key_cFv */
int daObjLv5Key_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mBck.entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);
    mBck.remove(mpModel->getModelData());
    return 1;
}

/* 80B9C500-80B9C534 000BC0 0034+00 1/1 0/0 0/0 .text            Delete__13daObjLv5Key_cFv */
int daObjLv5Key_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80B9C534-80B9C5AC 000BF4 0078+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjLv5Key_cFv */
void daObjLv5Key_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);

    cXyz& localOffset = getLocalOffset();
    mDoMtx_stack_c::transM(localOffset.x, localOffset.y, localOffset.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(-localOffset.x, -localOffset.y, -localOffset.z);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80B9C5AC-80B9C5CC 000C6C 0020+00 1/0 0/0 0/0 .text            daObjLv5Key_Draw__FP13daObjLv5Key_c
 */
static int daObjLv5Key_Draw(daObjLv5Key_c* i_this) {
    return i_this->Draw();
}

/* 80B9C5CC-80B9C5EC 000C8C 0020+00 2/1 0/0 0/0 .text daObjLv5Key_Execute__FP13daObjLv5Key_c */
static int daObjLv5Key_Execute(daObjLv5Key_c* i_this) {
    return i_this->Execute();
}

/* 80B9C5EC-80B9C798 000CAC 01AC+00 1/1 0/0 0/0 .text            create_1st__13daObjLv5Key_cFv */
int daObjLv5Key_c::create_1st() {
    fopAcM_SetupActor(this, daObjLv5Key_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x4B000)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        Init();
        daObjLv5Key_Execute(this);
    }

    return phase;
}

/* 80B9C8E0-80B9C900 000FA0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daObjLv5Key_c*)i_this)->CreateHeap();
}

/* 80B9C900-80B9C908 000FC0 0008+00 1/0 0/0 0/0 .text daObjLv5Key_IsDelete__FP13daObjLv5Key_c */
static int daObjLv5Key_IsDelete(daObjLv5Key_c* i_this) {
    return 1;
}

/* 80B9CA00-80B9CA20 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLv5Key_Method */
static actor_method_class l_daObjLv5Key_Method = {
    (process_method_func)daObjLv5Key_Create,  (process_method_func)daObjLv5Key_Delete,
    (process_method_func)daObjLv5Key_Execute, (process_method_func)daObjLv5Key_IsDelete,
    (process_method_func)daObjLv5Key_Draw,
};

/* 80B9CA20-80B9CA50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv5Key */
extern actor_process_profile_definition g_profile_Obj_Lv5Key = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv5Key,         // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjLv5Key_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    46,                      // mPriority
    &l_daObjLv5Key_Method,   // sub_method
    0x00044180,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
