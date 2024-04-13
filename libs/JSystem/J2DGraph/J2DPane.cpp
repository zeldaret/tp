#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/JSupport/JSURandomInputStream.h"
#include "JSystem/JUtility/JUTResource.h"

/* 802F5BF8-802F5CB8 2F0538 00C0+00 0/0 10/10 0/0 .text            __ct__7J2DPaneFv */
J2DPane::J2DPane() : mBounds(), mGlobalBounds(), mClipRect(), mPaneTree(this) {
    mTransform = NULL;
    mKind = 'PAN1';
    mVisible = true;
    mInfoTag = 0;
    mUserInfoTag = 0;
    mBounds.set(0, 0, 0, 0);
    initiate();
    changeUseTrans(NULL);
    calcMtx();
}

/* 802F5CB8-802F5D40 2F05F8 0088+00 3/3 0/0 0/0 .text            initiate__7J2DPaneFv */
void J2DPane::initiate() {
    field_0x4 = -1;
    mRotateOffsetY = mRotateOffsetX = mRotateZ = mRotateY = mRotateX = 0;
    mBasePosition = 0;
    mRotAxis = ROTATE_Z;
    mScaleY = mScaleX = 1;
    mCullMode = GX_CULL_NONE;
    mAlpha = 255;
    mIsInfluencedAlpha = true;
    mColorAlpha = 255;
    mConnected = false;

    calcMtx();
}

/* 802F5D40-802F5DD0 2F0680 0090+00 0/0 1/1 0/0 .text
 * __ct__7J2DPaneFP7J2DPanebUxRCQ29JGeometry8TBox2<f>           */
J2DPane::J2DPane(J2DPane* p_pane, bool visible, u64 tag, JGeometry::TBox2<f32> const& bounds)
    : mBounds(), mGlobalBounds(), mClipRect(), mPaneTree(this) {
    mTransform = NULL;
    initialize(p_pane, visible, tag, bounds);
}

/* 802F5DD0-802F5E88 2F0710 00B8+00 1/1 0/0 0/0 .text
 * initialize__7J2DPaneFP7J2DPanebUxRCQ29JGeometry8TBox2<f>     */
void J2DPane::initialize(J2DPane* p_pane, bool visible, u64 infoTag,
                         JGeometry::TBox2<f32> const& bounds) {
    mKind = 'PAN1';
    mVisible = visible;
    mInfoTag = infoTag;
    mUserInfoTag = 0;
    mBounds.set(bounds);
    if (p_pane != NULL) {
        p_pane->mPaneTree.appendChild(&mPaneTree);
    }

    initiate();
    changeUseTrans(p_pane);
    calcMtx();
}

/* 802F5E88-802F5F08 2F07C8 0080+00 0/0 3/3 0/0 .text __ct__7J2DPaneFUxRCQ29JGeometry8TBox2<f> */
J2DPane::J2DPane(u64 infoTag, JGeometry::TBox2<f32> const& bounds)
    : mBounds(), mGlobalBounds(), mClipRect(), mPaneTree(this) {
    mTransform = NULL;
    initialize(infoTag, bounds);
}

/* 802F5F08-802F5F9C 2F0848 0094+00 1/1 0/0 0/0 .text
 * initialize__7J2DPaneFUxRCQ29JGeometry8TBox2<f>               */
void J2DPane::initialize(u64 tag, const JGeometry::TBox2<f32>& bounds) {
    mKind = 'PAN1';
    mVisible = true;
    mInfoTag = tag;
    mUserInfoTag = 0;
    mBounds.set(bounds);
    initiate();
    changeUseTrans(NULL);
    calcMtx();
}

/* 802F5F9C-802F60C4 2F08DC 0128+00 0/0 1/1 0/0 .text
 * __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamUc            */
J2DPane::J2DPane(J2DPane* p_pane, JSURandomInputStream* p_stream, u8 isEx) : mPaneTree(this) {
    mTransform = NULL;
    if (!isEx) {
        s32 position = p_stream->getPosition();

        J2DPaneHeader header;
        p_stream->read(&header, sizeof(header));
        mKind = header.mKind;
        position += header.mSize;
        makePaneStream(p_pane, p_stream);
        p_stream->seek(position, JSUStreamSeekFrom_SET);
    } else {
        s32 position = p_stream->getPosition();

        J2DPaneHeader header;
        p_stream->peek(&header, sizeof(header));
        mKind = header.mKind;
        position += header.mSize;
        makePaneExStream(p_pane, p_stream);
        p_stream->seek(position, JSUStreamSeekFrom_SET);
    }
}

/* 802F60C4-802F63F8 2F0A04 0334+00 1/1 3/3 0/0 .text
 * makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream    */
