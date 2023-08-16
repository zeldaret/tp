#ifndef J3DJOINTFACTORY_H
#define J3DJOINTFACTORY_H

#include "JSystem/J3DGraphBase/J3DTransform.h"
#include "dolphin/types.h"

struct J3DJoint;
struct ResNTAB;

struct J3DJointInitData {
    /* 0x00 */ u16 mKind;
    /* 0x02 */ bool mScaleCompensate;
    /* 0x04 */ J3DTransformInfo mTransformInfo;
    /* 0x24 */ f32 mRadius;
    /* 0x28 */ Vec mMin;
    /* 0x2C */ Vec mMax;
};  // Size: 0x30

struct J3DJointBlock {
    /* 0x00 */ u8 mMagic[4];
    /* 0x04 */ u32 mSize;

    /* 0x08 */ u16 mJointNum;
    /* 0x0A */ u16 _pad;

    /* 0x0C */ J3DJointInitData* mJointInitData;
    /* 0x10 */ u16* mIndexTable;
    /* 0x14 */ ResNTAB* mNameTable;
};

struct J3DJointFactory {
    /* 80337178 */ J3DJointFactory(J3DJointBlock const&);
    /* 803371D0 */ J3DJoint* create(int);

    J3DJointInitData* mJointInitData;
    u16* mIndexTable;

    u16 getKind(int no) const { return mJointInitData[mIndexTable[no]].mKind; }
    u8 getScaleCompensate(int no) const { return mJointInitData[mIndexTable[no]].mScaleCompensate; }
    const J3DTransformInfo& getTransformInfo(int no) const {
        return mJointInitData[mIndexTable[no]].mTransformInfo;
    }
    f32 getRadius(int no) const { return mJointInitData[mIndexTable[no]].mRadius; }
    Vec& getMin(int no) const { return mJointInitData[mIndexTable[no]].mMin; }
    Vec& getMax(int no) const { return mJointInitData[mIndexTable[no]].mMax; }
};

#endif /* J3DJOINTFACTORY_H */