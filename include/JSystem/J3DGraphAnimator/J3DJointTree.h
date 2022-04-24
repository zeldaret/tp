#ifndef J3DJOINTTREE_H
#define J3DJOINTTREE_H

#include "JSystem/J3DGraphAnimator/J3DJoint.h"
#include "JSystem/JUtility/JUTNameTab.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

struct J3DModelHierarchy {};
struct J3DMaterialTable;

struct J3DDrawMtxData {
    /* 803115E0 */ J3DDrawMtxData();
    /* 803115F4 */ ~J3DDrawMtxData();

    /* 0x0 */ u16 mEntryNum;
    /* 0x2 */ u16 mDrawFullWgtMtxNum;
    /* 0x4 */ u8* mDrawMtxFlag;
    /* 0x8 */ u16* mDrawMtxIndex;
};  // Size: 0xC

class J3DShapeTable;

class J3DJointTree {
public:
    /* 80325A18 */ J3DJointTree();
    /* 80325A9C */ void makeHierarchy(J3DJoint*, J3DModelHierarchy const**, J3DMaterialTable*,
                                      J3DShapeTable*);
    /* 80325C00 */ void findImportantMtxIndex();

    /* 80325CAC */ virtual void calc(J3DMtxBuffer*, Vec const&, f32 const (&)[3][4]);
    /* 80325D24 */ virtual ~J3DJointTree();

    u16 getWEvlpMtxNum() const { return mWEvlpMtxNum; }
    u16 getJointNum() const { return mJointNum; }
    u16 getDrawMtxNum() const { return mDrawMtxData.mEntryNum; }
    J3DJoint* getRootNode() { return mRootNode; }
    J3DJoint* getJointNodePointer(u16 idx) const { return mJointNodePointer[idx]; }
    J3DMtxCalc* getBasicMtxCalc() const { return mBasicMtxCalc; }
    Mtx& getInvJointMtx(s32 idx) const { return mInvJointMtx[idx]; }

private:
    /* 0x04 */ J3DModelHierarchy* mHierarchy;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u32 mModelDataType;
    /* 0x10 */ J3DJoint* mRootNode;
    /* 0x14 */ J3DMtxCalc* mBasicMtxCalc;
    /* 0x18 */ J3DJoint** mJointNodePointer;
    /* 0x1C */ u16 mJointNum;
    /* 0x1E */ u16 mWEvlpMtxNum;
    /* 0x20 */ u32 mWEvlpMixMtxNum;
    /* 0x24 */ s32 mWEvlpMixIndex;
    /* 0x28 */ s32 mWEvlpMixWeight;
    /* 0x2C */ Mtx* mInvJointMtx;
    /* 0x30 */ s32 mWEvlpImportantMtxIdx;
    /* 0x34 */ J3DDrawMtxData mDrawMtxData;
    /* 0x40 */ u32 field_0x40;
    /* 0x44 */ JUTNameTab* mJointName;
};  // Size: 0x48

#endif /* J3DJOINTTREE_H */
