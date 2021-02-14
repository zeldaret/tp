#ifndef C_SXYZ_H_
#define C_SXYZ_H_

#include "global.h"

struct SVec {
    s16 mX, mY, mZ;
};

class csXyz : public SVec {
public:
    csXyz() {}
    csXyz(const csXyz& other) : SVec(other){};
    csXyz(s16, s16, s16);
    ~csXyz() {}
    s16 GetX() const { return mX; }
    s16 GetY() const { return mY; }
    s16 GetZ() const { return mZ; }
    csXyz operator+(csXyz&);
    void operator+=(csXyz&);
    csXyz operator-(csXyz&);
    csXyz operator*(f32);
};

extern csXyz lbl_80451160;  // SComponent::csXyz::Zero

// additional symbols needed for csXyz
extern "C" {
void __pl__FsRC7cSAngle(void);
void __mi__FsRC7cSAngle(void);
}

#endif