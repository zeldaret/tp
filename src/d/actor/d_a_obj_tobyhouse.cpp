/**
 * @file d_a_obj_tobyhouse.cpp
 * 
*/

#include "d/actor/d_a_obj_tobyhouse.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_bomb.h"
#include "Z2AudioLib\Z2Instances.h"

#ifdef DEBUG
daObjTobyHouse_HIO_c l_HIO;

daObjTobyHouse_HIO_c::daObjTobyHouse_HIO_c() {
    mShakingCycle = 800;
    mShakingAmplitude = 20.0f;
    mLODDistance = 20000.0f;
    field_0x07 = 0;
    mHawkeyeMediumLOD = 0;
    mDrawCollision = 0;
}

void daObjTobyHouse_HIO_c::genMessage(JORMContext* ctx) {
    // Toby's Cannon Shed
    ctx->genLabel("トビー大砲小屋", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("揺れ周期", &mShakingCycle, 0, 8000, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("揺れ振幅", &mShakingAmplitude, 0.0f, 500.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                    0x18);
    ctx->genSlider("ＬＯＤ距離", &mLODDistance, 0.0f, 100000.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                    0x18);
    ctx->genCheckBox("ホークアイ中ＬＯＤ", &mHawkeyeMediumLOD, 1, 0, NULL, 0xffff, 0xffff,
                        0x200, 0x18);
    ctx->genCheckBox("コリジョン描画", &mDrawCollision, 1, 0, NULL, 0xffff, 0xffff, 0x200,
                        0x18);
}
#endif

/* 80D1774C-80D17754 000000 0008+00 4/4 0/0 0/0 .rodata          l_bmd */
static int const l_bmd[2] = {
    11, 5,
};

/* 80D17754-80D1775C 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static int const l_dzb[2] = {
    15, 8,
};

/* 80D1775C-80D17764 000010 0008+00 0/1 0/0 0/0 .rodata          l_LodBmd */
static int const l_LodBmd[2] = {
    12, 4,
};

/* 80D17764-80D17770 000018 000C+00 0/1 0/0 0/0 .rodata          l_bck */
static int const l_bck[3] = {
    6, 7, 8,
};

/* 80D15AAC-80D15DA8 0000EC 02FC+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        fopAc_ac_c* data = (fopAc_ac_c*)i_data;
        if (dBomb_c::checkBombActor((fopAc_ac_c*)i_actor)) {
            dBomb_c* bomb = (dBomb_c*)i_actor;
            if (bomb != NULL && data != NULL &&
                   bomb->current.pos.absXZ((data)->current.pos) < 1000.0f)
            {
                bomb->deleteBombAndEffect();
            }
        } else {
            if (fopAcM_GetName(i_actor) == PROC_Obj_Carry) {
                daObjCarry_c* carry = (daObjCarry_c*)i_actor;
                if (carry != NULL && data != NULL &&
                    carry->getType() == 2 && carry->current.pos.absXZ(data->current.pos) < 1000.0f)
                {
                    fopAcM_delete(carry);
                }
            }
        }
    }
    return NULL;
}

/* 80D15DA8-80D15E98 0003E8 00F0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int i_jointNo) {
    if (i_jointNo == 0) {
        int jnt = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjTobyHouse_c* tobyHouse = (daObjTobyHouse_c*)model->getUserArea();
        if (jnt == tobyHouse->mBirlPJnt) {
            cXyz local_40;
            mDoMtx_multVecZero(model->getAnmMtx(jnt), &local_40);
            mDoMtx_stack_c::YrotS(tobyHouse->field_0x5e0);
            mDoMtx_stack_c::concat(model->getAnmMtx(jnt));
            mDoMtx_stack_c::get()[0][3] = local_40.x;
            mDoMtx_stack_c::get()[1][3] = local_40.y;
            mDoMtx_stack_c::get()[2][3] = local_40.z;
            model->setAnmMtx(jnt, mDoMtx_stack_c::get());
            mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        }
    }
    return 1;
}

/* 80D15E98-80D15F0C 0004D8 0074+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static int eventCallBack(void* param_1, int param_2) {
    if (param_1 != NULL) {
        ((daObjTobyHouse_c*)param_1)->sceneChange();
        if (((daObjTobyHouse_c*)param_1)->field_0x5e4 == 0) {
            dComIfGp_getVibration().StopQuake(0x1f);
            Z2GetAudioMgr()->bgmStreamStop(0x1e);
            ((daObjTobyHouse_c*)param_1)->field_0x5e4 = 1;
        }
    }
    return 1;
}

/* 80D15F0C-80D15F48 00054C 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjTobyHouse_cFv
 */
void daObjTobyHouse_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D15F48-80D15FE0 000588 0098+00 2/2 0/0 0/0 .text            setBaseMtx__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x,
                           current.pos.y + mHeightOffset,
                           current.pos.z);
    mDoMtx_stack_c::ZXYrotM(home.angle);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mLODModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::YrotM(field_0x5e0);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

UNK_REL_DATA

/* 80D17878-80D17880 -00001 0008+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "M_THouse",
    "U_THouse",
};
/* 80D17880-80D17884 -00001 0004+00 1/1 0/0 0/0 .data            l_staff_name */
static char* l_staff_name = "thouse";

/* 80D17884-80D1788C -00001 0008+00 1/1 0/0 0/0 .data            l_event_name */
static char* l_event_name[2] = {
    "TOBY_HOUSE_FIRE_TO_RAKKA",
    "TOBY_HOUSE_FIRE_TO_DESERT",
};

/* 80D15FE0-80D161A4 000620 01C4+00 1/0 0/0 0/0 .text            Create__16daObjTobyHouse_cFv */
int daObjTobyHouse_c::Create() {
    fopAcM_setCullSizeFar(this, 10.0f);
    cXyz cStack_24(current.pos);
    cStack_24.y += 200.0f;
    if (fopAcM_wt_c::waterCheck(&cStack_24)) {
        current.pos.y = fopAcM_wt_c::getWaterY();
    }
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mModel->getModelData());
    if (mType == TYPE_0) {
        eventInfo.setArchiveName(l_arcName[mType]);
        for (int i = 0; i < 2; i++) {
            mEventIds[i] = (s16)dComIfGp_getEventManager().getEventIdx(this, l_event_name[i], 0xff);

            #ifdef DEBUG
            if (mEventIds[i] == -1) {
                // Cannon shed - failure to obtain event
                OS_REPORT_ERROR("大砲小屋：イベント取得失敗\n");
                return 0;
            }
            #endif
        }
        JUTNameTab* nameTab = mModel->getModelData()->getJointTree().getJointName();
        mBirlPJnt = 0xffff;
        mBirlCannonJnt = 0xffff;
        for (u16 i = 0; i < mModel->getModelData()->getJointNum(); i++) {
            if (strcmp(nameTab->getName(i), "Birl_P") == 0) {
                mBirlPJnt = i;
            }
            if (strcmp(nameTab->getName(i), "Birl_Cannon") == 0) {
                mBirlCannonJnt = i;
            }
        }
        J3DJoint* jnt = mModel->getModelData()->getJointNodePointer(mBirlPJnt);
        JUT_ASSERT(398, jnt != 0);
        jnt->setCallBack(nodeCallBack);
        mModel->setUserArea((u32)this);

        jnt = mModel->getModelData()->getJointNodePointer(mBirlCannonJnt);
        JUT_ASSERT(406, jnt != 0);
    }
    initBaseMtx();
    return 1;
}

