//
// d_a_tag_Lv7Gate.cpp
// City in the Sky Gate
//

#include "rel/d/a/tag/d_a_tag_Lv7Gate/d_a_tag_Lv7Gate.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/a/d_a_player.h"
#include "d/d_path.h"
#include "d/d_procname.h"

/* 80D51B50-80D51B54 -00001 0004+00 5/5 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Lv7Gate";

int daTagLv7Gate_c::createHeap() {
    // Watched City in the Sky start cutscene
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[510])) {
        return 1;
    }

    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 11);
    mpModel = mDoExt_J3DModel__create(model_data, 0, 0x11000084);

    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 7);

    mpBck = new mDoExt_bckAnm();

    if (mpBck == NULL || !mpBck->init(bck, TRUE, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1, false)) {
        return 0;
    }

    return 1;
}

/* 80D50AB8-80D50BFC 000078 0144+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daTagLv7Gate_c*>(i_this)->createHeap();
}

/* 80D50C44-80D50C64 000204 0020+00 1/0 0/0 0/0 .text            daTagLv7Gate_Create__FP10fopAc_ac_c
 */
static int daTagLv7Gate_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagLv7Gate_c*>(i_this)->create();
}

/* 80D50C64-80D50D30 000224 00CC+00 1/1 0/0 0/0 .text            create__14daTagLv7Gate_cFv */
int daTagLv7Gate_c::create() {
    int phase;

    fopAcM_SetupActor(this, daTagLv7Gate_c);

    if (fopAcM_GetPosition_p(daPy_getPlayerActorClass())->y < 7500.0f) {
        return cPhs_ERROR_e;
    } else {
        phase = dComIfG_resLoad(&mPhase, l_arcName);

        if (phase == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x5340)) {
                return cPhs_ERROR_e;
            } else {
                create_init();
            }
        }
    }

    return phase;
}

void daTagLv7Gate_c::setPath(u8 i_path_ID) {
    mRoomPath = dPath_GetRoomPath(i_path_ID, fopAcM_GetRoomNo(this));
    if (mRoomPath != NULL) {
        dStage_dPnt_c* pnt = dPath_GetPnt(mRoomPath, 0);
        cXyz pos1 = pnt->m_position;

        pnt = dPath_GetPnt(mRoomPath, 1);
        cXyz pos2 = pnt->m_position;

        mPos1 = pos1;

        // Fake match?
        s16 angle_y = cLib_targetAngleY(&pos1, &pos2);
        // s16 angle_x = cLib_targetAngleX(&pos1, &pos2);

        // field_0x594.set(-angle_x, angle_y, 0);
        field_0x594.x = -cLib_targetAngleX(&pos1, &pos2);
        // field_0x594.x = -angle_x;
        field_0x594.y = angle_y;
        field_0x594.z = 0;

        mDistance = sqrtf(PSVECSquareDistance((Vec*)&mPos1, (Vec*)&pos2));
        field_0x5a0 = 1;
        mPos2 = pos2;
    }
}

void daTagLv7Gate_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
}

void daTagLv7Gate_c::setBaseMtx() {
    if (mpModel) {
        cXyz local_34(0.0f, 0.0f, speedF);

        mDoMtx_stack_c::transS(mPos1);
        mDoMtx_stack_c::ZXYrotM((csXyz&)field_0x594);
        mDoMtx_stack_c::multVec(&local_34, (Vec*)&mPos1);
        MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);

        attention_info.position = mPos1;
    }
}

/* 80D50D30-80D511A8 0002F0 0478+00 1/1 0/0 0/0 .text            create_init__14daTagLv7Gate_cFv */
void daTagLv7Gate_c::create_init() {
    attention_info.flags = 0;
    mLastFrame = 0;
    field_0x5ac = 0;
    mEvtId = -1;

    field_0x5b0 = false;
    field_0x5b1 = false;

    setPath(getPathID() & 0xFF);

    attention_info.position = mPos1;

    if (mpModel) {
        initBaseMtx();
        setBaseMtx();
    }

    // City in the Sky clear
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[268])) {
        mEvName = "LV7_NORMAL_START";
    } else {
        // Watched City in the Sky start cutscene
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[510])) {
            if (dComIfGs_isDungeonItemWarp()) {
                mEvName = "LV7_CANNON_BACK";
            } else {
                mEvName = "LV7_NORMAL_START";
            }
        } else {
            mEvName = "LV7_FIRST_START";

            cXyz pos = current.pos;
            pos.y -= 1000.0f;

            csXyz local_54(getFlowNodeNo(), -0x4000, 0);

            fopAcM_create(PROC_NPC_TKS, 7, &pos, fopAcM_GetRoomNo(this), &local_54, NULL, -1);

            pos.x = 2603.315f;
            pos.y = -200.0f;
            pos.z = 5485.9224f;

            local_54.x = 0.0f;
            local_54.y = -0x4000;
            local_54.z = 0.0f;

            fopAcM_create(PROC_NPC_TKJ, 0, &pos, fopAcM_GetRoomNo(this), &local_54, NULL, -1);
        }
    }
    eventInfo.setArchiveName(l_arcName);
    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    mEvtId = dComIfGp_getEventManager().getEventIdx(this, mEvName, -1);
    fopAcM_orderOtherEventId(this, mEvtId, -1, -1, 2, 1);
}

