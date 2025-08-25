//
// Translation Unit: d_a_hozelda
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_hozelda.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_horse.h"
#include "d/actor/d_a_b_gnd.h"
#include "d/actor/d_a_arrow.h"

struct daHoZelda_hio_c1 {
    /* 0x0 */ s16 bow_search_y_angle;
    /* 0x2 */ s16 bow_start_angle;
    /* 0x4 */ s16 bow_end_angle;
    /* 0x8 */ f32 bow_start_distance;
    /* 0xC */ f32 bow_end_distance;
};

struct daHoZelda_hio_c0 {
    static daHoZelda_hio_c1 const m;
};

/* 80845E98-80845EAC 000078 0014+00 1/1 0/0 0/0 .text daHoZelda_searchGanon__FP10fopAc_ac_cPv */
static void* daHoZelda_searchGanon(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_B_GND) {
        return i_actor;
    }

    return NULL;
}

/* 80848E3C-80848E44 000000 0008+00 15/15 0/0 0/0 .rodata          l_arcName */
static char const l_arcName[8] = "HoZelda";

/* 80848E44-80848E54 000008 0010+00 0/5 0/0 0/0 .rodata          m__16daHoZelda_hio_c0 */
const daHoZelda_hio_c1 daHoZelda_hio_c0::m = {
    0x38E,
    0x2AAA,
    0x4000,
    3500.0f,
    4000.0f,
};

bool daHoZelda_matAnm_c::mEyeMoveFlg;
u8 daHoZelda_matAnm_c::mMorfFrame;

/* 80845EAC-80845EDC 00008C 0030+00 2/2 0/0 0/0 .text            init__18daHoZelda_matAnm_cFv */
void daHoZelda_matAnm_c::init() {
    field_0xf4 = 0.0f;
    field_0xf8 = 0.0f;
    mNowOffsetX = 0.0f;
    mNowOffsetY = 0.0f;

    mEyeMoveFlg = false;
    mMorfFrame = 0;
}

/* 80845EDC-80846000 0000BC 0124+00 1/0 0/0 0/0 .text calc__18daHoZelda_matAnm_cCFP11J3DMaterial
 */
void daHoZelda_matAnm_c::calc(J3DMaterial* i_material) const {
    J3DMaterialAnm::calc(i_material);

    for (u32 i = 0; i < 8; i++) {
        if (getTexMtxAnm(i).getAnmFlag()) {
            J3DTexMtxInfo& texmtx = i_material->getTexGenBlock()->getTexMtx(i)->getTexMtxInfo();
            
            if (mMorfFrame != 0) {
                f32 var_f31 = 1.0f / (mMorfFrame + 1);
                texmtx.mSRT.mTranslationX = field_0xf4 * (1.0f - var_f31) + texmtx.mSRT.mTranslationX * var_f31;
                texmtx.mSRT.mTranslationY = field_0xf8 * (1.0f - var_f31) + texmtx.mSRT.mTranslationY * var_f31;
            } else if (mEyeMoveFlg) {
                texmtx.mSRT.mTranslationX = mNowOffsetX;
                texmtx.mSRT.mTranslationY = mNowOffsetY;
            }

            const_cast<f32&>(field_0xf4) = texmtx.mSRT.mTranslationX;
            const_cast<f32&>(field_0xf8) = texmtx.mSRT.mTranslationY;
        }
    }
}

/* 80846000-8084642C 0001E0 042C+00 1/1 0/0 0/0 .text            createHeap__11daHoZelda_cFv */
int daHoZelda_c::createHeap() {
    mpZeldaModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 0x23), 0, 0x11020284);
    if (mpZeldaModel == NULL) {
        return 0;
    }

    for (int i = 0; i < 2; i++) {
        mpMatAnm[i] = new daHoZelda_matAnm_c();
        if (mpMatAnm[i] == NULL) {
            return 0;
        }
    }

    J3DTransformInfo* transinfo_buf = new J3DTransformInfo[47];
    if (transinfo_buf == NULL) {
        return 0;
    }

    Quaternion* quat_buf = new Quaternion[47];
    if (quat_buf == NULL) {
        return 0;
    }

    field_0x5c4 = new mDoExt_MtxCalcOldFrame(transinfo_buf, quat_buf);
    if (field_0x5c4 == NULL) {
        return 0;
    }

    field_0x5a8 = new mDoExt_MtxCalcAnmBlendTblOld(field_0x5c4, 3, mAnmRatioPack);
    if (field_0x5a8 == NULL) {
        return 0;
    }

    void* res = dComIfG_getObjectRes(l_arcName, 0x2F);
    if (!mEyeBtp.init(mpZeldaModel->getModelData(), (J3DAnmTexPattern*)res, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    res = dComIfG_getObjectRes(l_arcName, 0x26);
    if (!mEyeBtk.init(mpZeldaModel->getModelData(), (J3DAnmTextureSRTKey*)res, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mpBowModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 0x20), 0x80000, 0x11000084);
    if (mpBowModel == NULL) {
        return 0;
    }

    if (!mBowBck.init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 0xC), 1, 0, 1.0f, 0, -1, false)) {
        return 0;
    }

    mpHIO = new daHoZelda_hio_c();
    if (mpHIO == NULL) {
        return 0;
    }

    return 1;
}

