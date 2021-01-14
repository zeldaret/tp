#ifndef __JGEOMETRY_H__
#define __JGEOMETRY_H__

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