void J2DPane::makePaneStream(J2DPane* p_pane, JSURandomInputStream* p_stream) {
    u8 unk;
    p_stream->read(&unk, 1);
    p_stream->read(&mVisible, 1);
    p_stream->skip(2);

    mInfoTag = p_stream->read32b();

    f32 x0 = p_stream->readS16();
    f32 y0 = p_stream->readS16();
    f32 x1 = x0 + p_stream->readS16();
    f32 y1 = y0 + p_stream->readS16();
    mBounds.set(x0, y0, x1, y1);

    unk -= 6;
    mRotateX = 0;
    mRotateY = 0;
    mRotateZ = 0;
    if (unk != 0) {
        mRotateZ = p_stream->readU16();
        unk--;
    }

    if (unk != 0) {
        mBasePosition = p_stream->readU8();
        unk--;
    } else {
        mBasePosition = 0;
    }
    mRotAxis = ROTATE_Z;

    mAlpha = 255;
    if (unk != 0) {
        mAlpha = p_stream->readU8();
        unk--;
    }

    mIsInfluencedAlpha = true;
    if (unk != 0) {
        mIsInfluencedAlpha = p_stream->readU8();
        unk--;
    }

    p_stream->align(4);
    if (p_pane != NULL) {
        p_pane->mPaneTree.appendChild(&mPaneTree);
    }

    mCullMode = GX_CULL_NONE;
    mColorAlpha = 255;
    mConnected = false;
    field_0x4 = 0xFFFF;
    mScaleX = 1;
    mScaleY = 1;
    mUserInfoTag = 0;
    changeUseTrans(p_pane);
    calcMtx();
}

/* 802F63F8-802F658C 2F0D38 0194+00 4/4 0/0 0/0 .text            changeUseTrans__7J2DPaneFP7J2DPane
 */
void J2DPane::changeUseTrans(J2DPane* p_pane) {
    f32 xOffset = 0;
    f32 yOffset = 0;
    if (mBasePosition % 3 == 1) {
        xOffset = mBounds.getWidth() / 2;
    } else if (mBasePosition % 3 == 2) {
        xOffset = mBounds.getWidth();
    }

    if (mBasePosition / 3 == 1) {
        yOffset = mBounds.getHeight() / 2;
    } else if (mBasePosition / 3 == 2) {
        yOffset = mBounds.getHeight();
    }

    mTranslateX = mBounds.i.x + xOffset;
    mTranslateY = mBounds.i.y + yOffset;

    mRotateOffsetX = xOffset;
    mRotateOffsetY = yOffset;

    f32 addX = -mTranslateX;
    f32 addY = -mTranslateY;
    mBounds.addPos(addX, addY);

    if (p_pane != NULL) {
        u8 otherBasePos = p_pane->mBasePosition;
        f32 width = p_pane->getWidth();
        f32 height = p_pane->getHeight();

        if (otherBasePos % 3 == 1) {
            mTranslateX -= width / 2;
        } else if (otherBasePos % 3 == 2) {
            mTranslateX -= width;
        }

        if (otherBasePos / 3 == 1) {
            mTranslateY -= height / 2;
        } else if (otherBasePos / 3 == 2) {
            mTranslateY -= height;
        }
    }
}

/* 802F658C-802F666C 2F0ECC 00E0+00 1/0 4/4 0/0 .text            __dt__7J2DPaneFv */
J2DPane::~J2DPane() {
    JSUTreeIterator<J2DPane> iterator;
    for (iterator = mPaneTree.getFirstChild(); iterator != mPaneTree.getEndChild();) {
        J2DPane* child = (iterator++).getObject();
        delete child;
    }
}

/* 802F666C-802F6714 2F0FAC 00A8+00 0/0 2/2 0/0 .text            appendChild__7J2DPaneFP7J2DPane */
bool J2DPane::appendChild(J2DPane* p_child) {
    if (p_child == NULL)
        return false;

    const J2DPane* parent = p_child->getParentPane();
    bool result = mPaneTree.appendChild(&p_child->mPaneTree);

    if (result && parent == NULL) {
        p_child->add(mBounds.i.x, mBounds.i.y);
        p_child->calcMtx();
    }

    return result;
}

/* 802F6714-802F67E0 2F1054 00CC+00 0/0 1/1 0/0 .text insertChild__7J2DPaneFP7J2DPaneP7J2DPane */
bool J2DPane::insertChild(J2DPane* p_prev, J2DPane* p_child) {
    if (p_child == NULL)
        return false;

    const J2DPane* parent = p_child->getParentPane();

    bool result =
        mPaneTree.insertChild(p_prev != NULL ? &p_prev->mPaneTree : NULL, &p_child->mPaneTree);

    if (result && parent == NULL) {
        p_child->add(mBounds.i.x, mBounds.i.y);
        p_child->calcMtx();
    }

    return result;
}

