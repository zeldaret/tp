#ifndef RVL_SDK_HBM_AX_SOUND_H
#define RVL_SDK_HBM_AX_SOUND_H

#include <revolution/types.h>

#include "sound/mix.h"

namespace homebutton {
    void PlaySeq(int num);
    void InitAxSound(void const* soundData, void* mem, u32 memSize);
    void ShutdownAxSound();
    void AxSoundMain();
    void StopAllSeq();
    void SetVolumeAllSeq(f32 gain);
    void SetSoundMode(HBMMIXSoundMode mode);
}  // namespace homebutton

#endif  // RVL_SDK_HBM_AX_SOUND_H
