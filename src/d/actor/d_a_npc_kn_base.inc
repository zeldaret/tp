#include "d/actor/d_a_npc_kn.h"
#include "d/d_msg_object.h"

/* 80A38520-80A38550 00DC00 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daNpc_Kn_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                   dCcD_GObjInf* param_3) {
    u8 cut_type = 0;

    if (param_2) {
        if (fopAcM_GetProfName(param_2) == 0xfd) {
            cut_type = ((daPy_py_c*)param_2)->getCutType();
        } else {
            cut_type = 1;
        }
    }

    ((daNpc_Kn_c*)param_0)->setCutType(cut_type);
}

/* 80A38550-80A3858C 00DC30 003C+00 1/1 0/0 0/0 .text            getTrnsfrmAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTrnsfrmAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A3858C-80A385C8 00DC6C 003C+00 3/3 0/0 0/0 .text getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci */
void* daNpc_Kn_c::getTrnsfrmKeyAnmP(char const* i_arcName, int i_resIdx) {
   return dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A385C8-80A38604 00DCA8 003C+00 1/1 0/0 0/0 .text            getTexPtrnAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexPtrnAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38604-80A38640 00DCE4 003C+00 1/1 0/0 0/0 .text            getTexSRTKeyAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexSRTKeyAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38640-80A38684 00DD20 0044+00 1/1 0/0 0/0 .text
 * setBckAnm__10daNpc_Kn_cFP15J3DAnmTransformfiiib              */
void daNpc_Kn_c::setBckAnm(J3DAnmTransform* i_bck, f32 i_rate, int i_attribute, int i_startF,
                               int i_endF, bool i_modify) {
    mBckAnm.init(i_bck, 1, i_attribute, i_rate, i_startF, i_endF, i_modify); 
}

/* 80A38684-80A3877C 00DD64 00F8+00 1/1 0/0 0/0 .text
 * setMcaMorfAnm__10daNpc_Kn_cFP18J3DAnmTransformKeyffiii       */
int daNpc_Kn_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_rate, f32 i_morf,
                                   int i_attribute, int i_start, int i_end) {
    f32 f_start = i_start;
    f32 f_end = i_end;
    mpMorf[0]->setAnm(i_anm, i_attribute, i_morf, i_rate, f_start, f_end);
    if (mpMorf[1]) {
        mpMorf[1]->setAnm(i_anm, i_attribute, i_morf, i_rate, f_start, f_end);
    }

    return 1;
}

/* 80A3877C-80A387BC 00DE5C 0040+00 1/1 0/0 0/0 .text
 * setBtpAnm__10daNpc_Kn_cFP16J3DAnmTexPatternP12J3DModelDatafi */
