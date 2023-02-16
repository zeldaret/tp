#ifndef JASGADGET_H
#define JASGADGET_H

#include "dolphin/types.h"

template<class T>
class JASGlobalInstance {
public:
    JASGlobalInstance(T* inst) {
        sInstance = inst;
    }

    ~JASGlobalInstance() {
        if (sInstance != NULL) {
            sInstance = NULL;
        }
    }

    static T* getInstance() { return sInstance; }

    static T* sInstance;
};

#endif /* JASGADGET_H */
