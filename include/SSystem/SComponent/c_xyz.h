#ifndef C_XYZ_H
#define C_XYZ_H

#include "dolphin/types.h"
#include "mtx_vec.h"

struct cXyz : Vec {
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
};

#endif /* C_XYZ_H */
