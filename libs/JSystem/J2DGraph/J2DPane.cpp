#include "JSystem/J2DGraph/J2DPane.h"

J2DPane::J2DPane() : mBounds(), mGlobalBounds(), mClipRect(), mPaneTree(this) {
    mTransform = NULL;
    id = 'PAN1';
    mVisible = true;
    mInfoTag = 0;
    mUserInfoTag = 0;
    mBounds.set(lbl_804561F0, lbl_804561F0, lbl_804561F0, lbl_804561F0);
    initiate();
    changeUseTrans(NULL);
    calcMtx();
}

void J2DPane::initiate() {
    _4 = -1;
    mRotateOffsetY = mRotateOffsetX = mRotateZ = mRotateY = mRotateX = lbl_804561F0;
    mBasePosition = 0;
    mRotAxis = AXIS_Z;
    mScaleY = mScaleX = lbl_804561F4;
    mCullMode = GX_CULL_NONE;
    mAlpha = 0xFF;
    mIsInfluencedAlpha = true;
    mColorAlpha = 0xFF;
    mConnected = false;

    calcMtx();
}

extern "C" {

// __ct__7J2DPaneFP7J2DPanebUxRCQ29JGeometry8TBox2<f>
// J2DPane::J2DPane(J2DPane*, bool, unsigned long long, JGeometry::TBox2<f>)
asm void J2DPane_X1_(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F5D40.s"
}

// initialize__7J2DPaneFP7J2DPanebUxRCQ29JGeometry8TBox2<f>
// J2DPane::initialize(J2DPane*, bool, unsigned long long, JGeometry::TBox2<f>)
asm void J2DPane_NS_initialize(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F5DD0.s"
}

// __ct__7J2DPaneFUxRCQ29JGeometry8TBox2<f>
// J2DPane::J2DPane(unsigned long long, JGeometry::TBox2<f>)
asm void J2DPane_X2_(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F5E88.s"
}
}

#ifdef NONMATCHING  // templating..... again
void J2DPane::initialize(u64 tag, const TBox2<f32>& dim) {
    id = 'PAN1';
    mVisible = true;
    mInfoTag = tag;
    mUserInfoTag = tag;
    mBounds.set(dim);
    initiate();
    changeUseTrans(NULL);
    calcMtx();
}
#else
extern "C" {
// initialize__7J2DPaneFUxRCQ29JGeometry8TBox2<f>
// J2DPane::initialize(unsigned long long, JGeometry::TBox2<f>)
asm void J2DPane_NS_initialize_X1_(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F5F08.s"
}
}
#endif

// blocked by JSURandomInputStream
asm J2DPane::J2DPane(J2DPane* other, JSURandomInputStream* stream, u8 arg3) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F5F9C.s"
}

asm void J2DPane::makePaneStream(J2DPane* other, JSURandomInputStream* stream) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F60C4.s"
}

asm void J2DPane::changeUseTrans(J2DPane* other) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F63F8.s"
}

#ifdef NONMATCHING  // problem with ~JSUTree
J2DPane::~J2DPane() {
    JSUTreeIterator<J2DPane> iter = mPaneTree.getFirstChild();
    for (; iter != mPaneTree.getEndChild();) {
        delete iter++.getObject();
    }
}
#else
asm J2DPane::~J2DPane() {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F658C.s"
}
#endif

bool J2DPane::appendChild(J2DPane* child) {
    if (child == NULL)
        return false;

    const J2DPane* parent = child->getParentPane();
    bool result = mPaneTree.appendChild(&child->mPaneTree);

    if (result && parent == NULL) {
        child->add(mBounds.i.x, mBounds.i.y);
        child->calcMtx();
    }

    return result;
}

#ifdef NONMATCHING
bool J2DPane::insertChild(J2DPane* before, J2DPane* child) {
    if (child == NULL)
        return false;

    const J2DPane* parent = child->getParentPane();

    bool result = mPaneTree.insertChild(&before->mPaneTree, &child->mPaneTree);

    if (result && parent == NULL) {
        child->add(mBounds.i.x, mBounds.i.y);
        child->calcMtx();
    }

    return result;
}
#else
asm bool J2DPane::insertChild(J2DPane* before, J2DPane* child) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F6714.s"
}
#endif

asm void J2DPane::draw(f32 a1, f32 a2, const J2DGrafContext* ctx, bool a4, bool a5) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F67E0.s"
}

extern "C" {
// place__7J2DPaneFRCQ29JGeometry8TBox2<f>
// void J2DPane::place(const TBox2<f32>& dim) {}
asm void J2DPane_NS_place(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F6D18.s"
}
}

#ifdef NONMATCHING
void J2DPane::move(f32 x, f32 y) {
    place(TBox2<f32>(x, y, x + getWidth(), y + getHeight()));
}
#else
asm void J2DPane::move(f32 x, f32 y) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F6F60.s"
}
#endif

