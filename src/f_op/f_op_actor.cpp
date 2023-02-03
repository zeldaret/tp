/**
 * f_op_actor.cpp
 * Actor base process class
 */

#include "f_op/f_op_actor.h"
#include "d/com/d_com_inf_actor.h"
#include "d/com/d_com_inf_game.h"
#include "d/com/d_com_static.h"
#include "d/d_demo.h"
#include "d/s/d_s_play.h"
#include "f_op/f_op_actor_tag.h"

/* 80018B64-80018BD0 0134A4 006C+00 0/0 7/7 562/562 .text            __ct__10fopAc_ac_cFv */
fopAc_ac_c::fopAc_ac_c() {}

/* 80018C8C-80018CE0 0135CC 0054+00 0/0 5/5 270/270 .text            __dt__10fopAc_ac_cFv */
fopAc_ac_c::~fopAc_ac_c() {}

/* ############################################################################################## */
/* 80450CB8-80450CBC 0001B8 0004+00 2/2 0/0 0/0 .sbss            g_fopAc_type */
static int g_fopAc_type;

/* 80018CE0-80018D0C 013620 002C+00 0/0 12/12 391/391 .text            fopAc_IsActor__FPv */
s32 fopAc_IsActor(void* actor) {
    return fpcM_IsJustType(g_fopAc_type, ((fopAc_ac_c*)actor)->mAcType);
}

/* ############################################################################################## */
/* 80450CBC-80450CC0 0001BC 0004+00 2/2 1/1 0/0 .sbss            stopStatus__10fopAc_ac_c */
u32 fopAc_ac_c::stopStatus;

/* 80018D0C-80018DD8 01364C 00CC+00 1/0 0/0 0/0 .text            fopAc_Draw__FPv */
static int fopAc_Draw(void* actor) {
    fopAc_ac_c* ac = (fopAc_ac_c*)actor;

    int ret = 1;
    if (!dComIfGp_isPauseFlag()) {
        if ((dComIfGp_event_moveApproval(ac) == 2 ||
             (!fopAcM_checkStatus(ac, fopAc_ac_c::stopStatus) &&
              (!fopAcM_checkStatus(ac, 0x100) || !fopAcM_cullingCheck(ac)))) &&
            !fopAcM_checkStatus(ac, 0x21000000))
        {
            fopAcM_OffCondition(ac, 4);
            ret = fpcLf_DrawMethod((leafdraw_method_class*)ac->mSubMtd, ac);
        } else {
            fopAcM_OnCondition(ac, 4);
        }

        fopAcM_OffStatus(ac, 0x1000000);
    }

    return ret;
}

/* 80018DD8-80018F78 013718 01A0+00 1/0 0/0 0/0 .text            fopAc_Execute__FPv */
static int fopAc_Execute(void* actor) {
    fopAc_ac_c* ac = (fopAc_ac_c*)actor;

    int ret = 1;
    if (!dComIfGp_isPauseFlag() && dScnPly_c::isPause()) {
        if (!dComIfA_PauseCheck()) {
            daSus_c::check(ac);
            ac->mEvtInfo.beforeProc();
            s32 move = dComIfGp_event_moveApproval(actor);
            fopAcM_OffStatus(ac, 0x40000000);

            if (!fopAcM_checkStatus(ac, 0x20000000) &&
                (move == 2 || (move != 0 && !fopAcM_checkStatus(ac, fopAc_ac_c::stopStatus) &&
                               (!fopAcM_checkStatus(ac, 0x80) || !fopAcM_CheckCondition(ac, 4)))))
            {
                fopAcM_OffCondition(ac, 2);
                ac->next = ac->current;
                ret = fpcMtd_Execute((process_method_class*)ac->mSubMtd, ac);
            } else {
                ac->mEvtInfo.suspendProc(ac);
                fopAcM_OnCondition(ac, 2);
            }

            if (fopAcM_checkStatus(ac, 0x20) && ac->orig.pos.y - ac->current.pos.y > 5000.0f) {
                fopAcM_delete(ac);
            }

            if (ac->current.pos.y < FLOAT_MIN) {
                ac->current.pos.y = FLOAT_MIN;
            }

            dKy_depth_dist_set(ac);
        }
    }

    return ret;
}

/* 80018F78-80018FCC 0138B8 0054+00 1/0 0/0 0/0 .text            fopAc_IsDelete__FPv */
static int fopAc_IsDelete(void* actor) {
    fopAc_ac_c* ac = (fopAc_ac_c*)actor;

    int isDelete = fpcMtd_IsDelete((process_method_class*)ac->mSubMtd, ac);
    if (isDelete == true) {
        fopDwTg_DrawQTo(&ac->mDwTg);
    }

    return isDelete;
}

