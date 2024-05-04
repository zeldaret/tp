/**
 * d_a_door_push.cpp
 * Door - Push
*/

#include "rel/d/a/door/d_a_door_push/d_a_door_push.h"
#include "SSystem/SComponent/c_math.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80677DB8-80677DE0 000078 0028+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static void PPCallBack(fopAc_ac_c* i_this, fopAc_ac_c* i_unused, s16 i_unused2,
                       dBgW_Base::PushPullLabel param_3) {
    if (cLib_checkBit(param_3, dBgW_Base::PUSHPULL_LABEL1) != 0) {
        daDoorPush_c* l_this = (daDoorPush_c*)i_this;
        l_this->field_0x62e[0]++;
        l_this->field_0x62e[1] = 0;
        l_this->field_0x62c[0] = 1;
    }
}

/* 80677DE0-80677E08 0000A0 0028+00 1/1 0/0 0/0 .text
 * PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static void PPCallBack2(fopAc_ac_c* i_this, fopAc_ac_c* i_unused, s16 i_unused2,
                        dBgW_Base::PushPullLabel param_3) {
    if (cLib_checkBit(param_3, dBgW_Base::PUSHPULL_LABEL1) != 0) {
        daDoorPush_c* l_this = (daDoorPush_c*)i_this;
        l_this->field_0x62e[1]++;
        l_this->field_0x62e[0] = 0;
        l_this->field_0x62c[1] = 1;
    }
}

/* 80677E08-80677F38 0000C8 0130+00 1/1 0/0 0/0 .text            initBaseMtx__12daDoorPush_cFv */
void daDoorPush_c::initBaseMtx() {
    mpModel[0]->setBaseScale(scale);
    mpModel[1]->setBaseScale(scale);
    mXyz[0].set(-550.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(shape_angle.y);
    mDoMtx_stack_c::multVec(&mXyz[0], &mXyz[0]);
    VECAdd(&mXyz[0], &current.pos, &mXyz[0]);
    mXyz[1].set(550.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(shape_angle.y);
    mDoMtx_stack_c::multVec(&mXyz[1], &mXyz[1]);
    VECAdd(&mXyz[1], &current.pos, &mXyz[1]);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mActorMtx);
    setBaseMtx();
}

/* 80677F38-80678060 0001F8 0128+00 2/2 0/0 0/0 .text            setBaseMtx__12daDoorPush_cFv */
void daDoorPush_c::setBaseMtx() {
    mDoMtx_stack_c::transS(mXyz[0]);
    mDoMtx_stack_c::YrotM(field_0x630[0]);
    MTXCopy(mDoMtx_stack_c::get(), mpModel[0]->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mDoMtx_stack_c::transS(mXyz[1]);
    mDoMtx_stack_c::YrotM(field_0x630[1]);
    MTXCopy(mDoMtx_stack_c::get(), mpModel[1]->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::get(), mDoorMtx);

    if (mIndex != 2) {
        cXyz mult(450.0f, 0.0f, 75.0f);

        if (mIndex == 1) {
            mult.z = -mult.z;
        }
        mDoMtx_stack_c::transS(mXyz[mIndex]);
        mDoMtx_stack_c::YrotM(field_0x630[mIndex]);
        mDoMtx_stack_c::multVec(&mult, &mPosition);
    }
}

/* 80678F50-80678F5C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80678F5C-80678F70 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80678F70-80678F74 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_OsuDoor";

/* 80678F74-80678F8C 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {
    {-600.0f, 0.0f, -600.0f},
    {600.0f, 1000.0f, 600.0f},
};

/* 8067809C-806781FC 00035C 0160+00 1/0 0/0 0/0 .text            Create__12daDoorPush_cFv */
int daDoorPush_c::Create() {
    if (mpDoorBgW != NULL && dComIfG_Bgsp().Regist(mpDoorBgW, this)) {
        return 0;
    }
    field_0x630[0] = shape_angle.y;
    field_0x630[1] = shape_angle.y + 0x7fff;
    field_0x634[0] = field_0x630[0];
    field_0x634[1] = field_0x630[1];
    mIndex = 2;
    initBaseMtx();
    fopAcM_SetMtx(this, mActorMtx);
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);
    mpBgW->SetPushPullCallback((dBgW_Base::PushPull_CallBack)PPCallBack);
    mpDoorBgW->SetPushPullCallback((dBgW_Base::PushPull_CallBack)PPCallBack2);
    eventInfo.setArchiveName(l_arcName);
    for (int i = 0; i < 2; i++) {
        field_0x63a[i] = dComIfGp_getEventManager().getEventIdx(this, "PUSH_DOOR_L", 0xff);
        field_0x63e[i] = 0xff;
    }
    fopAcM_setCullSizeFar(this, 5.0f);
    init_modeWait();
    MoveBGExecute();
    return 1;
}

/* 806781FC-80678318 0004BC 011C+00 1/0 0/0 0/0 .text            CreateHeap__12daDoorPush_cFv */
int daDoorPush_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    for (int i = 0; i < 2; i++) {
        mpModel[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpModel[i] == NULL) {
            return 0;
        }
    }
    mpDoorBgW = new dBgW();
    if (mpDoorBgW == NULL ||
        mpDoorBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 8), 1, &mDoorMtx))
    {
        mpDoorBgW = NULL;
        return 0;
    }
    return 1;
}

