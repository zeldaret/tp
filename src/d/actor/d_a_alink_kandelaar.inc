/**
 * d_a_alink_kandelaar.inc
 * Player Lantern action handling
 */

#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_e_sm2.h"
#include "d/actor/d_a_tag_ss_drink.h"
#include "m_Do/m_Do_lib.h"
#include "SSystem/SComponent/c_math.h"

/* 80110654-80110668 10AF94 0014+00 1/1 0/0 0/0 .text daAlink_searchTagKandelaar__FP10fopAc_ac_cPv
 */
static fopAc_ac_c* daAlink_searchTagKandelaar(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_TAG_LANTERN) {
        return i_actor;
    }

    return NULL;
}

/* 80110668-801106E8 10AFA8 0080+00 1/1 0/0 0/0 .text daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv
 */
static fopAc_ac_c* daAlink_searchTagKtOnFire(fopAc_ac_c* i_actor, void* i_data) {
    daAlink_c* player_p = daAlink_getAlinkActorClass();

    if (fopAcM_GetName(i_actor) == PROC_Tag_KtOnFire &&
        i_actor->current.pos.abs2(player_p->current.pos) < 22500.0f &&
        fopAcM_seenActorAngleY(player_p, i_actor) < 0x3000)
    {
        return i_actor;
    }

    return NULL;
}

/* 801106E8-8011078C 10B028 00A4+00 1/0 0/0 0/0 .text            setKandelaarMtx__9daAlink_cFPA4_fii
 */
void daAlink_c::setKandelaarMtx(Mtx i_mtx, int param_1, int param_2) {
    if (mpKanteraModel != NULL) {
        if (checkNoResetFlg2(FLG2_UNK_1)) {
            deleteEquipItem(0, 1);
        }

        onEndResetFlg1(ERFLG1_UNK_4);

        mpKanteraModel->setBaseTRMtx(i_mtx);
        if (param_1 == 0) {
            onEndResetFlg1(ERFLG1_UNK_8);
        }

        if (param_2 != 0) {
            onEndResetFlg1(ERFLG1_UNK_10);
        }
    }
}

/* 8011078C-801107BC 10B0CC 0030+00 2/2 0/0 0/0 .text checkWaterInKandelaarOffset__9daAlink_cFf */
BOOL daAlink_c::checkWaterInKandelaarOffset(f32 param_0) {
    f32 tmp_65 = 65.0f;  // tmp can be removed with literals
    f32 base_y_pos;
    if (checkModeFlg(0x40)) {
        base_y_pos = mRightFootPos.y;
    } else {
        base_y_pos = current.pos.y;
    }

    return param_0 > tmp_65 + base_y_pos;
}

/* 801107BC-80110840 10B0FC 0084+00 2/2 0/0 0/0 .text            checkWaterInKandelaar__9daAlink_cFf
 */
void daAlink_c::checkWaterInKandelaar(f32 param_0) {
    if (checkNoResetFlg2(FLG2_UNK_1) && checkWaterInKandelaarOffset(param_0)) {
        if (mEquipItem == KANTERA) {
            deleteEquipItem(TRUE, TRUE);
        } else {
            offKandelaarModel();
            seStartOnlyReverb(Z2SE_AL_ITEM_TAKEOUT);
        }
    }
}

/* 80110840-8011087C 10B180 003C+00 13/13 0/0 0/0 .text            offKandelaarModel__9daAlink_cFv
 */
void daAlink_c::offKandelaarModel() {
    offNoResetFlg2(FLG2_UNK_10000001);
    mZ2Link.setKanteraState(0);
}

/* 8011087C-801108B4 10B1BC 0038+00 1/0 0/0 0/0 .text            checkUseKandelaar__9daAlink_cFi */
bool daAlink_c::checkUseKandelaar(int param_0) {
    return (param_0 == 0 && checkNoResetFlg2(FLG2_UNK_1)) ||
           (param_0 != 0 && mEquipItem == KANTERA);
}

/* 801108B4-801108EC 10B1F4 0038+00 1/0 0/0 0/0 .text            checkKandelaarSwing__9daAlink_cCFi
 */
