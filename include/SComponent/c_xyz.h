#ifndef __C_XYZ_H_
#define __C_XYZ_H_

#include "SComponent/c_math.h"
#include "global.h"

extern float /* 1.0 */ lbl_80455070;
extern float /* epsilon */ lbl_80455074;
extern float lbl_80455078;
extern float lbl_8045507C;
extern float lbl_80455080;
extern float /* 32.0 */ lbl_80455084;
extern double lbl_80455088;
extern double lbl_80455090;
extern double lbl_80455098;
extern u8 lbl_80430CE8;

class cXyz : public Vec {
public:
    ~cXyz(){};
    cXyz() {}
    cXyz(float x, float y, float z) {
        this->x = x;
        this->y = y;
        this->z = z;
    }
    cXyz(const cXyz& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    cXyz(const Vec& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    cXyz operator=(const Vec& vec) {
        cXyz ret;
        ret.x = vec.x;
        ret.y = vec.y;
        ret.z = vec.z;
        return ret;
    }
    cXyz operator+(const Vec& vec) const;
    cXyz operator-(const Vec& vec) const;
    cXyz operator*(float scale) const;
    cXyz operator*(const Vec& vec) const;
    cXyz operator/(float) const;
    cXyz getCrossProduct(const Vec&) const;
    cXyz outprod(const Vec&) const;
    cXyz norm(void) const;
    cXyz normZP(void) const;
    cXyz normZC(void) const;
    cXyz normalize(void);
    cXyz normalizeZP(void);
    bool normalizeRS(void);
    bool operator==(const Vec&) const;
    bool operator!=(const Vec&) const;
    bool isZero(void) const;
    s16 atan2sX_Z(void) const;
    s16 atan2sY_XZ(void) const;

    void baseZ() {
        this->x = lbl_80455080;
        this->y = lbl_80455080;
        this->z = lbl_80455070;
    }

    bool checkEpsilon() const { return !(PSVECSquareMag(this) < lbl_80455074); }
};

extern cXyz lbl_80430CF4;  // SComponent::cXyz::Zero
extern cXyz lbl_80430D0C;  // SComponent::cXyz::BaseX
extern cXyz lbl_80430D24;  // SComponent::cXyz::BaseY

#endif