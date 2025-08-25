/**
* @file d_a_obj_crvgate.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crvgate.h"

#include "d/actor/d_a_obj_eff.h"
#include "d/actor/d_a_player.h"

/* 80BD30C0-80BD3100 000000 0040+00 12/12 0/0 0/0 .rodata          ccCylSrc$3774 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x13}, {0x100000, 0x1F}, 0x75}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {{0.0f, 100.0f, 0.0f}, 60.0f},  // mSph
    }  // mSphAttr
};

/* 80BD31F4-80BD31F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvGate";

/* 80BD32B8-80BD32BC 000000 0002+02 1/1 0/0 0/0 .bss s_CoCount__29@unnamed@d_a_obj_crvgate_cpp@
 */
namespace {
static u16 s_CoCount = 0;
}

/* 80BD0398-80BD0500 000078 0168+00 1/1 0/0 0/0 .text            initCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::initCcCylinder() {
    mStts.Init(0xff, 0xff, this);

    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::transM(i * 95.0f + 100.0f, 0, 0);
        mDoMtx_stack_c::multVecZero(&mXyzSph[i]);
    }

    mSph[0].Set(ccSphSrc);
    mSph[0].SetStts(&mStts);
    mSph[0].SetC(mXyzSph[0]);

    mSph[1].Set(ccSphSrc);
    mSph[1].SetStts(&mStts);
    mSph[1].SetC(mXyzSph[1]);

    mSph[2].Set(ccSphSrc);
    mSph[2].SetStts(&mStts);
    mSph[2].SetC(mXyzSph[2]);
}

/* 80BD0500-80BD0658 0001E0 0158+00 1/1 0/0 0/0 .text            setCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::setCcCylinder() {
    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::YrotM(mDoorAngle);
        mDoMtx_stack_c::transM(i * 95.0f + 80.0f, 130.0f, 0);
        mDoMtx_stack_c::multVecZero(&mXyzSph[i]);
    }

    mSph[0].SetC(mXyzSph[0]);
    dComIfG_Ccsp()->Set(&mSph[0]);

    mSph[1].SetC(mXyzSph[1]);
    dComIfG_Ccsp()->Set(&mSph[1]);

    mSph[2].SetC(mXyzSph[2]);
    dComIfG_Ccsp()->Set(&mSph[2]);
}

/* 80BD0658-80BD0678 000338 0020+00 1/0 0/0 0/0 .text            daObjCRVGATE_Create__FP10fopAc_ac_c
 */
static int daObjCRVGATE_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjCRVGATE_c*>(i_this)->create();
}