/* 80D511A8-80D511C8 000768 0020+00 1/0 0/0 0/0 .text daTagLv7Gate_Execute__FP14daTagLv7Gate_c */
static int daTagLv7Gate_Execute(daTagLv7Gate_c* i_this) {
    return i_this->execute();
}

void daTagLv7Gate_c::flyAnime() {
    J3DAnmTransform* bck = NULL;
    J3DAnmTransform* bck_anm = mpBck->getBckAnm();

    J3DAnmTransform* bck_anm_1 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 5);
    J3DAnmTransform* bck_anm_2 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 6);
    J3DAnmTransform* bck_anm_3 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 7);
    J3DAnmTransform* bck_anm_4 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 8);

    s32 attribute = J3DFrameCtrl::LOOP_REPEAT_e;

    mLastFrame = mpBck->getFrame();

    mpBck->play();

    if (bck_anm == bck_anm_3) {
        if (field_0x5ac < 150) {
            field_0x5ac += 1;
            if (field_0x5ac >= 150) {
                bck = bck_anm_4;
                attribute = J3DFrameCtrl::LOOP_ONCE_e;
            }
        }
    } else if (bck_anm == bck_anm_1) {
        if (mLastFrame > mpBck->getFrame()) {
            bck = bck_anm_2;
            attribute = J3DFrameCtrl::LOOP_ONCE_e;
        }
    } else {
        // } else if (mpBck->isStop()) {
        // Fake match?
        mDoExt_bckAnm* tmp = mpBck;
        if (tmp->isStop()) {
            if (bck_anm == bck_anm_2) {
                bck = bck_anm_3;
                attribute = J3DFrameCtrl::LOOP_REPEAT_e;
            } else if (bck_anm == bck_anm_4) {
                bck = bck_anm_1;
                attribute = J3DFrameCtrl::LOOP_REPEAT_e;
            }
        }
    }
    if (bck != NULL) {
        mpBck->init(bck, 1, attribute, 1.0f, 0, -1, true);
    }
}

/* 80D511C8-80D51628 000788 0460+00 1/1 0/0 0/0 .text            execute__14daTagLv7Gate_cFv */
int daTagLv7Gate_c::execute() {
    // Fakematch
    dComIfG_play_c& play = g_dComIfG_gameInfo.getPlay();
    if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk()) {
        s32 cut_index = dComIfGp_evmng_getMyStaffId(l_arcName, NULL, 0);
        if (cut_index != -1) {
            int* cut_name = (int*)play.getEvtManager().getMyNowCutName(cut_index); // Fakematch

            daPy_getPlayerActorClass()->onShieldBackBone();

            if (dComIfGp_evmng_getIsAddvance(cut_index)) {
                switch (*cut_name) {
                case '0002':
                    field_0x5b1 = true;
                    speedF = 96.0f;
                    break;
                case '0001':
                    break;
                case '0003':
                    break;
                }
            }

            switch (*cut_name) {
            case '0001':
                dComIfGp_evmng_cutEnd(cut_index);
                break;
            case '0002':
                mDoAud_seStartLevel(Z2SE_EN_DR_DEMO_FIRST, &mPos1, 0, 0);
                if (!field_0x5b1) {
                    dComIfGp_evmng_cutEnd(cut_index);
                }
                break;
            case '0003':
                break;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEvtId != -1 &&
                dComIfGp_evmng_endCheck(mEvtId)) {
                // dComIfGp_event_reset();
                play.getEvent().reset(); // Fakematch
                mEvtId = -1;
                fopAcM_delete(this);
            }

            field_0x5b0 = true;
        }
    } else {
        if (!field_0x5b0) {
            eventInfo.setArchiveName(l_arcName);
            dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
            mEvtId = dComIfGp_getEventManager().getEventIdx(this, mEvName, -1);
            fopAcM_orderOtherEventId(this, mEvtId, -1, -1, 0, 1);
            field_0x5b0 = true;
        } else {
            fopAcM_delete(this);
        }
    }
    if (field_0x5b1) {
        calcFly();
        flyAnime();
        setBaseMtx();
    }
    return 1;
}