void J2DPane::add(f32 x, f32 y) {
    mTranslateX += x;
    mTranslateY += y;
    calcMtx();
}

#ifdef NONMATCHING
void J2DPane::resize(f32 x, f32 y) {
    TBox2<f32> box = mBounds;

    box.addPos(TVec2<f32>(mTranslateX, mTranslateY));

    const J2DPane* parent = getParentPane();
    if (parent != NULL) {
        box.addPos(TVec2<f32>(-parent->mBounds.i.x, -parent->mBounds.i.y));
    }

    box.f.x = box.i.x + x;
    box.f.y = box.i.y + y;
    place(box);
}
#else
asm void J2DPane::resize(f32 x, f32 y) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F6FF8.s"
}
#endif

#ifdef NONMATCHING  // close ish
TBox2<f32>& J2DPane::getBounds() {
    lbl_804349B0 = mBounds;
    lbl_804349B0.addPos(TVec2<f32>(mTranslateX, mTranslateY));

    const J2DPane* parent = getParentPane();
    if (parent != NULL) {
        lbl_804349B0.addPos(TVec2<f32>(-parent->mBounds.i.x, -parent->mBounds.i.y));
    }

    return lbl_804349B0;
}
#else
asm TBox2<f32>& J2DPane::getBounds() {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7100.s"
}
#endif

void J2DPane::rotate(f32 offsetX, f32 offsetY, J2DRotateAxis axis, f32 angle) {
    mRotateOffsetX = offsetX;
    mRotateOffsetY = offsetY;
    mRotAxis = axis;
    rotate(angle);
}

void J2DPane::rotate(f32 angle) {
    if (mRotAxis == AXIS_X) {
        mRotateX = angle;
    } else if (mRotAxis == AXIS_Y) {
        mRotateY = angle;
    } else {
        mRotateZ = angle;
    }

    calcMtx();
}

extern "C" {
// templating screws the mangled name
// clip__7J2DPaneFRCQ29JGeometry8TBox2<f>
// J2DPane::clip(JGeometry::TBox2<f>)
asm void clip__7J2DPaneFRCQ29JGeometry8TBox2(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7264.s"
}
};

// void J2DPane::clip(const TBox2<f32>& bounds) {
//     TBox2<f32> box = bounds;

//     box.addPos(TVec2<f32>(mGlobalBounds, _34));
//     mClipRect.intersect(box);
// }

const J2DPane* J2DPane::search(u64 tag) {
    if (tag == mInfoTag) {
        return this;
    }

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (const J2DPane* result = iter.getObject()->search(tag)) {
            return result;
        }
    }
    return NULL;
}

const J2DPane* J2DPane::searchUserInfo(u64 tag) {
    if (tag == mUserInfoTag) {
        return this;
    }

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (const J2DPane* result = iter.getObject()->searchUserInfo(tag)) {
            return result;
        }
    }
    return NULL;
}

bool J2DPane::isUsed(const ResTIMG* timg) {
    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (iter.getObject()->isUsed(timg))
            return true;
    }
    return false;
}

bool J2DPane::isUsed(const ResFONT* font) {
    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (iter.getObject()->isUsed(font))
            return true;
    }
    return false;
}

asm void J2DPane::makeMatrix(f32 a, f32 b, f32 c, f32 d) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7540.s"
}

void J2DPane::setCullBack(GXCullMode mode) {
    mCullMode = mode;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setCullBack(mode);
    }
}

void J2DPane::setBasePosition(J2DBasePosition position) {
    mBasePosition = position;
    mRotAxis = AXIS_Z;

    mRotateOffsetX = lbl_804561F0;

    if (position % 3 == 1) {
        f32 width = getWidth();
        mRotateOffsetX = width * lbl_80456208;
    } else if (position % 3 == 2) {
        f32 width = getWidth();
        mRotateOffsetX = width;
    }

    mRotateOffsetY = lbl_804561F0;
    if (position / 3 == 1) {
        f32 height = getHeight();
        mRotateOffsetY = height * lbl_80456208;
    } else if (position / 3 == 2) {
        f32 height = getHeight();
        mRotateOffsetY = height;
    }

    calcMtx();
}

asm void J2DPane::setInfluencedAlpha(bool arg1, bool arg2) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F77D0.s"
}

asm void J2DPane::getGlbVtx(u8 arg1) const {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F79A8.s"
}

#ifdef NONMATCHING  // probably an issue with JSUTree
const J2DPane* J2DPane::getFirstChildPane() {
    if (!getFirstChild())
        return NULL;

    return getFirstChild()->getObject();
}
#else
asm const J2DPane* J2DPane::getFirstChildPane() {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7A8C.s"
}
#endif

const J2DPane* J2DPane::getNextChildPane() {
    if (getPaneTree()->getNextChild() == NULL)
        return NULL;

    return getPaneTree()->getNextChild()->getObject();
}