/* 80BD0678-80BD069C 000358 0024+00 1/0 0/0 0/0 .text daObjCRVGATE_Delete__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Delete(daObjCRVGATE_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80BD069C-80BD0844 00037C 01A8+00 1/1 0/0 0/0 .text            checkOpen__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::checkOpen() {
    if (dComIfGs_getKeyNum() == 0) {
        return 0;
    }

    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 height_diff = fopAcM_GetAngle_p(this)->y - fopAcM_GetAngle_p(player)->y;

    if (abs(height_diff) < 0x5000) {
        return 0;
    }

    return mPos.absXZ(fopAcM_GetPosition(player)) < 200.0f;
}

/* 80BD0880-80BD0978 000560 00F8+00 1/1 0/0 0/0 .text actionStartEvent__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::actionStartEvent() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camera_body = dCam_getBody();

    if (!eventInfo.checkCommandDemoAccrpt()) {
        fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
        eventInfo.onCondition(0x0);
    } else {
        camera->mCamera.Stop();

        field_0x5bc = 0x0;
        mFovY = camera_body->Fovy();

        mCamCenter = camera_body->Center();
        mCamEye = camera_body->Eye();

        camera->mCamera.SetTrimSize(3);
        mEventID = 2;
    }
}

/* 80BD0978-80BD0A64 000658 00EC+00 1/1 0/0 0/0 .text            actionWaitEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionWaitEvent() {
    if (eventInfo.checkCommandDoor()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        player->changeOriginalDemo();
        player->changeDemoMode(1, 0, 0, 0);

        mEventID = 1;
        dComIfGp_setItemKeyNumCount(-1);
        mEventFlag = true;
        Demo_Set();

        Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_OPEN, &mPos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        fopAcM_OffStatus(this, 0x100);
    } else {
        if (checkOpen() != 0) {
            eventInfo.onCondition(4);
        }
    }
}

/* 80BD0A64-80BD0B7C 000744 0118+00 1/1 0/0 0/0 .text            Demo_Set__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Demo_Set() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz* player_pos = fopAcM_GetPosition_p(player);

    s16 target_angle = cLib_targetAngleY(&current.pos, player_pos);

    cXyz* ac_pos = fopAcM_GetPosition_p(this);
    ac_pos->absXZ(*player_pos);  // ?

    mCamEye.set(ac_pos->x + cM_scos(target_angle + 0x1000) * 300.0f, ac_pos->y + 500.0f,
                ac_pos->z - cM_ssin(target_angle + 0x1000) * 300.0f);
    mCamCenter.set(ac_pos->x, ac_pos->y + 200.0f, ac_pos->z);
}

/* 80BD0B7C-80BD0B88 00085C 000C+00 2/2 0/0 0/0 .text            SetOpen__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetOpen() {
    mStatus = 0x0;
}

/* 80BD0B88-80BD0D28 000868 01A0+00 1/1 0/0 0/0 .text            actionDemoEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionDemoEvent() {
    if (!mFlagDemoEventPlay) {
        mPosAccel.y += -5.0f;
        mPos.y += mPosAccel.y;
        if (mPos.y <= mMinHeight + 55.0f) {
            mFlagDemoEventPlay = true;
            mPos.y = mMinHeight + 55.0f;
            daObjEff::Act_c::make_land_smoke(&mPos, 0.5f);
            mMoveAngle.z = 0x500;
        }
    } else {
        cLib_chaseAngleS(&mDoorOpenAngle.x, 0x4000, mMoveAngle.z);

        mMoveAngle.z += 0x300;
        if (mDoorOpenAngle.x == 0x4000) {
            mEventID = 3;
            camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);

            dComIfGp_event_reset();

            SetOpen();
            mpDoorPair->SetOpen();
        }
    }
}

/* 80BD0D28-80BD0D90 000A08 0068+00 1/1 0/0 0/0 .text            event_proc_call__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::event_proc_call() {
    switch (mEventID) {
    case 0:
        actionWaitEvent();
        break;
    case 1:
        actionStartEvent();
        break;
    case 2:
        actionDemoEvent();
        break;
    case 3:
        mEventFlag = false;
        break;
    }
}

/* 80BD0D90-80BD0E1C 000A70 008C+00 1/1 0/0 0/0 .text            CheckVec__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::CheckVec() {
    cXyz player_pos = fopAcM_GetPosition(daPy_getPlayerActorClass());

    Mtx inv_mtx;
    mDoMtx_inverse(mpModelGate->getBaseTRMtx(), inv_mtx);

    mDoMtx_stack_c::copy(inv_mtx);
    mDoMtx_stack_c::multVec(&player_pos, &player_pos);

    return player_pos.z > 0;
}

/* 80BD0E1C-80BD0F9C 000AFC 0180+00 1/1 0/0 0/0 .text            KeyVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::KeyVib() {
    mMoveAngle.x -= 0x21;
    mMoveAngle.z += mMoveAngle.x;
    cLib_chaseAngleS(&mMoveAngle.y, 0, 0x150);

    if (mMoveAngle.y != 0x0) {
        if (mKeyParam == 0x00) {
            mpDoorPair->mDoorOpenAngle.x = mMoveAngle.y * cM_ssin(mMoveAngle.z);
            mDoorOpenAngle.x = mMoveAngle.y * cM_ssin(mMoveAngle.z);

            if (mDoorOpenAngle.x > 0) {
                mpDoorPair->mDoorOpenAngle.x = -mDoorOpenAngle.x;
                mDoorOpenAngle.x = -mDoorOpenAngle.x;
            }
        } else {
            mDoorOpenAngle.x = mMoveAngle.y * cM_ssin(mMoveAngle.z);
            if (mDoorOpenAngle.x > 0) {
                mDoorOpenAngle.x = -mDoorOpenAngle.x;
            }
        }
    } else {
        mFlagDoorStuck = false;
    }
}

/* 80BD0F9C-80BD10C0 000C7C 0124+00 1/1 0/0 0/0 .text            DoorVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorVib() {
    mDoorVib.y -= 0x100;
    mDoorVib.z += mDoorVib.y;
    cLib_chaseAngleS(&mDoorVib.x, 0, 0x40);

    if (mDoorVib.x != 0) {
        if (mKeyParam == 0x01) {
            mDoorAngle = mDoorVib.x * cM_ssin(mDoorVib.z);
            mpDoorPair->mDoorAngle = -mDoorAngle;
        } else {
            mDoorAngle = -mDoorVib.x * cM_ssin(mDoorVib.z);
            mpDoorPair->mDoorAngle = -mDoorAngle;
        }
    }
}

/* 80BD10C0-80BD10D0 000DA0 0010+00 1/1 0/0 0/0 .text            VibStop__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::VibStop() {
    mDoorVib.y = 0;
    mDoorVib.x = 0;
}

/* 80BD10D0-80BD1110 000DB0 0040+00 1/1 0/0 0/0 .text            CloseVibration__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::CloseVibration() {
    if (mStatus != 0x4) {
        KeyVib();
    }
    DoorVib();
}

/* 80BD315C-80BD3160 00009C 0004+00 0/2 0/0 0/0 .rodata          @4086           UNUSED */
static f32 dummyFloat1() {
    return 350.0f;
}

