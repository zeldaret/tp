/**
 * c_sxyz.cpp
 *
 */

#include "SSystem/SComponent/c_sxyz.h"

const csXyz csXyz::Zero = csXyz(0, 0, 0);

/* 802673F4-80267404 0010+00 s=4 e=19 z=119  None .text      __ct__5csXyzFsss */
csXyz::csXyz(s16 x, s16 y, s16 z) {
    this->x = x;
    this->y = y;
    this->z = z;
}

/* 80267404-8026745C 0058+00 s=0 e=0 z=3  None .text      __pl__5csXyzFR5csXyz */
csXyz csXyz::operator+(csXyz& other) {
    return csXyz(x + other.x, y + other.y, z + other.z);
}

/* 8026745C-80267490 0034+00 s=0 e=2 z=11  None .text      __apl__5csXyzFR5csXyz */
void csXyz::operator+=(csXyz& other) {
    x += other.x;
    y += other.y;
    z += other.z;
}

/* 80267490-802674E8 0058+00 s=0 e=0 z=1  None .text      __mi__5csXyzFR5csXyz */
csXyz csXyz::operator-(csXyz& other) {
    return csXyz(x - other.x, y - other.y, z - other.z);
}

/* 802674E8-8026758C 00A4+00 s=0 e=0 z=1  None .text      __ml__5csXyzFf */
csXyz csXyz::operator*(f32 mul) {
    return csXyz(x * mul, y * mul, z * mul);
}