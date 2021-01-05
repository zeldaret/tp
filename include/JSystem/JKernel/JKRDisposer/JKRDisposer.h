#ifndef __JKRDISPOSER_H__
#define __JKRDISPOSER_H__

#include "JSystem/JSupport/JSUList/JSUList.h"
#include "dolphin/types.h"

class JKRHeap;
class JKRDisposer {
public:
    JKRDisposer();
    virtual ~JKRDisposer();

public:
    /* 0x00 */  // vtable
    /* 0x04 */ JKRHeap* mHeap;
    /* 0x08 */ JSULink<JKRDisposer> mLink;
};

#endif
