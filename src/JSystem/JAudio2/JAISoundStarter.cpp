#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISoundStarter.h"
#include "JSystem/JAudio2/JAISoundHandles.h"

/* 802A2F6C-802A2F88 29D8AC 001C+00 0/0 1/1 0/0 .text            __ct__15JAISoundStarterFb */
JAISoundStarter::JAISoundStarter(bool setInstance) :
    JASGlobalInstance<JAISoundStarter>(setInstance) {}

/* 802A2F88-802A2FEC 29D8C8 0064+00 1/0 7/7 0/0 .text            __dt__15JAISoundStarterFv */
JAISoundStarter::~JAISoundStarter() {}

/* 802A2FEC-802A30D4 29D92C 00E8+00 0/0 4/4 0/0 .text
 * startLevelSound__15JAISoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
bool JAISoundStarter::startLevelSound(JAISoundID id, JAISoundHandle* handlePtr, const JGeometry::TVec3<f32>* posPtr) {
    JUT_ASSERT(20, handlePtr);
    if (*handlePtr) {
        if ((*handlePtr)->getID() == id) {
            (*handlePtr)->updateLifeTime(1);
            if (posPtr != NULL) {
                (*handlePtr)->setPos(*posPtr);
            }
            return true;
        }
    }

    bool rt = startSound(id, handlePtr, posPtr);
    if (rt && *handlePtr) {
        (*handlePtr)->setLifeTime(1, false);
    }
    return rt;
}
