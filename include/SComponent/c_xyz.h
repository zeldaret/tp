#ifndef C_XYZ_H_
#define C_XYZ_H_

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
    void operator=(const Vec& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    cXyz operator+(const Vec& vec) const;
    cXyz operator-(const Vec& vec) const;
    cXyz operator*(float scale) const;
    cXyz operator*(const Vec& vec) const;
    cXyz operator/(float) const;
    void operator+=(float f) {
        x += f;
        y += f;
        z += f;
    }
    void operator-=(float f) {
        x -= f;
        y -= f;
        z -= f;
    }
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

    void setAll(float f) {
        z = f;
        y = f;
        x = f;
    }

    void setMin(const cXyz& other) {
        if (x > other.x) {
            x = other.x;
        }
        if (y > other.y) {
            y = other.y;
        }
        if (z > other.z) {
            z = other.z;
        }
    }

    void setMax(const cXyz& other) {
        if (x < other.x) {
            x = other.x;
        }
        if (y < other.y) {
            y = other.y;
        }
        if (z < other.z) {
            z = other.z;
        }
    }

    float GetX(void) const { return x; }

    float GetY(void) const { return y; }

    float GetZ(void) const { return z; }

    bool checkEpsilon() const { return !(PSVECSquareMag(this) < lbl_80455074); }
};

extern cXyz lbl_80430CF4;  // SComponent::cXyz::Zero
extern cXyz lbl_80430D0C;  // SComponent::cXyz::BaseX
extern cXyz lbl_80430D24;  // SComponent::cXyz::BaseY

#endif