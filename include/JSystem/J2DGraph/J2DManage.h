#ifndef J2DMANAGE_H
#define J2DMANAGE_H

#include "JSystem/JSupport/JSUInputStream.h"
#include "dolphin/types.h"

struct J2DResReference {
    /* 0x00 */ u16 mCount;
    /* 0x02 */ u16 mOffsets[1];

    /* 8030CF10 */ s8* getResReference(u16) const;
    /* 8030CF44 */ char* getName(u16) const;
};

struct J2DataManageLink {
    /* 0x00 */ void* mData;
    /* 0x04 */ char* mName;
    /* 0x08 */ J2DataManageLink* mNext;
};

class J2DDataManage {
private:
    /* 0x00 */ J2DataManageLink* mList;

public:
    /* 8030CE18 */ void* get(char const*);
    /* 8030CE7C */ void* get(JSUInputStream*);
};

#endif /* J2DMANAGE_H */
