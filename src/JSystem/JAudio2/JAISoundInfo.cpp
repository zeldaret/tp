#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISoundInfo.h"

/* 802A2D34-802A2D50 29D674 001C+00 0/0 1/1 0/0 .text            __ct__12JAISoundInfoFb */
JAISoundInfo::JAISoundInfo(bool setInstance) : JASGlobalInstance<JAISoundInfo>(setInstance) {}

/* 802A2D50-802A2DB4 29D690 0064+00 1/0 2/2 0/0 .text            __dt__12JAISoundInfoFv */
JAISoundInfo::~JAISoundInfo() {
    JUT_ASSERT(14, false);
}
