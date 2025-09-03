#ifndef C_SXYZ_H
#define C_SXYZ_H

#include "dolphin/mtx.h"

struct SVec {
    s16 x, y, z;
};

class csXyz : public SVec {
public:
    static const csXyz Zero;
    /* 80018BD0 */ ~csXyz() {}
    /* inline   */ csXyz() {}
    /* inline   */ csXyz(const csXyz& other) : SVec(other){};
    /* 802673F4 */ csXyz(s16, s16, s16);
    /* 80267404 */ csXyz operator+(csXyz&);
    /* 8026745C */ void operator+=(csXyz&);
    /* 80267490 */ csXyz operator-(csXyz&);
    /* 802674E8 */ csXyz operator*(f32);
    s16 GetX() const { return x; }
    s16 GetY() const { return y; }
    s16 GetZ() const { return z; }

    void set(s16 oX, s16 oY, s16 oZ) {
        x = oX;
        y = oY;
        z = oZ;
    }

    void setall(s16 val) {
        x = val;
        y = val;
        z = val;
    }
};

#endif /* C_SXYZ_H */
