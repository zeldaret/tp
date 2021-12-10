#ifndef J2DMANAGE_H
#define J2DMANAGE_H

#include "JSystem/JSupport/JSUInputStream.h"
#include "dolphin/types.h"

struct J2DResReference {
    u16 mCount;
    u16 mOffsets[1];
    /* 8030CF10 */ s8* getResReference(u16) const;
    /* 8030CF44 */ char* getName(u16) const;
};

struct J2DataManageLink {
    void* mData;
    char* mName;
    J2DataManageLink* mNext;
};

class J2DDataManage {
private:
    J2DataManageLink* mList;

public:
    /* 8030CE18 */ void* get(char const*);
    /* 8030CE7C */ void* get(JSUInputStream*);
};

#endif /* J2DMANAGE_H */