/* 802F67E0-802F6D18 2F1120 0538+00 0/0 1/1 0/0 .text draw__7J2DPaneFffPC14J2DGrafContextbb */
void J2DPane::draw(f32 x, f32 y, J2DGrafContext const* p_grafCtx, bool isOrthoGraf, bool param_4) {
    bool unkBool = param_4 && mVisible;
    if (p_grafCtx->getGrafType() != 1) {
        isOrthoGraf = false;
    }

    JSUTree<J2DPane>* parentTree = mPaneTree.getParent();
    J2DPane* parent = NULL;
    if (parentTree != NULL) {
        parent = parentTree->getObject();
    }

    if (mBounds.isValid()) {
        mGlobalBounds = mBounds;

        f32 addX = mTranslateX;
        f32 addY = mTranslateY;
        mGlobalBounds.addPos(addX, addY);

        if (unkBool) {
            mClipRect = mBounds;
            rewriteAlpha();
        }

        if (parent != NULL) {
            f32 width = parent->mGlobalBounds.i.x - parent->mBounds.i.x;
            f32 height = parent->mGlobalBounds.i.y - parent->mBounds.i.y;
            mGlobalBounds.addPos(width, height);
            MTXConcat(parent->mGlobalMtx, mPositionMtx, mGlobalMtx);

            if (unkBool) {
                if (isOrthoGraf) {
                    mClipRect = mGlobalBounds;
                    mClipRect.intersect(parent->mClipRect);
                }

                mColorAlpha = mAlpha;
                if (mIsInfluencedAlpha) {
                    mColorAlpha = (mAlpha * parent->mColorAlpha) / 255;
                }
            }
        } else {
            mGlobalBounds.addPos(x, y);
            makeMatrix(mTranslateX + x, mTranslateY + y);
            MTXCopy(mPositionMtx, mGlobalMtx);
            mClipRect = mGlobalBounds;
            mColorAlpha = mAlpha;
        }

        JGeometry::TBox2<f32> scissorBounds(0, 0, 0, 0);
        if (unkBool && isOrthoGraf) {
            ((J2DOrthoGraph*)p_grafCtx)->scissorBounds(&scissorBounds, &mClipRect);
        }

        if (unkBool && (mClipRect.isValid() || !isOrthoGraf)) {
            J2DGrafContext tmpGraf(*p_grafCtx);
            if (isOrthoGraf) {
                tmpGraf.scissor(scissorBounds);
                tmpGraf.setScissor();
            }
            GXSetCullMode((GXCullMode)mCullMode);
            drawSelf(x, y, &tmpGraf.mPosMtx);
        }

        JSUTreeIterator<J2DPane> iter;
        for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
            iter.getObject()->draw(0, 0, p_grafCtx, isOrthoGraf, unkBool);
        }
    }
}

/* 802F6D18-802F6F60 2F1658 0248+00 2/2 4/4 0/0 .text place__7J2DPaneFRCQ29JGeometry8TBox2<f> */
void J2DPane::place(JGeometry::TBox2<f32> const& box) {
    JGeometry::TBox2<f32> tmpBox;

    if (mBounds.i.x == 0) {
        tmpBox.i.x = 0;
        tmpBox.f.x = box.getWidth();
        mTranslateX = box.i.x;
    } else if (mBounds.f.x == 0) {
        tmpBox.i.x = -box.getWidth();
        tmpBox.f.x = 0;
        mTranslateX = box.f.x;
    } else {
        tmpBox.i.x = -(box.getWidth() / 2);
        tmpBox.f.x = box.getWidth() / 2;
        mTranslateX = (box.i.x + box.f.x) / 2;
    }

    if (mBounds.i.y == 0) {
        tmpBox.i.y = 0;
        tmpBox.f.y = box.getHeight();
        mTranslateY = box.i.y;
    } else if (mBounds.f.y == 0) {
        tmpBox.i.y = -box.getHeight();
        tmpBox.f.y = 0;
        mTranslateY = box.f.y;
    } else {
        tmpBox.i.y = -(box.getHeight() / 2);
        tmpBox.f.y = box.getHeight() / 2;
        mTranslateY = (box.i.y + box.f.y) / 2;
    }

    f32 xOff = tmpBox.i.x - mBounds.i.x;
    f32 yOff = tmpBox.i.y - mBounds.i.y;
    for (J2DPane* child = getFirstChildPane(); child != NULL; child = child->getNextChildPane()) {
        child->mTranslateX += xOff;
        child->mTranslateY += yOff;
        if (xOff != 0 || yOff != 0) {
            child->calcMtx();
        }
    }
    mBounds = tmpBox;

    J2DPane* parent = getParentPane();
    if (parent != NULL) {
        mTranslateX += parent->mBounds.i.x;
        mTranslateY += parent->mBounds.i.y;
    }
    calcMtx();
}