/* 80678318-8067839C 0005D8 0084+00 1/1 0/0 0/0 .text            create1st__12daDoorPush_cFv */
int daDoorPush_c::create1st() {
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, 8, NULL, 0x8600, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 8067839C-8067840C 00065C 0070+00 1/0 0/0 0/0 .text            Execute__12daDoorPush_cFPPA3_A4_f
 */
int daDoorPush_c::Execute(Mtx** i_mtx) {
    *i_mtx = &mBgMtx;
    action();
    event_proc_call();
    setBaseMtx();
    mpDoorBgW->Move();
    for (int i = 0; i < 2; i++) {
        field_0x62c[i] = 0;
    }
    return 1;
}

/* 8067840C-80678488 0006CC 007C+00 1/1 0/0 0/0 .text            action__12daDoorPush_cFv */
void daDoorPush_c::action() {
    typedef void (daDoorPush_c::*actionFunc)();
    static actionFunc l_func[] = {&daDoorPush_c::modeWait};
    (this->*l_func[field_0x638])();
}

/* 80678488-806784B4 000748 002C+00 1/1 0/0 0/0 .text            init_modeWait__12daDoorPush_cFv */
void daDoorPush_c::init_modeWait() {
    for (int i = 0; i < 2; i++) {
        field_0x62e[i] = 0;
    }
    field_0x638 = 0;
}

/* 806784B4-80678664 000774 01B0+00 1/0 0/0 0/0 .text            modeWait__12daDoorPush_cFv */
void daDoorPush_c::modeWait() {
    enum index_e {
        INDEX_0_e,
        INDEX_1_e,
        INDEX_MAX_e,
    };

    u8 idx;
    bool check = true;

    idx = (field_0x62c[0] != 0 ? INDEX_0_e : (field_0x62c[1] != 0 ? INDEX_1_e : INDEX_MAX_e));

    if (idx != INDEX_MAX_e) {
        if (field_0x62e[idx] >= 35) {
            mIndex = idx;
        } else if (field_0x62e[idx] != 0) {
            cLib_addCalcAngleS2(&field_0x64a, 500, 0x3c, 5);
            field_0x64e[idx] = field_0x64a * fabsf(cM_ssin(field_0x64c * 0x3e0)) + 10.0f;
            field_0x64c++;
        }
        check = false;
    } else {
        field_0x64a = 0;
        field_0x64c = 0;
        for (int i = 0; i < 2; i++) {
            cLib_addCalcAngleS(&field_0x64e[i], 0, 4, 50, 5);
        }
    }
    if (check != 0) {
        for (int i = 0; i < 2; i++) {
            field_0x62e[i] = 0;
        }
    }
    if (mIndex == 2) {
        field_0x630[0] = shape_angle.y + field_0x64e[0];
        field_0x630[1] = 0x7FFF + shape_angle.y + field_0x64e[1];
    }
}

/* 80678664-80678708 000924 00A4+00 1/1 0/0 0/0 .text            event_proc_call__12daDoorPush_cFv
 */
void daDoorPush_c::event_proc_call() {
    typedef void (daDoorPush_c::*actionFunc)();
    static actionFunc l_func[] = {
        &daDoorPush_c::actionOpenWait,
        &daDoorPush_c::actionOrderEvent,
        &daDoorPush_c::actionEvent,
    };
    (this->*l_func[mAction])();
}

/* 80678708-8067877C 0009C8 0074+00 1/0 0/0 0/0 .text            actionOpenWait__12daDoorPush_cFv */
void daDoorPush_c::actionOpenWait() {
    if (mIndex != 2) {
        setAction(1);
        fopAcM_orderOtherEventId(this, field_0x63a[mIndex], field_0x63e[mIndex], 0xffff, 0, 1);
        eventInfo.i_onCondition(2);
    }
}

/* 8067877C-806787F8 000A3C 007C+00 1/0 0/0 0/0 .text            actionOrderEvent__12daDoorPush_cFv
 */
void daDoorPush_c::actionOrderEvent() {
    if (eventInfo.i_checkCommandDemoAccrpt()) {
        setAction(2);
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, field_0x63a[mIndex], field_0x63e[mIndex], 0xffff, 0, 1);
        eventInfo.i_onCondition(2);
    }
}