/* 80BD3160-80BD3164 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4087          UNUSED */
static f32 dummyFloat2() {
    return 120.0f;
}

/* 80BD1110-80BD18E0 000DF0 07D0+00 2/2 0/0 0/0 .text            CloseAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::CloseAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz* player_pos = fopAcM_GetPosition_p(player);
    csXyz og_DoorOpenAngle(mDoorOpenAngle.x, mDoorOpenAngle.y, mDoorOpenAngle.z);

    if (mXyzSph[1].absXZ(*player_pos) < 300.0f && player->checkFrontRollCrash()) {
        if (mKeyParam == 0x01) {
            mMoveAngle.y = -0x3000;
            mMoveAngle.x = 0x1500;
        } else {
            mpDoorPair->mMoveAngle.y = -0x4000;
            mpDoorPair->mMoveAngle.x = 0x1500;
        }

        if (!mFlagGateClosed) {
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_ATTACK, &mPos, 0, 0, 1.0f, 1.0f, -1.0f,
                                     -1.0f, 0);
        } else {
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        mDoorVib.y = 0x3000;
        mDoorVib.x = 0x500;
        mpDoorPair->VibStop();
        mFlagDoorStuck = true;
    }

    for (int i = 0; i < 3; i++) {
        cLib_addCalcAngleS(&mDoorOpenAngle.x, 0, 2, 0x2000, 0x400);

        if (mSph[i].ChkTgHit()) {
            if (!mFlagGateClosed) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_ATTACK, &mPos, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            } else if (mKeyParam == 0xff) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }

            if (mKeyParam == 0x01) {
                mMoveAngle.y = -0x3000;
                mMoveAngle.x = 0x1500;
            } else {
                mpDoorPair->mMoveAngle.y = -0x4000;
                mpDoorPair->mMoveAngle.x = 0x1500;
            }

            mDoorVib.y = 0x3000;
            mDoorVib.x = 0x500;
            mFlagDoorStuck = true;
            mpDoorPair->VibStop();
            break;
        }
        if (mSph[i].ChkCoHit()) {
            cCcD_Obj* hitObj = mSph[i].GetCoHitObj();
            fopAc_ac_c* boar_ac;

            if (fopAcM_GetName(hitObj->GetAc()) == PROC_E_WB && player->checkBoarRun() != 0 &&
                fopAcM_SearchByName(PROC_E_WB, &boar_ac) != 0)
            {
                cXyz* boar_speed = fopAcM_GetSpeed_p(boar_ac);
                daPy_py_c* player = daPy_getPlayerActorClass();

                if (dComIfGp_event_runCheck() != 0) {
                    if (fopAcM_GetPosition(player).absXZ(mXyzSph[i]) < 490.0f &&
                        boar_speed->absXZ() > 0.0f)
                    {
                        // Start escape event, destroying the door

                        dComIfGp_getVibration().StartShock(5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                        fopAcM_seStartCurrent(this, 0x802C5, 0);
                        mpDoorPair->mStatus = 0x2;
                        mStatus = 0x2;
                        mFlagDoorStuck = true;
                        mpDoorPair->mFlagDoorStuck = true;
                        mDestructionCount = 0;

                        if (mKeyParam == 0x01) {
                            mDoorSwingTargetAngle = -0x7000;
                        } else {
                            mpDoorPair->mDoorSwingTargetAngle = -0x7000;
                        }

                        mPosAccel.set(10.0f, 70.0f, -30.0f);
                    }
                }
            }
        }
    }

    CloseVibration();

    if (mStatus != 0x04) {
        mPos.set(current.pos.x + cM_scos(shape_angle.y + mDoorAngle) * 350.0f,
                 120.0f + current.pos.y,
                 current.pos.z - cM_ssin(shape_angle.y + mDoorAngle) * 350.0f);
    } else {
        mDoorOpenAngle = og_DoorOpenAngle;
    }
}

/* 80BD18E0-80BD21E4 0015C0 0904+00 1/1 0/0 0/0 .text            OpenAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::OpenAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 og_DoorAngle = mDoorAngle;
    s16 new_DoorAngle = og_DoorAngle;

    if (CheckVec() != 0) {
        cXyz* player_pos = fopAcM_GetPosition_p(player);
        if (mXyzSph[1].absXZ(*player_pos) < 300.0f && player->checkFrontRollCrash()) {
            mDoorSwingTargetAngle = mDoorAngle + 0x1000;
            mFlagDoorMove = true;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        for (int i = 0; i < 3; i++) {
            if (mSph[i].ChkTgHit() != 0) {
                mDoorSwingTargetAngle = mDoorAngle + 0x1000;
                mFlagDoorMove = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);

            } else {
                if (mSph[i].ChkCoHit() != 0) {
                    if (fopAcM_GetName(mSph[i].GetCoHitObj()->GetAc()) == PROC_E_WB) {
                        if (mKeyParam == 0xff) {
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_BREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        }
                        daPy_py_c* player = daPy_getPlayerActorClass();
                        mDoorSwingTargetAngle = mDoorAngle + fopAcM_GetSpeedF(player) * 288.0f;
                        mFlagDoorMove = true;
                    } else {
                        new_DoorAngle = mDoorAngle + fopAcM_GetSpeedF(player) * 112.0f;
                        if (new_DoorAngle > 0x4000) {
                            new_DoorAngle = 0x4000;
                        }

                        if (new_DoorAngle != og_DoorAngle && !field_0x5a5) {
                            field_0x5a5 = true;
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        } else if (new_DoorAngle == og_DoorAngle) {
                            field_0x5a5 = false;
                        }
                    }

                    break;
                }
            }
        }

        if (new_DoorAngle == og_DoorAngle) {
            field_0x5a5 = false;
        }

        if (mFlagDoorMove == true) {
            if (mDoorAngle > 0x4000) {
                mDoorSwingTargetAngle = 0x4000 - (mDoorSwingTargetAngle - 0x4000);
            }

            cLib_addCalcAngleS(&mDoorAngle, mDoorSwingTargetAngle, 6, 0x2000, 0x50);
            if ((u16)(mDoorAngle - mDoorSwingTargetAngle) < 0x100) {
                mFlagDoorMove = false;
            }
        } else {
            cLib_addCalcAngleS(&mDoorAngle, new_DoorAngle, 6, 0x2000, 0x50);
        }
    } else {
        if (mXyzSph[1].absXZ(*fopAcM_GetPosition_p(player)) < 300.0f &&
            player->checkFrontRollCrash())
        {
            mDoorSwingTargetAngle = -0x1000;  //??
            mDoorSwingTargetAngle = (mDoorAngle - 0x1000);
            mFlagDoorMove = true;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        for (int i = 0; i < 3; i++) {
            if (mSph[i].ChkTgHit() != 0) {
                mDoorSwingTargetAngle = mDoorAngle - 0x1000;
                mFlagDoorMove = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);

            } else {
                if (mSph[i].ChkCoHit() != 0) {
                    if (fopAcM_GetName(mSph[i].GetCoHitObj()->GetAc()) == PROC_E_WB) {
                        daPy_py_c* player = daPy_getPlayerActorClass();

                        mDoorSwingTargetAngle = mDoorAngle - fopAcM_GetSpeedF(player) * 288.0f;
                        mFlagDoorMove = true;

                        if (mKeyParam == 0xff) {
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_BREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        }
                    } else {
                        new_DoorAngle = mDoorAngle - fopAcM_GetSpeedF(player) * 112.0f;

                        if (mKeyParam == 0x01) {
                            if (new_DoorAngle < -0x2300) {
                                new_DoorAngle = -0x2300;
                            }
                        } else if (new_DoorAngle < -0x4000) {
                            new_DoorAngle = -0x4000;
                        }

                        if (new_DoorAngle != og_DoorAngle && !field_0x5a5) {
                            field_0x5a5 = true;
                            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
                        } else {
                            if (new_DoorAngle == og_DoorAngle) {
                                field_0x5a5 = false;
                            }
                        }
                    }
                }
            }
        }

        if (new_DoorAngle == og_DoorAngle) {
            field_0x5a5 = false;
        }

        if (mFlagDoorMove == 1) {
            if (mKeyParam == 0x01) {
                if (mDoorAngle < -0x2300) {
                    mDoorSwingTargetAngle = -0x2300 - (mDoorSwingTargetAngle + 0x2300);
                }
            } else if (mDoorAngle < -0x4000) {
                mDoorSwingTargetAngle = -0x4000 - (mDoorSwingTargetAngle + 0x4000);
            }

            cLib_addCalcAngleS(&mDoorAngle, mDoorSwingTargetAngle, 6, 0x2000, 0x50);
            if ((u16)(mDoorAngle - mDoorSwingTargetAngle) < 0x100) {
                mFlagDoorMove = false;
            }
        } else {
            cLib_addCalcAngleS(&mDoorAngle, new_DoorAngle, 6, 0x2000, 0x50);
        }
    }
}

/* 80BD21E4-80BD22C8 001EC4 00E4+00 1/1 0/0 0/0 .text            HakaiMotion__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::HakaiMotion() {
    if (mDoorAngle < -0x6000) {
        mDoorSwingTargetAngle = -0x6000 - (mDoorSwingTargetAngle + 0x6000);
    }

    cLib_addCalcAngleS(&mDoorAngle, (int)mDoorSwingTargetAngle, 6, 0x2000, 0x50);
    cLib_addCalcAngleS(&mpDoorPair->mDoorAngle, (int)-mDoorSwingTargetAngle, 6, 0x2000, 0x50);

    if (mPos.y <= mMinHeight) {
        mDestructionCount++;
        mPos.y = mMinHeight;
        mDoorOpenAngle.x = 0x4000;
        if (mDestructionCount > 3) {
            SetOpen();
            mpDoorPair->SetOpen();
        } else {
            mPosAccel.y = mPosAccel.y * -0.4f;
        }
    }
}

/* 80BD22C8-80BD2338 001FA8 0070+00 1/1 0/0 0/0 .text            DoorAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorAction() {
    switch (mStatus) {
    case 0:
        OpenAction();
        break;
    case 1:
        CloseAction();
        break;
    case 2:
        if (mKeyParam == 0x01) {
            HakaiMotion();
        }
        break;
    case 4:
        B_CloseAction();
        break;
    default:
        break;
    }
}

/* 80BD3180-80BD3184 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4671          UNUSED */
static f32 const dummyFloat3() {
    return 50.0f;
}