/* 808466F8-80846718 0008D8 0020+00 1/1 0/0 0/0 .text daHoZelda_createHeap__FP10fopAc_ac_c */
static int daHoZelda_createHeap(fopAc_ac_c* i_this) {
    return ((daHoZelda_c*)i_this)->createHeap();
}

/* 80846718-8084696C 0008F8 0254+00 1/1 0/0 0/0 .text            modelCallBack__11daHoZelda_cFUs */
void daHoZelda_c::modelCallBack(u16 i_jntNo) {
    if (i_jntNo == 0) {
        J3DTransformInfo sp24 = *field_0x5c4->getOldFrameTransInfo(0);
        J3DTransformInfo* temp_r28 = field_0x5c4->getOldFrameTransInfo(0);
        
        sp24.mTranslate.x -= mpRideOffset->x;
        sp24.mTranslate.y -= mpRideOffset->y;
        sp24.mTranslate.z -= mpRideOffset->z;

        mDoMtx_stack_c::transS(temp_r28->mTranslate.x, temp_r28->mTranslate.y, temp_r28->mTranslate.z);
        mDoMtx_stack_c::quatM(field_0x5c4->getOldFrameQuaternion(0));
        mDoMtx_stack_c::inverse();

        MtxPtr var_r29 = mpZeldaModel->getAnmMtx(0);
        cMtx_concat(var_r29, mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        
        MTXQuat(var_r29, field_0x5c4->getOldFrameQuaternion(0));
        var_r29[0][3] = sp24.mTranslate.x;
        var_r29[1][3] = sp24.mTranslate.y;
        var_r29[2][3] = sp24.mTranslate.z;

        cMtx_concat(J3DSys::mCurrentMtx, var_r29, J3DSys::mCurrentMtx);
        cMtx_copy(J3DSys::mCurrentMtx, var_r29);

        if (mBowMode != 0 || field_0x6da != 0) {
            mAnmRatioPack[2].setRatio(1.0f);
        }
    } else if (i_jntNo == 0x17) {
        if (mBowMode != 0 || field_0x6da != 0) {
            mAnmRatioPack[2].setRatio(0.0f);
        }
    } else {
        mDoMtx_stack_c::copy(mpZeldaModel->getAnmMtx(i_jntNo));
        if (i_jntNo == 1) {
            mDoMtx_stack_c::XrotM(mBodyAngle.y);
            mDoMtx_stack_c::ZrotM(shape_angle.x - mBodyAngle.x);
        } else {
            mDoMtx_stack_c::XrotM(mNeckAngle.y);
            mDoMtx_stack_c::ZrotM(-mNeckAngle.x);
        }

        mpZeldaModel->setAnmMtx(i_jntNo, mDoMtx_stack_c::get());
        mDoMtx_copy(mpZeldaModel->getAnmMtx(i_jntNo), J3DSys::mCurrentMtx);
    }
}

/* 8084696C-808469B0 000B4C 0044+00 1/1 0/0 0/0 .text daHoZelda_modelCallBack__FP8J3DJointi */
static int daHoZelda_modelCallBack(J3DJoint* i_joint, int param_1) {
    u16 jnt_no = i_joint->getJntNo();
    daHoZelda_c* hozelda = (daHoZelda_c*)j3dSys.getModel()->getUserArea();
    
    if (param_1 == 0) {
        hozelda->modelCallBack(jnt_no);
    }

    return 1;
}

/* 808469B0-80846C4C 000B90 029C+00 1/1 0/0 0/0 .text            create__11daHoZelda_cFv */
int daHoZelda_c::create() {
    fopAcM_SetupActor(this, daHoZelda_c);

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daHoZelda_createHeap, 0xA240)) {
            return cPhs_ERROR_e;
        }

        mSound.init(&current.pos, &eyePos, 3, 1);
        mReverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));

        setRideOffset();
        model = mpZeldaModel;
        
        J3DModelData* modelData = mpZeldaModel->getModelData();

        modelData->getJointNodePointer(0)->setMtxCalc(field_0x5a8);
        mpZeldaModel->setUserArea((u32)this);

        modelData->getJointNodePointer(0)->setCallBack(daHoZelda_modelCallBack);
        modelData->getJointNodePointer(1)->setCallBack(daHoZelda_modelCallBack);
        modelData->getJointNodePointer(23)->setCallBack(daHoZelda_modelCallBack);
        modelData->getJointNodePointer(4)->setCallBack(daHoZelda_modelCallBack);
        modelData->getMaterialNodePointer(4)->setMaterialAnm(mpMatAnm[0]);
        modelData->getMaterialNodePointer(5)->setMaterialAnm(mpMatAnm[1]);

        mpMatAnm[0]->init();
        mpMatAnm[1]->init();

        setSingleAnime(0x1C, 1.0f, 0.0f, -1, -1.0f);
        resetUpperAnime();
        mBowAnmID = 0xC;
        mBowBck.setFrame(mBowBck.getEndFrame());
        setMatrix();
        mpZeldaModel->calc();
        setBowModel();
    }

    return phase_state;
}