/* 802F6F60-802F6FB4 2F18A0 0054+00 1/0 7/0 0/0 .text            move__7J2DPaneFff */
void J2DPane::move(f32 x, f32 y) {
    f32 width = getWidth();
    f32 height = getHeight();
    place(JGeometry::TBox2<f32>(x, y, x + width, y + height));
}

/* 802F6FB4-802F6FF8 2F18F4 0044+00 1/0 7/0 0/0 .text            add__7J2DPaneFff */
void J2DPane::add(f32 x, f32 y) {
    mTranslateX += x;
    mTranslateY += y;
    calcMtx();
}

/* 802F6FF8-802F7100 2F1938 0108+00 1/0 5/2 0/0 .text            resize__7J2DPaneFff */
void J2DPane::resize(f32 x, f32 y) {
    JGeometry::TBox2<f32> box = mBounds;

    f32 tX = mTranslateX;
    f32 tY = mTranslateY;

    box.addPos(tX, tY);

    const J2DPane* parent = getParentPane();
    if (parent != NULL) {
        f32 xAdd = -parent->mBounds.i.x;
        f32 yAdd = -parent->mBounds.i.y;
        box.addPos(xAdd, yAdd);
    }

    box.f.x = box.i.x + x;
    box.f.y = box.i.y + y;
    place(box);
}

/* ############################################################################################## */
/* 804349B0-804349C0 0616D0 0010+00 2/2 0/0 0/0 .bss             static_mBounds__7J2DPane */
JGeometry::TBox2<f32> J2DPane::static_mBounds(0, 0, 0, 0);

/* 802F7100-802F71DC 2F1A40 00DC+00 0/0 25/25 1/1 .text            getBounds__7J2DPaneFv */
JGeometry::TBox2<f32>& J2DPane::getBounds() {
    static_mBounds = mBounds;

    f32 tX = mTranslateX;
    f32 tY = mTranslateY;

    static_mBounds.addPos(tX, tY);

    const J2DPane* parent = getParentPane();
    if (parent != NULL) {
        f32 xAdd = -parent->mBounds.i.x;
        f32 yAdd = -parent->mBounds.i.y;
        static_mBounds.addPos(xAdd, yAdd);
    }

    return static_mBounds;
}

/* 802F71DC-802F720C 2F1B1C 0030+00 0/0 12/12 0/0 .text rotate__7J2DPaneFff13J2DRotateAxisf */
void J2DPane::rotate(f32 offsetX, f32 offsetY, J2DRotateAxis axis, f32 angle) {
    mRotateOffsetX = offsetX;
    mRotateOffsetY = offsetY;
    mRotAxis = axis;
    rotate(angle);
}

/* 802F720C-802F7264 2F1B4C 0058+00 1/1 0/0 0/0 .text            rotate__7J2DPaneFf */
void J2DPane::rotate(f32 angle) {
    if (mRotAxis == ROTATE_X) {
        mRotateX = angle;
    } else if (mRotAxis == ROTATE_Y) {
        mRotateY = angle;
    } else {
        mRotateZ = angle;
    }

    calcMtx();
}

/* 802F7264-802F72E0 2F1BA4 007C+00 0/0 2/2 0/0 .text clip__7J2DPaneFRCQ29JGeometry8TBox2<f> */
void J2DPane::clip(JGeometry::TBox2<f32> const& bounds) {
    JGeometry::TBox2<f32> boxA(bounds);
    JGeometry::TBox2<f32> boxB(mGlobalBounds);
    boxA.addPos(boxB.i);
    mClipRect.intersect(boxA);
}

/* 802F72E0-802F7388 2F1C20 00A8+00 1/0 7/1 0/0 .text            search__7J2DPaneFUx */
J2DPane* J2DPane::search(u64 tag) {
    if (tag == mInfoTag) {
        return this;
    }

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (J2DPane* result = iter.getObject()->search(tag)) {
            return result;
        }
    }
    return NULL;
}

/* 802F7388-802F7430 2F1CC8 00A8+00 1/0 7/1 0/0 .text            searchUserInfo__7J2DPaneFUx */
J2DPane* J2DPane::searchUserInfo(u64 tag) {
    if (tag == mUserInfoTag) {
        return this;
    }

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (J2DPane* result = iter.getObject()->searchUserInfo(tag)) {
            return result;
        }
    }
    return NULL;
}

