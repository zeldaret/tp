//
// d_a_door_dbdoor00
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_dbdoor00.h"
#include "printf.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_door_param2.h"

/* 8045D378-8045D470 000078 00F8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        u16 jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daDbDoor00_c* area = (daDbDoor00_c*)model->getUserArea();
        MTXCopy(model->getAnmMtx(jointNo), mDoMtx_stack_c::get());
        if (jointNo == area->field_0x5c0 && area->field_0x585 == 1) {
            mDoMtx_stack_c::YrotM(-area->field_0x58a);
        } else if (jointNo == area->field_0x5c1 && area->field_0x585 == 0) {
            mDoMtx_stack_c::YrotM(area->field_0x58a);
        }
        model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
        mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }
    return 1;
}

static char* dummyStringFunc() {
    return "door-pushDouble_";
}

/* 8045D470-8045D480 000170 0010+00 3/3 0/0 0/0 .text            getAlwaysArcName__12daDbDoor00_cFv
 */
char* daDbDoor00_c::getAlwaysArcName() {
    return "static";
}

/* 8045D480-8045D490 000180 0010+00 1/1 0/0 0/0 .text            getDzb__12daDbDoor00_cFv */
char* daDbDoor00_c::getDzb() {
    return "door-pushDouble.dzb";
}

/* 8045D490-8045D4A0 000190 0010+00 1/1 0/0 0/0 .text            getDummyBmdName__12daDbDoor00_cFv
 */
char* daDbDoor00_c::getDummyBmdName() {
    return "door-pushDoubleDummy.bmd";
}

/* 8045D4A0-8045D4B0 0001A0 0010+00 3/3 0/0 0/0 .text            getBmdArcName__12daDbDoor00_cFv */
char* daDbDoor00_c::getBmdArcName() {
    return "DbDoor0";
}

/* 8045E684-8045E688 -00001 0004+00 1/1 0/0 0/0 .data            l_bmd_base_name */
static char* l_bmd_base_name = "door-pushDouble_";

/* 8045D4B0-8045D504 0001B0 0054+00 1/1 0/0 0/0 .text            getBmdName__12daDbDoor00_cFv */
char* daDbDoor00_c::getBmdName() {
    static char l_bmdName[32];
    sprintf(l_bmdName, "%s%02d.bmd", l_bmd_base_name, door_param2_c::getDoorModel(this));
    return l_bmdName;
}

/* 8045D504-8045D574 000204 0070+00 1/1 0/0 0/0 .text            getDoorModelData__12daDbDoor00_cFv
 */
J3DModelData* daDbDoor00_c::getDoorModelData() {
    J3DModelData* res = (J3DModelData*)dComIfG_getStageRes(getBmdName());
    if (res == NULL) {
        res = (J3DModelData*)dComIfG_getObjectRes(getBmdArcName(), getBmdName());
    }
    return res;
}

/* 8045D574-8045D594 000274 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daDbDoor00_c*>(i_this)->CreateHeap();
}

/* 8045D594-8045D744 000294 01B0+00 1/1 0/0 0/0 .text            CreateHeap__12daDbDoor00_cFv */
int daDbDoor00_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(getAlwaysArcName(), getDummyBmdName());
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    modelData = getDoorModelData();
    mpModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel2 == NULL) {
        return 0;
    }

    field_0x5c0 = modelData->getJointName()->getIndex("DbDoor00_L");
    field_0x5c1 = modelData->getJointName()->getIndex("DbDoor00_R");
    modelData = mpModel2->getModelData();
    J3DJoint* nodePointerL = modelData->getJointNodePointer(field_0x5c0);
    J3DJoint* nodePointerR = modelData->getJointNodePointer(field_0x5c1);
    nodePointerL->setCallBack(nodeCallBack);
    nodePointerR->setCallBack(nodeCallBack);
    mpModel2->setUserArea((u32)this);

    mpBgW = new dBgW();
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getDzb());
    if (dzb == NULL) {
        return 0;
    }
    calcMtx();
    return mpBgW->Set(dzb, 1, &mpModel->getBaseTRMtx()) != 1 ? 1 : 0;
}

