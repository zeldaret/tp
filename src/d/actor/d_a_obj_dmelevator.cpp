/**
 * d_a_obj_dmelevator.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_dmelevator.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "d/d_path.h"

/* 80BDF870-80BDF87C 000000 000C+00 11/11 0/0 0/0 .rodata          l_swOffset */
static const Vec l_swOffset = {
    0.0f,
    162.0f,
    -77.0f,
};

/* 80BDD96C-80BDDBB4 0000EC 0248+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    daObjDmElevator_c* pthis = (daObjDmElevator_c*)param_1;

    daPy_py_c* pdVar1 = daPy_getPlayerActorClass();
    if (fopAcM_checkStatus(param_2, 0x400) != 0 && fopAcM_GetName(param_2) == 0xfd) {
        static cXyz l_push_check_pos0[4] = {
            cXyz(-50.0f, 0.0f, -50.0f),
            cXyz(50.0f, 0.0f, -50.0f),
            cXyz(50.0f, 0.0f, 50.0f),
            cXyz(-50.f, 0.f, 50.f),
        };

        cXyz local_2c = param_2->current.pos - pthis->mXyz;
        mDoMtx_stack_c::YrotS(-param_1->current.angle.y);
        mDoMtx_stack_c::multVec(&local_2c, &local_2c);

        if (l_push_check_pos0[0].x <= local_2c.x) {
            if (l_push_check_pos0[2].x >= local_2c.x) {
                if (l_push_check_pos0[0].z <= local_2c.z) {
                    if (l_push_check_pos0[2].z >= local_2c.z) {
                        if ((pdVar1->checkEquipHeavyBoots())) {
                            pthis->field_0x632 = 1;
                            pthis->field_0x634 = 1;
                        }
                        else
                        {
                            pthis->field_0x632 = 0;
                            pthis->field_0x634 = 0;
                        }
                        if (fopAcM_CheckCarryType(param_2, fopAcM_CARRY_TYPE_1)) {
                            pthis->field_0x62f = 2;
                        } else {
                            pthis->field_0x62f = 1;
                        }
                    }
                }
            }
        }
    }
}

/* 80BDDBF0-80BDDCA0 000370 00B0+00 1/1 0/0 0/0 .text            nodeCallBackForSw__FP8J3DJointi */
static int nodeCallBackForSw(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        int jnt_no = param_0->getJntNo();
        J3DModel* pmodel = j3dSys.getModel();
        daObjDmElevator_c* puser_area = (daObjDmElevator_c*)pmodel->getUserArea();

        mDoMtx_copy(pmodel->mMtxBuffer->getAnmMtx(jnt_no), mDoMtx_stack_c::get());

        if (jnt_no == 1) {
            mDoMtx_stack_c::transM(puser_area->field_0x638, 0.0f, 0.0f);
        }

        pmodel->mMtxBuffer->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
        mDoMtx_copy(mDoMtx_stack_c::get(), j3dSys.mCurrentMtx);
    }
    return 1;
}

/* 80BDDCA0-80BDDD38 000420 0098+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* pmodel = j3dSys.getModel();
        daObjDmElevator_c* puser_area = (daObjDmElevator_c*)pmodel->getUserArea();
       
        mDoMtx_copy(j3dSys.getModel()->mMtxBuffer->getAnmMtx(jnt_no), mDoMtx_stack_c::get());
       
        if (jnt_no == 2) {
            mDoMtx_XrotM(mDoMtx_stack_c::get(), puser_area->field_0x5e4);
        }
       
        mDoMtx_copy(mDoMtx_stack_c::get(), pmodel->mMtxBuffer->getAnmMtx(jnt_no));
    }
    return 1;
}

/* 80BDDD38-80BDDD90 0004B8 0058+00 1/1 0/0 0/0 .text            initBaseMtx__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::initBaseMtx() {
    mpElevatorModel->setBaseScale(scale);
    mpSwitchModel->setBaseScale(scale);

    setBaseMtx();
}

/* 80BDDD90-80BDDEFC 000510 016C+00 2/2 0/0 0/0 .text            setBaseMtx__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::setBaseMtx() {
    
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpElevatorModel->setBaseTRMtx(mDoMtx_stack_c::now);
    PSMTXCopy(mDoMtx_stack_c::now, mBgMtx);
    mDoMtx_stack_c::YrotS(shape_angle.y);
   
    cXyz VStack_18;
    
    mDoMtx_stack_c::multVec(&l_swOffset, &VStack_18);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(VStack_18);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpSwitchModel->setBaseTRMtx(mDoMtx_stack_c::now);
    PSMTXCopy(mDoMtx_stack_c::now, mMtx);
   
    float fVar1 = field_0x638;
    if (fVar1 < -17.f) {
        fVar1 = -17.f;
    }
   
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + fVar1, current.pos.z);
    mDoMtx_stack_c::transM(VStack_18);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    PSMTXCopy(mDoMtx_stack_c::now, mMtx);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(VStack_18);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVecZero(&mXyz);
}

/* 80BDF964-80BDF968 -00001 0004+00 3/4 0/0 0/0 .data            l_el_arcName */
static const char* l_el_arcName = "H_Elevato";

