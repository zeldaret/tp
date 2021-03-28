#ifndef J2DPICTURE_H_
#define J2DPICTURE_H_

#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/JGeometry/JGeometry.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/types.h"

// define and move to appropriate header later
class JUTPalette;

class J2DPicture : public J2DPane {
public:
    virtual void initiate();
    virtual u32 prepareTexture();  // return type may be wrong
    virtual void append(const ResTIMG*, f32);
    virtual void append(const ResTIMG*, JUTPalette*, f32);
    virtual void append(const char*, f32);
    virtual void append(const char*, JUTPalette*, f32);
    virtual void append(JUTTexture*, f32);
    virtual void prepend(const ResTIMG*, f32);
    virtual void prepend(const ResTIMG*, JUTPalette*, f32);
    virtual void prepend(const char*, f32);
    virtual void prepend(const char*, JUTPalette*, f32);
    virtual void prepend(JUTTexture*, f32);
    virtual void insert(const ResTIMG*, u8, f32);
    virtual void insert(const ResTIMG*, JUTPalette*, u8, f32);
    virtual void insert(const char*, u8, f32);
    virtual void insert(const char*, JUTPalette*, u8, f32);
    virtual void insert(JUTTexture*, u8, f32);
    virtual void remove(u8);
    virtual void remove(void);
    virtual void remove(JUTTexture*);
    virtual void draw(f32, f32, bool, bool, bool);
    virtual void draw(f32, f32, u8, bool, bool, bool);
    virtual void draw(f32, f32, f32, f32, bool, bool, bool);
    virtual void drawOut(f32, f32, f32, f32, f32, f32);
    virtual void drawOut(f32, f32, f32, f32, f32, f32, f32, f32);
    virtual void drawOut(const JGeometry::TBox2<float>&, const JGeometry::TBox2<float>&);
    virtual void load(_GXTexMapID, u8);
    virtual void load(u8);
    virtual void setBlendRatio(f32, f32);
    virtual void setBlendColorRatio(f32, f32);
    virtual void setBlendAlphaRatio(f32, f32);

public:
    /* 0x00 */ u8 field_0x00[0x08];
    /* 0x08 */ u8 field_0x08;
};

#endif