#ifndef J3DMATERIAL_H
#define J3DMATERIAL_H

#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "JSystem/J3DGraphBase/J3DShape.h"
#include "JSystem/J3DGraphBase/J3DTexture.h"
#include "dolphin/types.h"

class J3DJoint;
class J3DMaterialAnm;

class J3DMaterial {
public:
    /* 803157A0 */ static J3DColorBlock* createColorBlock(u32);
    /* 803159A0 */ static J3DTexGenBlock* createTexGenBlock(u32);
    /* 80315B04 */ static J3DTevBlock* createTevBlock(int);
    /* 80315E78 */ static J3DIndBlock* createIndBlock(int);
    /* 80315F60 */ static J3DPEBlock* createPEBlock(u32, u32);
    /* 80316100 */ static u32 calcSizeColorBlock(u32);
    /* 80316150 */ static u32 calcSizeTexGenBlock(u32);
    /* 8031617C */ static u32 calcSizeTevBlock(int);
    /* 803161C4 */ static u32 calcSizeIndBlock(int);
    /* 803161D8 */ static u32 calcSizePEBlock(u32, u32);
    /* 80316240 */ void initialize();
    /* 80316290 */ u32 countDLSize();
    /* 80316344 */ void makeDisplayList_private(J3DDisplayListObj*);
    /* 80316AB0 */ void setCurrentMtx();
    /* 80316AC8 */ void calcCurrentMtx();
    /* 80316D68 */ void copy(J3DMaterial*);
    /* 80316E90 */ s32 newSharedDisplayList(u32);
    /* 80316F24 */ s32 newSingleSharedDisplayList(u32);

    /* 803169DC */ virtual void calc(f32 const (*)[4]);
    /* 80316A54 */ virtual void calcDiffTexMtx(f32 const (*)[4]);
    /* 80316620 */ virtual void makeDisplayList();
    /* 80316668 */ virtual void makeSharedDisplayList();
    /* 8031668C */ virtual void load();
    /* 803166DC */ virtual void loadSharedDL();
    /* 80316740 */ virtual void patch();
    /* 803167D8 */ virtual void diff(u32);
    /* 80316E14 */ virtual void reset();
    /* 80316E70 */ virtual void change();

    J3DMaterial() { initialize(); }
    ~J3DMaterial() {}
    J3DMaterial* getNext() const { return mNext; }
    J3DShape* getShape() const { return mShape; }
    J3DTevBlock* getTevBlock() const { return mTevBlock; }
    J3DColorBlock* getColorBlock() const { return mColorBlock; }
    J3DTexGenBlock* getTexGenBlock() const { return mTexGenBlock; }
    J3DDisplayListObj* getSharedDisplayListObj() const { return mSharedDLObj; }
    J3DIndBlock* getIndBlock() const { return mIndBlock; }
    J3DShape* getShape() { return mShape; }
    J3DJoint* getJoint() { return mJoint; }
    J3DMaterialAnm* getMaterialAnm() const {
        if ((u32)mMaterialAnm < 0xC0000000) {
            return mMaterialAnm;
        } else {
            return NULL;
        }
    }
    J3DNBTScale* getNBTScale() const { return mTexGenBlock->getNBTScale(); }
    u16 getTexNo(u32 idx) const { return mTevBlock->getTexNo(idx); }
    GXColor* getTevKColor(u32 param_0) { return mTevBlock->getTevKColor(param_0); }
    GXColorS10* getTevColor(u32 param_0) { return mTevBlock->getTevColor(param_0); }
    J3DFog* getFog() { return mPEBlock->getFog(); }
    J3DTexMtx* getTexMtx(u32 idx) { return mTexGenBlock->getTexMtx(idx); }
    u16 getIndex() { return mIndex; }
    bool isDrawModeOpaTexEdge() { return (mMaterialMode & 3) == 0; }
    J3DPEBlock* getPEBlock() { return mPEBlock; }
    void onInvalid() { mInvalid = 1; }
    u32 getTexGenNum() const { return mTexGenBlock->getTexGenNum(); }
    u8 getTevStageNum() const { return mTevBlock->getTevStageNum(); }
    J3DTexCoord* getTexCoord(u32 idx) { return mTexGenBlock->getTexCoord(idx); }

    void setTevColor(u32 i, const J3DGXColorS10* i_color) { mTevBlock->setTevColor(i, i_color); }
    void setTevKColor(u32 i, const J3DGXColor* i_color) { mTevBlock->setTevKColor(i, i_color); }
    void setMaterialAnm(J3DMaterialAnm* i_anm) { mMaterialAnm = i_anm; }
    void setCullMode(u8 i_mode) { mColorBlock->setCullMode(i_mode); }
    void setTexMtx(u32 idx, J3DTexMtx* mtx) { mTexGenBlock->setTexMtx(idx, mtx); }

public:
    /* 0x04 */ J3DMaterial* mNext;
    /* 0x08 */ J3DShape* mShape;
    /* 0x0C */ J3DJoint* mJoint;
    /* 0x10 */ u32 mMaterialMode;
    /* 0x14 */ u16 mIndex;
    /* 0x18 */ u32 mInvalid;
    /* 0x1C */ u32 field_0x1c;
    /* 0x20 */ u32 mDiffFlag;
    /* 0x24 */ J3DColorBlock* mColorBlock;
    /* 0x28 */ J3DTexGenBlock* mTexGenBlock;
    /* 0x2C */ J3DTevBlock* mTevBlock;
    /* 0x30 */ J3DIndBlock* mIndBlock;
    /* 0x34 */ J3DPEBlock* mPEBlock;
    /* 0x38 */ J3DMaterial* mpOrigMaterial;
    /* 0x3C */ J3DMaterialAnm* mMaterialAnm;
    /* 0x40 */ J3DCurrentMtx mCurrentMtx;
    /* 0x48 */ J3DDisplayListObj* mSharedDLObj;
};

class J3DPatchedMaterial : public J3DMaterial {
public:
    /* 80316FB8 */ void initialize();

    /* 80316FD8 */ virtual void makeDisplayList();
    /* 80316FDC */ virtual void makeSharedDisplayList();
    /* 80316FE0 */ virtual void load();
    /* 80316FFC */ virtual void loadSharedDL();
    /* 8031703C */ virtual void reset();
    /* 80317040 */ virtual void change();
};

class J3DLockedMaterial : public J3DMaterial {
public:
    J3DLockedMaterial() { initialize(); }
    /* 80317044 */ void initialize();

    /* 803170D0 */ virtual void calc(f32 const (*)[4]);
    /* 80317064 */ virtual void makeDisplayList();
    /* 80317068 */ virtual void makeSharedDisplayList();
    /* 8031706C */ virtual void load();
    /* 80317088 */ virtual void loadSharedDL();
    /* 803170C8 */ virtual void patch();
    /* 803170CC */ virtual void diff(u32);
    /* 803170D4 */ virtual void reset();
    /* 803170D8 */ virtual void change();
};

#endif /* J3DMATERIAL_H */
