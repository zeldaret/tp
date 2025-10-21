/**
 * @file d_a_obj_scannon_ten.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_scannon_ten.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "f_op/f_op_camera_mng.h"

/* 80CCCCF0-80CCCCF4 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "SCanTen";

/* 80CCCCF4-80CCCCF8 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "SCanTen";

/* 80CCCCF8-80CCCCFC -00001 0004+00 1/1 0/0 0/0 .data            l_eventName */
static char* l_eventName = "SKY_CANNON_TEN_FIRE";

/* 80CCB318-80CCB344 000078 002C+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static int eventCallBack(void* i_proc, int param_1) {
    if (i_proc != NULL) {
        ((daObjSCannonTen_c*)i_proc)->changeScene();
    }

    return 1;
}

/* 80CCB344-80CCB364 0000A4 0020+00 1/1 0/0 0/0 .text daObjSCannonTen_c_createHeap__FP10fopAc_ac_c
 */
static int daObjSCannonTen_c_createHeap(fopAc_ac_c* i_this) {
    return ((daObjSCannonTen_c*)i_this)->createHeap();
}

/* 80CCB364-80CCB3F4 0000C4 0090+00 2/2 0/0 0/0 .text            __ct__17daObjSCannonTen_cFv */
daObjSCannonTen_c::daObjSCannonTen_c() {
    mpBgW = NULL;
    memset(mpEmtSmk, 0, sizeof(mpEmtSmk));
    mpEmtLine = NULL;
}

/* 80CCB43C-80CCB4EC 00019C 00B0+00 1/0 0/0 0/0 .text            __dt__17daObjSCannonTen_cFv */
daObjSCannonTen_c::~daObjSCannonTen_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80CCB4EC-80CCB66C 00024C 0180+00 1/1 0/0 0/0 .text            createHeap__17daObjSCannonTen_cFv
 */
int daObjSCannonTen_c::createHeap() {
    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 9);
    JUT_ASSERT(116, a_model_data_p != NULL);

    mpModel = mDoExt_J3DModel__create(a_model_data_p, J3DMdlFlag_DifferedDLBuffer, J3D_DIFF_FLAG(FALSE, FALSE, TRUE, 8, 0, FALSE, 0, 0, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE));
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTransform* a_bck_p = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 6);
    JUT_ASSERT(133, a_bck_p != NULL);
    int rt = mBck.init(a_bck_p, 1, 0, 0.0f, 0, -1, 0);
    if (!rt) {
        return 0;
    }

    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 12), 1, &mBgMtx) == 1) {
        return 0;
    }

    return 1;
}

/* 80CCB66C-80CCB900 0003CC 0294+00 1/1 0/0 0/0 .text            create__17daObjSCannonTen_cFv */
int daObjSCannonTen_c::create() {
    fopAcM_ct(this, daObjSCannonTen_c);

    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daObjSCannonTen_c_createHeap, 0x9500)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(mpBgW, this)) {
            return cPhs_ERROR_e;
        }

        init();

        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 5.0f);

        J3DJoint* joint_p = mpModel->getModelData()->getJointNodePointer(0);
        if (joint_p != NULL) {
            fopAcM_setCullSizeBox(this,
                                  joint_p->getMin()->x - 500.0f, joint_p->getMin()->y, joint_p->getMin()->z - 500.0f,
                                  500.0f + joint_p->getMax()->x, joint_p->getMax()->y, 500.0f + joint_p->getMax()->z);
        }

        dBgS_AcchCir acchcir;
        dBgS_ObjAcch acch;
        acchcir.SetWall(0.0f, 10.0f);
        acch.Set(&current.pos, &old.pos, this, 1, &acchcir, fopAcM_GetSpeed_p(this), NULL, NULL);
        acch.CrrPos(dComIfG_Bgsp());
        mGroundY = acch.GetGroundH();
        mGroundPoly = acch.m_gnd;

        JUTNameTab* nametab_p = mpModel->getModelData()->getJointTree().getJointName();
        for (int i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
            if (strcmp(nametab_p->getName(i), "head") == 0) {
                mHeadJointNo = i;
                break;
            }
        }
    }

    return phase_state;
}

