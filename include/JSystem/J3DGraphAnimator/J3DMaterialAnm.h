#ifndef J3DMATERIALANM_H
#define J3DMATERIALANM_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"

typedef struct _GXColor GXColor;
typedef struct _GXColorS10 GXColorS10;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DMatColorAnm {
public:
    /* 8003B2B8 */ ~J3DMatColorAnm() {}
    /* 8003B2F4 */ J3DMatColorAnm() : field_0x0(0), mAnmFlag(1), mAnmColor(NULL) {}
    J3DMatColorAnm(u16 param_1, J3DAnmColor* param_2) {
        field_0x0 = param_1;
        mAnmFlag = 1;
        mAnmColor = param_2;
    }

    void operator=(J3DMatColorAnm const& other) {
        mAnmColor = other.mAnmColor;
        field_0x0 = other.field_0x0;
        mAnmFlag = other.mAnmFlag;
    }

    void setAnmFlag(bool flag) { mAnmFlag = flag; }
    bool getAnmFlag() const { return mAnmFlag; }
    void calc(_GXColor* pColor) const { mAnmColor->getColor(field_0x0, pColor); }

private:
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ u16 mAnmFlag;
    /* 0x4 */ J3DAnmColor* mAnmColor;
};  // Size: 0x8

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DTexNoAnm {
public:
    /* 8003B1F8 */ ~J3DTexNoAnm() {}
    /* 8003B240 */ J3DTexNoAnm() : field_0x4(0), mAnmFlag(1), mAnmTexPattern(NULL) {}
    J3DTexNoAnm(u16 param_1, J3DAnmTexPattern* param_2) {
        field_0x4 = param_1;
        mAnmFlag = 1;
        mAnmTexPattern = param_2;
    }
    /* 8003C82C */ virtual void calc(u16* param_0) const { mAnmTexPattern->getTexNo(field_0x4, param_0); }

    void operator=(J3DTexNoAnm const& other) {
        mAnmTexPattern = other.mAnmTexPattern;
        field_0x4 = other.field_0x4;
        mAnmFlag = other.mAnmFlag;
    }

    void setAnmFlag(bool flag) { mAnmFlag = flag; }
    bool getAnmFlag() const { return mAnmFlag; }
    J3DAnmTexPattern* getAnmTexPattern() { return mAnmTexPattern; }

private:
    /* 0x4 */ u16 field_0x4;
    /* 0x6 */ u16 mAnmFlag;
    /* 0x8 */ J3DAnmTexPattern* mAnmTexPattern;
};  // Size: 0xC

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DTexMtxAnm {
public:
    /* 8003B264 */ ~J3DTexMtxAnm() {}
    /* 8003B2A0 */ J3DTexMtxAnm() : field_0x0(0), mAnmFlag(1), mAnmTransform(NULL) {}
    J3DTexMtxAnm(u16 param_1, J3DAnmTextureSRTKey* param_2) {
        field_0x0 = param_1;
        mAnmFlag = 1;
        mAnmTransform = param_2;
    }

    void operator=(J3DTexMtxAnm const& other) {
        mAnmTransform = other.mAnmTransform;
        field_0x0 = other.field_0x0;
        mAnmFlag = other.mAnmFlag;
    }

    void setAnmFlag(bool flag) { mAnmFlag = flag; }
    void calc(J3DTextureSRTInfo* pSRTInfo) const {
        mAnmTransform->getTransform(field_0x0, pSRTInfo);
    }
    bool getAnmFlag() const { return mAnmFlag; }

private:
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ u16 mAnmFlag;
    /* 0x4 */ J3DAnmTextureSRTKey* mAnmTransform;
};  // Size: 0x8

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DTevKColorAnm {
public:
    /* 8003B150 */ ~J3DTevKColorAnm() {}
    /* 8003B18C */ J3DTevKColorAnm() : field_0x0(0), mAnmFlag(1), mAnmTevReg(NULL) {}
    J3DTevKColorAnm(u16 param_1, J3DAnmTevRegKey* param_2) {
        field_0x0 = param_1;
        mAnmFlag = 1;
        mAnmTevReg = param_2;
    }

    void operator=(J3DTevKColorAnm const& other) {
        mAnmTevReg = other.mAnmTevReg;
        field_0x0 = other.field_0x0;
        mAnmFlag = other.mAnmFlag;
    }

    void setAnmFlag(bool flag) { mAnmFlag = flag; }
    bool getAnmFlag() const { return mAnmFlag; }
    void calc(_GXColor* pColor) const { mAnmTevReg->getTevKonstReg(field_0x0, pColor); }

private:
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ u16 mAnmFlag;
    /* 0x4 */ J3DAnmTevRegKey* mAnmTevReg;
};  // Size: 0x8

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DTevColorAnm {
public:
    /* 8003B1A4 */ ~J3DTevColorAnm() {}
    /* 8003B1E0 */ J3DTevColorAnm() : field_0x0(0), mAnmFlag(1), mAnmTevReg(NULL) {}
    J3DTevColorAnm(u16 param_1, J3DAnmTevRegKey* param_2) {
        field_0x0 = param_1;
        mAnmFlag = 1;
        mAnmTevReg = param_2;
    }

    void operator=(J3DTevColorAnm const& other) {
        mAnmTevReg = other.mAnmTevReg;
        field_0x0 = other.field_0x0;
        mAnmFlag = other.mAnmFlag;
    }

    void setAnmFlag(bool flag) { mAnmFlag = flag; }
    bool getAnmFlag() const { return mAnmFlag; }
    void calc(_GXColorS10* pColor) const { mAnmTevReg->getTevColorReg(field_0x0, pColor); }

private:
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ u16 mAnmFlag;
    /* 0x4 */ J3DAnmTevRegKey* mAnmTevReg;
};  // Size: 0x8

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DMaterialAnm {
public:
    J3DMaterialAnm() { initialize(); }

    /* 8032C320 */ void initialize();
    /* 8032C5A4 */ void setMatColorAnm(int, J3DMatColorAnm*);
    /* 8032C5E4 */ void setTexMtxAnm(int, J3DTexMtxAnm*);
    /* 8032C624 */ void setTexNoAnm(int, J3DTexNoAnm*);
    /* 8032C664 */ void setTevColorAnm(int, J3DTevColorAnm*);
    /* 8032C6A4 */ void setTevKColorAnm(int, J3DTevKColorAnm*);

    /* 800A4820 */ virtual ~J3DMaterialAnm() {}
    /* 8032C3C4 */ virtual void calc(J3DMaterial*) const;

    const J3DTexMtxAnm& getTexMtxAnm(int i) const { return mTexMtxAnm[i]; }

private:
    /* 0x04 */ J3DMatColorAnm mMatColorAnm[2];
    /* 0x14 */ J3DTexMtxAnm mTexMtxAnm[8];
    /* 0x54 */ J3DTexNoAnm mTexNoAnm[8];
    /* 0xB4 */ J3DTevColorAnm mTevColorAnm[4];
    /* 0xD4 */ J3DTevKColorAnm mTevKColorAnm[4];
};  // Size: 0xF4

#endif /* J3DMATERIALANM_H */