/* 80846D90-80846DB0 000F70 0020+00 1/0 0/0 0/0 .text            daHoZelda_Create__FP10fopAc_ac_c */
static int daHoZelda_Create(fopAc_ac_c* i_this) {
    daHoZelda_c* a_this = (daHoZelda_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return a_this->create();
}

/* 80846DB0-80846F24 000F90 0174+00 1/1 0/0 0/0 .text            __dt__11daHoZelda_cFv */
daHoZelda_c::~daHoZelda_c() {
    dComIfG_resDelete(&mPhase, l_arcName);

    daHorse_c* horse = dComIfGp_getHorseActor();
    if (horse != NULL) {
        horse->onBagMaterial();
    }

    daPy_py_c* player = daPy_getLinkPlayerActorClass();
    if (player != NULL) {
        player->offHorseZelda();
    }

    mSound.deleteObject();
}

/* 80846F24-80846F4C 001104 0028+00 1/0 0/0 0/0 .text            daHoZelda_Delete__FP11daHoZelda_c
 */
static int daHoZelda_Delete(daHoZelda_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->~daHoZelda_c();
    return 1;
}

/* 80846F4C-8084718C 00112C 0240+00 1/1 0/0 0/0 .text setDoubleAnime__11daHoZelda_cFfffUsUsf */
int daHoZelda_c::setDoubleAnime(f32 i_ratio, f32 i_anmSpeedA, f32 i_anmSpeedB, u16 i_anmIdxA, u16 i_anmIdxB,
                                f32 i_morf) {
    J3DAnmTransform* var_r27 = mAnmRatioPack[0].getAnmTransform();

    f32 var_f29;
    if (var_r27 != NULL && mAnmRatioPack[1].getAnmTransform() != NULL) {
        var_f29 = var_r27->getFrame() / var_r27->getFrameMax();
    } else {
        var_f29 = 0.0f;
    }

    J3DAnmTransform* bckA = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, i_anmIdxA);
    J3DAnmTransform* bckB = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, i_anmIdxB);
    field_0x6e4[0] = i_anmIdxA;
    field_0x6e4[1] = i_anmIdxB;

    mAnmRatioPack[0].setRatio(1.0f - i_ratio);
    mAnmRatioPack[1].setRatio(i_ratio);

    f32 frame_maxA = bckA->getFrameMax();
    f32 frame_maxB = bckB->getFrameMax();
    f32 temp_f25 = 1.0f / frame_maxA;
    f32 speed = i_anmSpeedA + (i_ratio * (((i_anmSpeedB * frame_maxA) / frame_maxB) - i_anmSpeedA));

    mFrameCtrl[0].setFrameCtrl(bckA->getAttribute(), 0, frame_maxA, speed, var_f29 * frame_maxA);
    bckA->setFrame(mFrameCtrl[0].getFrame());

    mFrameCtrl[1].setFrameCtrl(bckB->getAttribute(), 0, frame_maxB, temp_f25 * (speed * frame_maxB), var_f29 * frame_maxB);
    bckB->setFrame(mFrameCtrl[1].getFrame());

    mAnmRatioPack[0].setAnmTransform(bckA);
    mAnmRatioPack[1].setAnmTransform(bckB);

    if (i_morf >= 0.0f) {
        field_0x5c4->initOldFrameMorf(i_morf, 0, 47);
    }

    return 1;
}

/* 8084718C-80847234 00136C 00A8+00 1/1 0/0 0/0 .text            setUpperAnime__11daHoZelda_cFUs */
int daHoZelda_c::setUpperAnime(u16 i_anmNo) {
    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, i_anmNo);
    mUpperAnmID = i_anmNo;
    mAnmRatioPack[2].setRatio(0.0f);
    mAnmRatioPack[2].setAnmTransform(bck);
    mFrameCtrl[2].setFrameCtrl(bck->getAttribute(), 0, bck->getFrameMax(), 1.0f, 0.0f);
    bck->setFrame(0.0f);
    field_0x5c4->initOldFrameMorf(3.0f, 1, 23);
    return 1;
}

/* 80847234-808472C0 001414 008C+00 3/3 0/0 0/0 .text            resetUpperAnime__11daHoZelda_cFv */
void daHoZelda_c::resetUpperAnime() {
    if (mUpperAnmID != 0xFFFF) {
        mUpperAnmID = 0xFFFF;
        mAnmRatioPack[2].setRatio(0.0f);
        mAnmRatioPack[2].setAnmTransform(NULL);

        if (field_0x6da != 0) {
            setNormalFace();
            field_0x6da = 0;
        }

        mBowMode = 0;
        field_0x5c4->initOldFrameMorf(3.0f, 1, 23);
    }
}