/* 80BD3184-80BD3188 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4672          UNUSED */
static f32 const dummyFloat4() {
    return -10.0f;
}

/* 80BD2338-80BD245C 002018 0124+00 1/1 0/0 0/0 .text            B_CloseAction__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::B_CloseAction() {
    if (mDoorStep > 0x10) {
        cLib_chaseAngleS(&mDoorAngle, mDoorTargetAngle, mDoorStep);
        if (mDoorAngle == mDoorTargetAngle) {
            if (!mFlagGateClosed) {
                mFlagGateClosed = true;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CLOSE, &current.pos, 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }
            mDoorStep *= (7.0f / 10.0f);
            mDoorTargetAngle = -0.7 * mDoorTargetAngle;
        }
    } else {
        CloseAction();
    }
}

/* 80BD245C-80BD2528 00213C 00CC+00 0/0 0/0 1/1 .text            SetB_Close__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetB_Close() {
    Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_GATE_CREAK, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                             0);

    if (mKeyParam == 0x01) {
        mpDoorPair->SetB_Close();
    }

    mStatus = 0x4;
    mDoorStep = 0xc18;

    if (abs(mDoorStep) < 0x500) {
        mDoorStep = 0x500;
    }

    if (mDoorAngle > 0x0) {
        mDoorTargetAngle = -0xa30;
    } else {
        mDoorTargetAngle = 0xa30;
    }
}

/* 80BD2528-80BD2624 002208 00FC+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::setBaseMtx() {
    cXyz local(0.0f, 0.0f, 35.0f);
    mDoMtx_stack_c::transS(mPos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(local);

    if (mFlagDemoEventPlay == true) {
        mDoMtx_stack_c::transM(0.0f, -55.0f, 0.0f);
    }

    mDoMtx_stack_c::ZXYrotM(mDoorOpenAngle);

    if (mFlagDemoEventPlay == true) {
        mDoMtx_stack_c::transM(0.0f, 55.0f, 0.0f);
    }

    mpModelKey->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(mDoorAngle);
    mpModelGate->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD2624-80BD2650 002304 002C+00 1/0 0/0 0/0 .text daObjCRVGATE_Draw__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Draw(daObjCRVGATE_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BD2650-80BD2670 002330 0020+00 2/1 0/0 0/0 .text daObjCRVGATE_Execute__FP14daObjCRVGATE_c */