/* 802F7430-802F74B8 2F1D70 0088+00 1/0 7/7 0/0 .text            isUsed__7J2DPaneFPC7ResTIMG */
bool J2DPane::isUsed(const ResTIMG* p_timg) {
    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (iter.getObject()->isUsed(p_timg))
            return true;
    }
    return false;
}

/* 802F74B8-802F7540 2F1DF8 0088+00 1/0 7/7 0/0 .text            isUsed__7J2DPaneFPC7ResFONT */
bool J2DPane::isUsed(const ResFONT* p_font) {
    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        if (iter.getObject()->isUsed(p_font))
            return true;
    }
    return false;
}

/* 802F7540-802F7680 2F1E80 0140+00 1/0 7/0 0/0 .text            makeMatrix__7J2DPaneFffff */
void J2DPane::makeMatrix(f32 param_0, f32 param_1, f32 param_2, f32 param_3) {
    f32 tmpX = mRotateOffsetX - param_2;
    f32 tmpY = mRotateOffsetY - param_3;
    Mtx rotX, rotY, rotZ, rotMtx, mtx, tmp;
    MTXTrans(mtx, -tmpX, -tmpY, 0);
    MTXRotRad(rotX, 'x', DEG_TO_RAD(mRotateX));
    MTXRotRad(rotY, 'y', DEG_TO_RAD(mRotateY));
    MTXRotRad(rotZ, 'z', DEG_TO_RAD(-mRotateZ));
    MTXConcat(rotZ, rotX, tmp);
    MTXConcat(rotY, tmp, rotMtx);
    MTXScaleApply(mtx, mPositionMtx, mScaleX, mScaleY, 1);
    MTXConcat(rotMtx, mPositionMtx, tmp);
    MTXTransApply(tmp, mPositionMtx, param_0 + tmpX, param_1 + tmpY, 0);
}

/* 802F7680-802F76F8 2F1FC0 0078+00 1/0 7/3 0/0 .text            setCullBack__7J2DPaneF11_GXCullMode
 */
void J2DPane::setCullBack(GXCullMode mode) {
    mCullMode = mode;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setCullBack(mode);
    }
}

/* 802F76F8-802F77D0 2F2038 00D8+00 0/0 8/8 0/0 .text setBasePosition__7J2DPaneF15J2DBasePosition
 */
void J2DPane::setBasePosition(J2DBasePosition position) {
    mBasePosition = position;
    mRotAxis = ROTATE_Z;

    mRotateOffsetX = 0;

    if (position % 3 == 1) {
        f32 width = getWidth();
        mRotateOffsetX = width / 2;
    } else if (position % 3 == 2) {
        f32 width = getWidth();
        mRotateOffsetX = width;
    }

    mRotateOffsetY = 0;
    if (position / 3 == 1) {
        f32 height = getHeight();
        mRotateOffsetY = height / 2;
    } else if (position / 3 == 2) {
        f32 height = getHeight();
        mRotateOffsetY = height;
    }

    calcMtx();
}

/* 802F77D0-802F79A8 2F2110 01D8+00 0/0 1/1 0/0 .text            setInfluencedAlpha__7J2DPaneFbb */
void J2DPane::setInfluencedAlpha(bool influencedAlpha, bool param_1) {
    if (param_1 && mIsInfluencedAlpha != influencedAlpha) {
        J2DPane* parent = getParentPane();
        u8 alpha = 255;

        for (; parent != NULL; parent = parent->getParentPane()) {
            if (parent->getAlpha() == 0) {
                alpha = 0;
                break;
            }
            alpha = (((f32)alpha) * parent->getAlpha() / 255);
            if (!parent->mIsInfluencedAlpha) {
                break;
            }
        }

        if (influencedAlpha) {
            if (alpha == 0) {
                setAlpha(0);
            } else {
                f32 fAlpha = ((f32)mAlpha) / alpha * 255;

                u8 alpha;
                if (fAlpha > 255) {
                    alpha = 255;
                } else {
                    alpha = fAlpha;
                }
                setAlpha(alpha);
            }
        } else {
            setAlpha((f32)(alpha * mAlpha) / 255);
        }
    }

    mIsInfluencedAlpha = influencedAlpha;
}

