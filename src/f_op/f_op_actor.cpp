/**
 * f_op_actor.cpp
 * Actor base process class
 */

#include "f_op/f_op_actor.h"
#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_actor.h"
#include "d/com/d_com_inf_game.h"
#include "d/com/d_com_static.h"
#include "d/d_demo.h"
#include "d/s/d_s_play.h"
#include "f_op/f_op_actor_tag.h"
#include "f_op/f_op_draw_tag.h"
#include "f_pc/f_pc_manager.h"

/* 80018B64-80018BD0 0134A4 006C+00 0/0 7/7 562/562 .text            __ct__10fopAc_ac_cFv */
fopAc_ac_c::fopAc_ac_c() {}

/* 80018C8C-80018CE0 0135CC 0054+00 0/0 5/5 270/270 .text            __dt__10fopAc_ac_cFv */
fopAc_ac_c::~fopAc_ac_c() {}

/* ############################################################################################## */
/* 80450CB8-80450CBC 0001B8 0004+00 2/2 0/0 0/0 .sbss            g_fopAc_type */
static int g_fopAc_type;

/* 80018CE0-80018D0C 013620 002C+00 0/0 12/12 391/391 .text            fopAc_IsActor__FPv */
s32 fopAc_IsActor(void* i_this) {
    return fpcM_IsJustType(g_fopAc_type, ((fopAc_ac_c*)i_this)->mAcType);
}

/* ############################################################################################## */
/* 80450CBC-80450CC0 0001BC 0004+00 2/2 1/1 0/0 .sbss            stopStatus__10fopAc_ac_c */
u32 fopAc_ac_c::stopStatus;

/* 80018D0C-80018DD8 01364C 00CC+00 1/0 0/0 0/0 .text            fopAc_Draw__FPv */
static int fopAc_Draw(void* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    int ret = 1;
    if (!dComIfGp_isPauseFlag()) {
        if ((dComIfGp_event_moveApproval(a_this) == 2 ||
             (!fopAcM_checkStatus(a_this, fopAc_ac_c::stopStatus) &&
              (!fopAcM_checkStatus(a_this, fopAcStts_CULL_e) || !fopAcM_cullingCheck(a_this)))) &&
            !fopAcM_checkStatus(a_this, 0x21000000))
        {
            fopAcM_OffCondition(a_this, fopAcCnd_NODRAW_e);
            ret = fpcLf_DrawMethod((leafdraw_method_class*)a_this->mSubMtd, a_this);
        } else {
            fopAcM_OnCondition(a_this, fopAcCnd_NODRAW_e);
        }

        fopAcM_OffStatus(a_this, fopAcStts_NODRAW_e);
    }

    return ret;
}

/* 80018DD8-80018F78 013718 01A0+00 1/0 0/0 0/0 .text            fopAc_Execute__FPv */
static int fopAc_Execute(void* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    int ret = 1;
    if (!dComIfGp_isPauseFlag() && dScnPly_c::isPause()) {
        if (!dComIfA_PauseCheck()) {
            daSus_c::check(a_this);
            a_this->mEvtInfo.beforeProc();
            s32 move = dComIfGp_event_moveApproval(i_this);
            fopAcM_OffStatus(a_this, 0x40000000);

            if (!fopAcM_checkStatus(a_this, 0x20000000) &&
                (move == 2 ||
                 (move != 0 && !fopAcM_checkStatus(a_this, fopAc_ac_c::stopStatus) &&
                  (!fopAcM_checkStatus(a_this, fopAcStts_NOEXEC_e) || !fopAcM_CheckCondition(a_this, 4)))))
            {
                fopAcM_OffCondition(a_this, fopAcCnd_NOEXEC_e);
                a_this->next = a_this->current;
                ret = fpcMtd_Execute((process_method_class*)a_this->mSubMtd, a_this);
            } else {
                a_this->mEvtInfo.suspendProc(a_this);
                fopAcM_OnCondition(a_this, fopAcCnd_NOEXEC_e);
            }

            if (fopAcM_checkStatus(a_this, 0x20) &&
                a_this->orig.pos.y - a_this->current.pos.y > 5000.0f)
            {
                fopAcM_delete(a_this);
            }

            if (a_this->current.pos.y < -1e31f) {
                a_this->current.pos.y = -1e31f;
            }

            dKy_depth_dist_set(a_this);
        }
    }

    return ret;
}

/* 80018F78-80018FCC 0138B8 0054+00 1/0 0/0 0/0 .text            fopAc_IsDelete__FPv */
static int fopAc_IsDelete(void* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    int isDelete = fpcMtd_IsDelete((process_method_class*)a_this->mSubMtd, a_this);
    if (isDelete == true) {
        fopDwTg_DrawQTo(&a_this->mDwTg);
    }

    return isDelete;
}

