/**
 * f_op_camera.cpp
 * Camera Process Framework
 */

#include "f_op/f_op_camera.h"
#include "d/com/d_com_inf_game.h"
#include "d/s/d_s_play.h"
#include "f_op/f_op_draw_tag.h"
#include "f_pc/f_pc_manager.h"

// TODO: this is a hack to get f_op_actor_mng.cpp weak function order correct
// at the moment, if these are made into inlined virtuals, they incorrectly generate before thunks

/* 8001E11C-8001E120 018A5C 0004+00 0/0 1/0 0/0 .text            onFrollCrashFlg__9daPy_py_cFUci */
// void daPy_py_c::onFrollCrashFlg(u8 param_0, int param_1) {
extern "C" void onFrollCrashFlg__9daPy_py_cFUci() {
    /* empty function */
}

/* 8001E120-8001E128 018A60 0008+00 0/0 1/0 0/0 .text            checkWolfDash__9daPy_py_cCFv */
// int daPy_py_c::checkWolfDash() const {
extern "C" int checkWolfDash__9daPy_py_cCFv() {
    return false;
}

/* 8001E128-8001E130 018A68 0008+00 0/0 1/0 0/0 .text            checkFrontRoll__9daPy_py_cCFv */
// int daPy_py_c::checkFrontRoll() const {
extern "C" int checkFrontRoll__9daPy_py_cCFv() {
    return false;
}

/* 8001E130-8001E138 018A70 0008+00 0/0 1/0 0/0 .text            checkHorseRide__9daPy_py_cCFv */
// u32 daPy_py_c::checkHorseRide() const {
extern "C" u32 checkHorseRide__9daPy_py_cCFv() {
    return false;
}

/* 8001E138-8001E140 018A78 0008+00 0/0 1/0 0/0 .text            getGrabActorID__9daPy_py_cCFv */
// s32 daPy_py_c::getGrabActorID() const {
extern "C" s32 getGrabActorID__9daPy_py_cCFv() {
    return -1;
}

/* 8001E140-8001E180 018A80 0040+00 1/0 0/0 0/0 .text            fopCam_Draw__FP12camera_class */
static s32 fopCam_Draw(camera_class* i_this) {
    s32 cam_proc = 1;

    if (!dComIfGp_isPauseFlag()) {
        cam_proc = fpcLf_DrawMethod(i_this->mpMtd, i_this);
    }
    return cam_proc;
}

/* 8001E180-8001E1C8 018AC0 0048+00 1/0 0/0 0/0 .text            fopCam_Execute__FP12camera_class */
static int fopCam_Execute(camera_class* i_this) {
    int ret;

    if (!dComIfGp_isPauseFlag() && dScnPly_c::isPause()) {
        ret = fpcMtd_Execute((process_method_class*)i_this->mpMtd, i_this);
    }

    return ret;
}

/* 8001E1C8-8001E21C 018B08 0054+00 1/0 0/0 0/0 .text            fopCam_IsDelete__FP12camera_class
 */
int fopCam_IsDelete(camera_class* i_this) {
    int delete_stat = fpcMtd_IsDelete((process_method_class*)i_this->mpMtd, i_this);
    if (delete_stat == 1) {
        fopDwTg_DrawQTo(&i_this->mCreateTag);
    }

    return delete_stat;
}

/* 8001E21C-8001E270 018B5C 0054+00 1/0 0/0 0/0 .text            fopCam_Delete__FP12camera_class */
int fopCam_Delete(camera_class* i_this) {
    int delete_stat = fpcMtd_Delete((process_method_class*)i_this->mpMtd, i_this);
    if (delete_stat == 1) {
        fopDwTg_DrawQTo(&i_this->mCreateTag);
    }

    return delete_stat;
}

/* 8001E270-8001E308 018BB0 0098+00 1/0 0/0 0/0 .text            fopCam_Create__FPv */
static int fopCam_Create(void* i_this) {
    camera_class* _this = (camera_class*)i_this;

    if (fpcM_IsFirstCreating(i_this)) {
        camera_process_profile_definition* profile =
            (camera_process_profile_definition*)fpcM_GetProfile(i_this);
        _this->mpMtd = profile->mSubMtd;

        fopDwTg_Init(&_this->mCreateTag, _this);
        u32* append = (u32*)fpcM_GetAppend(_this);

        if (append) {
            fpcM_SetParam(_this, *append);
        }
    }

    int ret = fpcMtd_Create(&_this->mpMtd->mBase, _this);
    if (ret == cPhs_COMPLEATE_e) {
        s32 priority = fpcLf_GetPriority(_this);
        fopDwTg_ToDrawQ(&_this->mCreateTag, priority);
    }

    return ret;
}

/* ############################################################################################## */
/* 803A3860-803A3878 -00001 0014+04 0/0 2/0 0/0 .data            g_fopCam_Method */
leafdraw_method_class g_fopCam_Method = {
    (process_method_func)fopCam_Create,  (process_method_func)fopCam_Delete,
    (process_method_func)fopCam_Execute, (process_method_func)fopCam_IsDelete,
    (process_method_func)fopCam_Draw,
};