bool daTagLv7Gate_c::checkPoint(f32 i_speed) {
    dStage_dPnt_c* pnt = dPath_GetPnt(mRoomPath, field_0x5a0);
    mDistance -= i_speed;
    if (sqrtf(PSVECSquareDistance((Vec*)&mPos1, (Vec*)&pnt->m_position)) < i_speed ||
        mDistance < 0.0f) {
        return true;
    }
    return false;
}

bool daTagLv7Gate_c::setNextPoint() {
    bool bVar1;
    dPath_GetPnt(mRoomPath, field_0x5a0);
    field_0x5a0 += 1;
    if (field_0x5a0 >= mRoomPath->m_num) {
        field_0x5a0 = mRoomPath->m_num - 1;
        mDistance = 0;
        bVar1 = true;
    } else {
        dStage_dPnt_c* pnt = dPath_GetPnt(mRoomPath, field_0x5a0);

        cXyz pos1(mPos1.x, 0.0f, mPos1.z);

        cXyz pos2(pnt->m_position.x, 0.0f, pnt->m_position.z);

        mDistance = sqrtf(PSVECSquareDistance((Vec*)&pos1, (Vec*)&pos2));
        mPos2 = pnt->m_position;
        bVar1 = false;
    }
    if (bVar1) {
        field_0x5b1 = false;
        speedF = 0;
    }
    return bVar1;
}

/* 80D51628-80D519BC 000BE8 0394+00 1/1 0/0 0/0 .text            calcFly__14daTagLv7Gate_cFv */
void daTagLv7Gate_c::calcFly() {
    f32 speed = speedF;
    if (checkPoint(speed)) {
        setNextPoint();
    }
    s16 angle_x = -cLib_targetAngleX(&mPos1, &mPos2);
    s16 angle_y = cLib_targetAngleY(&mPos1, &mPos2);
    cLib_addCalcAngleS2(&field_0x594.x, angle_x, 0xF, 0x400);
    cLib_addCalcAngleS2(&field_0x594.y, angle_y, 0x23, 0x100);
    cLib_addCalcAngleS2(&field_0x594.z, (field_0x594.y - angle_y) * 4, 0x23, 0x100);
}

int daTagLv7Gate_c::draw() {
    if (field_0x5b1) {
        g_env_light.settingTevStruct(0, &mPos1, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        mpBck->entry(mpModel->getModelData());
        mDoExt_modelUpdateDL(mpModel);
        mpBck->remove(mpModel->getModelData());
    }
    return 1;
}

/* 80D519BC-80D51A58 000F7C 009C+00 1/0 0/0 0/0 .text daTagLv7Gate_Draw__FP14daTagLv7Gate_c */
static int daTagLv7Gate_Draw(daTagLv7Gate_c* i_this) {
    return i_this->draw();
}

/* 80D51A58-80D51A60 001018 0008+00 1/0 0/0 0/0 .text daTagLv7Gate_IsDelete__FP14daTagLv7Gate_c */
static int daTagLv7Gate_IsDelete(daTagLv7Gate_c* i_this) {
    return 1;
}

daTagLv7Gate_c::~daTagLv7Gate_c() {
    // Watched City in the Sky start cutscene
    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[510]);
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80D51A60-80D51ACC 001020 006C+00 1/0 0/0 0/0 .text daTagLv7Gate_Delete__FP14daTagLv7Gate_c */
static int daTagLv7Gate_Delete(daTagLv7Gate_c* i_this) {
    i_this->~daTagLv7Gate_c();
    return 1;
}

/* 80D51B54-80D51B74 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagLv7Gate_Method */
static actor_method_class l_daTagLv7Gate_Method = {
    (process_method_func)daTagLv7Gate_Create,  (process_method_func)daTagLv7Gate_Delete,
    (process_method_func)daTagLv7Gate_Execute, (process_method_func)daTagLv7Gate_IsDelete,
    (process_method_func)daTagLv7Gate_Draw,
};

/* 80D51B74-80D51BA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv7Gate */
extern actor_process_profile_definition g_profile_Tag_Lv7Gate = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Tag_Lv7Gate,        // mProcName
    &g_fpcLf_Method.mBase,   // sub_method
    sizeof(daTagLv7Gate_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    263,                     // mPriority
    &l_daTagLv7Gate_Method,  // sub_method
    0x40000,                 // mStatus
    0,                       // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