/* 80BDF968-80BDF96C -00001 0004+00 3/3 0/0 0/0 .data            l_sw_arcName */
static const char* l_sw_arcName = "D_Hfsw00";

/* 80BDF96C-80BDF970 -00001 0004+00 0/1 0/0 0/0 .data            l_eventName */
static const char* l_eventName = "ELEVATOR_MOVE";

/* 80BDF970-80BDF974 -00001 0004+00 0/1 0/0 0/0 .data            l_eventName2 */
static const char* l_eventName2 = "ELEVATOR_MOVE2";

/* 80BDF8EC-80BDF8EC 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static const char* l_staffName = "dmele";

/* 80BDDEFC-80BDE0A4 00067C 01A8+00 1/0 0/0 0/0 .text            Create__17daObjDmElevator_cFv */
int daObjDmElevator_c::Create() {
    if (field_0x5e0 == 1) {
        field_0x637 = 0xe;
        field_0x636 = 1;
        field_0x638 = -24.0f;
        field_0x62b = 1;
        modeSwWaitUpperInit();
    }
    int success = dComIfG_Bgsp().Regist((dBgW_Base*)mpBgW, this);
    if (success != 0) {
        success = 0;
    } else {
        initBaseMtx();
        
        cullMtx = mpElevatorModel->mBaseTransformMtx;
        fopAcM_setCullSizeBox(this, -250.0f, -50.0f, -350.0f, 250.0f, 450.0f, 400.0f);
        
        mpElevatorModel->mModelData->getJointTree().getJointNodePointer(2)->setCallBack(
            nodeCallBack);
        mpElevatorModel->setUserArea((u32)this);
        
        mpSwitchModel->mModelData->getJointTree().getJointNodePointer(1)->setCallBack(
            nodeCallBackForSw);
        mpSwitchModel->setUserArea((u32)this);
        
        mpBgW->SetRideCallback(rideCallBack);
        mpBgW->Move();
        
        eventInfo.setArchiveName((char*)l_el_arcName);
        
        success = strcmp(dComIfGp_getStartStageName(), "F_SP110");
        if (success == 0) {
            mEventIndex = dComIfGp_getEventManager().getEventIdx(this, l_eventName, 0xff);
        } else {
            success = strcmp(dComIfGp_getStartStageName(), "R_SP110");
            if (success == 0) {
                mEventIndex = dComIfGp_getEventManager().getEventIdx(this, l_eventName2, 0xff);
            }
        }
        success = 1;
    }

    return success;
}

/* 80BDE0A4-80BDE2F8 000824 0254+00 1/1 0/0 0/0 .text            init__17daObjDmElevator_cFv */
int daObjDmElevator_c::init() {
    dPath* path = dPath_GetRoomPath(getPathID() & 0xff, fopAcM_GetRoomNo(this));
    daPy_py_c* plink = daPy_getPlayerActorClass();
    dPnt* pdVar4 = dPath_GetPnt(path, 0);
    dPnt* pdVar5 = dPath_GetPnt(path, 1);

    if (plink->current.pos.absXZ(pdVar5->m_position) < 100.0f) {
        home.pos = pdVar5->m_position;
        home.pos.y = home.pos.y - 200.0f;
        field_0x5e0 = 1;
        field_0x5e1 = -1;
    } else {
        home.pos = pdVar4->m_position;
        field_0x5e0 = 0;
        field_0x5e1 = 1;
    }

    current.pos = home.pos;
    old.pos = home.pos;
    mSoundObj.init(&current.pos, 1);
    return 1;
}

