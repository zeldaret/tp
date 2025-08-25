/**
 * d_a_itembase.cpp
 * Item Actor base
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_itembase.h"
#include "d/d_com_inf_game.h"
#include "d/d_item_data.h"
#include "f_op/f_op_actor_mng.h"

/* 80144724-8014474C 13F064 0028+00 0/0 1/1 8/8 .text            DeleteBase__12daItemBase_cFPCc */
int daItemBase_c::DeleteBase(const char* i_resName) {
    dComIfG_resDelete(&mPhase, i_resName);
    return 1;
}

/* 8014474C-80144754 13F08C 0008+00 1/0 1/0 9/0 .text            clothCreate__12daItemBase_cFv */
int daItemBase_c::clothCreate() {
    return 1;
}

/* 80144754-8014475C 13F094 0008+00 1/0 1/0 3/0 .text            __CreateHeap__12daItemBase_cFv */
int daItemBase_c::__CreateHeap() {
    return 1;
}

/* 8014475C-80144B94 13F09C 0438+00 0/0 3/3 0/0 .text CreateItemHeap__12daItemBase_cFPCcsssssss */
int daItemBase_c::CreateItemHeap(char const* i_arcName, s16 i_bmdName, s16 i_btkName, s16 i_bpkName,
                                 s16 i_bckName, s16 i_bxaName, s16 i_brkName, s16 i_btpName) {
    JUT_ASSERT(0, 0 <= m_itemNo && m_itemNo <= 255);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(i_arcName, i_bmdName);
    JUT_ASSERT(0, modelData != 0);

    u32 flags = 0x11000084;
    u32 modelflags = 0x80000;

    if (i_btkName > 0) {
        flags |= 0x200;
    }

    if (i_bpkName > 0) {
        flags |= 0x1;
    }

    if (i_btpName > 0) {
        flags |= 0x20000;
    }

    if (chkFlag(4)) {
        modelflags = 0;
    }

    mpModel = mDoExt_J3DModel__create(modelData, modelflags, flags);
    if (mpModel == NULL) {
        return 0;
    }

    mpBtkAnm = NULL;
    if (i_btkName > 0) {
        J3DAnmTextureSRTKey* pbtk =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(i_arcName, i_btkName);
        JUT_ASSERT(0, pbtk != 0);

        mpBtkAnm = new mDoExt_btkAnm();
        if (mpBtkAnm == NULL || !mpBtkAnm->init(modelData, pbtk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
            return 0;
        }
    }

    mpBpkAnm = NULL;
    if (i_bpkName > 0) {
        J3DAnmColor* pbpk = (J3DAnmColor*)dComIfG_getObjectRes(i_arcName, i_bpkName);
        JUT_ASSERT(0, pbpk != 0);

        mpBpkAnm = new mDoExt_bpkAnm();
        if (mpBpkAnm == NULL || !mpBpkAnm->init(modelData, pbpk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
            return 0;
        }
    }

    mpBckAnm = NULL;
    if (i_bckName > 0) {
        J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(i_arcName, i_bckName);
        JUT_ASSERT(0, pbck != 0);

        mpBckAnm = new mDoExt_bckAnm();
        if (mpBckAnm == NULL || !mpBckAnm->init(pbck, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1, false)) {
            return 0;
        }
    }

    mpBrkAnm = NULL;
    if (i_brkName > 0) {
        J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(i_arcName, i_brkName);
        JUT_ASSERT(0, pbrk != 0);

        s8 tevFrm = getTevFrm();
        int anmPlay = TRUE;
        if (tevFrm != -1) {
            anmPlay = FALSE;
        }

        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL || !mpBrkAnm->init(modelData, pbrk, anmPlay, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
            return 0;
        }
    }

    mpBtpAnm = NULL;
    if (i_btpName > 0) {
        J3DAnmTexPattern* pbtp = (J3DAnmTexPattern*)dComIfG_getObjectRes(i_arcName, i_btpName);
        JUT_ASSERT(0, pbtp != 0);

        mpBtpAnm = new mDoExt_btpAnm();
        if (mpBtpAnm == NULL || !mpBtpAnm->init(modelData, pbtp, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
            return 0;
        }
    }

    if (!clothCreate()) {
        return 0;
    }

    return __CreateHeap() ? TRUE : FALSE;
}

/* 80144B94-80144C30 13F4D4 009C+00 1/0 1/0 9/0 .text            DrawBase__12daItemBase_cFv */
int daItemBase_c::DrawBase() {
    setTevStr();
    animEntry();
    setListStart();
    settingBeforeDraw();
    mDoExt_modelUpdateDL(mpModel);
    setListEnd();
    setShadow();
    return 1;
}

/* 80144C30-80144C7C 13F570 004C+00 1/0 1/0 9/0 .text            RotateYBase__12daItemBase_cFv */
void daItemBase_c::RotateYBase() {
    shape_angle.y += (s16)(0xFFFF / getData().mRotateYSpeed);
}

/* 80144C7C-80144CA0 13F5BC 0024+00 1/0 1/0 5/0 .text            setListStart__12daItemBase_cFv */
void daItemBase_c::setListStart() {
    dComIfGd_setListDark();
}

/* 80144CA0-80144CC4 13F5E0 0024+00 1/1 0/0 0/0 .text            setListEnd__12daItemBase_cFv */
void daItemBase_c::setListEnd() {
    dComIfGd_setList();
}

/* 80144CC4-80144D18 13F604 0054+00 1/0 1/0 9/0 .text            settingBeforeDraw__12daItemBase_cFv
 */
void daItemBase_c::settingBeforeDraw() {
    if (chkFlag(4)) {
        fopAcM_setEffectMtx(this, mpModel->getModelData());
    }
}

/* 80144D18-80144D70 13F658 0058+00 1/0 0/0 8/0 .text            setTevStr__12daItemBase_cFv */
void daItemBase_c::setTevStr() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
}

/* 80144D70-80144EDC 13F6B0 016C+00 1/0 1/0 9/1 .text            setShadow__12daItemBase_cFv */
void daItemBase_c::setShadow() {
    f32 size = scale.x * getShadowSize();

    if (!chkFlag(0x10)) {
        if (getShadowSize() != 0.0f) {
            dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), size, mAcch.m_gnd, 0, 1.0f,
                                     dDlst_shadowControl_c::getSimpleTex());
        }
    } else {
        f32 shadowSize = getShadowSize();
        if (shadowSize == 0.0f) {
            shadowSize = 150.0f;
        }

        mShadowKey = dComIfGd_setShadow(mShadowKey, 3, mpModel, &current.pos, shadowSize, 0.0f,
                                        current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0,
                                        1.0f, dDlst_shadowControl_c::getSimpleTex());
    }
}