/* 806787F8-80678818 000AB8 0020+00 1/0 0/0 0/0 .text            actionEvent__12daDoorPush_cFv */
void daDoorPush_c::actionEvent() {
    demoProc();
}

/* 80678FEC-80678FF8 -00001 000C+00 1/1 0/0 0/0 .data            action_table$3910 */
static char* action_table[3] = {"WAIT", "OPEN", "SCENE_CHG"};

/* 80678818-80678AEC 000AD8 02D4+00 2/2 0/0 0/0 .text            demoProc__12daDoorPush_cFv */
int daDoorPush_c::demoProc() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    field_0x644 = dComIfGp_evmng_getMyStaffId("pdoor", NULL, 0);

    s32 actIdx =
        dComIfGp_evmng_getMyActIdx(field_0x644, action_table, ARRAY_SIZE(action_table), 0, 0);
    if (dComIfGp_evmng_getIsAddvance(field_0x644) != 0) {
        switch (actIdx) {
        case WAIT_e:
            int* integerP = dComIfGp_evmng_getMyIntegerP(field_0x644, "Timer");
            if (integerP == NULL) {
                field_0x648 = 1;
            } else {
                field_0x648 = *integerP;
            }
            break;
        case OPEN_e:
            rotateInit();
            field_0x641 = 0;
            break;
        case SCENE_CHG_e:
        default:
            break;
        }
    }
    switch (actIdx) {
    case WAIT_e:
        if (cLib_calcTimer(&field_0x648) == 0) {
            dComIfGp_evmng_cutEnd(field_0x644);
        }
        break;
    case OPEN_e:
        if (rotate() != 0) {
            ((daPy_py_c*)dComIfGp_getPlayer(0))->offPushPullKeep();
            setGoal();
            fopAcM_seStart(this, Z2SE_OBJ_HYRULE_DR_STOP, 0);
            field_0x641 = 1;
            dComIfGp_evmng_cutEnd(field_0x644);
        } else if (field_0x641 == 0) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_HYRULE_DR_MOVE, 0);
        }
        if (mIndex == 0) {
            player->setPlayerPosAndAngle(&mPosition, field_0x630[mIndex] + 0x7fff, 0);
        } else {
            player->setPlayerPosAndAngle(&mPosition, field_0x630[mIndex], 0);
        }
        break;
    case SCENE_CHG_e:
        dStage_changeScene(getSceneNo(), 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        break;
    default:
        dComIfGp_evmng_cutEnd(field_0x644);
        break;
    }
    return 0;
}