/* 80BDE2F8-80BDE448 000A78 0150+00 1/0 0/0 0/0 .text            CreateHeap__17daObjDmElevator_cFv
 */
int daObjDmElevator_c::CreateHeap() {
    J3DModelData* pJVar1 = (J3DModelData*)dComIfG_getObjectRes((const char*)l_el_arcName, 5);
    mpElevatorModel = mDoExt_J3DModel__create(pJVar1, 0x80000, 0x11000084);
    if (mpElevatorModel == NULL) {
        return 0;
    }

    pJVar1 = (J3DModelData*)dComIfG_getObjectRes((const char*)l_sw_arcName, 4);
    mpSwitchModel = mDoExt_J3DModel__create(pJVar1, 0x80000, 0x11000084);

    if (mpSwitchModel == NULL) {
        return 0;
    }
    mpBgW = new dBgW();

    if (mpBgW != NULL && mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_sw_arcName, 8), 1, &mMtx) == 0)
    {
        mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    } else {
        mpBgW = NULL;
        return 0;
    }
    return 1;
}

/* 80BDE448-80BDE500 000BC8 00B8+00 1/1 0/0 0/0 .text            create1st__17daObjDmElevator_cFv */
int daObjDmElevator_c::create1st() {
    int temp = init();
    if (temp == 0) {
        return cPhs_ERROR_e;
    }

    int ret = dComIfG_resLoad(&mPhaseReq2, l_sw_arcName);
    if (ret != cPhs_COMPLEATE_e) {
        return ret;
    }
    ret = dComIfG_resLoad(&mPhaseReq, l_el_arcName);
    if (ret == cPhs_COMPLEATE_e) {
        ret = MoveBGCreate(l_el_arcName, 8, dBgS_MoveBGProc_TypicalRotY, 0x2280, NULL);
        if (ret == cPhs_ERROR_e) {
            return ret;
        }
    }
    return ret;
}

/* 80BDE500-80BDE5F8 000C80 00F8+00 1/0 0/0 0/0 .text Execute__17daObjDmElevator_cFPPA3_A4_f */
int daObjDmElevator_c::Execute(Mtx** param_1) {
    event_proc_call();
    setting_ride_flag();
    event_sw_proc_call();
    mode_sw_proc_call();
    calc_top_pos();
    *param_1 = &mBgMtx;
    setBaseMtx();
    mpBgW->Move();
    field_0x630 = field_0x62f;
    field_0x62f = 0;
    field_0x633 = field_0x632;
    field_0x632 = 0;
    field_0x635 = field_0x634;
    field_0x634 = 0;
    field_0x5e4 = field_0x5e4 + (s16)((speedF * 65535.0f) / 502.65485f);
    mSoundObj.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80BDE5F8-80BDE6FC 000D78 0104+00 1/1 0/0 0/0 .text setting_ride_flag__17daObjDmElevator_cFv */
void daObjDmElevator_c::setting_ride_flag() {
    if (field_0x62f != 0) {
        if (field_0x631 != 0) {
            field_0x62e = 8;
        } else {
            field_0x62e += 1;
            if (field_0x62e > 8) {
                field_0x631 = 1;
            }
        }
    } else if (field_0x631 != 0) {
        field_0x62e -= 1;
        if (field_0x62e == 0) {
            field_0x631 = 0;
        }
    } else {
        field_0x62e = 0;
    }
    if (field_0x634 != 0) {
        if (field_0x636 != 0) {
            field_0x637 = 0xe;
            return;
        }
        field_0x637 = field_0x637 + 1;
        if (field_0x637 <= 8) {
            return;
        }
        field_0x636 = 1;
        return;
    }
    if (field_0x636 != 0) {
        field_0x637 = field_0x637 - 1;
        if (field_0x637 != 0) {
            return;
        }
        field_0x636 = 0;
    } else {
        field_0x637 = 0;
    }
}

/* 80BDE6FC-80BDE7A0 000E7C 00A4+00 1/1 0/0 0/0 .text event_sw_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::event_sw_proc_call() {
    typedef void (daObjDmElevator_c::*actionFunc)();
    static actionFunc l_func[] = {
        &daObjDmElevator_c::actionSwPauseNone,
        &daObjDmElevator_c::actionSwPauseOrder,
        &daObjDmElevator_c::actionSwPause,
    };
    (this->*l_func[field_0x629])();
}

/* 80BDE7A0-80BDE7AC 000F20 000C+00 2/2 0/0 0/0 .text actionSwPauseNoneInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionSwPauseNoneInit() {
    field_0x629 = 0;
}

/* 80BDE7AC-80BDE7B0 000F2C 0004+00 1/0 0/0 0/0 .text actionSwPauseNone__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseNone() {
    /* empty function */
}