const J2DPane* J2DPane::getParentPane() {
    if (getPaneTree()->getParent() == NULL)
        return NULL;

    return getPaneTree()->getParent()->getObject();
}

asm void J2DPane::makePaneExStream(J2DPane* other, JSURandomInputStream* stream) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7B18.s"
}

#ifdef NONMATCHING  // not happening
s16 J2DPane::J2DCast_F32_to_S16(f32 value, u8 arg2) {
    f32 temp;
    s32 temp2;
    s16 result;

    if (arg2 < 0xf) {
        temp = value;
        if (temp < lbl_804561F0)
            temp = -value;

        temp2 = value;

        if (temp2 < 0x8000) {
            if (value >= lbl_804561F0) {
                result = temp2;
            } else {
                result = ~temp2 + 1;
            }
        } else {
            if (value >= lbl_804561F0) {
                result = 0x7fff;
            } else {
                result = -0x8000;
            }
        }
    } else {
        result = 0;
    }

    return result;
}
#else
asm s16 J2DPane::J2DCast_F32_to_S16(f32 value, u8 arg2) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7D00.s"
}
#endif

asm void* J2DPane::getPointer(JSURandomInputStream* stream, u32 size, JKRArchive* archive) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7DB8.s"
}

#ifdef NONMATCHING  // matching in diff.py, what gives?
void J2DPane::setAnimation(J2DAnmBase* anm) {
    if (anm != NULL) {
        switch (anm->getKind()) {
        default:
#ifdef DEBUG
            OSReport("J2DPane: this is not a J3D Binary.\n");
#endif
            break;
        case 0:
            setAnimation(static_cast<J2DAnmTransform*>(anm));
            break;
        case 1:
            setAnimation(static_cast<J2DAnmColor*>(anm));
            break;
        case 2:
            setAnimation(static_cast<J2DAnmVtxColor*>(anm));
            break;
        case 4:
            setAnimation(static_cast<J2DAnmTextureSRTKey*>(anm));
            break;
        case 5:
            setAnimation(static_cast<J2DAnmTexPattern*>(anm));
            break;
        case 6:
            setAnimation(static_cast<J2DAnmVisibilityFull*>(anm));
            break;
        case 7:
            setAnimation(static_cast<J2DAnmTevRegKey*>(anm));
            break;
        }
    }
}
#else
asm void J2DPane::setAnimation(J2DAnmBase* anm) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F7EF4.s"
}
#endif

void J2DPane::setAnimation(J2DAnmTransform* anm) {
    mTransform = anm;
}

void J2DPane::animationTransform() {
    if (mTransform != NULL)
        animationTransform(mTransform);
}

void J2DPane::clearAnmTransform() {
    J2DAnmTransform* none = NULL;
    setAnimation(none);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->clearAnmTransform();
    }
}

const J2DAnmTransform* J2DPane::animationTransform(const J2DAnmTransform* transform) {
    const J2DAnmTransform* p = transform;
    if (mTransform != NULL)
        p = mTransform;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->animationTransform(p);
    }

    updateTransform(p);
    return p;
}

void J2DPane::setVisibileAnimation(J2DAnmVisibilityFull* visibility) {
    setAnimationVF(visibility);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setVisibileAnimation(visibility);
    }
}

void J2DPane::setVtxColorAnimation(J2DAnmVtxColor* vtx_color) {
    setAnimationVC(vtx_color);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setVtxColorAnimation(vtx_color);
    }
}

const J2DAnmTransform* J2DPane::animationPane(const J2DAnmTransform* transform) {
    const J2DAnmTransform* p = transform;
    if (mTransform != NULL)
        p = mTransform;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->animationPane(p);
    }

    updateTransform(p);
    return p;
}

asm void J2DPane::updateTransform(const J2DAnmTransform* transform) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F82C0.s"
}

void J2DPane::drawSelf(f32 arg1, f32 arg2, Mtx* mtx) {}

void J2DPane::rewriteAlpha() {}

void J2DPane::setAnimationVF(J2DAnmVisibilityFull* visibility) {
    setAnimation(visibility);
}

void J2DPane::setAnimationVC(J2DAnmVtxColor* vtx_color) {
    setAnimation(vtx_color);
}

void J2DPane::setCullBack(bool cull) {
    GXCullMode mode;

    if (!cull)
        mode = GX_CULL_NONE;
    else
        mode = GX_CULL_BACK;

    setCullBack(mode);
}

bool J2DPane::setConnectParent(bool connected) {
    mConnected = false;
    return false;
}

void J2DPane::update() {}

void J2DPane::drawSelf(f32 arg1, f32 arg2) {}

extern "C" {

// __sinit_J2DPane_cpp
//
asm void func_802F847C(void) {
    nofralloc
#include "JSystem/J2DGraph/J2DPane/asm/func_802F847C.s"
}
}