static int daObjCRVGATE_Execute(daObjCRVGATE_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BD2670-80BD2758 002350 00E8+00 1/0 0/0 0/0 .text            CreateHeap__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::CreateHeap() {
    J3DModelData* model_data_gate =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName, "CaravanGate.bmd");
    mpModelGate = mDoExt_J3DModel__create(model_data_gate, 0x80000, 0x11000084);

    if (mpModelGate == NULL) {
        return 0;
    }

    if (mKeyParam == 0x00) {
        J3DModelData* model_data_key =
            (J3DModelData*)dComIfG_getObjectRes(l_arcName, "CaravanKey.bmd");
        mpModelKey = mDoExt_J3DModel__create(model_data_key, 0x80000, 0x11000084);
    }

    if (mpModelGate == NULL) {  // ?
        return 0;
    }

    return 1;
}

/* 80BD2758-80BD28C0 002438 0168+00 1/1 0/0 0/0 .text            SetDoor__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetDoor() {
    cXyz* ac_pos = fopAcM_GetPosition_p(this);
    csXyz* ac_angle = fopAcM_GetShapeAngle_p(this);

    cXyz child_pos(ac_pos->x + cM_scos(ac_angle->y) * 700.0f, ac_pos->y,
                   ac_pos->z - cM_ssin(ac_angle->y) * 700.0f);

    mPos.set(ac_pos->x + cM_scos(ac_angle->y) * 350.0f, 120.0f + ac_pos->y,
             ac_pos->z - cM_ssin(ac_angle->y) * 350.0f);

    csXyz child_angle(ac_angle->x, ac_angle->y + 0x8000, ac_angle->z);

    if (mKeyParam == 0xff) {
        attention_info.position = mPos;
        attention_info.flags = 0x20;
        attention_info.distances[5] = 0x0F;

        mKeyParam = 0x01;
        s8 child_room = fopAcM_GetRoomNo(this);
        fpc_ProcID parent_id = fopAcM_GetID(this);

        // Create the second (identical) part of the door (swinging gate).
        mDoorPairProcID = fopAcM_createChild(PROC_Obj_CRVGATE, parent_id, 1, &child_pos, child_room,
                                             &child_angle, NULL, -1, 0);
        mDoorY = shape_angle.y;
    } else {
        mKeyParam = 0x00;
        mDoorY = shape_angle.y;
        fopAcM_SearchByID(parentActorID, (fopAc_ac_c**)&mpDoorPair);
    }
}

/* 80BD28C0-80BD2BE4 0025A0 0324+00 1/1 0/0 0/0 .text            create__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::create() {
    fopAcM_SetupActor(this, daObjCRVGATE_c);
    int ret = dComIfG_resLoad(&mPhaseReq, l_arcName);

    if (ret == cPhs_COMPLEATE_e) {
        gravity = -9.0f;

        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "CaravanGate.dzb");
        ret = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1480, NULL);

        if (ret == cPhs_ERROR_e) {
            return ret;
        }

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);

        initCcCylinder();
        fopAcM_SetMtx(this, mpModelGate->getBaseTRMtx());
        mKeyParam = (u8)fopAcM_GetParam(this);
        SetDoor();

        mFlagDemoEventPlay = false;
        mEventID = 0;
        mStatus = 0x1;
        mPosAccel.set(0.0f, 0.0f, 0.0f);
        mDoorAngle = 0;
        mPosTmp = mPos;

        for (int i = 0; i < 3; i++) {
            mSph[i].OnTgShield();
        }

        fopAcM_setCullSizeBox(this, -100.0f, 0.0, -200.0f, 500.0, 500.0, 200.0);

        cXyz acStack_40(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&acStack_40)) {
            mMinHeight = fopAcM_gc_c::getGroundY();
        }

        mFlagGateClosed = false;
        field_0x5a5 = false;
        daObjCRVGATE_Execute(this);
    }

    return ret;
}

/* 80BD2E80-80BD2E88 002B60 0008+00 1/0 0/0 0/0 .text daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c
 */