/* 80BDE7B0-80BDE808 000F30 0058+00 1/1 0/0 0/0 .text
 * actionSwPauseOrderInit__17daObjDmElevator_cFv                */
void daObjDmElevator_c::actionSwPauseOrderInit() {
    if (field_0x629 != 1) {
        field_0x629 = 1;
        fopAcM_orderPotentialEvent(this, 2, 0, 0);
        eventInfo.mCondition = eventInfo.mCondition | 2;
    }
}

/* 80BDE808-80BDE83C 000F88 0034+00 1/0 0/0 0/0 .text actionSwPauseOrder__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseOrder() {
    if (eventInfo.mCommand == 2) {
        actionSwPauseInit();
    } else {
        actionSwPauseNoneInit();
    }
}

/* 80BDE83C-80BDE868 000FBC 002C+00 1/1 0/0 0/0 .text actionSwPauseInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPauseInit() {
    daPy_getPlayerActorClass()->onWolfEyeKeep();
    field_0x62a = 10;
    field_0x629 = 2;
}

/* 80BDE868-80BDE8D0 000FE8 0068+00 1/0 0/0 0/0 .text actionSwPause__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionSwPause() {
    daPy_getPlayerActorClass()->mEndResetFlg1 = daPy_getPlayerActorClass()->mEndResetFlg1 | 0x200;
    field_0x62a += -1;
    if (field_0x62a == 0) {
        g_dComIfG_gameInfo.play.mEvent.reset();
        actionSwPauseNoneInit();
    }
}

/* 80BDE8D0-80BDE960 001050 0090+00 1/1 0/0 0/0 .text            calc_top_pos__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::calc_top_pos() {
    speed.y = speed.y - (field_0x63c - field_0x640) * (0.9f);
    speed.y = speed.y - speed.y * 0.5f;

    field_0x63c = field_0x63c + speed.y;
    field_0x638 = (1.0f - field_0x63c) * -24.0f;
    field_0x638 = cLib_minMaxLimit(field_0x638, -24.0f, 0.0f);
}

/* 80BDE960-80BDEA1C 0010E0 00BC+00 1/1 0/0 0/0 .text mode_sw_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::mode_sw_proc_call() {
    typedef void (daObjDmElevator_c::*actionFunc)();
    static actionFunc l_mode_func[] = {
        &daObjDmElevator_c::modeSwWaitLower,
        &daObjDmElevator_c::modeSwLower,
        &daObjDmElevator_c::modeSwWaitUpper,
        &daObjDmElevator_c::modeSwUpper,
    };
    (this->*l_mode_func[field_0x628])();
}

/* 80BDEA1C-80BDEA44 00119C 0028+00 1/1 0/0 0/0 .text modeSwWaitLowerInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwWaitLowerInit() {
    speed.y = 0.0f;
    field_0x63c = 1.0f;
    field_0x640 = 1.0f;
    field_0x628 = 0;
}

/* 80BDEA44-80BDEB88 0011C4 0144+00 1/0 0/0 0/0 .text modeSwWaitLower__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwWaitLower() {
    if (field_0x631 != 0) {
        if (field_0x636 != 0) {
            modeSwLowerInit();
        } else {
            if (field_0x640 == 1.0f) {
                fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_RIDE, 0);
            }
            field_0x640 = 0.8f;  // 9c
        }
    } else {
        if (field_0x640 != 1.0f)  // a8
        {
            fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_DROP, 0);
        }
        field_0x640 = 1.0f;
    }
    if (field_0x62f != 0 && field_0x630 == 0)  //: 10c
    {
        actionSwPauseOrderInit();
    }
}

/* 80BDEA1c-80BDEA40 001308 0088+00 1/1 0/0 0/0 .text modeSwLowerInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwLowerInit() {
    mDoAud_seStart(Z2SE_OBJ_HEAVY_FUMISW_ON, &mXyz, 0, 0);

    field_0x640 = 0;
    field_0x628 = 1;
}

/* 80BDEC10-80BDEC94 001390 0084+00 1/0 0/0 0/0 .text            modeSwLower__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwLower() {
    if (field_0x638 == -24.0f) {
        dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        modeSwWaitUpperInit();

        field_0x62b = 1;
        field_0x62d = 1;
    }
}

/* 80BDEC94-80BDECB4 001414 0020+00 2/2 0/0 0/0 .text modeSwWaitUpperInit__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwWaitUpperInit() {
    speed.y = 0.0f;
    field_0x63c = 0.0f;
    field_0x640 = 0.0f;
    field_0x628 = 2;
}

/* 80BDECB4-80BDECE0 001434 002C+00 1/0 0/0 0/0 .text modeSwWaitUpper__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwWaitUpper() {
    if (field_0x636 == 0) {
        modeSwUpperInit();
    }
}

/* 80BDECE0-80BDED64 001460 0084+00 1/1 0/0 0/0 .text modeSwUpperInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::modeSwUpperInit() {
    mDoAud_seStart(Z2SE_OBJ_HEAVY_FUMISW_OFF, &mXyz, 0, 0);

    field_0x640 = 1.0f;
    field_0x628 = 3;
}

/* 80BDED64-80BDEDE0 0014E4 007C+00 1/0 0/0 0/0 .text            modeSwUpper__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::modeSwUpper() {
    if (field_0x638 == 0.0f) {
        dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0, 1.0, 0.0));
        modeSwWaitLowerInit();
        field_0x62b = 0;
    }
}

/* 80BDEDE0-80BDEECC 001560 00EC+00 1/1 0/0 0/0 .text event_proc_call__17daObjDmElevator_cFv */
void daObjDmElevator_c::event_proc_call() {
    typedef void (daObjDmElevator_c::*actionFunc)();
    static actionFunc l_func[] = {
        &daObjDmElevator_c::actionWait,      &daObjDmElevator_c::actionOrderEvent,
        &daObjDmElevator_c::actionEvent,     &daObjDmElevator_c::actionStartEvent,
        &daObjDmElevator_c::actionMoveStart, &daObjDmElevator_c::actionDead,
    };
    (this->*l_func[mAction])();
}

