#ifndef C_XYZ_H
#define C_XYZ_H

#include "MSL_C/math.h"
#include "dolphin/mtx/vec.h"

struct cXyz : Vec {
    static const cXyz Zero;
    static const cXyz BaseX;
    static const cXyz BaseY;
    static const cXyz BaseZ;
    static const cXyz BaseXY;
    static const cXyz BaseXZ;
    static const cXyz BaseYZ;
    static const cXyz BaseXYZ;
    /* 80009184 */ ~cXyz() {}
    /* inlined  */ cXyz() {}
    cXyz(f32 x, f32 y, f32 z) {
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
    /* 80266AE4 */ cXyz operator+(Vec const&) const;
    /* 80266B34 */ cXyz operator-(Vec const&) const;
    /* 80266B84 */ cXyz operator*(f32) const;
    /* 80266BD0 */ cXyz operator*(Vec const&) const;
    /* 80266C18 */ cXyz operator/(f32) const;
    /* 800977D8 */ // void operator=(cXyz const&);

    void operator+=(f32 f) {
        x += f;
        y += f;
        z += f;
    }
    void operator-=(f32 f) {
        x -= f;
        y -= f;
        z -= f;
    }
    void operator-=(const Vec& other) { VECSubtract(this, &other, this); }
    void operator+=(const Vec& other) { VECAdd(this, &other, this); }
    void operator*=(f32 scale) { VECScale(this, this, scale); }
    /* 80266C6C */ cXyz getCrossProduct(Vec const&) const;
    /* 80266CBC */ cXyz outprod(Vec const&) const;
    /* 80266CE4 */ cXyz norm() const;
    /* 80266D30 */ cXyz normZP() const;
    /* 80266DC4 */ cXyz normZC() const;
    /* 80266EF4 */ cXyz normalize();
    /* 80266F48 */ cXyz normalizeZP();
    /* 80266FDC */ bool normalizeRS();
    /* 8026702C */ bool operator==(Vec const&) const;
    /* 8026706C */ bool operator!=(Vec const&) const;
    /* 802670AC */ bool isZero() const;
    /* 80267128 */ s16 atan2sX_Z() const;
    /* 80267150 */ s16 atan2sY_XZ() const;

    void set(f32 pX, f32 pY, f32 pZ) {
        x = pX;
        y = pY;
        z = pZ;
    }

    void set(const Vec& other) {
        x = other.x;
        y = other.y;
        z = other.z;
    }

    f32 getXDiff(const Vec* other) const { return x - other->x; }
    f32 getYDiff(const Vec* other) const { return y - other->y; }
    f32 getZDiff(const Vec* other) const { return z - other->z; }

    void setAll(f32 f) { set(f, f, f); }

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

    float getSquareMag() const { return VECSquareMag(this); }
    f32 getSquareDistance(const Vec& other) const { return VECSquareDistance(this, &other); }

    static float getNearZeroValue() { return 8e-11f; }

    bool isNearZeroSquare() const { return (this->getSquareMag() < getNearZeroValue()); }
    f32 abs2() const { return this->getSquareMag(); }
    f32 abs2(const Vec& other) const { return this->getSquareDistance(other); }
    f32 abs2XZ() const {
        cXyz tmp(this->x, 0, this->z);
        return tmp.abs2();
    }
    f32 abs2XZ(const Vec& other) const {
        cXyz tmp(this->x, 0, this->z);
        cXyz tmp2(other.x, 0, other.z);
        return tmp.abs2(tmp2);
    }
    f32 abs() const { return sqrtf(this->abs2()); }
    f32 abs(const Vec& other) const { return sqrtf(this->abs2(other)); }
    f32 absXZ() const { return sqrtf(this->abs2XZ()); }
    f32 absXZ(const Vec& other) const { return sqrtf(this->abs2XZ(other)); }
    f32 getMagXZ() const { return cXyz(this->x, 0, this->z).getSquareMag(); }

    f32 getDotProduct(const Vec& other) const { return VECDotProduct(this, &other); }
    f32 inprod(const Vec& other) const { return getDotProduct(other); }
};

#endif /* C_XYZ_H */