static int daObjCRVGATE_IsDelete(daObjCRVGATE_c* i_this) {
    return 1;
}

/* 80BD2E88-80BD2ECC 002B68 0044+00 1/0 0/0 0/0 .text            Create__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80BD2ECC-80BD2FB8 002BAC 00EC+00 1/0 0/0 0/0 .text Execute__14daObjCRVGATE_cFPPA3_A4_f
 */
int daObjCRVGATE_c::Execute(f32 (**param_0)[3][4]) {
    s_CoCount = 0;

    if (mKeyParam == 0x01) {
        if (fopAcM_SearchByID(mDoorPairProcID) != NULL && !mDoorPairLoaded) {
            fopAcM_SearchByID(mDoorPairProcID, (fopAc_ac_c**)&mpDoorPair);
            mDoorPairLoaded = true;
            mEventFlag = false;
        }
        if (!mFlagDoorStuck) {
            event_proc_call();
        }
    }

    if (!mEventFlag) {
        DoorAction();
    }

    *param_0 = &mBgMtx;
    setBaseMtx();
    if (field_0x66c != 0) {
        field_0x66c--;
    }
    setCcCylinder();

    return 1;
}

/* 80BD2FB8-80BD3074 002C98 00BC+00 1/0 0/0 0/0 .text            Draw__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModelGate->mModelData, &tevStr);
    if (mKeyParam == 0x01) {
        g_env_light.setLightTevColorType_MAJI(mpModelKey->mModelData, &tevStr);
    }

    dComIfGd_setListBG();

    mDoExt_modelUpdateDL(mpModelGate);
    if (mKeyParam == 0x01) {
        mDoExt_modelUpdateDL(mpModelKey);
    }

    return 1;
}

/* 80BD3074-80BD30A8 002D54 0034+00 1/0 0/0 0/0 .text            Delete__14daObjCRVGATE_cFv */
int daObjCRVGATE_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80BD31F8-80BD3218 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVGATE_Method */
static actor_method_class l_daObjCRVGATE_Method = {
    (process_method_func)daObjCRVGATE_Create,  (process_method_func)daObjCRVGATE_Delete,
    (process_method_func)daObjCRVGATE_Execute, (process_method_func)daObjCRVGATE_IsDelete,
    (process_method_func)daObjCRVGATE_Draw,
};

/* 80BD3218-80BD3248 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVGATE */
extern actor_process_profile_definition g_profile_Obj_CRVGATE = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_CRVGATE,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjCRVGATE_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    466,                     // mPriority
    &l_daObjCRVGATE_Method,  // sub_method
    0x00040180,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
