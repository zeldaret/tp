#ifndef J3DPACKET_H
#define J3DPACKET_H

#include "dolphin/types.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"

class J3DDrawBuffer;
class J3DPacket {
public:
    virtual bool entry(J3DDrawBuffer*);
    virtual void draw();
    virtual ~J3DPacket();

    void addChildPacket(J3DPacket*);

private:
    /* 0x04 */ J3DPacket* mNextPacket;
    /* 0x08 */ J3DPacket* mChildPacket;
    /* 0x0C */ u32 mUserArea;
};  // Size = 0x10

class J3DShapePacket {
    /* 80312B20 */ J3DShapePacket();
    /* 80312B74 */ ~J3DShapePacket();
    /* 80312BD4 */ void calcDifferedBufferSize(u32);
    /* 80312DBC */ void newDifferedDisplayList(u32);
    /* 80312E08 */ void prepareDraw() const;
    /* 80312F24 */ void draw();
    /* 80312FBC */ void drawFast();
};

class J3DMatPacket {
    /* 80312948 */ J3DMatPacket();
    /* 803129A4 */ ~J3DMatPacket();
    /* 80312A04 */ void addShapePacket(J3DShapePacket*);
    /* 80312A24 */ void beginDiff();
    /* 80312A4C */ void endDiff();
    /* 80312A74 */ void isSame(J3DMatPacket*) const;
    /* 80312A9C */ void draw();
    /* 80313048 */ void entry(J3DDrawBuffer*);
};

#endif /* J3DPACKET_H */
