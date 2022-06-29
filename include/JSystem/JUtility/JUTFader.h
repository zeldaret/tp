#ifndef JUTFADER_H
#define JUTFADER_H

#include "JSystem/JGeometry.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/types.h"

class JUTFader {
public:
    enum EStatus {
        UNKSTATUS_M1 = -1,
        UNKSTATUS_0 = 0,
    };

    /* 802E5530 */ JUTFader(int, int, int, int, JUtility::TColor);
    /* 802E55DC */ void control();
    /* 802E57D0 */ void setStatus(JUTFader::EStatus, int);

    /* 802E5840 */ virtual ~JUTFader();
    /* 802E576C */ virtual bool startFadeIn(int);
    /* 802E579C */ virtual bool startFadeOut(int);
    /* 802E56DC */ virtual void draw();

    s32 getStatus() const { return mStatus; }
    void setColor(JUtility::TColor color) { mColor.set(color); }

//private:
    /* 0x04 */ s32 mStatus;
    /* 0x08 */ u16 field_0x8;
    /* 0x0A */ u16 field_0xa;
    /* 0x0C */ JUtility::TColor mColor;
    /* 0x10 */ JGeometry::TBox2<f32> mBox;
    /* 0x20 */ EStatus mEStatus;
    /* 0x24 */ u32 field_0x24;
};

#endif /* JUTFADER_H */