/* 80D161A4-80D163A8 0007E4 0204+00 1/0 0/0 0/0 .text            CreateHeap__16daObjTobyHouse_cFv */
int daObjTobyHouse_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd[mType]);
    JUT_ASSERT(430, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return 0;
    }
    if (mType == TYPE_0) {
        for (int i = 0; i < 3; i++) {
            J3DAnmTransform* pbck =
                (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[mType], l_bck[i]);
            JUT_ASSERT(447, pbck != 0);
            mBcks[i] = new mDoExt_bckAnm();
            if (mBcks[i] == NULL || !mBcks[i]->init(pbck, 1, 0, 1.0, 0, -1, false)) {
                return 0;
            }
            mBcks[i]->setPlaySpeed(0.0f);
        }
    }
    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_LodBmd[mType]);
    JUT_ASSERT(462, modelData != 0);
    J3DModelData* shareModelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd[mType]);
    JUT_ASSERT(469, shareModelData != 0);
    mDoExt_setupShareTexture(modelData, shareModelData);
    mLODModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mLODModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80D163F0-80D164C0 000A30 00D0+00 1/1 0/0 0/0 .text            create1st__16daObjTobyHouse_cFv */
int daObjTobyHouse_c::create1st() {
    if (dComIfG_play_c::getLayerNo(0) == 13) {
        mType = TYPE_1;
    } else {
        mType = TYPE_0;
    }
    int rv = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (rv == cPhs_COMPLEATE_e) {
        int heapSize;
        if (mType == TYPE_0) {
            heapSize = 0x12820;
        } else {
            heapSize = 0x10270;
        }
        rv = MoveBGCreate(l_arcName[mType], l_dzb[mType], dBgS_MoveBGProc_TypicalRotY,
                          heapSize, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }

        #ifdef DEBUG
        // Toby's Cannon Shack
        l_HIO.entryHIO("トビーの大砲小屋");
        #endif
    }
    return rv;
}