/* 802F79A8-802F7A8C 2F22E8 00E4+00 0/0 3/3 0/0 .text            getGlbVtx__7J2DPaneCFUc */
JGeometry::TVec3<f32> J2DPane::getGlbVtx(u8 param_0) const {
    JGeometry::TVec3<f32> out;
    if (param_0 >= 4) {
        out.x = 0;
        out.y = 0;
        out.z = 0;
        return out;
    } else {
        f32 x, y;
        if (param_0 & 1) {
            x = mBounds.f.x;
        } else {
            x = mBounds.i.x;
        }

        if (param_0 & 2) {
            y = mBounds.f.y;
        } else {
            y = mBounds.i.y;
        }

        out.x = x * mGlobalMtx[0][0] + y * mGlobalMtx[0][1] + mGlobalMtx[0][3];
        out.y = x * mGlobalMtx[1][0] + y * mGlobalMtx[1][1] + mGlobalMtx[1][3];
        out.z = x * mGlobalMtx[2][0] + y * mGlobalMtx[2][1] + mGlobalMtx[2][3];
        return out;
    }
}

/* 802F7A8C-802F7AC4 2F23CC 0038+00 1/1 15/15 0/0 .text            getFirstChildPane__7J2DPaneFv */
J2DPane* J2DPane::getFirstChildPane() {
    if (!getFirstChild())
        return NULL;

    return getFirstChild()->getObject();
}

/* 802F7AC4-802F7AFC 2F2404 0038+00 1/1 8/8 0/0 .text            getNextChildPane__7J2DPaneFv */
J2DPane* J2DPane::getNextChildPane() {
    if (getPaneTree()->getNextChild() == NULL)
        return NULL;

    return getPaneTree()->getNextChild()->getObject();
}

/* 802F7AFC-802F7B18 2F243C 001C+00 6/6 11/11 0/0 .text            getParentPane__7J2DPaneFv */
J2DPane* J2DPane::getParentPane() {
    if (getPaneTree()->getParent() == NULL)
        return NULL;

    return getPaneTree()->getParent()->getObject();
}

/* name unknown */
struct J2DPaneInfo {
    /* 0x00 */ u32 mKind;
    /* 0x04 */ u32 mSize;
    /* 0x08 */ u16 field_0x8;
    /* 0x0A */ u16 field_0xa;
    /* 0x0B */ u8 mVisible;
    /* 0x0C */ u8 mBasePosition;
    /* 0x10 */ u64 mInfoTag;
    /* 0x18 */ u64 mUserInfoTag;
    /* 0x20 */ f32 mRotOffsetX;
    /* 0x24 */ f32 mRotOffsetY;
    /* 0x28 */ f32 mScaleX;
    /* 0x2C */ f32 mScaleY;
    /* 0x30 */ f32 mRotateX;
    /* 0x34 */ f32 mRotateY;
    /* 0x38 */ f32 mRotateZ;
    /* 0x3C */ f32 mTranslateX;
    /* 0x40 */ f32 mTranslateY;
};  // Size: 0x48

/* 802F7B18-802F7D00 2F2458 01E8+00 1/1 6/6 0/0 .text
 * makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream  */
void J2DPane::makePaneExStream(J2DPane* p_parent, JSURandomInputStream* p_stream) {
    p_stream->getPosition();

    J2DPaneInfo data;
    p_stream->read(&data, sizeof(data));
    field_0x4 = data.field_0xa;
    mVisible = !!data.mVisible;
    mInfoTag = data.mInfoTag;
    mUserInfoTag = data.mUserInfoTag;
    mScaleX = data.mScaleX;
    mScaleY = data.mScaleY;
    mRotateX = data.mRotateX;
    mRotateY = data.mRotateY;
    mRotateZ = data.mRotateZ;
    mTranslateX = data.mTranslateX;
    mTranslateY = data.mTranslateY;
    mRotAxis = ROTATE_Z;

    if (data.mBasePosition % 3 == 0) {
        mRotateOffsetX = 0;
    } else if (data.mBasePosition % 3 == 1) {
        mRotateOffsetX = data.mRotOffsetX / 2;
    } else {
        mRotateOffsetX = data.mRotOffsetX;
    }

    if (data.mBasePosition / 3 == 0) {
        mRotateOffsetY = 0;
    } else if (data.mBasePosition / 3 == 1) {
        mRotateOffsetY = data.mRotOffsetY / 2;
    } else {
        mRotateOffsetY = data.mRotOffsetY;
    }

    mBounds.set(-mRotateOffsetX, -mRotateOffsetY, data.mRotOffsetX - mRotateOffsetX,
                data.mRotOffsetY - mRotateOffsetY);
    mBasePosition = data.mBasePosition;

    mAlpha = 255;
    mIsInfluencedAlpha = false;

    if (p_parent != NULL) {
        p_parent->mPaneTree.appendChild(&mPaneTree);
    }

    mCullMode = GX_CULL_NONE;
    mColorAlpha = 255;
    mConnected = false;
    calcMtx();
}

