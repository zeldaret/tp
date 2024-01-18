#ifndef TPOSITION3_H
#define TPOSITION3_H

#include "dolphin/mtx.h"
#include "JSystem/JMath/JMath.h"

namespace JGeometry {

template <typename T>
struct SMatrix34C {
    T data[3][4];
};

template <>
struct SMatrix34C<f32> {
    f32 data[3][4];

    void identity() { MTXIdentity(data); }

    typedef f32 ArrType[4];
    void set(const ArrType* src) { JMath::gekko_ps_copy12((f32*)data, (f32*)src); }

    operator ArrType*() { return data; }
    operator const ArrType*() const { return data; }
};

template <typename T>
struct TMatrix34 : public T {};

template <typename T>
struct TRotation3 : public T {};

template <typename T>
struct TPosition3 : public T {};

typedef TPosition3<TRotation3<TMatrix34<SMatrix34C<f32> > > > TPosition3f32;

}  // namespace JGeometry

#endif