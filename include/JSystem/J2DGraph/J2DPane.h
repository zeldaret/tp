#ifndef J2DPANE_H
#define J2DPANE_H

#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/JSupport/JSURandomInputStream.h"
#include "JSystem/JUtility/JUTFont.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J2DScreen;

enum J2DRotateAxis {
    /* 0x78 */ ROTATE_X = 'x',
    /* 0x79 */ ROTATE_Y = 'y',
    /* 0x7A */ ROTATE_Z = 'z'
};

enum J2DBasePosition {};

class J2DPane {
public:
    J2DPane();
    J2DPane(J2DPane*, bool, u64, const JGeometry::TBox2<f32>&);
    J2DPane(u64, const JGeometry::TBox2<f32>&);
    J2DPane(J2DPane* other, JSURandomInputStream* stream, u8 arg3);
    virtual ~J2DPane();

    /* 0x0c */ virtual s32 getTypeID() const { return 16; }
    /* 0x10 */ virtual void move(f32 x, f32 y);
    /* 0x14 */ virtual void add(f32 x, f32 y);
    /* 0x18 */ virtual void resize(f32 x, f32 y);
    /* 0x1c */ virtual void setCullBack(bool cull);
    /* 0x20 */ virtual void setCullBack(_GXCullMode cmode);
    /* 0x24 */ virtual void setAlpha(u8);
    /* 0x28 */ virtual bool setConnectParent(bool connected);
    /* 0x2c */ virtual void calcMtx();
    /* 0x30 */ virtual void update();
    /* 0x34 */ virtual void drawSelf(f32 arg1, f32 arg2);
    /* 0x38 */ virtual void drawSelf(f32 arg1, f32 arg2, Mtx* mtx);
    /* 0x3c */ virtual J2DPane* search(u64 tag);
    /* 0x40 */ virtual J2DPane* searchUserInfo(u64 tag);
    /* 0x44 */ virtual void makeMatrix(f32, f32);
    /* 0x48 */ virtual void makeMatrix(f32 a, f32 b, f32 c, f32 d);
    /* 0x4c */ virtual bool isUsed(const ResTIMG* timg);
    /* 0x50 */ virtual bool isUsed(const ResFONT* font);
    /* 0x54 */ virtual void clearAnmTransform();
    /* 0x58 */ virtual void rewriteAlpha();
    /* 0x5c */ virtual void setAnimation(J2DAnmBase* anm);
    /* 0x60 */ virtual void setAnimation(J2DAnmTransform* anm);
    /* 0x64 */ virtual void setAnimation(J2DAnmColor* anm) {}
    /* 0x68 */ virtual void setAnimation(J2DAnmTexPattern* anm) {}
    /* 0x6c */ virtual void setAnimation(J2DAnmTextureSRTKey* anm) {}
    /* 0x70 */ virtual void setAnimation(J2DAnmTevRegKey* anm) {}
    /* 0x74 */ virtual void setAnimation(J2DAnmVisibilityFull* anm) {}
    /* 0x78 */ virtual void setAnimation(J2DAnmVtxColor* anm) {}
    /* 0x7c */ virtual const J2DAnmTransform* animationTransform(const J2DAnmTransform* transform);
    /* 0x80 */ virtual void setVisibileAnimation(J2DAnmVisibilityFull* visibility);
    /* 0x84 */ virtual void setAnimationVF(J2DAnmVisibilityFull* visibility);
    /* 0x88 */ virtual void setVtxColorAnimation(J2DAnmVtxColor* vtx_color);
    /* 0x8c */ virtual void setAnimationVC(J2DAnmVtxColor* vtx_color);
    /* 0x90 */ virtual const J2DAnmTransform* animationPane(const J2DAnmTransform* transform);

    f32 getHeight() const { return mBounds.getHeight(); }
    f32 getWidth() const { return mBounds.getWidth(); }
    JSUTree<J2DPane>* getFirstChild() { return mPaneTree.getFirstChild(); }
    const JSUTree<J2DPane>* getPaneTree() { return &mPaneTree; }
    u8 getAlpha() const { return mAlpha; }

    f32 getScaleX() const { return mScaleX; }

    f32 getScaleY() const { return mScaleY; }

