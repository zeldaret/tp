#ifndef JAISOUNDINFO_H
#define JAISOUNDINFO_H

#include "dolphin/types.h"

struct JAISoundInfo {
    /* 802A2D34 */ JAISoundInfo(bool);
    /* 802A2D50 */ ~JAISoundInfo();
};

/**
 * this is supposed to be:
 * JASGlobalInstance<JAISoundInfo>::sInstance
 * sInstance__33JASGlobalInstance<12JAISoundInfo>
 */
extern JAISoundInfo* data_80450B5C;

#endif /* JAISOUNDINFO_H */