/* 808472C0-80847430 0014A0 0170+00 2/2 0/0 0/0 .text setSingleAnime__11daHoZelda_cFUsffsf */
int daHoZelda_c::setSingleAnime(u16 i_anmIdx, f32 i_speed, f32 i_startF, s16 i_endF, f32 i_morf) {
    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, i_anmIdx);

    field_0x6e4[0] = i_anmIdx;
    field_0x6e4[1] = 0xFFFF;

    mAnmRatioPack[0].setRatio(1.0f);
    mAnmRatioPack[1].setRatio(0.0f);
    mAnmRatioPack[0].setAnmTransform(bck);
    mAnmRatioPack[1].setAnmTransform(NULL);

    s16 end_frame;
    if (i_endF < 0) {
        end_frame = bck->getFrameMax();
    } else {
        end_frame = i_endF;
    }

    f32 frame;
    if (i_speed < 0.0f) {
        frame = end_frame;
    } else {
        frame = i_startF;
    }

    mFrameCtrl[0].setFrameCtrl(bck->getAttribute(), i_startF, end_frame, i_speed, frame);
    bck->setFrame(frame);

    if (i_morf >= 0.0f) {
        field_0x5c4->initOldFrameMorf(i_morf, 0, 47);
    }

    return 1;
}

/* 80847430-80847574 001610 0144+00 1/1 0/0 0/0 .text            animePlay__11daHoZelda_cFv */
void daHoZelda_c::animePlay() {
    mFrameCtrl[0].updateFrame();
    mAnmRatioPack[0].getAnmTransform()->setFrame(mFrameCtrl[0].getFrame());

    for (int i = 1; i < 3; i++) {
        if (mAnmRatioPack[i].getAnmTransform() != NULL) {
            mFrameCtrl[i].updateFrame();
            mAnmRatioPack[i].getAnmTransform()->setFrame(mFrameCtrl[i].getFrame());
        }
    }

    mEyeBtk.play();

    if (field_0x6da == 0 && field_0x6dd == 0) {
        f32 btp_frame = mEyeBtp.getFrame();
        if (btp_frame > 0.0f) {
            btp_frame += 1.0f;
            if (btp_frame > mEyeBtp.getBtpAnm()->getFrameMax()) {
                btp_frame = 0.0f;
            }
        } else if (cM_rnd() < 0.012f) {
            btp_frame += 1.0f;
        }

        mEyeBtp.setFrame(btp_frame);
    } else {
        mEyeBtp.play();
    }

    mBowBck.play();
}

/* 80847574-808475F0 001754 007C+00 2/2 0/0 0/0 .text            setEyeBtp__11daHoZelda_cFUs */
void daHoZelda_c::setEyeBtp(u16 i_resNo) {
    void* btp = dComIfG_getObjectRes(l_arcName, i_resNo);
    mEyeBtp.init(mpZeldaModel->getModelData(), (J3DAnmTexPattern*)btp, 1, -1, 1.0f, 0, -1);
}

/* 808475F0-80847670 0017D0 0080+00 2/2 0/0 0/0 .text            setEyeBtk__11daHoZelda_cFUsUc */
void daHoZelda_c::setEyeBtk(u16 i_resNo, u8 param_1) {
    field_0x6de = param_1;
    void* btk = dComIfG_getObjectRes(l_arcName, i_resNo);
    mEyeBtk.init(mpZeldaModel->getModelData(), (J3DAnmTextureSRTKey*)btk, 1, -1, 1.0f, 0, -1);
}

/* 80847670-808476B0 001850 0040+00 2/2 0/0 0/0 .text            setNormalFace__11daHoZelda_cFv */
void daHoZelda_c::setNormalFace() {
    setEyeBtp(0x2F);
    setEyeBtk(0x26, 0);
}