bool daAlink_c::checkKandelaarSwing(int param_0) const {
    if ((checkKandelaarSwingAnime() || mProcID == PROC_KANDELAAR_SWING) &&
        (dComIfGs_getOil() != 0 || param_0 == 0))
    {
        return true;
    }

    return false;
}

/* 801108EC-80110BEC 10B22C 0300+00 1/1 0/0 0/0 .text kandelaarModelCallBack__9daAlink_cFv */
// NONMATCHING - regalloc from cLib_minMaxLimit
int daAlink_c::kandelaarModelCallBack() {
    cXyz sp44;
    mDoMtx_multVecZero(J3DSys::mCurrentMtx, &sp44);

    field_0x3630 = field_0x3624;
    field_0x3624 = mKandelaarFlamePos;

    cXyz sp38 = (mKandelaarFlamePos - sp44) + field_0x3618;
    sp38.y -= 3.0f;

    cXyz sp2C;
    mDoMtx_multVec(J3DSys::mCurrentMtx, &cXyz::BaseZ, &sp2C);

    s16 var_r29 = sp2C.atan2sX_Z();
    mDoMtx_stack_c::YrotS(-var_r29);
    mDoMtx_stack_c::multVec(&sp38, &sp38);

    s16 var_r28 = cLib_minMaxLimit<s16>(cM_atan2s(-sp38.z, -sp38.y), -0x1800, 0x1800);
    s16 var_r27 = cLib_minMaxLimit<s16>(cM_atan2s(sp38.x, JMAFastSqrt((sp38.y * sp38.y) + (sp38.z * sp38.z))), -0x1800, 0x1800);

    mDoMtx_stack_c::transS(sp44);
    if (mProcID != PROC_OPEN_TREASURE && (mProcID != PROC_GET_ITEM || mProcVar4.field_0x3010 == 0)) {
        mDoMtx_stack_c::ZXYrotM(var_r28, var_r29, var_r27);
    }

    mDoMtx_stack_c::multVec(&kandelaarOffset, &mKandelaarFlamePos);

    field_0x3618 = (mKandelaarFlamePos - field_0x3624) * 0.9f;

    if (!checkEndResetFlg1(ERFLG1_UNK_8)) {
        f32 temp_f31 = JMAFastSqrt((J3DSys::mCurrentMtx[0][0] * J3DSys::mCurrentMtx[0][0]) + (J3DSys::mCurrentMtx[1][0] * J3DSys::mCurrentMtx[1][0]) + (J3DSys::mCurrentMtx[2][0] * J3DSys::mCurrentMtx[2][0]));
        mDoMtx_stack_c::transS(J3DSys::mCurrentMtx[0][3], J3DSys::mCurrentMtx[1][3], J3DSys::mCurrentMtx[2][3]);
        mDoMtx_stack_c::ZXYrotM(var_r28, var_r29, var_r27);
        mDoMtx_stack_c::scaleM(temp_f31, temp_f31, temp_f31);

        mpKanteraModel->setAnmMtx(1, mDoMtx_stack_c::get());
        cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }

    return 1;
}

/* 80110BEC-80110C28 10B52C 003C+00 1/1 0/0 0/0 .text daAlink_kandelaarModelCallBack__FP8J3DJointi
 */
static int daAlink_kandelaarModelCallBack(J3DJoint* param_0, int param_1) {
    daAlink_c* player_p = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        player_p->kandelaarModelCallBack();
    }

    return 1;
}

/* 80110C28-80110C6C 10B568 0044+00 1/0 0/0 0/0 .text            getKandelaarFlamePos__9daAlink_cFv
 */
cXyz* daAlink_c::getKandelaarFlamePos() {
    if ((!checkNoResetFlg2((daPy_FLG2)0x20001) && !checkEndResetFlg1(ERFLG1_UNK_4)) ||
        checkWolf() || !checkNoResetFlg1(FLG1_UNK_80))
    {
        return NULL;
    }

    return &mKandelaarFlamePos;
}