/* 80678AEC-80678B10 000DAC 0024+00 1/1 0/0 0/0 .text            rotateInit__12daDoorPush_cFv */
void daDoorPush_c::rotateInit() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    player->onPushPullKeep();
    field_0x649 = 0;
}

/* 80678B10-80678BC0 000DD0 00B0+00 1/1 0/0 0/0 .text            rotate__12daDoorPush_cFv */
int daDoorPush_c::rotate() {
    field_0x649++;
    field_0x630[mIndex] = field_0x634[mIndex];
    s16 rotation = field_0x649 / 60.0f * 5461.0f;
    if (mIndex == 1) {
        rotation = -rotation;
    }
    field_0x630[mIndex] += rotation;
    if (field_0x649 == 60) {
        return 1;
    }
    return 0;
}

/* 80678BC0-80678C70 000E80 00B0+00 1/1 0/0 0/0 .text            setGoal__12daDoorPush_cFv */
void daDoorPush_c::setGoal() {
    cXyz goal;
    if (mIndex == 0) {
        goal.set(300.0f, 0.0f, -400.0f);
    } else {
        goal.set(-300.0f, 0.0f, -400.0f);
    }
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mDoMtx_stack_c::multVec(&goal, &goal);
    dComIfGp_evmng_setGoal(&goal);
}

/* 80678C70-80678D2C 000F30 00BC+00 1/0 0/0 0/0 .text            Draw__12daDoorPush_cFv */
int daDoorPush_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    for (int i = 0; i < 2; i++) {
        g_env_light.setLightTevColorType_MAJI(mpModel[i], &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel[i]);
        dComIfGd_setList();
    }
    return 1;
}

/* 80678D2C-80678DAC 000FEC 0080+00 1/0 0/0 0/0 .text            Delete__12daDoorPush_cFv */
int daDoorPush_c::Delete() {
    if (mpDoorBgW != NULL && mpDoorBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpDoorBgW);
    }
    mpBgW->SetPushPullCallback(NULL);
    mpDoorBgW->SetPushPullCallback(NULL);
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80678DAC-80678E38 00106C 008C+00 1/0 0/0 0/0 .text daDoorPush_create1st__FP12daDoorPush_c */
static int daDoorPush_create1st(daDoorPush_c* i_this) {
    fopAcM_SetupActor(i_this, daDoorPush_c);
    return i_this->create1st();
}

/* 80678E3C-80678E5C 0010FC 0020+00 1/0 0/0 0/0 .text daDoorPush_MoveBGDelete__FP12daDoorPush_c */
static int daDoorPush_MoveBGDelete(daDoorPush_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80678E5C-80678E7C 00111C 0020+00 1/0 0/0 0/0 .text daDoorPush_MoveBGExecute__FP12daDoorPush_c
 */
static int daDoorPush_MoveBGExecute(daDoorPush_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80678E7C-80678EA8 00113C 002C+00 1/0 0/0 0/0 .text daDoorPush_MoveBGDraw__FP12daDoorPush_c */
static int daDoorPush_MoveBGDraw(daDoorPush_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80678FF8-80679018 -00001 0020+00 1/0 0/0 0/0 .data            daDoorPush_METHODS */
static actor_method_class daDoorPush_METHODS = {
    (process_method_func)daDoorPush_create1st,     (process_method_func)daDoorPush_MoveBGDelete,
    (process_method_func)daDoorPush_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daDoorPush_MoveBGDraw,
};

/* 80679018-80679048 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PushDoor */
extern actor_process_profile_definition g_profile_PushDoor = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_PushDoor,
    &g_fpcLf_Method.mBase,
    sizeof(daDoorPush_c),
    0,
    0,
    &g_fopAc_Method.base,
    578,
    &daDoorPush_METHODS,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