/* 808476B0-80847E44 001890 0794+00 1/1 0/0 0/0 .text            setAnm__11daHoZelda_cFv */
void daHoZelda_c::setAnm() {
    u16 anm_idx[3];
    daHorse_c* horse = (daHorse_c*)dComIfGp_getHorseActor();
    daPy_py_c* player = daPy_getLinkPlayerActorClass();

    if (horse != NULL) {
        u16* anm_p = anm_idx;
        for (int i = 0; i < 3; i++, anm_p++) {
            u16 horse_anm_idx = horse->getAnmIdx(i);
            if (horse_anm_idx == 0x14) {
                *anm_p = 0x16;
            } else if (horse_anm_idx == 0x15) {
                *anm_p = 0x18;
            } else if (horse_anm_idx == 0x16) {
                *anm_p = 0x19;
            } else if (horse_anm_idx == 0xC) {
                *anm_p = 0x14;
            } else if (horse_anm_idx == 0xB) {
                *anm_p = 0x12;
            } else if (horse_anm_idx == 0xA) {
                *anm_p = 0x13;
            } else if (horse_anm_idx == 0x11) {
                *anm_p = 0xF;
            } else if (horse_anm_idx == 0x12 || horse_anm_idx == 0x13) {
                *anm_p = 0xE;
            } else if (horse_anm_idx == 0xFFFF) {
                *anm_p = 0xFFFF;
            } else {
                *anm_p = 0x1C;
            }
        }

        b_gnd_class* ganondorf = (b_gnd_class*)mGndAcKeep.getActor();
        fopAc_ac_c* gnd_actor = mGndAcKeep.getActor();
        int gnd_seen_angleY;

        if (ganondorf != NULL) {
            f32 var_f31 = current.pos.abs2XZ(gnd_actor->current.pos);
            gnd_seen_angleY = fopAcM_seenActorAngleY(this, gnd_actor);
        }

        BOOL gnd_lockon;
        if (dComIfGp_getAttention()->GetLockonList(0) != NULL && dComIfGp_getAttention()->LockonTruth() && dComIfGp_getAttention()->GetLockonList(0)->getActor() == gnd_actor) {
            gnd_lockon = TRUE;
        } else {
            gnd_lockon = FALSE;
        }

        if (anm_idx[0] == 0xE && field_0x6da == 0 && !mDamageInit && field_0x6dd == 0 && player->checkHorseRide() && ganondorf != NULL && ganondorf->checkPiyo() != 1 &&
            ((gnd_seen_angleY < daHoZelda_hio_c0::m.bow_start_angle && gnd_lockon) || (mBowMode != 0 && gnd_seen_angleY < daHoZelda_hio_c0::m.bow_end_angle && (gnd_lockon || mArrowAcKeep.getActor() != NULL))))
        {
            mBowMode = 1;
        } else {
            mBowMode = 0;
        }

        int sp28 = 1;
        int sp24 = 0;
        daPy_frameCtrl_c* frame_ctrl = &mFrameCtrl[1];
        mIsSingleRide = false;
    
        if (!player->checkHorseRide() && (ganondorf == NULL || ganondorf->checkRide() != 1)) {
            if (anm_idx[0] == 0x16) {
                anm_idx[0] = 0x17;
            } else if (ganondorf != NULL && ganondorf->checkZeldaEndDemoCut()) {
                anm_idx[0] = 0x11;
                sp28 = 0;
            } else {
                anm_idx[0] = 0x1B;
                sp28 = 0;
            }

            mIsSingleRide = true;
        } else if (dComIfGp_checkPlayerStatus0(0, 0x20000000)) {
            anm_idx[0] = 7;
            sp28 = 0;
            field_0x6dd = 1;
            sp24 = 1;
        } else if (player->getDemoMode() == 0x5D) {
            anm_idx[0] = 0x10;
            sp28 = 0;
            field_0x6dd = 1;
        }

        if ((anm_idx[0] != 0x1C && anm_idx[0] != 0xE) || player->checkHorseElecDamage()) {
            resetUpperAnime();
            if (field_0x6e4[0] != anm_idx[0]) {
                setSingleAnime(anm_idx[0], 1.0f, 0.0f, -1, horse->getMorfFrame());
                if (field_0x6dd != 0) {
                    if (sp24 != 0) {
                        setEyeBtp(0x2C);
                        setEyeBtk(0x27, 1);
                    } else {
                        setEyeBtp(0x2E);
                        setEyeBtk(0x28, 1);
                    }
                }
            }

            deleteArrow();
        } else if (mBowMode != 0) {
            BOOL anm_end = mFrameCtrl[2].checkAnmEnd();
            anm_idx[0] = 0x1A;
            anm_idx[2] = 0xFFFF;

            if (mUpperAnmID == 9) {
                if (anm_end) {
                    anm_idx[2] = 0x1A;
                    mAnmTimer = 30;
                }
            } else if (mUpperAnmID == 0xA) {
                if (mAnmTimer == 0) {
                    anm_idx[2] = 9;
                    setBowBck(0xC);
                    shootArrow();
                    mSound.startCreatureSound(Z2SE_ZELDA_ARROW_SHOT, 0, mReverb);
                } else {
                    mSound.startCreatureSoundLevel(Z2SE_ZELDA_ARROW_READY, 0, mReverb);
                }
            } else if (mUpperAnmID == 8) {
                mSound.startCreatureSoundLevel(Z2SE_ZELDA_ARROW_READY, 0, mReverb);
                if (anm_end) {
                    anm_idx[2] = 0xA;
                    mAnmTimer = 30;
                }
            } else if (mUpperAnmID == 0x1A) {
                if (mAnmTimer == 0) {
                    mArrowAcKeep.setData(daArrow_c::makeArrow(this, 2));
                    if (mArrowAcKeep.getActor() != NULL) {
                        anm_idx[2] = 8;
                        setBowBck(0xB);
                        mSound.startCreatureSound(Z2SE_ZELDA_ARROW_DRAW, 0, mReverb);
                    }
                }
            } else {
                anm_idx[2] = 0x1A;
                mAnmTimer = 0;
            }

            if (anm_idx[2] != 0xFFFF) {
                setUpperAnime(anm_idx[2]);
                setSingleAnime(anm_idx[0], 1.0f, 0.0f, -1, 4.0f);
            }
        } else {
            if (field_0x6da == 0 && mDamageInit) {
                field_0x6da = 1;
                mBowMode = 0;
                setUpperAnime(0xD);
                setEyeBtp(0x2D);
                setEyeBtk(0x26, 0);
            } else {
                if (field_0x6dd != 0) {
                    field_0x6dd = 0;
                    setNormalFace();
                }

                if (mBowMode != 0 || (field_0x6da != 0 && mFrameCtrl[2].checkAnmEnd())) {
                    resetUpperAnime();
                }
            }

            if (anm_idx[1] == 0xFFFF) {
                anm_idx[1] = anm_idx[0];
            }

            if (field_0x6e4[1] != anm_idx[1] || field_0x6e4[0] != anm_idx[0]) {
                setDoubleAnime(horse->getBlendRate(), 1.0f, 1.0f, anm_idx[0], anm_idx[1], horse->getMorfFrame());
            }

            if (field_0x6e4[0] != 0xE) {
                sp28 = 0;
            }

            if (field_0x6e4[1] == 0xE) {
                frame_ctrl->setFrame(horse->getAnmFrame(1));
                mAnmRatioPack[1].getAnmTransform()->setFrame(frame_ctrl->getFrame());
            }

            deleteArrow();
        }

        if (sp28 != 0) {
            mFrameCtrl[0].setFrame(horse->getAnmFrame(0));
            mAnmRatioPack[0].getAnmTransform()->setFrame(mFrameCtrl[0].getFrame());

            if (field_0x6e4[1] == 0x1A) {
                frame_ctrl->setFrame(mFrameCtrl[0].getFrame());
                mAnmRatioPack[1].getAnmTransform()->setFrame(frame_ctrl->getFrame());
            }
        }
    }
}

