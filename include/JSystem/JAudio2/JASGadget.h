#ifndef JASGADGET_H
#define JASGADGET_H

#include "dolphin/types.h"

template<class T>
class JASGlobalInstance {
public:
    JASGlobalInstance(T* inst) {
        sInstance = inst;
    }

    JASGlobalInstance(bool param_1) {
        sInstance = (T*)this;
    }

    ~JASGlobalInstance() {
        if (sInstance == (T*)this) {
            sInstance = NULL;
        }
    }

    static T* getInstance() { return sInstance; }

    static T* sInstance;
};

#endif /* JASGADGET_H */
