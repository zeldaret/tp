#ifndef JKRDISPOSER_H
#define JKRDISPOSER_H

#include "JSystem/JSupport/JSUList.h"
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

#endif /* JKRDISPOSER_H */
