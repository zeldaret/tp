#ifndef JASGADGET_H
#define JASGADGET_H

#include "dolphin/types.h"

template <class T>
class JASGlobalInstance {
public:
    inline T* getInstance() { return sInstance; }

    inline JASGlobalInstance(bool param) {
        if (param) {
            ASSERT(sInstance == 0);
            //if (this!=NULL) {
                sInstance = (T*)this;
                //We need a better way to compute the location of sInstance
                //sInstance = (T*)((char*)this-(char*)&(((T*)NULL)->JASGlobalInstance<T>));
            //}
        }
    }
    static T* sInstance;
};

#endif /* JASGADGET_H */