/* 80847E44-80847F54 002024 0110+00 2/2 0/0 0/0 .text            setBowModel__11daHoZelda_cFv */
void daHoZelda_c::setBowModel() {
    static const Vec localEyePos = {8.0f, -12.0f, 0.0f};
    static const Vec localHeadCenterPos = {8.0f, 0.0f, 0.0f};

    mDoMtx_multVec(mpZeldaModel->getAnmMtx(4), &localEyePos, &eyePos);
    attention_info.position.set(current.pos.x, 80.0f + current.pos.y, current.pos.z);
    mDoMtx_multVec(mpZeldaModel->getAnmMtx(4), &localHeadCenterPos, &field_0x6f8);

    mDoMtx_stack_c::copy(mpZeldaModel->getAnmMtx(0x11));
    mDoMtx_stack_c::transM(10.0f, -2.0f, 0.0f);
    mDoMtx_stack_c::XYZrotM(cM_deg2s(95.0f), 0, cM_deg2s(10.0f));
    mpBowModel->setBaseTRMtx(mDoMtx_stack_c::get());

    mBowBck.entry(mpBowModel->getModelData());
    mpBowModel->calc();
}

/* 80847F54-80848058 002134 0104+00 2/2 0/0 0/0 .text            setMatrix__11daHoZelda_cFv */
void daHoZelda_c::setMatrix() {
    static const Vec localHorseRidePos = {-5.894f, 52.61f, 4.079f};
    static const Vec localFrontHorseRidePos = {-75.893997f, 57.61f, 4.079f};

    daHorse_c* horse = dComIfGp_getHorseActor();
    if (horse != NULL) {
        const Vec* local_pos;
        if (daPy_getLinkPlayerActorClass()->checkHorseRide()) {
            local_pos = &localHorseRidePos;
        } else {
            local_pos = &localFrontHorseRidePos;
        }

        mDoMtx_multVec(horse->getRootMtx(), local_pos, &current.pos);
        shape_angle = horse->shape_angle;
        current.angle.y = shape_angle.y;

        horse->offBagMaterial();
        daPy_getLinkPlayerActorClass()->onHorseZelda();
    }

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpZeldaModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80848058-80848090 002238 0038+00 1/1 0/0 0/0 .text            shootArrow__11daHoZelda_cFv */
void daHoZelda_c::shootArrow() {
    daArrow_c* arrow = (daArrow_c*)mArrowAcKeep.getActor();
    if (arrow != NULL) {
        arrow->setChargeShoot();
        mArrowAcKeep.clearData();
    }
}

/* 80848090-80848118 002270 0088+00 1/1 0/0 0/0 .text            deleteArrow__11daHoZelda_cFv */
void daHoZelda_c::deleteArrow() {
    daArrow_c* arrow = (daArrow_c*)mArrowAcKeep.getActor();
    if (arrow != NULL) {
        arrow->deleteArrow();
        mArrowAcKeep.clearData();
    }

    if (mBowAnmID != 0xC) {
        setBowBck(0xC);
    }

    if (mUpperAnmID == 9 || mUpperAnmID == 10 || mUpperAnmID == 8 || mUpperAnmID == 0x1A) {
        resetUpperAnime();
    }
}

/* 80848118-8084819C 0022F8 0084+00 2/2 0/0 0/0 .text            setBowBck__11daHoZelda_cFUs */
void daHoZelda_c::setBowBck(u16 i_anmNo) {
    mBowBck.init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, i_anmNo), 1, -1, 1.0f, 0, -1, 1);
    mBowAnmID = i_anmNo;
}

/* 8084819C-80848204 00237C 0068+00 2/2 0/0 0/0 .text            setRideOffset__11daHoZelda_cFv */
void daHoZelda_c::setRideOffset() {
    static const Vec baseRidePos = {0.1f, 236.7f, -63.554f};
    static const Vec frontRidePos = {0.1f, 241.7f, 6.445999f};

    if (daPy_getLinkPlayerActorClass()->checkHorseRide()) {
        mpRideOffset = &baseRidePos;
    } else {
        mpRideOffset = &frontRidePos;
    }
}

