#ifndef J2DPICTURE_H_
#define J2DPICTURE_H_

#include "dolphin/types.h"

class J2DPicture {
public:

    // member functions
    void setBlendRatio(f32, f32);
    void append(const char*, f32);
    void insert(const char*, u8, f32);
};

#endif