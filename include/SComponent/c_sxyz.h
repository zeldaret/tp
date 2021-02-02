#ifndef C_SXYZ_H_
#define C_SXYZ_H_

#include "global.h"

class csXyz {
private:
public:
    s16 mX, mY, mZ;

    csXyz() {}
    csXyz(const csXyz& other) {
        *this = other;
    }
    csXyz(s16, s16, s16);
    s16 GetX() const {
        return mX;
    }
    s16 GetY() const {
        return mY;
    }
    s16 GetZ() const {
        return mZ;
    }
    csXyz operator+(csXyz&);
    void operator+=(csXyz&);
    csXyz operator-(csXyz&);
    csXyz operator*(f32);
    csXyz createRotY(s16 yRot) const {
        // return csXyz(this->mX, this->mY + yRot, this->mZ);
        csXyz ret(*this);
        ret.mY += yRot;
        return ret;
    }
};

extern csXyz lbl_80451160;  // SComponent::csXyz::Zero

// additional symbols needed for csXyz
extern "C" {
void __pl__FsRC7cSAngle(void);
void __mi__FsRC7cSAngle(void);
}

#endif