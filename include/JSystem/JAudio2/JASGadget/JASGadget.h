#ifndef __JASGADGET_H__
#define __JASGADGET_H__

//! @todo figure out *GlobalInstance singleton handlers once we can properly place statics.
/*
template <typename T>
class JASGlobalInstance {
public:
    JASGlobalInstance(bool p1) {
        JASGlobalInstance<T> pJVar1;
        if ((p1 == true) && (sInstance != NULL)) {
            // assert
            pJVar1 = this;
        }
        sInstance = pJVar1;
    }

private:
    static T sInstance;
}; */

#endif