/* 80848204-80848254 0023E4 0050+00 2/2 0/0 0/0 .text            clearEyeMove__11daHoZelda_cFv */
void daHoZelda_c::clearEyeMove() {
    mpMatAnm[0]->setNowOffsetX(0.0f);
    mpMatAnm[1]->setNowOffsetX(0.0f);
    mpMatAnm[0]->setNowOffsetY(0.0f);
    mpMatAnm[1]->setNowOffsetY(0.0f);

    if (daHoZelda_matAnm_c::getEyeMoveFlg()) {
        daHoZelda_matAnm_c::offEyeMoveFlg();
        daHoZelda_matAnm_c::setMorfFrame(3);
    }
}

/* 80848254-808484B8 002434 0264+00 1/1 0/0 0/0 .text            setEyeMove__11daHoZelda_cFPC4cXyzss
 */
void daHoZelda_c::setEyeMove(cXyz const* param_0, s16 param_1, s16 param_2) {
    f32 var_f30;
    f32 var_f31;

    if (param_0 != NULL) {
        var_f30 = 0.00012207031f * param_1;
        var_f31 = 0.00012207031f * param_2;
    } else {
        clearEyeMove();
        return;
    }

    if (daHoZelda_matAnm_c::getMorfFrame() == 0) {
        if (var_f31 > 1.0f) {
            var_f31 = 1.0f;
        } else if (var_f31 < -1.0f) {
            var_f31 = -1.0f;
        }

        if (var_f30 > 1.0f) {
            var_f30 = 1.0f;
        } else if (var_f30 < -1.0f) {
            var_f30 = -1.0f;
        }

        f32 var_f27;
        f32 var_f26;
        if (var_f31 > 0.0f) {
            var_f27 = -0.2f * var_f31;
            var_f26 = 0.2f * var_f31;
        } else {
            var_f27 = -0.2f * var_f31;
            var_f26 = 0.2f * var_f31;
        }

        f32 var_f29;
        if (var_f30 > 0.0f) {
            var_f29 = 0.2f * var_f30;
        } else {
            var_f29 = 0.2f * var_f30;
        }

        f32 sp14 = var_f29;
        f32 temp_f1 = JMAFastSqrt((var_f31 * var_f31) + (var_f30 * var_f30));

        if (temp_f1 > 1.0f) {
            f32 sp10 = var_f31 * var_f30;
            if (sp10 < 0.0f) {
                var_f26 *= fabsf(var_f31) / temp_f1;
                sp14 *= fabsf(var_f30) / temp_f1;
            } else {
                var_f27 *= fabsf(var_f31) / temp_f1;
                var_f29 *= fabsf(var_f30) / temp_f1;
            }
        }

        daHoZelda_matAnm_c::onEyeMoveFlg();
        cLib_addCalc(mpMatAnm[0]->getNowOffsetXP(), var_f27, 0.5f, 0.1f, 0.03f);
        cLib_addCalc(mpMatAnm[1]->getNowOffsetXP(), var_f26, 0.5f, 0.1f, 0.03f);
        cLib_addCalc(mpMatAnm[0]->getNowOffsetYP(), var_f29, 0.5f, 0.1f, 0.03f);
        cLib_addCalc(mpMatAnm[1]->getNowOffsetYP(), sp14, 0.5f, 0.1f, 0.03f);
    }
}

/* 808484B8-80848774 002698 02BC+00 1/1 0/0 0/0 .text            setNeckAngle__11daHoZelda_cFv */
void daHoZelda_c::setNeckAngle() {
    daPy_py_c* player = daPy_getLinkPlayerActorClass();
    cXyz* var_r28 = NULL;
    s16 angle_x_target = 0;
    s16 angle_y_target = 0;
    s16 var_r27 = 0;
    s16 var_r26 = 0;

    if (!player->checkHorseRide()) {
        cXyz sp34 = player->current.pos - current.pos;
        int sp18 = cLib_distanceAngleS(sp34.atan2sX_Z(), shape_angle.y);

        f32 var_f31;
        int sp14;
        if (mNeckAngle.y != 0) {
            sp14 = 0x5800;
            var_f31 = 250000.0f;
        } else {
            sp14 = 0x5000;
            var_f31 = 90000.0f;
        }

        if (sp18 <= 0x4000 || (sp18 <= sp14 && sp34.abs2XZ(player->current.pos) < var_f31)) {
            var_r28 = &player->eyePos;
        }
    } else if (mBowMode == 0 && field_0x6da == 0 && player->checkMidnaAtnPos()) {
        var_r28 = player->getMidnaAtnPos();
    }

    if (var_r28 != NULL) {
        cXyz sp28 = eyePos - field_0x6f8;
        s16 sp12 = sp28.atan2sY_XZ() - mNeckAngle.x;
        s16 sp10 = (sp28.atan2sX_Z() - shape_angle.y) - mNeckAngle.y;

        cXyz sp1C = *var_r28 - field_0x6f8;
        s16 spE = sp1C.atan2sY_XZ();
        s16 spC = sp1C.atan2sX_Z() - shape_angle.y;
        s16 spA = spE;
        s16 sp8 = spC;

        angle_x_target = cLib_minMaxLimit<s16>((s16)spE, -10000, 8000);
        angle_y_target = cLib_minMaxLimit<s16>((s16)spC, -20000, 20000);

        var_r27 = angle_x_target >> 1;
        var_r26 = angle_y_target >> 1;

        angle_x_target = var_r27;
        angle_y_target = var_r26;

        var_r27 += (spA - spE);
        var_r26 += (sp8 - spC);
    }

    daPy_addCalcShort(&mNeckAngle.x, angle_x_target, 3, 0x1000, 0x100);
    daPy_addCalcShort(&mNeckAngle.y, angle_y_target, 3, 0x1000, 0x100);

    if (field_0x6de != 0) {
        clearEyeMove();
    } else {
        setEyeMove(var_r28, var_r27, var_r26);
    }
}