/* 80018FCC-8001904C 01390C 0080+00 1/0 0/0 0/0 .text            fopAc_Delete__FPv */
static int fopAc_Delete(void* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    int deleted = fpcMtd_Delete((process_method_class*)a_this->mSubMtd, a_this);
    if (deleted == true) {
        fopAcTg_ActorQTo(&a_this->mAcTg);
        fopDwTg_DrawQTo(&a_this->mDwTg);
        fopAcM_DeleteHeap(a_this);

        dDemo_actor_c* demoAc = dDemo_c::getActor(a_this->mDemoActorId);
        if (demoAc != NULL) {
            demoAc->setActor(NULL);
        }
    }

    return deleted;
}

/* 8001904C-800193FC 01398C 03B0+00 1/0 0/0 0/0 .text            fopAc_Create__FPv */
static int fopAc_Create(void* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    if (fpcM_IsFirstCreating(i_this)) {
        actor_process_profile_definition* profile =
            (actor_process_profile_definition*)fpcM_GetProfile(i_this);
        a_this->mAcType = fpcBs_MakeOfType(&g_fopAc_type);
        a_this->mSubMtd = (profile_method_class*)profile->mSubMtd;

        fopAcTg_Init(&a_this->mAcTg, a_this);
        fopAcTg_ToActorQ(&a_this->mAcTg);
        fopDwTg_Init(&a_this->mDwTg, a_this);

        a_this->mStatus = profile->mStatus;
        a_this->mGroup = profile->mActorType;
        a_this->mCullType = profile->mCullType;

        fopAcM_prm_class* append = fopAcM_GetAppend(a_this);
        if (append != NULL) {
            fopAcM_SetParam(a_this, append->mParameter);
            a_this->orig.pos = append->mPos;
            a_this->orig.angle = append->mAngle;
            a_this->shape_angle = append->mAngle;
            a_this->mParentPcId = append->mParentPId;
            a_this->mSubtype = append->mSubtype;
            a_this->mScale.set(append->mScale[0] * 0.1f, append->mScale[1] * 0.1f,
                              append->mScale[2] * 0.1f);
            a_this->mSetID = append->mEnemyNo;
            a_this->orig.roomNo = append->mRoomNo;
        }

        a_this->next = a_this->orig;
        a_this->current = a_this->orig;
        a_this->mEyePos = a_this->orig.pos;
        a_this->mMaxFallSpeed = -100.0f;
        a_this->mAttentionInfo.field_0x0[0] = 1;
        a_this->mAttentionInfo.field_0x0[1] = 2;
        a_this->mAttentionInfo.field_0x0[2] = 3;
        a_this->mAttentionInfo.field_0x0[3] = 5;
        a_this->mAttentionInfo.field_0x0[4] = 6;
        a_this->mAttentionInfo.field_0x0[7] = 14;
        a_this->mAttentionInfo.field_0x0[5] = 15;
        a_this->mAttentionInfo.field_0x0[6] = 15;
        a_this->mAttentionInfo.field_0x0[8] = 51;
        a_this->mAttentionInfo.mPosition = a_this->orig.pos;
        a_this->mAttentionInfo.field_0xa = 30;
        dKy_tevstr_init(&a_this->mTevStr, a_this->orig.roomNo, -1);

        int roomNo = dComIfGp_roomControl_getStayNo();
        if (roomNo >= 0) {
            dComIfGp_roomControl_getStatusRoomDt(roomNo)->mRoomDt.getFileListInfo();
        }

        dStage_FileList_dt_c* filelist = NULL;
        if (a_this->orig.roomNo >= 0) {
            filelist =
                dComIfGp_roomControl_getStatusRoomDt(a_this->orig.roomNo)->mRoomDt.getFileListInfo();
        }

        if (filelist != NULL) {
            if (!dStage_FileList_dt_GetEnemyAppear1Flag(filelist)) {
                u32 sw = dStage_FileList_dt_GetBitSw(filelist);
                if (sw != 0xFF && dComIfGs_isSwitch(sw, a_this->orig.roomNo) &&
                    profile->mActorType == fopAc_ENEMY_e)
                {
                    return cPhs_ERROR_e;
                }
            } else {
                u32 sw = dStage_FileList_dt_GetBitSw(filelist);
                if (sw != 0xFF && !dComIfGs_isSwitch(sw, a_this->orig.roomNo) &&
                    profile->mActorType == fopAc_ENEMY_e)
                {
                    return cPhs_ERROR_e;
                }
            }
        }
    }

    int ret = fpcMtd_Create((process_method_class*)a_this->mSubMtd, a_this);
    if (ret == cPhs_COMPLEATE_e) {
        s32 priority = fpcLf_GetPriority(a_this);
        fopDwTg_ToDrawQ(&a_this->mDwTg, priority);
    } else if (ret == cPhs_ERROR_e) {
        fopAcM_OnCondition(a_this, 0x10);
    }

    return ret;
}

