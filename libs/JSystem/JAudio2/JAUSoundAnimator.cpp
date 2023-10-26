//
// Translation Unit: JAUSoundAnimator
//

#include "JSystem/JAudio2/JAUSoundAnimator.h"

/* 802A6F70-802A7044 2A18B0 00D4+00 0/0 1/1 0/0 .text getStartSoundIndex__17JAUSoundAnimationCFf
 */
int JAUSoundAnimation::getStartSoundIndex(f32 param_0) const {
    int i;
    for (i = 0; i < getNumSounds(); i++) {
        if (getSound(i)->field_0x04 >= param_0) {
            break;
        }
    }
    return i;
}

/* 802A7044-802A7114 2A1984 00D0+00 0/0 1/1 0/0 .text getEndSoundIndex__17JAUSoundAnimationCFf */
int JAUSoundAnimation::getEndSoundIndex(f32 param_0) const {
    int i;
    for (i = 0; i < getNumSounds(); i++) {
        if (getSound(i)->field_0x04 > param_0) {
            break;
        }
    }
    return i;
}
