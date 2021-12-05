#ifndef J3DJOINT_H
#define J3DJOINT_H

#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphBase/J3DTransform.h"
#include "dolphin/types.h"

class J3DAnmTransform;
class J3DMtxBuffer;

class J3DMtxCalc {
public:
    /* 80325D1C */ static void setMtxBuffer(J3DMtxBuffer*);

    /* 8000D948 */ virtual ~J3DMtxCalc();
    /* 80014E90 */ virtual void setAnmTransform(J3DAnmTransform*);
    /* 80014E9C */ virtual bool getAnmTransform();
    /* 80014E8C */ virtual void setAnmTransform(u8, J3DAnmTransform*);
    /* 80014E94 */ virtual bool getAnmTransform(u8);
    /* 80014EA4 */ virtual void setWeight(u8, f32);
    /* 80014EA8 */ virtual void getWeight(u8) const;
    virtual void init(Vec const&, Mtx*) = 0;
    virtual void calc() = 0;

    static J3DMtxBuffer* getMtxBuffer() { return mMtxBuffer; }
    static J3DJoint* getJoint() { return mJoint; }

    static J3DMtxBuffer* mMtxBuffer;
    static J3DJoint* mJoint;
};  // Size: 0x4

class J3DMtxCalcNoAnmBase : public J3DMtxCalc {
public:
    /* 8000FA8C */ virtual ~J3DMtxCalcNoAnmBase();
};

template <typename A, typename B>
class J3DMtxCalcNoAnm : public J3DMtxCalcNoAnmBase, public A, public B {};

class J3DJoint;
typedef int (*J3DJointCallBack)(J3DJoint*, int);

class J3DJoint {
public:
    /* 8032F13C */ void appendChild(J3DJoint*);
    /* 8032F170 */ J3DJoint();
    /* 8032F254 */ void entryIn();
    /* 8032F3F8 */ void recursiveCalc();

    J3DMaterial* getMesh() { return mMesh; }
    u16 getJntNo() const { return mJntNo; }
    u8 getScaleCompensate() const { return mScaleCompensate; }
    J3DJoint* getYounger() { return mYounger; }
    void setYounger(J3DJoint* pYounger) { mYounger = pYounger; }
    void setCurrentMtxCalc(J3DMtxCalc* pMtxCalc) { mCurrentMtxCalc = pMtxCalc; }

    static J3DMtxCalc* mCurrentMtxCalc;

private:
    /* 0x00 */ void* mCallBackUserData;
    /* 0x04 */ J3DJointCallBack mCallBack;
    /* 0x08 */ void* field_0x8;
    /* 0x0C */ J3DJoint* mChild;
    /* 0x10 */ J3DJoint* mYounger;
    /* 0x14 */ u16 mJntNo;
    /* 0x16 */ u8 mMtxType;
    /* 0x17 */ u8 mScaleCompensate;
    /* 0x18 */ J3DTransformInfo mTransformInfo;
    /* 0x38 */ f32 mBoundingSphereRadius;
    /* 0x3C */ Vec mMin;
    /* 0x48 */ Vec mMax;
    /* 0x54 */ J3DMtxCalc* mMtxCalc;
    /* 0x58 */ J3DMaterial* mMesh;
};  // Size: 0x5C

struct J3DMtxCalcJ3DSysInitMaya {
    /* 8032ECAC */ static void init(Vec const&, f32 const (&)[3][4]);
};

struct J3DMtxCalcJ3DSysInitBasic {
    /* 8032EC28 */ static void init(Vec const&, f32 const (&)[3][4]);
};

struct J3DMtxCalcCalcTransformSoftimage {
    /* 8032EE50 */ static void calcTransform(J3DTransformInfo const&);
};

struct J3DMtxCalcCalcTransformMaya {
    /* 8032EFBC */ static void calcTransform(J3DTransformInfo const&);
};

struct J3DMtxCalcCalcTransformBasic {
    /* 8032ED30 */ static void calcTransform(J3DTransformInfo const&);
};

#endif /* J3DJOINT_H */