/* 80BDEECC-80BDEF60 00164C 0094+00 1/0 0/0 0/0 .text            actionWait__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionWait() {
    if (field_0x5e0 == 1) {
        mAction = 4;
        moveInit();
    } else if (!dComIfGp_event_runCheck() && (field_0x62d != 0)) {
        mAction = 1;

        fopAcM_orderOtherEventId(this, mEventIndex, 0xff, 0xffff, 0, 1);
        eventInfo.mCondition = eventInfo.mCondition | 2;
    }
}

/* 80BDEF60-80BDF000 0016E0 00A0+00 1/0 0/0 0/0 .text actionOrderEvent__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionOrderEvent() {
    if (eventInfo.mCommand == 2) {
        mAction = 2;
        field_0x5dc =  dComIfGp_evmng_getMyStaffId(l_staffName, NULL, 0);
        demoProc();
        field_0x62d = 0;
    } else {
        fopAcM_orderOtherEventId(this, mEventIndex, 0xff, 0xffff, 0, 1);
        eventInfo.mCondition = eventInfo.mCondition | 2;
    }
}

/* 80BDF000-80BDF068 001780 0068+00 1/0 0/0 0/0 .text            actionEvent__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionEvent() {
    dEvent_manager_c& evt_manager = dComIfGp_getEventManager();
    if (dComIfGp_evmng_endCheck(mEventIndex)) {
        setAction(0);
        dComIfGp_event_reset();
    } else {
        demoProc();
    }
}

/* 80BDF068-80BDF0A0 0017E8 0038+00 1/0 0/0 0/0 .text actionStartEvent__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionStartEvent() {
    if ( fopAcM_checkStatus(this, 0x1000) != 0) {
        demoProc();
    } else {
        mAction = 0;
    }
}

/* 80BDF0A0-80BDF168 001820 00C8+00 1/0 0/0 0/0 .text actionMoveStart__17daObjDmElevator_cFv */
void daObjDmElevator_c::actionMoveStart() {
    if (moveProc() != 0) {
        dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0, 1.0, 0.0));

        mAction = 0;

        s8 i_reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
        mDoAud_seStart(Z2SE_OBJ_ELEVATOR_STOP, &eyePos, 0, i_reverb);
    }
}