/* 802F7D00-802F7DB8 2F2640 00B8+00 0/0 1/1 0/0 .text            J2DCast_F32_to_S16__7J2DPaneFfUc */
s16 J2DPane::J2DCast_F32_to_S16(f32 value, u8 arg2) {
    if (arg2 >= 0xF) {
        return 0;
    } else {
        f32 tmpF;
        tmpF = value;
        if (value < 0) {
            tmpF = -value;
        }
        int tmp = tmpF * (1 << arg2);
        if (tmp >= 0x8000) {
            if (value < 0) {
                return 0x8000;
            } else {
                return 0x7FFF;
            }
        } else if (value < 0) {
            return ~tmp + 1;
        } else {
            return tmp;
        }
    }
}

/* 802F7DB8-802F7EF4 2F26F8 013C+00 0/0 3/3 0/0 .text
 * getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive  */
void* J2DPane::getPointer(JSURandomInputStream* p_stream, u32 param_1, JKRArchive* p_archive) {
    JUTResReference resRef;

    void* pointer;
    if (p_archive == NULL) {
        if (J2DScreen::getDataManage() == NULL) {
            pointer = resRef.getResource(p_stream, param_1, NULL);
        } else {
            s32 prevPos = p_stream->getPosition();
            pointer = resRef.getResource(p_stream, param_1, NULL);
            if (pointer == NULL) {
                p_stream->seek(prevPos, JSUStreamSeekFrom_SET);
                pointer = J2DScreen::getDataManage()->get(p_stream);
            }
        }
    } else {
        s32 prevPos = p_stream->getPosition();
        pointer = resRef.getResource(p_stream, param_1, p_archive);
        if (pointer == NULL) {
            p_stream->seek(prevPos, JSUStreamSeekFrom_SET);
            pointer = resRef.getResource(p_stream, param_1, NULL);
        }

        if (pointer == NULL) {
            if (J2DScreen::getDataManage() != NULL) {
                p_stream->seek(prevPos, JSUStreamSeekFrom_SET);
                pointer = J2DScreen::getDataManage()->get(p_stream);
            }
        }
    }
    return pointer;
}

/* 802F7EF4-802F7FC4 2F2834 00D0+00 2/0 7/4 0/0 .text setAnimation__7J2DPaneFP10J2DAnmBase */
void J2DPane::setAnimation(J2DAnmBase* p_anm) {
    if (p_anm != NULL) {
        switch (p_anm->getKind()) {
        default:
            break;
        case KIND_TRANSFORM:
            setAnimation(static_cast<J2DAnmTransform*>(p_anm));
            break;
        case KIND_COLOR:
            setAnimation(static_cast<J2DAnmColor*>(p_anm));
            break;
        case KIND_VTX_COLOR:
            setAnimation(static_cast<J2DAnmVtxColor*>(p_anm));
            break;
        case KIND_TEXTURE_SRT:
            setAnimation(static_cast<J2DAnmTextureSRTKey*>(p_anm));
            break;
        case KIND_TEX_PATTERN:
            setAnimation(static_cast<J2DAnmTexPattern*>(p_anm));
            break;
        case KIND_VISIBILITY:
            setAnimation(static_cast<J2DAnmVisibilityFull*>(p_anm));
            break;
        case KIND_TEV_REG:
            setAnimation(static_cast<J2DAnmTevRegKey*>(p_anm));
            break;
        }
    }
}

/* 802F7FC4-802F7FCC -00001 0008+00 0/0 0/0 0/0 .text setAnimation__7J2DPaneFP15J2DAnmTransform */
void J2DPane::setAnimation(J2DAnmTransform* p_anm) {
    mTransform = p_anm;
}

/* 802F7FCC-802F8004 2F290C 0038+00 0/0 57/57 0/0 .text            animationTransform__7J2DPaneFv */
void J2DPane::animationTransform() {
    if (mTransform != NULL)
        animationTransform(mTransform);
}

/* 802F8004-802F8080 2F2944 007C+00 1/0 7/1 0/0 .text            clearAnmTransform__7J2DPaneFv */
void J2DPane::clearAnmTransform() {
    J2DAnmTransform* none = NULL;
    setAnimation(none);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->clearAnmTransform();
    }
}

/* 802F8080-802F8118 2F29C0 0098+00 1/0 7/0 0/0 .text
 * animationTransform__7J2DPaneFPC15J2DAnmTransform             */