/* 80D164C0-80D16560 000B00 00A0+00 1/0 0/0 0/0 .text Execute__16daObjTobyHouse_cFPPA3_A4_f */
int daObjTobyHouse_c::Execute(Mtx** i_mtx) {
    field_0x5c8++;
    action();
    *i_mtx = &mBgMtx;
    setBaseMtx();
    if (checkWater()) {
        mHeightOffset = 20.0f * cM_scos(field_0x5c8 * 0x320);
    }
    shape_angle.y = home.angle.y + field_0x5e0;
    return 1;
}

UNK_REL_BSS

/* 80D16560-80D1661C 000BA0 00BC+00 1/1 0/0 0/0 .text            action__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::action() {
    static daObjTobyHouse_c::actionFunc l_func[4] = {
        &daObjTobyHouse_c::actionWait,
        &daObjTobyHouse_c::actionOrderEvent,
        &daObjTobyHouse_c::actionEvent,
        &daObjTobyHouse_c::actionDead,
    };

    (this->*l_func[mAction])();
}

/* 80D1661C-80D166E0 000C5C 00C4+00 1/0 0/0 0/0 .text            actionWait__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::actionWait() {
    if (dComIfGs_isOneZoneSwitch(5, 0xffffffff)) {
        field_0x5e2 = 1;
    } else {
        if (dComIfGs_isOneZoneSwitch(6, 0xffffffff)) {
            field_0x5e2 = 2;
        } else {
            field_0x5e2 = 0;
        }
    }
    if (field_0x5e2 != 0) {
        mEventIdIdx = field_0x5e2 - 1;
        fopAcM_orderOtherEventId(
            this, mEventIds[mEventIdIdx], 0xff, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        setAction(ACTION_ORDER_EVENT);
    }
}

/* 80D166E0-80D167BC 000D20 00DC+00 1/0 0/0 0/0 .text actionOrderEvent__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        fpcM_Search(s_b_sub, this);
        Z2GetAudioMgr()->bgmStreamPrepare(0x2000023);
        Z2GetAudioMgr()->bgmStreamPlay();
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, 0, 0);
        setAction(ACTION_EVENT);
    } else {
        fopAcM_orderOtherEventId(this, mEventIds[mEventIdIdx], 0xff, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80D167BC-80D16860 000DFC 00A4+00 1/0 0/0 0/0 .text            actionEvent__16daObjTobyHouse_cFv
 */
void daObjTobyHouse_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIds[mEventIdIdx])) {
        dComIfGp_event_reset();
        dComIfGs_offOneZoneSwitch(5, 0xffffffff);
        dComIfGs_offOneZoneSwitch(6, 0xffffffff);
        setAction(ACTION_WAIT);
    } else {
        dComIfGp_getEvent().setSkipProc(this, eventCallBack, 0);
        demoProc();
    }
}