/* 80110C6C-80110C94 10B5AC 0028+00 3/3 0/0 0/0 .text checkKandelaarEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkKandelaarEquipAnime() const {
    return checkUpperAnime(0x264) || checkUpperAnime(0x268);
}

/* 80110C94-80110E80 10B5D4 01EC+00 1/1 0/0 0/0 .text            preKandelaarDraw__9daAlink_cFv */
void daAlink_c::preKandelaarDraw() {
    J3DMaterial* mat_p = mpKanteraGlowModel->getModelData()->getMaterialNodePointer(0);

    J3DGXColorS10 color;
    color.r = daAlinkHIO_kandelaar_c0::m.mColorReg1R;
    color.g = daAlinkHIO_kandelaar_c0::m.mColorReg1G;
    color.b = daAlinkHIO_kandelaar_c0::m.mColorReg1B;
    color.a = 255;
    mat_p->setTevColor(1, &color);

    color.r = daAlinkHIO_kandelaar_c0::m.mColorReg2R;
    color.g = daAlinkHIO_kandelaar_c0::m.mColorReg2G;
    color.b = daAlinkHIO_kandelaar_c0::m.mColorReg2B;
    mat_p->setTevColor(2, &color);

    cXyz proj;
    mDoLib_project(&mKandelaarFlamePos, &proj);

    camera_class* camera_p = dComIfGp_getCamera(0);
    f32 var_f3;
    if (camera_p != NULL) {
        var_f3 = camera_p->mCamera.TrimHeight();
    } else {
        var_f3 = 0.0f;
    }

    if (proj.x > 0.0f && proj.x < 640.0f && proj.y > var_f3 && proj.y < 456.0f - var_f3) {
        dComIfGd_peekZ(proj.x, proj.y, &field_0x32c8);
    } else {
        field_0x32c8 = 0;
    }

    f32 near = dComIfGd_getView()->mNear;
    f32 far = dComIfGd_getView()->mFar;

    mDoLib_pos2camera(&mKandelaarFlamePos, &proj);
    proj.z += 30.0f;
    if (proj.z > -0.01f) {
        proj.z = -0.01f;
    }

    field_0x344c = ((near + (far * near) / proj.z) / (far - near) + 1.0f) * 1.6777215E7f;
}


/* 80110E80-80110E84 10B7C0 0004+00 0/0 3/0 0/0 .text
 * setTevColor__11J3DTevBlockFUlPC13J3DGXColorS10               */
void J3DTevBlock::setTevColor(u32 param_0, J3DGXColorS10 const* param_1) {}

/* 80110E84-80110F88 10B7C4 0104+00 4/4 0/0 0/0 .text            setKandelaarModel__9daAlink_cFv */
void daAlink_c::setKandelaarModel() {
    field_0x2f94 = 0;

    if (!checkNoResetFlg2(FLG2_UNK_1)) {
        onNoResetFlg2(FLG2_UNK_1);

        mDoMtx_multVecZero(mpLinkModel->getAnmMtx(field_0x30c0), &mKandelaarFlamePos);
        mKandelaarFlamePos.y -= 30.0f;

        field_0x3630 = field_0x3624;
        field_0x3624 = mKandelaarFlamePos;
        field_0x3618 = cXyz::Zero;

        field_0x32c8 = 0;
        field_0x3448 = 0.0f;
        field_0x344c = -1.0f;

        mpKanteraGlowModel->setBaseScale(cXyz::Zero);
    }

    mZ2Link.setKanteraState(1);
}


/* 80110F88-80110FE0 10B8C8 0058+00 3/3 0/0 0/0 .text            resetOilBottleModel__9daAlink_cFv
 */
void daAlink_c::resetOilBottleModel() {
    deleteEquipItem(FALSE, TRUE);

    if (mProcVar3.field_0x300e != 0) {
        setKandelaarModel();
        mEquipItem = KANTERA;
    }

    returnKeepItemData();
}