void daNpc_Kn_c::setBtpAnm(J3DAnmTexPattern* i_btp, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtpAnm.init(i_modelData, i_btp, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387BC-80A387FC 00DE9C 0040+00 1/1 0/0 0/0 .text
 * setBtkAnm__10daNpc_Kn_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi */
void daNpc_Kn_c::setBtkAnm(J3DAnmTextureSRTKey* i_btk, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtkAnm.init(i_modelData, i_btk, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387FC-80A388B0 00DEDC 00B4+00 1/1 0/0 0/0 .text            loadRes__10daNpc_Kn_cFPCScPPCc */
cPhs__Step daNpc_Kn_c::loadRes(s8 const* param_0, char const** param_1) {
    cPhs__Step phase;
    int dbg_r28 = 0;
    for (int idx = 0; idx < 8; ++idx) {
        if (param_0[idx] == -1) {
            if (idx != dbg_r28) {
                break;
            }

            return cPhs_COMPLEATE_e;
        }

        phase = (cPhs__Step)dComIfG_resLoad(&mPhase[idx], param_1[param_0[idx]]);
        if (phase == 4) {
            ++dbg_r28;
        }

        if (phase == 5 || phase == 3){
            return cPhs_ERROR_e;
        }
    }

    return cPhs_INIT_e;
}

/* 80A388B0-80A38930 00DF90 0080+00 1/1 0/0 0/0 .text            deleteRes__10daNpc_Kn_cFPCScPPCc */
void daNpc_Kn_c::deleteRes(s8 const* param_0, char const** param_1) {
    for (int i = 0; i < 8 && param_0[i] != -1; i++ ) {
        dComIfG_resDelete(&mPhase[i], param_1[param_0[i]]);
    }
}

/* 80A38930-80A38BB8 00E010 0288+00 1/1 0/0 0/0 .text            execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::execute() {
    setParam();

    if (!evtEndProc()) {
        action();
    }

    beforeMove();

    if (speedF != 0.0f) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    } else {
        fopAcM_posMove(this, mCcStts.GetCCMoveP());
    }

    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0xdf0 = fopAcM_getPolygonAngle(mGndChk,current.angle.y);
    mGroundHeight = mAcch.GetGroundH();
    afterMoved();

    if (mGroundHeight !=  -1e+09f) {
        setEnvTevColor();
        setRoomNo();
    }

    if (mMotionSeqMngr1.checkEntryNewMotion()) {
        ctrlFaceMotion();
    }

    if (mMotionSeqMngr2.checkEntryNewMotion()) {
        ctrlMotion();
    }

    playAllAnm();
    ctrlFaceMotion();
    ctrlMotion();
    setAttnPos();
    twilight();
    setCollision();

    if (field_0xe33 == 0) {
        if (field_0xe39 != 0 && dComIfGp_getEvent().isOrderOK() || g_dComIfG_gameInfo.play.mEvent.mEventStatus == 0) {
            evtOrder();
        }
    }

    clrParam();
    decTmr();
    return 1;
}

/* 80A38BB8-80A38FAC 00E298 03F4+00 1/1 0/0 0/0 .text draw__10daNpc_Kn_cFiifP11_GXColorS10fiii */
int daNpc_Kn_c::draw(int param_0, int param_1, f32 param_2, _GXColorS10* param_3, f32 param_4,
                     int param_5, int param_6, int param_7) {
    J3DModel* model = mpMorf[0]->getModel();
    J3DModelData* modelData = model->getModelData();
    field_0xe3a = 1;
    if (drawDbgInfo() || checkHide() || field_0xe32) {
        return 1;
    }

    tevStr.TevColor.r = 0;
    tevStr.TevColor.g = 0;
    tevStr.TevColor.b = 0;
    tevStr.TevColor.a = 0;
    if (param_3 != NULL) {
        tevStr.TevColor.r = param_3->r;
        tevStr.TevColor.g = param_3->g;
        tevStr.TevColor.b = param_3->b;
        tevStr.TevColor.a = param_3->a;
    }

    if (field_0xde0 && mTimer) {
        f32 dbg_f32 = f32(mTimer) / f32(field_0xde0);
        if (cM3d_IsZero(dbg_f32) == 0) {
            tevStr.TevColor.r = 20.0f * dbg_f32;
        }
    } else if (param_0) {
        tevStr.TevColor.g = 20;
    }

    if (field_0xdcc & 0x800) {
        mBtpAnm.entry(modelData);
    }

    if (field_0xdcc & 0x80) {
        mBtkAnm.entry(modelData);
    }

    if (field_0xdcc & 0x100) {
        mBrkAnm.entry(modelData);
    }

    if (field_0xdcc & 0x200) {
        mBpkAnm.entry(modelData);
    }

    if (param_1) {
        fopAcM_setEffectMtx(this, modelData);
    }

    if (param_5) {
        drawGhost();
    } else if (field_0xABD) {
        g_env_light.settingTevStruct(4, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        dComIfGd_setListDark();
        mpMorf[0]->entryDL();
        dComIfGd_setList();
    } else {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        mpMorf[0]->entryDL();
    }

    if (field_0xdcc & 0x800) {
        mBtpAnm.remove(modelData);
    }

    if (field_0xdcc & 0x80) {
        mBtkAnm.remove(modelData);
    }

    if (field_0xdcc & 0x100) {
        mBrkAnm.remove(modelData);
    }

    if (field_0xdcc & 0x200) {
        mBpkAnm.remove(modelData);
    }

    if (param_6 == 0) {
        if (param_7 == 0) {
            mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos, param_2,
                                            param_4, current.pos.y, mGroundHeight, mGndChk, &tevStr,
                                            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        } else {
            dComIfGd_setSimpleShadow(&current.pos, mGroundHeight, param_4, mGndChk, 0, 1.0f,
                                     dDlst_shadowControl_c::getSimpleTex());
        }
    }

    drawOtherMdl();
    return 1;
}

/* 80A38FAC-80A39008 00E68C 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__10daNpc_Kn_cFv */
void daNpc_Kn_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80A39008-80A3904C 00E6E8 0044+00 2/2 0/0 0/0 .text            setRoomNo__10daNpc_Kn_cFv */
void daNpc_Kn_c::setRoomNo() {
    s32 room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mCcStts.SetRoomId(room_id);
}

/* 80A3904C-80A390F8 00E72C 00AC+00 1/1 0/0 0/0 .text            checkEndAnm__10daNpc_Kn_cFf */
BOOL daNpc_Kn_c::checkEndAnm(f32 i_rate) {
    switch(mpMorf[0]->getPlayMode()) {
        case 2:
            return mpMorf[0]->isLoop();
        case 1:
        case 0:
            return mpMorf[0]->isStop() && mpMorf[0]->getPlaySpeed() == 0.0f && i_rate != 0.0f;
        case 3:
        case 4:
        default:
            return FALSE;
    }
}

/* 80A390F8-80A3917C 00E7D8 0084+00 1/1 0/0 0/0 .text checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf */
BOOL daNpc_Kn_c::checkEndAnm(J3DFrameCtrl* i_frameCtrl, f32 i_rate) {
    switch (i_frameCtrl->getAttribute()) {
        case 2:
            return i_frameCtrl->checkState(2);
        case 1:
        case 0:
            return i_frameCtrl->checkState(1) && i_frameCtrl->getRate() == 0.0f && i_rate != 0.0f;
        case 3:
        case 4:
        default:
            return FALSE;
    }
}

/* 80A3917C-80A3949C 00E85C 0320+00 1/1 0/0 0/0 .text            playAllAnm__10daNpc_Kn_cFv */
void daNpc_Kn_c::playAllAnm() {
    f32 play_speed;
    if ((field_0xdcc & 0x4000) == 0) {
        if (field_0xdcc & 0x400) {
            play_speed = mBckAnm.getPlaySpeed();
            if (field_0xdcc & 0x10) {
                mBckAnm.setPlaySpeed(0.0f);
            }

            mBckAnm.play();
            if (checkEndAnm(mBckAnm.getFrameCtrl(), play_speed)) {
                ++field_0xe28;
            }

            mBckAnm.setPlaySpeed(play_speed);
        }

        if (field_0xdcc & 0x800) {
            play_speed = mBtpAnm.getPlaySpeed();
            if (field_0xdcc & 0x20) {
                mBtpAnm.setPlaySpeed(0.0f);
                if (field_0xdcc & 0x2000) {
                    field_0xde8 = cLib_getRndValue(90, 90);
                }
            }

            if (cLib_calcTimer(&field_0xde8)) {
                mBtpAnm.setPlaySpeed(0.0f);
            }

            mBtpAnm.play();
            if (field_0xdcc & 0x2000) {
                if (checkEndAnm(mBtpAnm.getFrameCtrl(), mBtpAnm.getPlaySpeed())) {
                    field_0xde8 = cLib_getRndValue(90, 90);
                }
            } else {
                field_0xde8 = 0;
            }

            mBtpAnm.setPlaySpeed(play_speed);
        }
    }

    if (field_0xdcc & 0x40) {
        play_speed = mpMorf[0]->getPlaySpeed();
        if (field_0xdcc & 1) {
            mpMorf[0]->setPlaySpeed(0.0f);
            mpMorf[0]->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mpMorf[0]->setPlaySpeed(play_speed);
            if (mpMorf[1] != NULL) {
                mpMorf[1]->setPlaySpeed(0.0f);
                mpMorf[1]->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                mpMorf[1]->setPlaySpeed(play_speed);
            }
        } else {
            mpMorf[0]->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            if (mpMorf[1] != NULL) {
                mpMorf[1]->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            }

            if (checkEndAnm(play_speed)) {
                ++field_0xe26;
            }
        }
    }

    if (field_0xdcc & 0x80) {
        play_speed = mBtkAnm.getPlaySpeed();
        if (field_0xdcc & 2) {
            mBtkAnm.setPlaySpeed(0.0f);
        }

        ctrlBtk();
        mBtkAnm.play();
        mBtkAnm.setPlaySpeed(play_speed);
    }

    if (field_0xdcc & 0x100) {
        play_speed = mBrkAnm.getPlaySpeed();
        if (field_0xdcc & 4) {
            mBrkAnm.setPlaySpeed(0.0f);
        }

        mBrkAnm.play();
        mBrkAnm.setPlaySpeed(play_speed);
    }

    if (field_0xdcc & 0x200) {
        play_speed = mBpkAnm.getPlaySpeed();
        if (field_0xdcc & 8) {
            mBpkAnm.setPlaySpeed(0.0f);
        }

        mBpkAnm.play();
        mBpkAnm.setPlaySpeed(play_speed);
    }

    field_0xdcc &= ~0x403F;
    if (field_0x15a4 & 0x40) {
        play_speed = field_0x1588.getPlaySpeed();
        if (field_0x15a4 & 1) {
            field_0x1588.setPlaySpeed(0.0f);
        }

        field_0x1588.play();
        field_0x1588.setPlaySpeed(play_speed);
    }

    field_0x15a4 &= ~0x403F;
}

/* 80A3949C-80A39558 00EB7C 00BC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlBtk() {
    if (mpMatAnm) {
        if (field_0xe30 != 0 && mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);

            if (field_0xe31 != 0) {
                mpMatAnm->setMorfFrm(field_0xe31);
                field_0xe31 = 0;
            }

            mpMatAnm->onEyeMoveFlag();
            return 1;
        }

        if (field_0xe31 != 0) {
            mpMatAnm->setMorfFrm(field_0xe31);
            field_0xe31 = 0;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return 0;
}

/* 80A39558-80A395DC 00EC38 0084+00 1/1 0/0 0/0 .text            setMtx__10daNpc_Kn_cFv */
void daNpc_Kn_c::setMtx() {
    J3DModel* model = mpMorf[0]->getModel();
    // J3DModelData* data = model->getModelData(); // debug used this?
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mTargetAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (field_0xdcc & 0x400) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mpMorf[0]->modelCalc();
}

/* 80A395DC-80A39684 00ECBC 00A8+00 1/1 0/0 0/0 .text            ctrlFaceMotion__10daNpc_Kn_cFv */
void daNpc_Kn_c::ctrlFaceMotion() {
    int int_play;
    f32 f32_play;
    if (mMotionSeqMngr1.play(field_0xe28, &int_play, &f32_play)) {
        setFaceMotionAnm(int_play, true);
        if (f32_play < 0.0f) {
            mpMorf[0]->setMorf(field_0xab4);
            if (mpMorf[1] != NULL) {
                mpMorf[1]->setMorf(field_0xab4);
            }
        } else {
            mpMorf[0]->setMorf(f32_play);
            if (mpMorf[1] != NULL) {
                mpMorf[1]->setMorf(f32_play);
            }
        }
    }
}

/* 80A39684-80A39738 00ED64 00B4+00 1/1 0/0 0/0 .text            ctrlMotion__10daNpc_Kn_cFv */
void daNpc_Kn_c::ctrlMotion() {
    int p2;
    f32 p3;

    if (mMotionSeqMngr2.play(field_0xe26, &p2, &p3)) {
        int asdf = false;
        if (p3 < -1.0f) {
            asdf = true;
        }

        setMotionAnm(p2, p3 < 0.0f ? field_0xab8 : p3, asdf);

        if (field_0xABC != 0) {
            mpMorf[0]->setMorf(0.0f);

            if (mpMorf[1]) {
                mpMorf[1]->setMorf(0.0f);
            }
        }
    }
}

/* 80A39738-80A3989C 00EE18 0164+00 1/1 0/0 0/0 .text ctrlMsgAnm__10daNpc_Kn_cFPiPiP10fopAc_ac_ci
 */
int daNpc_Kn_c::ctrlMsgAnm(int* param_0, int* param_1, fopAc_ac_c* param_2, int param_3) {
    *param_0 = -1;
    *param_1 = -1;
    if (param_3 || eventInfo.checkCommandTalk() || mStaffId != -1) {
        if (dComIfGp_event_getTalkPartner() == param_2) {
            msg_class* msg_p = dMsgObject_c::getActor();
            JUT_ASSERT(0x440, 0 != msg_p);
            if (msg_p->mode == 2 || msg_p->mode == 3) {
                field_0xdd0 = -1;
            } else if (msg_p->mode == 6) {
                if (msg_p->msg_idx != field_0xdd0) {
                    *param_0 = dComIfGp_getMesgFaceAnimeAttrInfo();
                    *param_1 = dComIfGp_getMesgAnimeAttrInfo();
                    field_0xdd0 = msg_p->msg_idx;
                }

                if (dMsgObject_isMouthCheck()) {
                    field_0xdcc &= ~0x4000;
                } else {
                    field_0xdcc |= 0x4000;
                }

                field_0xddc = 20;
            } else {
                if (field_0xdcc & 0x4000) {
                    field_0xdcc &= ~0x4000;
                }

                field_0xdd0 = -1;
            }
        } else {
            field_0xdd0 = -1;
            if (field_0xddc) {
                field_0xddc = 1;
            }
        }
    }

    if (param_3 == 0) {
        cLib_calcTimer(&field_0xddc);
    }

    return field_0xddc;
}

/* 80A3989C-80A39BBC 00EF7C 0320+00 1/0 0/0 0/0 .text ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel
 */
int daNpc_Kn_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

bool asdf_func(char* str) {
    if (0 == strcmp(str, "DEFAULT_GETITEM")) {
        return true;
    }

    return false;
}

/* 80A39BBC-80A39DBC 00F29C 0200+00 1/0 0/0 0/0 .text            evtProc__10daNpc_Kn_cFv */
int daNpc_Kn_c::evtProc() {
    // NONMATCHING
}

/* 80A39DBC-80A39F84 00F49C 01C8+00 1/0 0/0 0/0 .text            setFootPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::setFootPos() {
    if (getFootLJointNo() >= 0) {
        field_0xD88 = field_0xD70;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootLJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xd58);
        field_0xD70 = field_0xd58 - current.pos;
    }

    if (getFootRJointNo() >= 0) {
        field_0xD94 = field_0xD7C;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootRJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xD64);
        field_0xD7C = field_0xD64 - current.pos;
    }

    if (field_0xABC != 0) {
        field_0xD88 = field_0xD70;
        field_0xD94 = field_0xD7C;
    }
}

/* 80A39F84-80A3A254 00F664 02D0+00 1/0 0/0 0/0 .text            setFootPrtcl__10daNpc_Kn_cFP4cXyzf
 */
void daNpc_Kn_c::setFootPrtcl(cXyz* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A3A254-80A3A25C 00F934 0008+00 1/0 0/0 0/0 .text            checkCullDraw__10daNpc_Kn_cFv */
bool daNpc_Kn_c::checkCullDraw() {
    return false;
}

/* 80A3A25C-80A3A2A8 00F93C 004C+00 1/0 0/0 0/0 .text            twilight__10daNpc_Kn_cFv */
void daNpc_Kn_c::twilight() {
    if (field_0xABD != 0) {
        attention_info.flags |= 0x400000;
        field_0xe32 = 0;
        attention_info.flags |= 0x800000;
        setHitodamaPrtcl();
    }
}

/* 80A3A2A8-80A3A404 00F988 015C+00 1/0 0/0 0/0 .text            evtOrder__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtOrder() {
    if (strlen(mpEventData[mEvtIdx].eventName) != 0) {
        if (strlen(field_0x5B8[mpEventData[mEvtIdx].num])) {
            eventInfo.setArchiveName(field_0x5B8[mpEventData[mEvtIdx].num]);
            dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
        }

        field_0xe24 = dComIfGp_getEventManager().getEventIdx(this, mpEventData[mEvtIdx].eventName,0xff);
        fopAcM_orderOtherEventId(this,field_0xe24,0xff,0xffff,6,1);
        
    } else {
        u32 flag_check = attention_info.flags;

        if (flag_check & 8 || flag_check & 2) {
            eventInfo.onCondition(1);

            if (chkXYItems()) {
                eventInfo.onCondition(32);
            }

            if (field_0xe38 != 0) {
                fopAcM_orderSpeakEvent(this,0,0);
            }
        }
    }
}

/* 80A3A404-80A3A504 00FAE4 0100+00 1/1 0/0 0/0 .text            evtChange__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtChange() {
    if (strlen(mpEventData[mEvtIdx].eventName) != 0) {
        if (strlen(field_0x5B8[mpEventData[mEvtIdx].num])) {
            eventInfo.setArchiveName(field_0x5B8[mpEventData[mEvtIdx].num]);
            dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
        }

        field_0xe24 = dComIfGp_getEventManager().getEventIdx(this, mpEventData[mEvtIdx].eventName,0xff);
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this,field_0xe24,1,0xffff);
    }
}

/* 80A3A504-80A3A568 00FBE4 0064+00 1/0 0/0 0/0 .text            clrParam__10daNpc_Kn_cFv */
void daNpc_Kn_c::clrParam() {
    field_0xDB2 = mTargetAngle;
    mCutType = 0;
    memset((void*)&mEvtIdx,0,(int)(void*)&field_0xe3c - (int)(void*)&mEvtIdx); // fake match?
    mJntAnm.clrDirectFlag();
}

/* 80A3A568-80A3A7C0 00FC48 0258+00 2/2 0/0 0/0 .text            setFaceMotionAnm__10daNpc_Kn_cFib
 */
bool daNpc_Kn_c::setFaceMotionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80A3A7C0-80A3AA58 00FEA0 0298+00 2/2 0/0 0/0 .text            setMotionAnm__10daNpc_Kn_cFifi */
bool daNpc_Kn_c::setMotionAnm(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A3AA58-80A3AAF0 010138 0098+00 10/10 0/0 0/0 .text            setPos__10daNpc_Kn_cF4cXyz */
void daNpc_Kn_c::setPos(cXyz i_pos) {
    i_pos.y += 500.0f;
    mGndChk.SetPos(&i_pos);
    i_pos.y = dComIfG_Bgsp().GroundCross(&mGndChk);
    current.pos = i_pos;
    old.pos = current.pos;
}

/* 80A3AAF0-80A3AB18 0101D0 0028+00 35/35 0/0 0/0 .text            setAngle__10daNpc_Kn_cFs */
void daNpc_Kn_c::setAngle(s16 i_angle) {
    current.angle.y = i_angle;
    shape_angle.y = current.angle.y;
    mTargetAngle.y = current.angle.y;
    field_0xDB2.y = mTargetAngle.y;
    old.angle.y = current.angle.y;
}

/* 80A3AB18-80A3AC24 0101F8 010C+00 1/1 0/0 0/0 .text
 * chkActorInSight__10daNpc_Kn_cFP10fopAc_ac_cfs                */
int daNpc_Kn_c::chkActorInSight(fopAc_ac_c* actor, f32 arg1, s16 arg2) {
    if (arg1 < 180.0f) {
        s16 sVar1 = cM_deg2s(arg1);
        cXyz sp34 = getAttnPos(actor);
        cSGlobe cStack_48(attention_info.position - sp34);
        cSAngle acStack_4c(cSAngle(cStack_48.U().Inv()) - arg2);
        s16 sVar2 = acStack_4c.Val();
        if (sVar2 < 0) {
            sVar2 = -sVar2;
        }

        return (sVar2 > sVar1) == 0;
    }

    return 1;
}

/* 80A3AC24-80A3ACD4 010304 00B0+00 1/1 0/0 0/0 .text chkPointInArea__10daNpc_Kn_cF4cXyz4cXyzfffs
 */
int daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, f32 param_2, f32 param_3,
                                    f32 param_4, s16 param_5) {
    // NONMATCHING
}

/* 80A3ACD4-80A3AD50 0103B4 007C+00 1/1 0/0 0/0 .text
 * chkPointInArea__10daNpc_Kn_cF4cXyz4cXyz4cXyzs                */
void daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, cXyz param_2, s16 param_3) {
    // NONMATCHING
}

/* 80A3AD50-80A3AF50 010430 0200+00 1/1 0/0 0/0 .text            chkFindPlayer__10daNpc_Kn_cFis */
int daNpc_Kn_c::chkFindPlayer(int arg0, s16 arg1) {
    cXyz attn_pos = getAttnPos(daPy_getPlayerActorClass());
    int dbg_r27 = (arg0 == 0) ? attention_info.distances[3] : attention_info.distances[1];
    f32 dist_max = (arg0 == 0) ? dComIfGp_getAttention()->getDistTable(dbg_r27).mDistMax :
                                 dComIfGp_getAttention()->getDistTable(dbg_r27).mDistMaxRelease;
    f32 dbg_f29 = -1.0f * dComIfGp_getAttention()->getDistTable(dbg_r27).mLowerY;
    f32 dbg_f28 = -1.0f * dComIfGp_getAttention()->getDistTable(dbg_r27).mUpperY;
    int mAngleSelect = dComIfGp_getAttention()->getDistTable(dbg_r27).mAngleSelect;

    f32 dbg_f31 = 180.0f;
    if (mAngleSelect & 8) {
        dbg_f31 = 30.0f;
    } else if (mAngleSelect & 0x10) {
        dbg_f31 = 45.0f;
    } else if (mAngleSelect & 0x20) {
        dbg_f31 = 60.0f;
    } else if (mAngleSelect & 0x40) {
        dbg_f31 = 90.0f;
    } else if (mAngleSelect & 0x80) {
        dbg_f31 = 110.0f;
    } else if (mAngleSelect & 0x100) {
        dbg_f31 = 135.0f;
    }

    int pnt_chk = chkPointInArea(attn_pos, attention_info.position, dist_max, dbg_f29, dbg_f28, 0);
    if (pnt_chk && chkActorInSight(daPy_getPlayerActorClass(), dbg_f31, arg1)) {
        return 1;
    }

    return 0;
}

/* 80A3AF64-80A3B000 010644 009C+00 1/1 0/0 0/0 .text            srchPlayerActor__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::srchPlayerActor() {
    // NONMATCHING
}

/* 80A3B000-80A3B074 0106E0 0074+00 2/2 0/0 0/0 .text getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c */
cXyz daNpc_Kn_c::getAttnPos(fopAc_ac_c* param_0) {
    cXyz pos(param_0->attention_info.position);

    if (fopAcM_GetName(param_0) == PROC_ALINK) {
        f32 offset = static_cast<daPy_py_c*>(param_0)->getAttentionOffsetY();
        pos.y -= offset;
    }

    return pos;
}

/* 80A3B074-80A3B220 010754 01AC+00 1/1 0/0 0/0 .text            turn__10daNpc_Kn_cFsii */
BOOL daNpc_Kn_c::turn(s16 arg0, int arg1, int arg2) {
    if (field_0xe00 == 0) {
        field_0xe04 = fabsf(cM_sht2d((s16)(arg0 - field_0xdfa)));
        field_0xe04 = (field_0xe04 / 180.0f) * arg1;
        field_0xe04 = (int) field_0xe04 + 1;
        if (field_0xe04 < 8.0f) {
            field_0xe04 = 8.0f;
        }
    }

    s16 sVar1 = field_0xdfa;
    int o_arg = arg0;
    if (arg2 == 0) {
        arg2 = ((s16)(arg0 - field_0xdfa) >= 0) ? 1 : -1;
    }

    int dbg_r30 = (u16) (o_arg - sVar1);
    if (arg2 == -1) {
        dbg_r30 = -(u16) (0xFFFF - dbg_r30);
    }

    int offset = dbg_r30 * cM_ssin((s16) field_0xe00);
    field_0xe00 += (s16) (16384.0f / field_0xe04);
    if ((u16)field_0xe00 < 0x4000) {
        mTargetAngle.y = field_0xdfa + offset;
    } else {
        mTargetAngle.y = arg0;
        field_0xe00 = 0x4000;
    }

    return arg0 == mTargetAngle.y;
}

/* 80A3B220-80A3B3E8 010900 01C8+00 19/19 0/0 0/0 .text            step__10daNpc_Kn_cFsiiii */
s32 daNpc_Kn_c::step(s16 param_0, int param_1, int param_2, int param_3, int param_4) {
    // NONMATCHING
}

/* 80A3B3E8-80A3B448 010AC8 0060+00 20/20 0/0 0/0 .text initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c */
s32 daNpc_Kn_c::initTalk(int param_0, fopAc_ac_c** param_1) {
    mFlow.init(this,param_0, 0, param_1);
    speedF = 0.0f;
    speed.setall(0.0f);
    return 1;
}

/* 80A3B448-80A3B5EC 010B28 01A4+00 20/20 0/0 0/0 .text talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
 */
BOOL daNpc_Kn_c::talkProc(int* param_0, int param_1, fopAc_ac_c** param_2, int param_3) {
    // NONMATCHING
}

// FIXME: dummy functions to get rodata to align.
f64 dummy_lits_00(int sel) {
    switch (sel) {
        case 0: return 0.5;
        case 1: return 3.0;
        default: return 0.0;
    }
}
f32 dummy_lits_01(int sel) {
    switch (sel) {
        case 0: return 0.85f;
        case 1: return 6.0f;
        default: return 1e9f;
    }
}

/* 80A3B5EC-80A3B708 010CCC 011C+00 1/1 0/0 0/0 .text            setHitodamaPrtcl__10daNpc_Kn_cFv */
void daNpc_Kn_c::setHitodamaPrtcl() {
    // nonmatching
    static u16 const id[2] = {
        0x8497,
        0x8498,
    };
    cXyz pos(eyePos);

    for (int i = 0; i < 2; i++) {
        tevStr.mLightObj.mLightObj.dummy[i] = dComIfGp_particle_set(tevStr.mLightObj.mLightObj.dummy[i],
                                                                    id[i], &pos, &mTargetAngle, 0);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(tevStr.mLightObj.mLightObj.dummy[i]);
        if (emitter) {
            u8 alpha;

            if (dComIfGs_wolfeye_effect_check() == 0) {
                alpha = 0xff;
            } else {
                alpha = 0;
            }

            emitter->setGlobalTranslation(pos.x,pos.y,pos.z);
            emitter->setGlobalAlpha(alpha);
        }
    }
}

/* 80A3B708-80A3B720 010DE8 0018+00 1/0 0/0 0/0 .text            decTmr__10daNpc_Kn_cFv */
void daNpc_Kn_c::decTmr() {
    if (mTimer == 0) {
        return;
    }

    mTimer--;
}
