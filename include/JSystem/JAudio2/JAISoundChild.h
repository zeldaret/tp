#ifndef JAISOUNDCHILD_H
#define JAISOUNDCHILD_H

#include "JSystem/JAudio2/JAISoundParams.h"

struct JASTrack;

struct JAISoundChild {
    /* 802A2AB0 */ void init();
    /* 802A2B28 */ void mixOut(JASTrack*);
    /* 802A2B7C */ void calc();

    JAISoundChild() { init(); }

    /* 0x00 */ JAISoundParamsMove mMove;
    /* 0x50 */ JASSoundParams mParams;
};  // Size: 0x64

#endif /* JAISOUNDCHILD_H */
