#ifndef JGEOMETRY_H
#define JGEOMETRY_H

#include "dolphin/types.h"

namespace JGeometry {

template <typename T>
struct TVec3 {
    T x;
    T y;
    T z;
};
/*
template <>
struct TVec3<f32> {
    TVec3(Vec& v) {

    }
};
 */

}  // namespace JGeometry

#endif