/* 80110FE0-801110B8 10B920 00D8+00 3/3 0/0 0/0 .text commonKandelaarPourInit__9daAlink_cFv */
void daAlink_c::commonKandelaarPourInit() {
    if (checkNoResetFlg2(FLG2_UNK_1)) {
        mProcVar3.field_0x300e = 1;
    } else {
        mProcVar3.field_0x300e = 0;
    }

    keepItemData();
    setKandelaarModel();
    setBottleModel(getReadyItem());

    mProcVar2.field_0x300c = 0;
    dComIfGp_setPlayerStatus1(0, 0x2000);
    field_0x3194 = 10;
    dCam_getBody()->StartEventCamera(0x12, fopAcM_GetID(this), "Type", 1, &field_0x3194, 0);
}

/* 801110B8-8011130C 10B9F8 0254+00 3/3 0/0 0/0 .text            commonKandelaarPour__9daAlink_cFi
 */
int daAlink_c::commonKandelaarPour(int param_0) {
    simpleAnmPlay(field_0x0718);
    simpleAnmPlay(field_0x071c);

    daPy_frameCtrl_c* frameCtrl_p;
    u16 current_anm;
    if (param_0) {
        frameCtrl_p = &mUpperFrameCtrl[2];
        current_anm = mUpperAnmHeap[2].getIdx();
    } else {
        frameCtrl_p = &mUnderFrameCtrl[0];
        current_anm = mUnderAnmHeap[0].getIdx();
    }

    onNoResetFlg2(FLG2_UNK_10000000);

    if (current_anm == getMainBckData(ANM_OIL_BOTTLE_POUR_START)->m_underID) {
        if (checkAnmEnd(frameCtrl_p)) {
            if (param_0) {
                setUpperAnimeBaseMorf(getMainBckData(ANM_OIL_BOTTLE_POUR)->m_upperID, 0.0f);
            } else {
                setSingleAnimeBaseMorf(ANM_OIL_BOTTLE_POUR, 0.0f);
            }

            dComIfGp_setItemOilCount(dComIfGs_getMaxOil());
        } else if (frameCtrl_p->checkPass(10.0f)) {
            field_0x071c->setFrame(0.0f);
            mHeldItemModel->getModelData()->entryTexMtxAnimator(field_0x071c);
        }
    } else if (current_anm == getMainBckData(ANM_OIL_BOTTLE_POUR)->m_underID) {
        if (dComIfGp_getItemNowOil() == dComIfGs_getOil()) {
            if (mProcVar2.field_0x300c == 0) {
                mProcVar2.field_0x300c = 1;
                mHeldItemModel->getModelData()->entryTexMtxAnimator(field_0x0720);
            } else if (simpleAnmPlay(field_0x0720)) {
                if (param_0) {
                    setUpperAnimeParam(getMainBckData(ANM_OIL_BOTTLE_POUR_END)->m_upperID, UPPER_2,
                                       &daAlinkHIO_kandelaar_c0::m.mEndUnkAnm);
                } else {
                    setSingleAnimeParam(ANM_OIL_BOTTLE_POUR_END,
                                        &daAlinkHIO_kandelaar_c0::m.mEndUnkAnm);
                }

                field_0x072c->setFrame(2.0f);
                dComIfGs_setEquipBottleItemEmpty(mSelectItemId);
            }
        }
    } else if (checkAnmEnd(frameCtrl_p)) {
        if (param_0) {
            resetUpperAnime(UPPER_2, 3.0f);
        }

        resetOilBottleModel();
        resetSpecialEvent();
        offNoResetFlg2(FLG2_UNK_10000000);
        return 1;
    }

    return 0;
}