/* 8045D744-8045D8F4 000444 01B0+00 4/4 0/0 0/0 .text            calcMtx__12daDbDoor00_cFv */
void daDbDoor00_c::calcMtx() {
    cXyz xyz;

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    xyz.set(0.0f, 0.0f, -150.0f);
    mDoMtx_stack_c::multVec(&xyz, &field_0x5a8);
    xyz.set(0.0f, 0.0f, -400.0f);
    mDoMtx_stack_c::multVec(&xyz, &field_0x5b4);

    if (field_0x585 == 0) {
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::YrotS(-field_0x58a);
        mDoMtx_stack_c::transM(80.0f, 0.0f, 70.0f);
        mDoMtx_stack_c::multVecZero(&field_0x59c);
        mDoMtx_stack_c::pop();
        mDoMtx_stack_c::multVec(&field_0x59c, &field_0x59c);
    }

    if (field_0x585 == 1) {
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::YrotS(field_0x58a);
        mDoMtx_stack_c::transM(-80.0f, 0.0f, 70.0f);
        mDoMtx_stack_c::multVecZero(&field_0x59c);
        mDoMtx_stack_c::pop();
        mDoMtx_stack_c::multVec(&field_0x59c, &field_0x59c);
    }
}

/* 8045D8F4-8045D9A8 0005F4 00B4+00 1/1 0/0 0/0 .text            CreateInit__12daDbDoor00_cFv */
int daDbDoor00_c::CreateInit() {
    u8 fRoomNo = door_param2_c::getFRoomNo(this);
    if (fopAcM_GetRoomNo(this) == -1) {
        fopAcM_SetRoomNo(this, fRoomNo);
        tevStr.room_no = current.roomNo;
    }
    dComIfG_Bgsp().Regist(mpBgW, this);
    field_0x584 = 1;
    setAction(4);
    field_0x594 = 0x1e;
    attention_info.position.y += 250.0f;
    eyePos.y += 250.0f;
    attention_info.flags = 0x20;
    calcMtx();
    mpBgW->Move();
    return 1;
}

/* 8045D9A8-8045DA68 0006A8 00C0+00 1/1 0/0 0/0 .text            create__12daDbDoor00_cFv */
int daDbDoor00_c::create() {
    fopAcM_SetupActor(this, daDbDoor00_c);

    int phase = dComIfG_resLoad(&mPhaseReq2, getAlwaysArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }
    phase = dComIfG_resLoad(&mPhaseReq, getBmdArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }
    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x8200)) {
        return cPhs_ERROR_e;
    }
    CreateInit();
    return cPhs_COMPLEATE_e;
}

/* 8045DA68-8045DAB0 000768 0048+00 1/1 0/0 0/0 .text            getDemoAction__12daDbDoor00_cFv */
int daDbDoor00_c::getDemoAction() {
    static char* action_table[9] = {
        "WAIT",      "SET_START", "SET_ANGLE", "END",        "OPEN",
        "STOP_OPEN", "SET_GOAL",  "SET_GOAL2", "ADJUSTMENT",
    };
    return dComIfGp_evmng_getMyActIdx(field_0x598, action_table, ARRAY_SIZE(action_table), 0, 0);
}

/* 8045DAB0-8045DE44 0007B0 0394+00 5/4 0/0 0/0 .text            demoProc__12daDbDoor00_cFv */
void daDbDoor00_c::demoProc() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(LINK_PTR);
    s16 doorAngle;
    cXyz xyz;
    s32 demoAction = getDemoAction();

    if (dComIfGp_evmng_getIsAddvance(field_0x598) != 0) {
        switch (demoAction) {
        case 1:
            calcMtx();
            xyz = field_0x59c;
            dComIfGp_evmng_setGoal(&xyz);
            break;
        case 2:
            doorAngle = current.angle.y + 0x7fff;
            player->changeDemoMoveAngle(doorAngle);
            break;
        case 4:
            field_0x58c = 0;
            field_0x5c2 = 0x1e;
            fopAcM_seStart(this, Z2SE_OBJ_OPEN_ZELDAROOM_DOOR, 0);
            break;
        case 6:
            xyz = field_0x5a8;
            dComIfGp_evmng_setGoal(&xyz);
            break;
        case 7:
            xyz = field_0x5b4;
            dComIfGp_evmng_setGoal(&xyz);
            break;
        case 8:
            calcMtx();
            field_0x590 = 0;
            int* integerP = dComIfGp_evmng_getMyIntegerP(field_0x598, "Timer");
            if (integerP != NULL) {
                field_0x590 = *integerP;
            }
        }
    }

    switch (demoAction) {
    case 4:
        if (field_0x58c < 0xfa) {
            field_0x58c += 0x32;
        }
        if (field_0x58a - field_0x58c < -0x1c71) {
            field_0x58a = -0x1c71;
            dComIfGp_evmng_cutEnd(field_0x598);
        } else {
            field_0x58a -= field_0x58c;
        }
        calcMtx();
        if (field_0x585 != 0) {
            doorAngle = current.angle.y + 0x7fff - field_0x58a;

        } else {
            doorAngle = current.angle.y + 0x7fff + field_0x58a;
        }
        player->setPlayerPosAndAngle(&field_0x59c, doorAngle, 0);
        if (field_0x5c2 == 0) {
            daPy_getPlayerActorClass()->onSceneChangeArea(door_param2_c::getExitNo(this), 0xff,
                                                          NULL);
        }
        field_0x5c2--;
    case 3:
    case 5:
        return;

    case 8:
        doorAngle = player->shape_angle.y;
        cLib_addCalcAngleS2(&doorAngle, current.angle.y + 0x7fff, 10, 0x800);
        xyz = player->current.pos;
        xyz.x = xyz.x * 0.9f + field_0x59c.x * 0.1f;
        xyz.z = xyz.z * 0.9f + field_0x59c.z * 0.1f;
        player->setPlayerPosAndAngle(&xyz, doorAngle, 0);
        if (field_0x590 > 0) {
            field_0x590--;
            return;
        }
        dComIfGp_evmng_cutEnd(field_0x598);
        return;
    }
    dComIfGp_evmng_cutEnd(field_0x598);
}

