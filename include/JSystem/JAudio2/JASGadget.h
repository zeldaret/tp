#ifndef JASGADGET_H
#define JASGADGET_H

#include "dolphin/types.h"

template <class T>
class JASGlobalInstance {
public:
    T* getInstance() { return sInstance; }

    JASGlobalInstance(bool param) {
        if (param) {
            ASSERT(sInstance == 0);
            if (this!=NULL) {
                sInstance = this - sizeof(T);
            }
        }
    }

    static T* sInstance;
};

#endif /* JASGADGET_H */