    f32 getTranslateX() const { return mTranslateX; }

    f32 getTranslateY() const { return mTranslateY; }

    f32 getRotateZ() const { return mRotateZ; }

    f32 getRotOffsetX() const { return mRotateOffsetX; }

    f32 getRotOffsetY() const { return mRotateOffsetY; }

    void translate(f32 transX, f32 transY) {
        mTranslateX = transX;
        mTranslateY = transY;
        calcMtx();
    }

    void scale(f32 scaleH, f32 scaleV) {
        mScaleX = scaleH;
        mScaleY = scaleV;
        calcMtx();
    }

    int getKind() const { return id; }

    bool isVisible() const { return mVisible; }

    void show() { mVisible = true; }
    void hide() { mVisible = false; }

    void initiate();
    void initialize(J2DPane*, bool, u64, const JGeometry::TBox2<f32>&);
    void initialize(u64 tag, const JGeometry::TBox2<f32>& dim);
    void makePaneStream(J2DPane* other, JSURandomInputStream* stream);
    void changeUseTrans(J2DPane* other);
    bool appendChild(J2DPane* child);
    bool insertChild(J2DPane* before, J2DPane* child);
    void draw(f32 a1, f32 a2, const J2DGrafContext* ctx, bool a4, bool a5);
    void place(const JGeometry::TBox2<f32>& dim);
    JGeometry::TBox2<f32>& getBounds();
    void rotate(f32 offsetX, f32 offsetY, J2DRotateAxis axis, f32 angle);
    void rotate(f32 angle);
    void clip(const JGeometry::TBox2<f32>& bounds);
    void setBasePosition(J2DBasePosition position);
    void setInfluencedAlpha(bool arg1, bool arg2);
    JGeometry::TVec3<f32> getGlbVtx(u8 arg1) const;
    J2DPane* getFirstChildPane();
    J2DPane* getNextChildPane();
    J2DPane* getParentPane();
    void makePaneExStream(J2DPane* other, JSURandomInputStream* stream);
    static s16 J2DCast_F32_to_S16(f32 value, u8 arg2);
    void* getPointer(JSURandomInputStream* stream, u32 size, JKRArchive* archive);
    void animationTransform();
    void updateTransform(const J2DAnmTransform* transform);
    void setUserInfo(u64 info) { mUserInfoTag = info; }

    static JGeometry::TBox2<f32> static_mBounds;

public:
    /* 0x04 */ u16 _4;
    /* 0x06 */ u8 _6[2];
    /* 0x08 */ int id;
    /* 0x0C */ u8 _c[4];
    /* 0x10 */ u64 mInfoTag;
    /* 0x18 */ u64 mUserInfoTag;
    /* 0x20 */ JGeometry::TBox2<f32> mBounds;
    /* 0x30 */ JGeometry::TBox2<f32> mGlobalBounds;
    /* 0x40 */ JGeometry::TBox2<f32> mClipRect;
    /* 0x50 */ Mtx mPositionMtx;
    /* 0x80 */ Mtx mGlobalMtx;
    /* 0xB0 */ bool mVisible;
    /* 0xB1 */ u8 mCullMode;
    /* 0xB2 */ u8 mAlpha;
    /* 0xB3 */ u8 mColorAlpha;
    /* 0xB4 */ bool mIsInfluencedAlpha;
    /* 0xB5 */ bool mConnected;
    /* 0xB6 */ char mRotAxis;
    /* 0xB7 */ u8 mBasePosition;
    /* 0xB8 */ f32 mRotateX;
    /* 0xBC */ f32 mRotateY;
    /* 0xC0 */ f32 mRotateZ;
    /* 0xC4 */ f32 mRotateOffsetX;
    /* 0xC8 */ f32 mRotateOffsetY;
    /* 0xCC */ f32 mScaleX;
    /* 0xD0 */ f32 mScaleY;
    /* 0xD4 */ f32 mTranslateX;
    /* 0xD8 */ f32 mTranslateY;
    /* 0xDC */ JSUTree<J2DPane> mPaneTree;
    /* 0xF8 */ const J2DAnmTransform* mTransform;
    /* 0xFC */ u32 _fc;
};

#endif /* J2DPANE_H */