/* 80D16860-80D16864 000EA0 0004+00 1/0 0/0 0/0 .text            actionDead__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::actionDead() {}

/* 80D16864-80D171C0 000EA4 095C+00 2/1 0/0 0/0 .text            demoProc__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::demoProc() {
    static const char* action_table[7] = {
        "WAIT",
        "CLOSE",
        "CHANGE",
        "HLIGHT",
        "ROTATE",
        "SCENE_CHG",
        "EFF_LINE",
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    static cXyz l_shotSmokeScale(8.0f, 8.0f, 8.0f);
    static Vec l_shotSmokeOffset = {0.0f, 2500.0f, -600.0f};
    cXyz cStack_24;
    csXyz cStack_98;
    fopAcM_SearchByName(PROC_NPC_TOBY);
    cXyz cStack_30(-600.0f, 70.0f, 380.0f);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz* pCamEye = fopCamM_GetEye_p(camera);
    csXyz local_a0(dCam_getAngleX(camera), dCam_getAngleY(camera), 0);
    int actIdx = dComIfGp_evmng_getMyActIdx(mStaffId, (char**)action_table, 7, 0, 0);
    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        mDemoTimer = 0;
        switch (actIdx) {
        case 0: {
            int* pTimer = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (pTimer == NULL) {
                field_0x5de = 1;
            } else {
                field_0x5de = *pTimer;
            }
            break;
        }
        case 1:
            field_0x5e3 = 0;
            mActiveBck = mBcks[0];
            mActiveBck->setPlaySpeed(1.0f);
            mActiveBck->setFrame(0.0f);
            fopAcM_seStart(this, Z2SE_OBJ_THOUSE_CLOSE, 0);
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[161]);
            break;
        case 2:
            mActiveBck = mBcks[1];
            mActiveBck->setPlaySpeed(1.0f);
            mActiveBck->setFrame(0.0f);
            fopAcM_seStart(this, Z2SE_OBJ_THOUSE_CHANGE, 0);
            break;
        case 3:
            mActiveBck = mBcks[2];
            mActiveBck->setPlaySpeed(1.0f);
            mActiveBck->setFrame(0.0f);
            fopAcM_seStart(this, Z2SE_OBJ_THOUSE_HLIGHT, 0);
            mDoMtx_stack_c::copy(mModel->getAnmMtx(mBirlCannonJnt));
            mDoMtx_stack_c::multVecZero(&cStack_24);
            mDoMtx_MtxToRot(mModel->getAnmMtx(mBirlCannonJnt), &cStack_98);
            field_0x5f0 = dComIfGp_particle_set(0x86f7, &cStack_24, &cStack_98, &l_shotSmokeScale);
            field_0x5f8 = dComIfGp_particle_set(0x8735, &cStack_24, &cStack_98, &l_shotSmokeScale);
            cStack_98 = home.angle;
            cStack_98.y += field_0x5e0;
            field_0x5f4 = dComIfGp_particle_set(0x86f8, &cStack_24, &cStack_98, &l_shotSmokeScale);
            if (field_0x5f0 != NULL) {
                field_0x5f0->becomeImmortalEmitter();
            }
            if (field_0x5f4 != NULL) {
                field_0x5f4->becomeImmortalEmitter();
            }
            if (field_0x5f8 != NULL) {
                field_0x5f8->becomeImmortalEmitter();
            }
            break;
        case 4:
            break;
        case 5:
            player->offPlayerNoDraw();
            player->offPlayerShadowNoDraw();
            break;
        case 6:
            break;
        }
    }
    mDemoTimer++;

    switch (actIdx) {
    case 0:
        if (cLib_calcTimer(&field_0x5de) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1:
        mActiveBck->play();
        if (mDemoTimer == 0x17) {
            player->onPlayerNoDraw();
            player->onPlayerShadowNoDraw();
            dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mDemoTimer == 0x50) {
            mActiveBck->setFrame(mActiveBck->getEndFrame());
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 2:
        if (mActiveBck->play()) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }

        if (field_0x5e2 == 2) {
            cLib_addCalcAngleS(&field_0x5e0, 0x6000, 0xfa, 200, 0x46);
        }

        if (mDemoTimer == 9) {
            dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0x122) {
            dComIfGp_getVibration().StartShock(3, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0x41) {
            dComIfGp_getVibration().StartQuake(1, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0x96) {
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0xd0) {
            dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0xd7) {
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer == 0x113) {
            dComIfGp_getVibration().StopQuake(0x1f);
        }
        break;
    case 3:
        mActiveBck->play();
        if (mDemoTimer == 0xf) {
            field_0x5fc = dComIfGp_particle_set(0x874e, pCamEye, &tevStr, &local_a0, 0);
            mDoAud_seStart(Z2SE_AL_V_CANON_JUMP, 0, 0, 0);
            OS_REPORT("集中線エフェクトセット！\n");
        } else if (mDemoTimer == 8) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        } else if (mDemoTimer > 45) {
            sceneChange();
        }
        break;
    case 5:
        sceneChange();
        break;
    case 4:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }

    if (field_0x5f0 != NULL) {
        field_0x5f0->setGlobalRTMatrix(mModel->getAnmMtx(mBirlCannonJnt));
    }

    if (field_0x5f4 != NULL) {
        field_0x5f4->setGlobalRTMatrix(mModel->getAnmMtx(mBirlCannonJnt));
    }

    if (field_0x5f8 != NULL) {
        field_0x5f8->setGlobalRTMatrix(mModel->getAnmMtx(mBirlCannonJnt));
    }
    if (field_0x5fc != NULL) {
        JGeometry::TVec3<s16> aTStack_a8;
        aTStack_a8.x = local_a0.x;
        aTStack_a8.y = local_a0.y;
        aTStack_a8.z = local_a0.z;
        field_0x5fc->setGlobalTranslation(pCamEye->x, pCamEye->y, pCamEye->z);
        field_0x5fc->setGlobalRotation(aTStack_a8);
    }
}

/* 80D171C0-80D17230 001800 0070+00 2/2 0/0 0/0 .text            sceneChange__16daObjTobyHouse_cFv
 */