/* 80848774-808489CC 002954 0258+00 1/1 0/0 0/0 .text            searchBodyAngle__11daHoZelda_cFv */
// NONMATCHING - load order with cLib_minMaxLimit
void daHoZelda_c::searchBodyAngle() {
    fopAc_ac_c* gnd_actor = mGndAcKeep.getActor();
    s16 angle_x_target = 0;
    s16 angle_y_target = 0;

    if (mBowMode != 0 && gnd_actor != NULL) {
        cXyz sp14;
        mDoMtx_multVecZero(mpZeldaModel->getAnmMtx(1), &sp14);

        cXyz sp8 = gnd_actor->eyePos - sp14;
        sp8.y -= 40.0f;

        if (sp8.abs() >= 1.0f) {
            angle_x_target = cLib_minMaxLimit<s16>(sp8.atan2sY_XZ(), -0x800, 0x2000);
            angle_y_target = cLib_minMaxLimit<s16>((s16)(sp8.atan2sX_Z() - shape_angle.y), -daHoZelda_hio_c0::m.bow_search_y_angle, daHoZelda_hio_c0::m.bow_search_y_angle);
        }
    }

    cLib_addCalcAngleS(&mBodyAngle.x, angle_x_target, 4, 0xC00, 0x180);
    cLib_addCalcAngleS(&mBodyAngle.y, angle_y_target, 4, 0xC00, 0x180);
}

/* 808489CC-80848B44 002BAC 0178+00 1/1 0/0 0/0 .text            execute__11daHoZelda_cFv */
int daHoZelda_c::execute() {
    mReverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));

    mArrowAcKeep.setActor();
    mGndAcKeep.setActor();

    if (mGndAcKeep.getActor() == NULL) {
        mGndAcKeep.setData((fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daHoZelda_searchGanon, NULL));
    }

    daHorse_c* horse = dComIfGp_getHorseActor();
    if (horse != NULL) {
        horse->setZeldaActor(this);
    }

    daHoZelda_matAnm_c::decMorfFrame();
    setRideOffset();

    if (mAnmTimer != 0) {
        mAnmTimer--;
    }

    animePlay();
    setAnm();
    searchBodyAngle();
    setMatrix();
    mpZeldaModel->calc();
    setBowModel();
    setNeckAngle();

    mDamageInit = false;

    if (horse != NULL && !daPy_getLinkPlayerActorClass()->checkHorseRide() && mIsSingleRide) {
        horse->setReinPosHand(6);
    }

    mSound.framework(0, mReverb);
    return 1;
}

/* 80848B44-80848B64 002D24 0020+00 1/0 0/0 0/0 .text            daHoZelda_Execute__FP11daHoZelda_c
 */
static int daHoZelda_Execute(daHoZelda_c* i_this) {
    return i_this->execute();
}

/* 80848B64-80848C68 002D44 0104+00 1/1 0/0 0/0 .text            draw__11daHoZelda_cFv */
int daHoZelda_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpZeldaModel, &tevStr);
    mEyeBtp.entry(mpZeldaModel->getModelData());
    mEyeBtk.entry(mpZeldaModel->getModelData());
    mDoExt_modelEntryDL(mpZeldaModel);
    
    g_env_light.setLightTevColorType_MAJI(mpBowModel, &tevStr);
    mDoExt_modelEntryDL(mpBowModel);

    if (dComIfGp_getHorseActor() != NULL) {
        u32 shadow_id = dComIfGp_getHorseActor()->getShadowID();
        dComIfGd_addRealShadow(shadow_id, mpZeldaModel);
        dComIfGd_addRealShadow(shadow_id, mpBowModel);
    }

    return 1;
}

/* 80848C68-80848C88 002E48 0020+00 1/0 0/0 0/0 .text            daHoZelda_Draw__FP11daHoZelda_c */
static int daHoZelda_Draw(daHoZelda_c* i_this) {
    return i_this->draw();
}

/* 80848F04-80848F24 -00001 0020+00 1/0 0/0 0/0 .data            l_daHoZelda_Method */
static actor_method_class l_daHoZelda_Method = {
    (process_method_func)daHoZelda_Create,
    (process_method_func)daHoZelda_Delete,
    (process_method_func)daHoZelda_Execute,
    (process_method_func)NULL,
    (process_method_func)daHoZelda_Draw,
};

/* 80848F24-80848F54 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_HOZELDA */
extern actor_process_profile_definition g_profile_HOZELDA = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_HOZELDA,             // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daHoZelda_c),      // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    275,                     // mPriority
    &l_daHoZelda_Method,      // sub_method
    0x00060000,             // mStatus
    fopAc_NPC_e,    // mActorType
    fopAc_CULLBOX_0_e, // cullType
};
