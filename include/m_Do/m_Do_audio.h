#ifndef M_DO_M_DO_AUDIO_H
#define M_DO_M_DO_AUDIO_H

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

#endif /* M_DO_M_DO_AUDIO_H */