/* 800193FC-80019404 013D3C 0008+00 0/0 1/0 0/0 .text getFileListInfo__15dStage_roomDt_cCFv */
dStage_FileList_dt_c* dStage_roomDt_c::getFileListInfo() const {
    return mFileListInfo;
}

/* 80019404-800194FC 013D44 00F8+00 0/0 0/0 2/2 .text            initBallModel__13fopEn_enemy_cFv */
bool fopEn_enemy_c::initBallModel() {
    void* objRes = dComIfG_getObjectRes("Alink", daAlink_c::getBallModelIdx());
    mBallModel = mDoExt_J3DModel__create((J3DModelData*)objRes, 0x80000, 0x11000284);

    if (!mBallModel) {
        return false;
    } else {
        mBallModel->setBaseScale(cXyz::Zero);

        mBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Alink", daAlink_c::getBallBtkIdx());
        mBtk->searchUpdateMaterialID(mBallModel->getModelData());

        mBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("Alink", daAlink_c::getBallBrkIdx());
        mBrk->searchUpdateMaterialID(mBallModel->getModelData());
    }

    return true;
}
/* 800194FC-80019520 013E3C 0024+00 2/2 0/0 2/2 .text checkBallModelDraw__13fopEn_enemy_cFv */
bool fopEn_enemy_c::checkBallModelDraw() {
    return (mFlags & 1) && !(mFlags & 0x32);
}

/* 80019520-800196A0 013E60 0180+00 0/0 0/0 2/2 .text
 * setBallModelEffect__13fopEn_enemy_cFP12dKy_tevstr_c          */
void fopEn_enemy_c::setBallModelEffect(dKy_tevstr_c* i_tevstr) {
    if (mBallModel) {
        field_0x590 += 1.0f;

        if (field_0x590 >= mBtk->getFrameMax()) {
            field_0x590 -= mBtk->getFrameMax();
        }

        if (checkBallModelDraw()) {
            Vec* base_scale = mBallModel->getBaseScale();
            cLib_chaseF(&base_scale->x, 1.0f, 0.1f);
            f32 result = base_scale->x;
            base_scale->z = result;
            base_scale->y = result;

            mEffectID1 = dComIfGp_particle_set(mEffectID1, 0x86C8, &mDownPos, i_tevstr);
            mEffectID2 = dComIfGp_particle_set(mEffectID2, 0x86C9, &mDownPos, i_tevstr);
        }
    }
}

/* 800196A0-800197BC 013FE0 011C+00 0/0 0/0 2/2 .text
 * drawBallModel__13fopEn_enemy_cFP12dKy_tevstr_c               */
void fopEn_enemy_c::drawBallModel(dKy_tevstr_c* i_tevstr) {
    f32 scale_target;

    if (mBallModel) {
        Vec* base_scale = mBallModel->getBaseScale();

        if (checkBallModelDraw()) {
            scale_target = 1.0f;
        } else {
            scale_target = 0.0f;
        }

        cLib_chaseF(&base_scale->x, scale_target, 0.05f);

        base_scale->y = base_scale->x;
        base_scale->z = base_scale->x;

        mBallModel->setBaseScale(*base_scale);

        if (base_scale->x > 0.01f) {
            mDoMtx_trans(mBallModel->getBaseTRMtx(), mDownPos.x, mDownPos.y, mDownPos.z);
            i_dKy_getEnvlight()->setLightTevColorType_MAJI(mBallModel, i_tevstr);

            mBtk->setFrame(field_0x590);
            mBallModel->getModelData()->entryTexMtxAnimator(mBtk);

            mBrk->setFrame(field_0x590);
            mBallModel->getModelData()->entryTevRegAnimator(mBrk);

            mDoExt_modelUpdateDL(mBallModel);
        }
    }
}

/* ############################################################################################## */
/* 803A35B0-803A35D0 -00001 0020+00 0/0 3/0 756/0 .data            g_fopAc_Method */
extern actor_method_class g_fopAc_Method = {
    (process_method_func)fopAc_Create,  (process_method_func)fopAc_Delete,
    (process_method_func)fopAc_Execute, (process_method_func)fopAc_IsDelete,
    (process_method_func)fopAc_Draw,
};

/* ############################################################################################## */
/* 80450CC0-80450CC8 0001C0 0004+04 0/0 9/9 0/0 .sbss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
extern u8 data_80450CC0[4 + 4 /* padding */];
u8 data_80450CC0[4 + 4 /* padding */];