const J2DAnmTransform* J2DPane::animationTransform(const J2DAnmTransform* p_transform) {
    const J2DAnmTransform* p = p_transform;
    if (mTransform != NULL)
        p = mTransform;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->animationTransform(p);
    }

    updateTransform(p);
    return p;
}

/* 802F8118-802F81A0 2F2A58 0088+00 1/0 8/1 0/0 .text
 * setVisibileAnimation__7J2DPaneFP20J2DAnmVisibilityFull       */
void J2DPane::setVisibileAnimation(J2DAnmVisibilityFull* p_visibility) {
    setAnimationVF(p_visibility);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setVisibileAnimation(p_visibility);
    }
}

/* 802F81A0-802F8228 2F2AE0 0088+00 1/0 8/1 0/0 .text
 * setVtxColorAnimation__7J2DPaneFP14J2DAnmVtxColor             */
void J2DPane::setVtxColorAnimation(J2DAnmVtxColor* p_vtxColor) {
    setAnimationVC(p_vtxColor);

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->setVtxColorAnimation(p_vtxColor);
    }
}

/* 802F8228-802F82C0 2F2B68 0098+00 1/0 7/3 0/0 .text animationPane__7J2DPaneFPC15J2DAnmTransform
 */
const J2DAnmTransform* J2DPane::animationPane(const J2DAnmTransform* p_transform) {
    const J2DAnmTransform* p = p_transform;
    if (mTransform != NULL)
        p = mTransform;

    JSUTreeIterator<J2DPane> iter;
    for (iter = mPaneTree.getFirstChild(); iter != mPaneTree.getEndChild(); ++iter) {
        iter.getObject()->animationPane(p);
    }

    updateTransform(p);
    return p;
}

/* 802F82C0-802F83C8 2F2C00 0108+00 2/2 0/0 0/0 .text
 * updateTransform__7J2DPaneFPC15J2DAnmTransform                */
void J2DPane::updateTransform(J2DAnmTransform const* p_anmTransform) {
    if (field_0x4 != 0xFFFF && p_anmTransform != NULL) {
        J3DTransformInfo info;
        p_anmTransform->getTransform(field_0x4, &info);
        mScaleX = info.mScale.x;
        mScaleY = info.mScale.z;
        mRotateX = (u16)info.mRotation.x * 360.0f / 65535.0f;
        mRotateY = (u16)info.mRotation.z * 360.0f / 65535.0f;
        mRotateZ = (u16)info.mRotation.y * 360.0f / 65535.0f;
        mTranslateX = info.mTranslate.x;
        mTranslateY = info.mTranslate.z;
        calcMtx();
    }
}

/* 802F83C8-802F83CC 2F2D08 0004+00 1/0 0/0 0/0 .text            drawSelf__7J2DPaneFffPA3_A4_f */
void J2DPane::drawSelf(f32, f32, f32 (*)[3][4]) {
    /* empty function */
}

/* 802F83CC-802F83D0 2F2D0C 0004+00 1/0 1/0 0/0 .text            rewriteAlpha__7J2DPaneFv */
void J2DPane::rewriteAlpha() {
    /* empty function */
}

/* 802F83D0-802F83FC 2F2D10 002C+00 1/0 6/0 0/0 .text
 * setAnimationVF__7J2DPaneFP20J2DAnmVisibilityFull             */
void J2DPane::setAnimationVF(J2DAnmVisibilityFull* p_visibility) {
    setAnimation(p_visibility);
}

/* 802F83FC-802F8428 2F2D3C 002C+00 1/0 6/0 0/0 .text setAnimationVC__7J2DPaneFP14J2DAnmVtxColor
 */
void J2DPane::setAnimationVC(J2DAnmVtxColor* p_vtxColor) {
    setAnimation(p_vtxColor);
}

/* 802F8428-802F8464 2F2D68 003C+00 1/0 4/0 0/0 .text            setCullBack__7J2DPaneFb */
void J2DPane::setCullBack(bool cull) {
    GXCullMode mode;

    if (!cull)
        mode = GX_CULL_NONE;
    else
        mode = GX_CULL_BACK;

    setCullBack(mode);
}

/* 802F8464-802F8474 2F2DA4 0010+00 1/0 5/0 0/0 .text            setConnectParent__7J2DPaneFb */
bool J2DPane::setConnectParent(bool connected) {
    mConnected = false;
    return false;
}

/* 802F8474-802F8478 2F2DB4 0004+00 1/0 7/0 0/0 .text            update__7J2DPaneFv */
void J2DPane::update() {
    /* empty function */
}

/* 802F8478-802F847C 2F2DB8 0004+00 1/0 1/0 0/0 .text            drawSelf__7J2DPaneFff */
void J2DPane::drawSelf(f32, f32) {
    /* empty function */
}
