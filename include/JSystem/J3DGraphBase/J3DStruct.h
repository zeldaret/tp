#ifndef J3DSTRUCT_H
#define J3DSTRUCT_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/gx/GXStruct.h"

class J3DLightInfo {
public:
    J3DLightInfo(J3DLightInfo const& other) { *this = other; }
    /* 803256C4 */ void operator=(J3DLightInfo const&);

    /* 0x00 */ Vec mLightPosition;
    /* 0x0C */ Vec mLightDirection;
    /* 0x18 */ GXColor mColor;
    /* 0x1C */ Vec mCosAtten;
    /* 0x28 */ Vec mDistAtten;
};  // Size = 0x34

extern "C" extern J3DLightInfo const j3dDefaultLightInfo;

class J3DLightObj {
public:
    /* 80018C0C */ J3DLightObj() : mInfo(j3dDefaultLightInfo) {}

    J3DLightInfo& getLightInfo() { return mInfo; }
    J3DLightObj& operator=(J3DLightObj const& other) {
        mInfo = other.mInfo;
        return *this;
    }

    /* 0x00 */ J3DLightInfo mInfo;
    /* 0x34 */ u8 field_0x34[64];
};  // Size = 0x74

#endif /* J3DSTRUCT_H */
