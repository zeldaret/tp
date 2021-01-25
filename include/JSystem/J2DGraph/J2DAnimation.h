#ifndef JSYSTEM_J2DGRAPH_ANIMATION_H
#define JSYSTEM_J2DGRAPH_ANIMATION_H

#include "JSystem/J2DSys.h"
#include "JSystem/J3DSys.h"
#include "dolphin/types.h"

class J2DScreen;

class J2DAnmBase {
public:
    virtual ~J2DAnmBase();

    virtual void searchUpdateMaterialID(J2DScreen* screen);

    u32 getKind() const { return mKind; }

private:
    u32 _4;
    u32 _8;
    u32 mKind;
};

class J2DAnmTransform : J2DAnmBase {
    virtual void getTransform(u16 arg1, J3DTransformInfo* info_out) const;
};

class J2DAnmColor : J2DAnmBase {};
class J2DAnmTexPattern : J2DAnmBase {};
class J2DAnmTextureSRTKey : J2DAnmBase {};
class J2DAnmTevRegKey : J2DAnmBase {};
class J2DAnmVisibilityFull : J2DAnmBase {};
class J2DAnmVtxColor : J2DAnmBase {};

#endif  // JSYSTEM_J2DGRAPH_ANIMATION_H