/* 8045DE44-8045DF70 000B44 012C+00 1/1 0/0 0/0 .text            checkArea__12daDbDoor00_cFv */
int daDbDoor00_c::checkArea() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(LINK_PTR);
    cXyz sub = player->current.pos - home.pos;
    cXyz area = sub;

    area.x = sub.z * cM_ssin(current.angle.y) - sub.x * cM_scos(current.angle.y);
    area.z = sub.z * cM_scos(current.angle.y) + sub.x * cM_ssin(current.angle.y);

    if (area.z > 160.0f) {
        return 0;
    }
    if (area.x > 200.0f || area.x < -200.0f) {
        return 0;
    }
    if (fopAcM_seenActorAngleY(player, this) > 0x3000) {
        return 0;
    }
    if (area.x > 0.0f) {
        field_0x585 = 1;
    } else {
        field_0x585 = 0;
    }
    return 1;
}

/* 8045DF70-8045DF78 000C70 0008+00 1/1 0/0 0/0 .text            checkUnlock__12daDbDoor00_cFv */
int daDbDoor00_c::checkUnlock() {
    return 1;
}

/* 8045DF78-8045DF9C 000C78 0024+00 1/0 0/0 0/0 .text            actionWait__12daDbDoor00_cFv */
int daDbDoor00_c::actionWait() {
    calcMtx();
    return 1;
}

/* 8045DF9C-8045E000 000C9C 0064+00 1/0 0/0 0/0 .text            actionLockWait__12daDbDoor00_cFv */
int daDbDoor00_c::actionLockWait() {
    if (checkUnlock() != 0) {
        setAction(2);
        fopAcM_orderOtherEvent(this, "DBDOOR00_STOP_OPEN", 0xffff, 1, 0);
    }
    return 1;
}

/* 8045E000-8045E094 000D00 0094+00 1/0 0/0 0/0 .text            actionLockOff__12daDbDoor00_cFv */
int daDbDoor00_c::actionLockOff() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        field_0x598 = dComIfGp_evmng_getMyStaffId("DOUBLE_DOOR", NULL, 0);
        demoProc();
        setAction(3);
    } else {
        fopAcM_orderOtherEvent(this, "DBDOOR00_STOP_OPEN", 0xffff, 1, 0);
    }
    return 1;
}

/* 8045E094-8045E108 000D94 0074+00 1/0 0/0 0/0 .text            actionLockDemo__12daDbDoor00_cFv */
int daDbDoor00_c::actionLockDemo() {
    if (dComIfGp_evmng_endCheck("DBDOOR00_STOP_OPEN")) {
        dComIfGp_event_reset();
        setAction(4);
    } else {
        demoProc();
    }
    return 1;
}

/* 8045E108-8045E1C8 000E08 00C0+00 1/0 0/0 0/0 .text            actionCloseWait__12daDbDoor00_cFv
 */
int daDbDoor00_c::actionCloseWait() {
    if (eventInfo.checkCommandDoor()) {
        field_0x598 = dComIfGp_evmng_getMyStaffId("DOUBLE_DOOR", NULL, 0);
        demoProc();
        setAction(5);
        dComIfG_Bgsp().Release(mpBgW);
        field_0x584 = 0;
    } else {
        if (checkArea() != 0) {
            eventInfo.setEventName("DEFAULT_DOUBLE_DOOR_OPEN");
            eventInfo.onCondition(4);
        }
    }
    return 1;
}