/* 80BDF168-80BDF16C 0018E8 0004+00 1/0 0/0 0/0 .text            actionDead__17daObjDmElevator_cFv
 */
void daObjDmElevator_c::actionDead() {
    /* empty function */
}

/* 80BDF16C-80BDF320 0018EC 01B4+00 3/3 0/0 0/0 .text            demoProc__17daObjDmElevator_cFv */
int daObjDmElevator_c::demoProc() {
    static char* action_table[2] = {
        "WAIT",
        "MOVE",
    };

    int actIdx =
        dComIfGp_getEventManager().getMyActIdx(field_0x5dc, &action_table[0], 2, 0, 0);  // r30
    int isAddvance = dComIfGp_getEventManager().getIsAddvance(field_0x5dc);              // r3

    if (isAddvance != 0) {
        switch (actIdx) {
        case 0: {
            int* psubstance =
                (int*)dComIfGp_getEventManager().getMySubstanceP(field_0x5dc, "Timer", 3);
            if (psubstance == NULL) {
                field_0x5e3 = 1;
            } else {
                field_0x5e3 = (char)*psubstance;
            }
            break;
        }
        case 1: {
            moveInit();
            break;
        }
        }
    }
    switch (actIdx) {
    case 0: {
        if ((cLib_calcTimer(&field_0x5e3) & 0xff) == 0) {
            dComIfGp_getEventManager().cutEnd(field_0x5dc);
        }
        break;
    }
    case 1: {
        actIdx = moveProc();
        if (actIdx != 0) {
            actIdx = strcmp(dComIfGp_getStartStage()->getName(), "F_SP110");
            if (actIdx == 0) {
                dStage_changeScene(1, 0.0f, 0, (u8)current.roomNo, 0, -1);
                break;
            } else {
                actIdx = strcmp(dComIfGp_getStartStage()->getName(), "R_SP110");
                if (actIdx == 0) {
                    dStage_changeScene(2, 0.0, 0, (u8)current.roomNo, 0, -1);
                }
            }
        }
        break;
    }
    default: {
        dComIfGp_getEventManager().cutEnd(field_0x5dc);
        break;
    }
    }
    return 0;
}

/* 80BDF320-80BDF3B8 001AA0 0098+00 2/2 0/0 0/0 .text            moveInit__17daObjDmElevator_cFv */
void daObjDmElevator_c::moveInit() {
    speedF = 0.0f;
    if (field_0x5e0 == 0) {
        s8 i_reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));

        Z2AudioMgr::mAudioMgrPtr->seStart(Z2SE_OBJ_ELEVATOR_START, (Vec*)&eyePos, 0, i_reverb, 1.0,
                                          1.0, -1.0, -1.0, 0);
    }
}