/* 8011130C-80111440 10BC4C 0134+00 1/1 0/0 0/0 .text            initKandelaarSwing__9daAlink_cFv */
void daAlink_c::initKandelaarSwing() {
    if (mEquipItem == KANTERA) {
        if (dComIfGs_getOil() != 0) {
            mZ2Link.getKantera().startSound(Z2SE_AL_KANTERA_SWING, 0, mVoiceReverbIntensity);
        } else {
            mZ2Link.getKantera().startSound(Z2SE_AL_KANTERA_OFF_SWING, 0, mVoiceReverbIntensity);
        }
    }

    voiceStart(Z2SE_AL_V_SWING_BOTTLE);
    field_0xFB8.ResetAtHit();

    if (!checkEventRun()) {
        dComIfGp_setItemOilCount(-daAlinkHIO_kandelaar_c0::m.mShakeOilLoss);
    }

    field_0xFB8.OffAtSetBit();
    field_0xFB8.SetR(50.0f);
    field_0xFB8.SetAtType(AT_TYPE_LANTERN_SWING);
    field_0xFB8.SetAtHitMark(0);
    field_0xFB8.SetAtSe(dCcD_SE_NONE);
    field_0xFB8.SetAtAtp(0);
    field_0xFB8.SetAtMtrl(dCcD_MTRL_FIRE);
}

/* 80111440-801115CC 10BD80 018C+00 2/1 0/0 0/0 .text procKandelaarSwingInit__9daAlink_cFv */
int daAlink_c::procKandelaarSwingInit() {
    fopAc_ac_c* catch_target_p = dComIfGp_att_getCatghTarget();
    if (catch_target_p != NULL) {
        s16 name = fopAcM_GetName(catch_target_p);
        BOOL is_sm2 = name == PROC_E_SM2;

        if (name == PROC_OBJ_OILTUBO ||
            (name == PROC_TAG_SSDRINK &&
             static_cast<daTag_SSDrink_c*>(catch_target_p)->checkShopOil()) ||
            (is_sm2 && static_cast<e_sm2_class*>(catch_target_p)->checkYellow()))
        {
            return procBottleSwingInit(catch_target_p, is_sm2);
        }
    }

    if (!commonProcInitNotSameProc(PROC_KANDELAAR_SWING)) {
        return 0;
    }

    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;

    if ((mLinkAcch.i_ChkGroundHit() && getMoveBGActorName(mLinkAcch.m_gnd, FALSE) == PROC_OBJ_WEB1) ||
        (checkStageName("F_SP108") &&
         fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchTagKtOnFire, NULL) != NULL))
    {
        setSingleAnimeParam(ANM_BOTTLE_SWING_DOWN, &daAlinkHIO_bottle_c0::m.mSwingDownAnm);
        field_0x3478 = daAlinkHIO_bottle_c0::m.mSwingDownAnm.mCheckFrame;
        field_0x347c = 5.0f;
        field_0x3480 = 12.0f;
    } else {
        setSingleAnimeParam(ANM_LANTERN_SWING, &daAlinkHIO_kandelaar_c0::m.mShakeAnm);
        field_0x3478 = daAlinkHIO_kandelaar_c0::m.mShakeAnm.mCheckFrame;
        field_0x347c = 4.0f;
        field_0x3480 = 11.0f;
    }

    initKandelaarSwing();
    return 1;
}


/* 801115CC-8011167C 10BF0C 00B0+00 1/0 0/0 0/0 .text            procKandelaarSwing__9daAlink_cFv */
int daAlink_c::procKandelaarSwing() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (frameCtrl_p->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x27) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478 && mDemo.getDemoMode() != 0x27) {
        onModeFlg(4);
        checkNextAction(1);
    }

    return 1;
}

/* 8011167C-80111724 10BFBC 00A8+00 1/1 0/0 0/0 .text            procKandelaarPourInit__9daAlink_cFv
 */
int daAlink_c::procKandelaarPourInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFBFF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();
    commonProcInit(PROC_KANDELAAR_POUR);
    current.angle.y = shape_angle.y;
    mNormalSpeed = 0.0f;
    field_0x2f98 = 4;
    setSingleAnimeParam(ANM_OIL_BOTTLE_POUR_START, &daAlinkHIO_kandelaar_c0::m.mBeginUnkAnm);
    commonKandelaarPourInit();
    return 1;
}

/* 80111724-8011174C 10C064 0028+00 1/0 0/0 0/0 .text            procKandelaarPour__9daAlink_cFv */
int daAlink_c::procKandelaarPour() {
    commonKandelaarPour(0);
    return 1;
}
