#ifndef __C_SXYZ_H_
#define __C_SXYZ_H_

#include "global.h"

class csXyz {
private:
    s16 mX, mY, mZ;

public:
    csXyz(s16, s16, s16);
    csXyz operator+(csXyz&);
    void operator+=(csXyz&);
    csXyz operator-(csXyz&);
    csXyz operator*(float);
};

#endif