void daObjTobyHouse_c::sceneChange() {
    u8 exitId = 3;
    switch (field_0x5e2) {
    case 1:
        exitId = 0;
        break;
    case 2:
        exitId = 3;
        break;
    default:
        JUT_PANIC(936, "0");
    }

    dStage_changeScene(exitId, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
}

/* 80D17230-80D17374 001870 0144+00 1/0 0/0 0/0 .text            Draw__16daObjTobyHouse_cFv */
int daObjTobyHouse_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    if (checkLODModel()) {
        g_env_light.setLightTevColorType_MAJI(mLODModel, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mLODModel);
        dComIfGd_setList();
    } else {
        g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
        if (mActiveBck != NULL) {
            mActiveBck->entry(mModel->getModelData());
        }
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mModel);
        dComIfGd_setList();
        mDoExt_bckAnmRemove(mModel->getModelData());
    }

    #ifdef DEBUG
    if (l_HIO.mDrawCollision) {
        mpBgW->CalcPlane();
    }
    #endif

    return 1;
}

/* 80D17374-80D174F8 0019B4 0184+00 1/1 0/0 0/0 .text            checkLODModel__16daObjTobyHouse_cFv
 */
BOOL daObjTobyHouse_c::checkLODModel() {
    if (dComIfGp_event_runCheck()) {
        return FALSE;
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        return FALSE;
    }
    
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    if (camera != NULL && fopCamM_GetEye_p(camera)->abs(current.pos) > 20000.0f) {
        return TRUE;
    }

    return FALSE;
}

/* 80D174F8-80D17618 001B38 0120+00 1/0 0/0 0/0 .text            Delete__16daObjTobyHouse_cFv */
int daObjTobyHouse_c::Delete() {
    if (field_0x5f0 != NULL) {
        field_0x5f0->becomeInvalidEmitter();
        field_0x5f0->quitImmortalEmitter();
        field_0x5f0 = NULL;
    }

    if (field_0x5f4 != NULL) {
        field_0x5f4->becomeInvalidEmitter();
        field_0x5f4->quitImmortalEmitter();
        field_0x5f4 = NULL;
    }

    if (field_0x5f8 != NULL) {
        field_0x5f8->becomeInvalidEmitter();
        field_0x5f8->quitImmortalEmitter();
        field_0x5f8 = NULL;
    }

    if (field_0x5fc != NULL) {
        field_0x5fc->becomeInvalidEmitter();
        field_0x5fc->quitImmortalEmitter();
        field_0x5fc = NULL;
    }
    
    dComIfG_resDelete(&mPhase, l_arcName[mType]);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80D17618-80D17678 001C58 0060+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_create1st__FP16daObjTobyHouse_c               */
static int daObjTobyHouse_create1st(daObjTobyHouse_c* i_this) {
    fopAcM_SetupActor(i_this, daObjTobyHouse_c);
    return i_this->create1st();
}

/* 80D17678-80D17698 001CB8 0020+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGDelete__FP16daObjTobyHouse_c            */
static int daObjTobyHouse_MoveBGDelete(daObjTobyHouse_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D17698-80D176B8 001CD8 0020+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGExecute__FP16daObjTobyHouse_c           */
static int daObjTobyHouse_MoveBGExecute(daObjTobyHouse_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D176B8-80D176E4 001CF8 002C+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGDraw__FP16daObjTobyHouse_c              */
static int daObjTobyHouse_MoveBGDraw(daObjTobyHouse_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D17930-80D17950 -00001 0020+00 1/0 0/0 0/0 .data            daObjTobyHouse_METHODS */
static actor_method_class daObjTobyHouse_METHODS = {
    (process_method_func)daObjTobyHouse_create1st,
    (process_method_func)daObjTobyHouse_MoveBGDelete,
    (process_method_func)daObjTobyHouse_MoveBGExecute,
    NULL,
    (process_method_func)daObjTobyHouse_MoveBGDraw,
};

/* 80D17950-80D17980 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TobyHouse */
extern actor_process_profile_definition g_profile_Obj_TobyHouse = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_TobyHouse,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjTobyHouse_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  546,                      // mPriority
  &daObjTobyHouse_METHODS,  // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

AUDIO_INSTANCES;

/* 80D177C0-80D177C0 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
