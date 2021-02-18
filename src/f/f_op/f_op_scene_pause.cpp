#include "f/f_op/f_op_scene_pause.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_manager.h"
#include "global.h"

int fopScnPause_Enable(scene_class* pScene) {
    if (pScene) {
        fpcM_PauseEnable(pScene, 1);
        fpcM_PauseEnable(pScene, 2);
        return 1;
    }
    return 0;
}

// some of this will need to be changed once scene_class is properly mapped
int fopScnPause_Disable(scene_class* pScene) {
    if (pScene) {
        void* tmp = (void*)pScene->field_0x2C[6];

        if (!tmp) {
            fpcM_PauseDisable(pScene, 1);
            fpcM_PauseDisable(pScene, 2);
        } else if (fpcEx_IsExist((s32)((int*)tmp)[1]) == 1) {
            if (!fpcM_IsPause(tmp, 1)) {
                fpcM_PauseDisable(pScene, 1);
            }

            if (!fpcM_IsPause(tmp, 2)) {
                fpcM_PauseDisable(pScene, 2);
            }
        }
        return 1;
    }
    return 0;
}
