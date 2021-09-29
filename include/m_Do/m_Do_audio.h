#ifndef M_DO_M_DO_AUDIO_H
#define M_DO_M_DO_AUDIO_H

#include "Z2AudioLib/Z2AudioMgr.h"
#include "dolphin/types.h"

// move/fix later
template <typename T>
class JASGlobalInstance {
public:
    JASGlobalInstance(bool param_0) {
        if (param_0) {
            sInstance = this;
        }
    };
    ~JASGlobalInstance() {
        if (sInstance == this) {
            sInstance = NULL;
        }
    };

    T* getInstance() { return sInstance; };

    static T* sInstance;
};

class mDoAud_zelAudio_c : public Z2AudioMgr {
public:
    void reset();
    ~mDoAud_zelAudio_c();
};

#endif /* M_DO_M_DO_AUDIO_H */