/* 80018FCC-8001904C 01390C 0080+00 1/0 0/0 0/0 .text            fopAc_Delete__FPv */
static int fopAc_Delete(void* actor) {
    fopAc_ac_c* ac = (fopAc_ac_c*)actor;

    int deleted = fpcMtd_Delete((process_method_class*)ac->mSubMtd, ac);
    if (deleted == true) {
        fopAcTg_ActorQTo(&ac->mAcTg);
        fopDwTg_DrawQTo(&ac->mDwTg);
        fopAcM_DeleteHeap(ac);

        dDemo_actor_c* demoAc = dDemo_c::getActor(ac->mDemoActorId);
        if (demoAc != NULL) {
            demoAc->setActor(NULL);
        }
    }

    return deleted;
}

/* 8001904C-800193FC 01398C 03B0+00 1/0 0/0 0/0 .text            fopAc_Create__FPv */
static int fopAc_Create(void* actor) {
    fopAc_ac_c* ac = (fopAc_ac_c*)actor;

    if (fpcM_IsFirstCreating(actor)) {
        actor_process_profile_definition* profile =
            (actor_process_profile_definition*)fpcM_GetProfile(actor);
        ac->mAcType = fpcBs_MakeOfType(&g_fopAc_type);
        ac->mSubMtd = (profile_method_class*)profile->mSubMtd;

        fopAcTg_Init(&ac->mAcTg, ac);
        fopAcTg_ToActorQ(&ac->mAcTg);
        fopDwTg_Init(&ac->mDwTg, ac);

        ac->mStatus = profile->mStatus;
        ac->mGroup = profile->mActorType;
        ac->mCullType = profile->mCullType;

        fopAcM_prm_class* append = fopAcM_GetAppend(ac);
        if (append != NULL) {
            fopAcM_SetParam(ac, append->mParameter);
            ac->orig.pos = append->mPos;
            ac->orig.angle = append->mAngle;
            ac->shape_angle = append->mAngle;
            ac->mParentPcId = append->mParentPId;
            ac->mSubtype = append->mSubtype;
            ac->mScale.set(append->mScale[0] * 0.1f, append->mScale[1] * 0.1f,
                           append->mScale[2] * 0.1f);
            ac->mSetID = append->mEnemyNo;
            ac->orig.mRoomNo = append->mRoomNo;
        }

        ac->next = ac->orig;
        ac->current = ac->orig;
        ac->mEyePos = ac->orig.pos;
        ac->mMaxFallSpeed = -100.0f;
        ac->mAttentionInfo.field_0x0[0] = 1;
        ac->mAttentionInfo.field_0x0[1] = 2;
        ac->mAttentionInfo.field_0x0[2] = 3;
        ac->mAttentionInfo.field_0x0[3] = 5;
        ac->mAttentionInfo.field_0x4[0] = 6;
        ac->mAttentionInfo.field_0x4[3] = 14;
        ac->mAttentionInfo.field_0x4[1] = 15;
        ac->mAttentionInfo.field_0x4[2] = 15;
        ac->mAttentionInfo.field_0x8[0] = 51;
        ac->mAttentionInfo.mPosition = ac->orig.pos;
        ac->mAttentionInfo.field_0xa = 30;
        dKy_tevstr_init(&ac->mTevStr, ac->orig.mRoomNo, -1);

        int roomNo = dComIfGp_roomControl_getStayNo();
        if (roomNo >= 0) {
            dComIfGp_roomControl_getStatusRoomDt(roomNo)->mRoomDt.getFileListInfo();
        }

        dStage_FileList_dt_c* filelist = NULL;
        if (ac->orig.mRoomNo >= 0) {
            filelist =
                dComIfGp_roomControl_getStatusRoomDt(ac->orig.mRoomNo)->mRoomDt.getFileListInfo();
        }

        if (filelist != NULL) {
            if (!dStage_FileList_dt_GetEnemyAppear1Flag(filelist)) {
                u32 sw = dStage_FileList_dt_GetBitSw(filelist);
                if (sw != 0xFF && dComIfGs_isSwitch(sw, ac->orig.mRoomNo) &&
                    profile->mActorType == 2)
                {
                    return cPhs_ERROR_e;
                }
            } else {
                u32 sw = dStage_FileList_dt_GetBitSw(filelist);
                if (sw != 0xFF && !dComIfGs_isSwitch(sw, ac->orig.mRoomNo) &&
                    profile->mActorType == 2)
                {
                    return cPhs_ERROR_e;
                }
            }
        }
    }

    int ret = fpcMtd_Create((process_method_class*)ac->mSubMtd, ac);
    if (ret == cPhs_COMPLEATE_e) {
        s32 priority = fpcLf_GetPriority(ac);
        fopDwTg_ToDrawQ(&ac->mDwTg, priority);
    } else if (ret == cPhs_ERROR_e) {
        fopAcM_OnCondition(ac, 0x10);
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