/* 80BDF3B8-80BDF618 001B38 0260+00 2/2 0/0 0/0 .text            moveProc__17daObjDmElevator_cFv */
int daObjDmElevator_c::moveProc() {
    dPath* path = dPath_GetRoomPath(getPathID(), fopAcM_GetRoomNo(this));
    dPnt* pdVar3 = dPath_GetPnt(path, field_0x5e0 + (char)field_0x5e1);

    cXyz path_point(pdVar3->m_position);
    if (path_point.y > current.pos.y) {
        cLib_chaseF(&speedF, 10.0f, 1.0f);
    } else {
        cLib_chaseF(&speedF, -10.0f, 1.0f);
    }

    int uVar1 = cLib_chasePos(&current.pos, path_point, fabsf(speedF));

    if (field_0x5e0 + (int)(char)field_0x5e1 == 1) {
        const float fVar6 = current.pos.abs(path_point);
        uVar1 = ((uint)(char)((fVar6 < 200.0f) << 3) << 0x1c) >> 0x1f;
    }

    int ret;
    if (uVar1 != 0) {
        if (field_0x5e0 + field_0x5e1 != 1) {
            field_0x5e0 += field_0x5e1;
            if (field_0x5e0 == 0) {
                field_0x5e1 = 1;
            } else {
                field_0x5e1 = 0xff;
            }
        }
        speedF = 0.0f;
        ret = 1;
    } else {
        mSoundObj.startLevelSound(Z2SE_OBJ_ELEVATOR_MOVE, 0, -1);
        ret = 0;
    }
    return ret;
}

/* 80BDF618-80BDF6DC 001D98 00C4+00 1/0 0/0 0/0 .text            Draw__17daObjDmElevator_cFv */
int daObjDmElevator_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpSwitchModel, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpElevatorModel, &tevStr);

    dComIfGd_setListBG();

    mDoExt_modelUpdateDL(mpElevatorModel);
    mDoExt_modelUpdateDL(mpSwitchModel);
    dComIfGd_setList();
    return 1;
}

/* 80BDF6DC-80BDF764 001E5C 0088+00 1/0 0/0 0/0 .text            Delete__17daObjDmElevator_cFv */
int daObjDmElevator_c::Delete() {
    mSoundObj.deleteObject();

    if ((mpBgW != NULL) && mpBgW->ChkUsed()) {
        g_dComIfG_gameInfo.play.mBgs.Release(mpBgW);
    }

    dComIfG_resDelete(&mPhaseReq, l_el_arcName);
    dComIfG_resDelete(&mPhaseReq2, l_sw_arcName);
    return 1;
}

/* 80BDF764-80BDF7D8 001EE4 0074+00 1/0 0/0 0/0 .text
 * daObjDmElevator_create1st__FP17daObjDmElevator_c             */
static int daObjDmElevator_create1st(daObjDmElevator_c* i_this) {
    fopAcM_SetupActor(i_this, daObjDmElevator_c);
    return i_this->create1st();
}

/* 80BDF7D8-80BDF7F8 001F58 0020+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGDelete__FP17daObjDmElevator_c          */
static int daObjDmElevator_MoveBGDelete(daObjDmElevator_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BDF7F8-80BDF818 001F78 0020+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGExecute__FP17daObjDmElevator_c         */
static int daObjDmElevator_MoveBGExecute(daObjDmElevator_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BDF818-80BDF844 001F98 002C+00 1/0 0/0 0/0 .text
 * daObjDmElevator_MoveBGDraw__FP17daObjDmElevator_c            */
static int daObjDmElevator_MoveBGDraw(daObjDmElevator_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BDFAB8-80BDFAD8 -00001 0020+00 1/0 0/0 0/0 .data            daObjDmElevator_METHODS */
static actor_method_class daObjDmElevator_METHODS = {
    (process_method_func)daObjDmElevator_create1st,
    (process_method_func)daObjDmElevator_MoveBGDelete,
    (process_method_func)daObjDmElevator_MoveBGExecute,
    0,
    (process_method_func)daObjDmElevator_MoveBGDraw,
};

/* 80BDFAD8-80BDFB08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Elevator */
extern actor_process_profile_definition g_profile_Obj_Elevator = {
    fpcLy_CURRENT_e,            // mLayerID
    3,                          // mListID
    fpcPi_CURRENT_e,            // mListPrio
    PROC_Obj_Elevator,          // mProcName
    &g_fpcLf_Method.base,       // sub_method
    sizeof(daObjDmElevator_c),  // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // sub_method
    542,                        // mPriority
    &daObjDmElevator_METHODS,   // sub_method
    0x00044100,                 // mStatus
    fopAc_ACTOR_e,              // mActorType
    fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80BDFBF0-80BDFBF4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr> */
AUDIO_INSTANCES;
