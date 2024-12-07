#ifndef F_F_OP_CAMERA_H_
#define F_F_OP_CAMERA_H_

#include "f_op/f_op_view.h"

class camera_class;

struct camera_process_profile_definition {
    /* 0x00 */ view_process_profile_definition base;
    /* 0x3C */ leafdraw_method_class* sub_method; // Subclass methods
};

static s32 fopCam_Draw(camera_class* i_this);
static int fopCam_Execute(camera_class* i_this);
int fopCam_IsDelete(camera_class* i_this);

extern leafdraw_method_class g_fopCam_Method;

#endif