/* 80CCB9E0-80CCBA58 000740 0078+00 1/1 0/0 0/0 .text            Delete__17daObjSCannonTen_cFv */
int daObjSCannonTen_c::Delete() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    delEmtAll();
    this->~daObjSCannonTen_c();
    return 1;
}

/* 80CCBA58-80CCBB6C 0007B8 0114+00 1/1 0/0 0/0 .text            draw__17daObjSCannonTen_cFv */
int daObjSCannonTen_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mBck.entry(mpModel->getModelData());

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    cXyz sp8(current.pos.x, current.pos.y, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, mpModel, &sp8, 2500.0f, 0.0f, current.pos.y, mGroundY, mGroundPoly, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80CCBB6C-80CCBB90 0008CC 0024+00 1/1 0/0 0/0 .text            execute__17daObjSCannonTen_cFv */
int daObjSCannonTen_c::execute() {
    middleExe();
    return 1;
}

/* 80CCBB90-80CCBC08 0008F0 0078+00 1/1 0/0 0/0 .text            middleExe__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::middleExe() {
    if (s_exeProc[mMode] != NULL) {
        (this->*s_exeProc[mMode])();
    }

    setModelMtx();

    mBck.play();
}

/* 80CCBC08-80CCBCB0 000968 00A8+00 1/0 0/0 0/0 .text            exeModeWait__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeModeWait() {
    if (aREG_F(0) == 0.0f && fopAcM_checkHookCarryNow(this) && dComIfGp_checkPlayerStatus1(0, 0x10)) {
        eventInfo.setArchiveName(l_arcName);
        mEvtIdx = dComIfGp_getEventManager().getEventIdx(this, l_eventName, 0xFF);
#ifdef DEBUG
        if (mEvtIdx == -1) {
            // "××××××××××××× Sky Cannon (City in the Sky) d_a_obj_scannon_ten.cpp: Failed to get event\n"
            OS_REPORT("×××××××××天空砲台(天空都市） d_a_obj_scannon_ten.cpp：イベント取得失敗\n");
            return;
        }
#endif

        fopAcM_orderOtherEventId(this, mEvtIdx, 0xFF, 0xFFFF, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        mMode = MODE_ORDER_EVT;
    }
}

/* 80CCBCB0-80CCBD4C 000A10 009C+00 1/0 0/0 0/0 .text exeModeOrderEvt__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::exeModeOrderEvt() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staffName, NULL, 0);
        mMode = MODE_ACTION_EVT;
        demoModeInit(0);
    } else {
        fopAcM_orderOtherEventId(this, mEvtIdx, 0xFF, 0xFFFF, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CCCD2C-80CCCD5C 00005C 0030+00 1/2 0/0 0/0 .data            s_exeProc__17daObjSCannonTen_c */
void (daObjSCannonTen_c::*daObjSCannonTen_c::s_exeProc[])() = {
    &daObjSCannonTen_c::exeModeWait,
    &daObjSCannonTen_c::exeModeOrderEvt,
    &daObjSCannonTen_c::exeModeActionEvt,
    &daObjSCannonTen_c::exeModeEnd,
};

/* 80CCCDEC-80CCCE7C 00011C 0090+00 2/3 0/0 0/0 .data            s_demoExeProc__17daObjSCannonTen_c
 */
void (daObjSCannonTen_c::*daObjSCannonTen_c::s_demoExeProc[][2])() = {
    {&daObjSCannonTen_c::demoInitLinkIn, &daObjSCannonTen_c::demoExeLinkIn},
    {&daObjSCannonTen_c::demoInitSet, &daObjSCannonTen_c::demoExeSet},
    {&daObjSCannonTen_c::demoInitMove, &daObjSCannonTen_c::demoExeMove},
    {&daObjSCannonTen_c::demoInitFire, &daObjSCannonTen_c::demoExeFire},
    {&daObjSCannonTen_c::demoInitFireEnd, &daObjSCannonTen_c::demoExeFireEnd},
    {&daObjSCannonTen_c::demoInitFinish, &daObjSCannonTen_c::demoExeFinish},
};

/* 80CCBD4C-80CCBDCC 000AAC 0080+00 1/0 0/0 0/0 .text exeModeActionEvt__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::exeModeActionEvt() {
    if (dComIfGp_evmng_endCheck(mEvtIdx) != 0) {
        dComIfGp_event_reset();
        mMode = MODE_END;
    } else {
        dComIfGp_getEvent().setSkipProc(this, eventCallBack, 0);
        demoExe();
    }
}

/* 80CCBDCC-80CCBDD0 000B2C 0004+00 1/0 0/0 0/0 .text            exeModeEnd__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeModeEnd() {}

/* 80CCBDD0-80CCBE8C 000B30 00BC+00 1/1 0/0 0/0 .text            demoExe__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExe() {
    static char* CUT_TYPE_TABLE_FIRE_SECOND[6] = {
        "LINK_IN",
        "SET",
        "MOVE",
        "FIRE",
        "FIRE_END",
        "FINISH",
    };
    
    int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, CUT_TYPE_TABLE_FIRE_SECOND, ARRAY_SIZE(CUT_TYPE_TABLE_FIRE_SECOND), 0, 0);
    if (act_idx != -1) {
        if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
            demoModeInit(act_idx);
        }

        if (s_demoExeProc[act_idx][1] != NULL) {
            (this->*s_demoExeProc[act_idx][1])();
        }
    }
}

/* 80CCBE8C-80CCBF00 000BEC 0074+00 2/2 0/0 0/0 .text            demoModeInit__17daObjSCannonTen_cFi
 */
void daObjSCannonTen_c::demoModeInit(int i_actIdx) {
    if (i_actIdx < 0 || i_actIdx >= 6) {
        return;
    }

    if (s_demoExeProc[i_actIdx][0] != NULL) {
        (this->*s_demoExeProc[i_actIdx][0])();
    }
}

/* 80CCBF00-80CCBF04 000C60 0004+00 1/0 0/0 0/0 .text demoInitLinkIn__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitLinkIn() {}

/* 80CCBF04-80CCBFC4 000C64 00C0+00 1/0 0/0 0/0 .text demoExeLinkIn__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeLinkIn() {
    if (!fopAcM_checkHookCarryNow(this)) {
        daPy_py_c* player_p = daPy_getPlayerActorClass();
        if (player_p != NULL) {
            player_p->onPlayerNoDraw();
            player_p->onPlayerShadowNoDraw();

            cXyz pos(12.100221f, 264.13156f, 12069.783f);
            player_p->setPlayerPosAndAngle(&pos, player_p->shape_angle.y, 0);
            mpBgW->OffRoofRegist();
        }
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CCBFC4-80CCC088 000D24 00C4+00 1/0 0/0 0/0 .text            demoInitSet__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitSet() {
    fopAcM_seStartCurrent(this, Z2SE_OBJ_TCANNON_ACTION_L7, 0);
    mBck.setPlaySpeed(1.0f);
    initEmtSmoke();
    dComIfGp_getVibration().StartShock(VIBMODE_S_POWER3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80CCC088-80CCC114 000DE8 008C+00 1/0 0/0 0/0 .text            demoExeSet__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeSet() {
    exeEmtSmoke();
    if (mBck.checkFrame(84)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CCC114-80CCC118 000E74 0004+00 1/0 0/0 0/0 .text            demoInitMove__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitMove() {}

/* 80CCC118-80CCC20C 000E78 00F4+00 1/0 0/0 0/0 .text            demoExeMove__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeMove() {
    exeEmtSmoke();
    if (mBck.checkFrame(104.0f)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
    } else if (mBck.checkFrame(120.0f)) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
    } else if (mBck.checkFrame(138.0f)) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CCC20C-80CCC260 000F6C 0054+00 1/0 0/0 0/0 .text            demoInitFire__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitFire() {
    dComIfGp_getVibration().StartQuake(3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80CCC260-80CCC2B8 000FC0 0058+00 1/0 0/0 0/0 .text            demoExeFire__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeFire() {
    exeEmtSmoke();
    if (mBck.checkFrame(235.0f)) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CCC2B8-80CCC37C 001018 00C4+00 1/0 0/0 0/0 .text demoInitFireEnd__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitFireEnd() {
    fopAcM_seStartCurrent(this, Z2SE_OBJ_BOMB_EXPLODE, 0);

    dComIfGp_getVibration().StopQuake(0x1F);
    dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80CCC37C-80CCC3D4 0010DC 0058+00 1/0 0/0 0/0 .text demoExeFireEnd__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeFireEnd() {
    exeEmtSmoke();
    if (mBck.checkFrame(255.0f)) {
        dComIfGp_evmng_cutEnd(mStaffId);
    }
}

/* 80CCC3D4-80CCC498 001134 00C4+00 1/0 0/0 0/0 .text demoInitFinish__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitFinish() {
#ifdef DEBUG
    J3DJoint* joint_p = mpModel->getModelData()->getJointNodePointer(mHeadJointNo);
    if (joint_p == NULL) {
        // "××××××Sky Cannon—The head joint is missing!!!! ××××××"
        OS_REPORT("______________________××××××天空砲台　頭部分のジョイントがありません！！！！ ××××××____________\n");
        JUT_ASSERT(1351, FALSE);
    }
#endif

    mDoAud_seStart(Z2SE_AL_V_CANON_JUMP, NULL, 0, 0);
    initEmtLine();
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x80);

    int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
    if (timer_p != NULL) {
        mTimer = *timer_p;
    } else {
        mTimer = 1;
    }
}

/* 80CCC498-80CCC528 0011F8 0090+00 1/0 0/0 0/0 .text demoExeFinish__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeFinish() {
    exeEmtSmoke();
    exeEmtLine();

    if (mBck.isStop() && cLib_calcTimer<int>(&mTimer) == 0) {
        dComIfGp_evmng_cutEnd(mStaffId);
        changeScene();
    }
}

/* 80CCC528-80CCC53C 001288 0014+00 1/1 0/0 0/0 .text            init__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::init() {
    mTimer = 0;
    mMode = MODE_WAIT;
    mShadowKey = 0;
}

/* 80CCC53C-80CCC5A0 00129C 0064+00 2/2 0/0 0/0 .text            setModelMtx__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CCC5A0-80CCC628 001300 0088+00 2/2 0/0 0/0 .text            changeScene__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::changeScene() {
    if (dComIfGp_getVibration().CheckQuake()) {
        dComIfGp_getVibration().StopQuake(0x1F);
    }

    fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x80);

    dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
}

/* 80CCC628-80CCC74C 001388 0124+00 1/1 0/0 0/0 .text            initEmtSmoke__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::initEmtSmoke() {
    static const u16 PARTICLE_NAME[] = {
        dPa_RM(ID_ZF_S_SKYCANNON00_SMK),
        dPa_RM(ID_ZF_S_SKYCANNON01_SMK),
        dPa_RM(ID_ZF_S_SKYCANNON02_SMK),
    };

    MtxP mtx = mpModel->getAnmMtx(mHeadJointNo);
    if (mtx != NULL) {
        cXyz pos(mtx[0][3], mtx[1][3], mtx[2][3]);
        csXyz rot(current.angle);
        cXyz size(1.0f, 1.0f, 1.0f);

        for (int i = 0; i < ARRAY_SIZE(mpEmtSmk); i++) {
            mpEmtSmk[i] = dComIfGp_particle_set(PARTICLE_NAME[i], &pos, &rot, &size);
            if (mpEmtSmk[i] != NULL) {
                mpEmtSmk[i]->setGlobalRTMatrix(mtx);
            }
        }
    }
}

/* 80CCC74C-80CCC7D0 0014AC 0084+00 5/5 0/0 0/0 .text            exeEmtSmoke__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeEmtSmoke() {
    MtxP mtx = mpModel->getAnmMtx(mHeadJointNo);
    if (mtx != NULL) {
        for (int i = 0; i < ARRAY_SIZE(mpEmtSmk); i++) {
            if (mpEmtSmk[i] != NULL) {
                mpEmtSmk[i]->setGlobalRTMatrix(mtx);
            }
        }
    }
}

/* 80CCC7D0-80CCC8B8 001530 00E8+00 1/1 0/0 0/0 .text            initEmtLine__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::initEmtLine() {
    cXyz pos;
    csXyz rot;

    camera_class* camera_p = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    if (camera_p != NULL) {
        pos = *fopCamM_GetEye_p(camera_p);
        rot.set(dCam_getAngleX(camera_p), dCam_getAngleY(camera_p), 0);
    }

    mpEmtLine = dComIfGp_particle_set(dPa_RM(ID_ZF_S_TOBYCANNON00LINE), &pos, &tevStr, &rot, NULL);
}

/* 80CCC8B8-80CCC97C 001618 00C4+00 1/1 0/0 0/0 .text            exeEmtLine__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeEmtLine() {
    cXyz pos;
    JGeometry::TVec3<s16> rot;
    if (mpEmtLine != NULL) {
        camera_class* camera_p = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
        if (camera_p != NULL) {
            pos = *fopCamM_GetEye_p(camera_p);
            rot.x = dCam_getAngleX(camera_p);
            rot.y = dCam_getAngleY(camera_p);
            rot.z = 0;
        }
        mpEmtLine->setGlobalTranslation(pos.x, pos.y, pos.z);
        mpEmtLine->setGlobalRotation(rot);
    }
}

/* 80CCC97C-80CCC9B8 0016DC 003C+00 1/1 0/0 0/0 .text            delEmtAll__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::delEmtAll() {
    if (mpEmtLine != NULL) {
        mpEmtLine->becomeInvalidEmitter();
        mpEmtLine->quitImmortalEmitter();
        mpEmtLine = NULL;
    }
}

/* 80CCC9B8-80CCCA0C 001718 0054+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_create__FP17daObjSCannonTen_c                */
static int daObjSCannonTen_create(daObjSCannonTen_c* i_this) {
    fopAcM_ct(i_this, daObjSCannonTen_c);
    return i_this->create();
}

/* 80CCCA0C-80CCCA2C 00176C 0020+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_Delete__FP17daObjSCannonTen_c                */
static int daObjSCannonTen_Delete(daObjSCannonTen_c* i_this) {
    return i_this->Delete();
}

/* 80CCCA2C-80CCCA4C 00178C 0020+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_execute__FP17daObjSCannonTen_c               */
static int daObjSCannonTen_execute(daObjSCannonTen_c* i_this) {
    return i_this->execute();
}

/* 80CCCA4C-80CCCA6C 0017AC 0020+00 1/0 0/0 0/0 .text daObjSCannonTen_draw__FP17daObjSCannonTen_c
 */
static int daObjSCannonTen_draw(daObjSCannonTen_c* i_this) {
    return i_this->draw();
}

/* 80CCCE94-80CCCEB4 -00001 0020+00 1/0 0/0 0/0 .data            daObjSCannonTen_METHODS */
static actor_method_class daObjSCannonTen_METHODS = {
    (process_method_func)daObjSCannonTen_create,
    (process_method_func)daObjSCannonTen_Delete,
    (process_method_func)daObjSCannonTen_execute,
    0,
    (process_method_func)daObjSCannonTen_draw,
};

/* 80CCCEB4-80CCCEE4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SCannonTen */
extern actor_process_profile_definition g_profile_Obj_SCannonTen = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_SCannonTen,       // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daObjSCannonTen_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  746,                       // mPriority
  &daObjSCannonTen_METHODS,  // sub_method
  0x00040180,                // mStatus
  fopAc_ENV_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
