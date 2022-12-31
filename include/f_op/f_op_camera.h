#ifndef F_F_OP_CAMERA_H_
#define F_F_OP_CAMERA_H_

#include "f_op/f_op_camera_mng.h"

struct camera_process_profile_definition {
    /* 0x00 */ view_process_profile_definition mBase;
    /* 0x3C */ leafdraw_method_class* mSubMtd; // Subclass methods
};

static s32 fopCam_Draw(camera_class* param_1);
static int fopCam_Execute(camera_class* pCamera);
int fopCam_IsDelete(camera_class* pCamera);

#endif
