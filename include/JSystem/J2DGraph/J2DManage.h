#ifndef J2DMANAGE_H
#define J2DMANAGE_H

#include "JSystem/JSupport/JSUInputStream.h"
#include "dolphin/types.h"

struct J2DResReference {
    /* 8030CF10 */ void getResReference(u16) const;
    /* 8030CF44 */ void getName(u16) const;
};

class J2DDataManage {
public:
    /* 8030CE18 */ void get(char const*);
    /* 8030CE7C */ void get(JSUInputStream*);
};

#endif /* J2DMANAGE_H */