/* 80144EDC-8014503C 13F81C 0160+00 1/0 1/0 9/0 .text            animEntry__12daItemBase_cFv */
void daItemBase_c::animEntry() {
    if (mpBrkAnm != NULL) {
        s8 tevFrm = getTevFrm();
        if (tevFrm != -1) {
            mpBrkAnm->entry(mpModel->getModelData(), tevFrm);
        } else {
            mpBrkAnm->entry(mpModel->getModelData());
        }
    }

    if (mpBtpAnm != NULL) {
        s8 btpFrm = getBtpFrm();
        if (btpFrm != -1) {
            mpBtpAnm->entry(mpModel->getModelData(), btpFrm);
        } else {
            mpBtpAnm->entry(mpModel->getModelData());
        }
    }

    if (mpBtkAnm != NULL) {
        mpBtkAnm->entry(mpModel->getModelData());
    }

    if (mpBckAnm != NULL) {
        mpBckAnm->entry(mpModel->getModelData());
    }

    if (mpBpkAnm != NULL) {
        mpBpkAnm->entry(mpModel->getModelData());
    }
}

/* 8014503C-80145144 13F97C 0108+00 0/0 2/2 4/4 .text            animPlay__12daItemBase_cFffffff */
void daItemBase_c::animPlay(f32 i_btkSpeed, f32 i_bpkSpeed, f32 i_bckSpeed, f32 param_3, f32 i_brkSpeed,
                            f32 i_btpSpeed) {
    if (mpBrkAnm != NULL && getTevFrm() == -1) {
        mpBrkAnm->setPlaySpeed(i_brkSpeed);
        mpBrkAnm->play();
    }

    if (mpBtpAnm != NULL && getBtpFrm() == -1) {
        mpBtpAnm->setPlaySpeed(i_btpSpeed);
        mpBtpAnm->play();
    }

    if (mpBtkAnm != NULL) {
        mpBtkAnm->setPlaySpeed(i_btkSpeed);
        mpBtkAnm->play();
    }

    if (mpBpkAnm != NULL) {
        mpBpkAnm->setPlaySpeed(i_bpkSpeed);
        mpBpkAnm->play();
    }

    if (mpBckAnm != NULL) {
        mpBckAnm->setPlaySpeed(i_bckSpeed);
        mpBckAnm->play();
    }
}

/* 80145144-80145164 13FA84 0020+00 1/0 1/0 8/0 .text            chkFlag__12daItemBase_cFi */
BOOL daItemBase_c::chkFlag(int i_flag) {
    return dItem_data::chkFlag(m_itemNo, i_flag);
}

/* 80145164-80145180 13FAA4 001C+00 1/0 1/0 8/0 .text            getTevFrm__12daItemBase_cFv */
s8 daItemBase_c::getTevFrm() {
    return dItem_data::getTevFrm(m_itemNo);
}

/* 80145180-8014519C 13FAC0 001C+00 1/0 1/0 8/0 .text            getBtpFrm__12daItemBase_cFv */
s8 daItemBase_c::getBtpFrm() {
    return dItem_data::getBtpFrm(m_itemNo);
}

/* 8014519C-801451B4 13FADC 0018+00 1/0 1/0 8/0 .text            getShadowSize__12daItemBase_cFv */
u8 daItemBase_c::getShadowSize() {
    return dItem_data::getShadowSize(m_itemNo);
}

/* 801451B4-801451D0 13FAF4 001C+00 1/0 1/0 8/0 .text            getCollisionH__12daItemBase_cFv */
u8 daItemBase_c::getCollisionH() {
    return dItem_data::getH(m_itemNo);
}

/* 801451D0-801451EC 13FB10 001C+00 1/0 1/0 8/0 .text            getCollisionR__12daItemBase_cFv */
u8 daItemBase_c::getCollisionR() {
    return dItem_data::getR(m_itemNo);
}
