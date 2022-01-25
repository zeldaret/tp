#ifndef J3DMATERIALATTACH_H
#define J3DMATERIALATTACH_H

#include "JSystem/JUtility/JUTNameTab.h"
#include "dolphin/types.h"

struct J3DMaterial;
struct J3DTexture;
struct J3DAnmColor;
struct J3DAnmTexPattern;
struct J3DAnmTextureSRTKey;
struct J3DAnmTevRegKey;

class J3DMaterialTable {
public:
    /* 8032F5A8 */ void clear();
    /* 8032F5D0 */ J3DMaterialTable();
    /* 8032F64C */ bool removeMatColorAnimator(J3DAnmColor*);
    /* 8032F6F8 */ void removeTexNoAnimator(J3DAnmTexPattern*);
    /* 8032F7B4 */ void removeTexMtxAnimator(J3DAnmTextureSRTKey*);
    /* 8032F880 */ void removeTevRegAnimator(J3DAnmTevRegKey*);
    /* 8032F9C0 */ void createTexMtxForAnimator(J3DAnmTextureSRTKey*);
    /* 8032FAF4 */ void entryMatColorAnimator(J3DAnmColor*);
    /* 8032FBC8 */ void entryTexNoAnimator(J3DAnmTexPattern*);
    /* 8032FCC4 */ void entryTexMtxAnimator(J3DAnmTextureSRTKey*);
    /* 8032FE70 */ void entryTevRegAnimator(J3DAnmTevRegKey*);

    /* 8032F604 */ virtual ~J3DMaterialTable();

    J3DMaterial* getMaterialNodePointer(u16 idx) const { return mMaterialNodePointer[idx]; }

    J3DTexture* getTexture() const { return mTexture; }
    JUTNameTab* getTextureName() const { return mTextureName; }

    u16 getMaterialNum() const { return mMaterialNum; }

private:
    /* 0x04 */ u16 mMaterialNum;
    /* 0x06 */ u16 mUniqueMatNum;
    /* 0x08 */ J3DMaterial** mMaterialNodePointer;
    /* 0x0C */ JUTNameTab* mMaterialName;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ J3DTexture* mTexture;
    /* 0x18 */ JUTNameTab* mTextureName;
    /* 0x1C */ u16 field_0x1c;
};  // Size: 0x20

#endif /* J3DMATERIALATTACH_H */