/* 8045E1C8-8045E1EC 000EC8 0024+00 1/0 0/0 0/0 .text            actionOpen__12daDbDoor00_cFv */
int daDbDoor00_c::actionOpen() {
    demoProc();
    return 1;
}

/* 8045E1EC-8045E2DC 000EEC 00F0+00 1/1 0/0 0/0 .text            execute__12daDbDoor00_cFv */
int daDbDoor00_c::execute() {
    typedef int (daDbDoor00_c::*actionFunc)();
    static actionFunc l_action[] = {
        &daDbDoor00_c::actionWait,     &daDbDoor00_c::actionLockWait,  &daDbDoor00_c::actionLockOff,
        &daDbDoor00_c::actionLockDemo, &daDbDoor00_c::actionCloseWait, &daDbDoor00_c::actionOpen,
    };
    (this->*l_action[mAction])();
    return 1;
}

/* 8045E2DC-8045E31C 000FDC 0040+00 1/1 0/0 0/0 .text            checkDraw__12daDbDoor00_cFv */
int daDbDoor00_c::checkDraw() {
    return dComIfGp_roomControl_checkRoomDisp(fopAcM_GetRoomNo(this)) != 0 ? 1 : 0;
}

/* 8045E31C-8045E428 00101C 010C+00 1/1 0/0 0/0 .text            draw__12daDbDoor00_cFv */
int daDbDoor00_c::draw() {
    if (checkDraw() == 0) {
        if (field_0x584 != 0) {
            dComIfG_Bgsp().Release(mpBgW);
            field_0x584 = 0;
        }
        return 1;
    }
    if (field_0x584 == 0) {
        dComIfG_Bgsp().Regist(mpBgW, this);
        field_0x584 = 1;
    }
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel2, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel2);
    dComIfGd_setList();
    return 1;
}

/* 8045E428-8045E49C 001128 0074+00 1/1 0/0 0/0 .text            Delete__12daDbDoor00_cFv */
int daDbDoor00_c::Delete() {
    if (heap != NULL) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    dComIfG_resDelete(&mPhaseReq, getBmdArcName());
    dComIfG_resDelete(&mPhaseReq2, getAlwaysArcName());
    return 1;
}

/* 8045E49C-8045E4BC 00119C 0020+00 1/0 0/0 0/0 .text            daDbdoor00_Draw__FP12daDbDoor00_c
 */
static int daDbdoor00_Draw(daDbDoor00_c* i_this) {
    return i_this->draw();
}

/* 8045E4BC-8045E4E0 0011BC 0024+00 1/0 0/0 0/0 .text daDbdoor00_Execute__FP12daDbDoor00_c */
static int daDbdoor00_Execute(daDbDoor00_c* i_this) {
    i_this->execute();
    return 1;
}

/* 8045E4E0-8045E4E8 0011E0 0008+00 1/0 0/0 0/0 .text daDbdoor00_IsDelete__FP12daDbDoor00_c */
static int daDbdoor00_IsDelete(daDbDoor00_c* i_this) {
    return 1;
}

/* 8045E4E8-8045E50C 0011E8 0024+00 1/0 0/0 0/0 .text            daDbdoor00_Delete__FP12daDbDoor00_c
 */
static int daDbdoor00_Delete(daDbDoor00_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 8045E50C-8045E52C 00120C 0020+00 1/0 0/0 0/0 .text            daDbdoor00_Create__FP10fopAc_ac_c
 */
static int daDbdoor00_Create(fopAc_ac_c* i_this) {
    return static_cast<daDbDoor00_c*>(i_this)->create();
}

/* 8045E760-8045E780 -00001 0020+00 1/0 0/0 0/0 .data            l_daDbdoor00_Method */
static actor_method_class l_daDbdoor00_Method = {
    (process_method_func)daDbdoor00_Create,  (process_method_func)daDbdoor00_Delete,
    (process_method_func)daDbdoor00_Execute, (process_method_func)daDbdoor00_IsDelete,
    (process_method_func)daDbdoor00_Draw,
};

/* 8045E780-8045E7B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DBDOOR */
extern actor_process_profile_definition g_profile_DBDOOR = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_DBDOOR,            // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daDbDoor00_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    295,                    // mPriority
    &l_daDbdoor00_Method,   // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};
