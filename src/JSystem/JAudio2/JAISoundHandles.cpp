#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISoundHandles.h"

/* 802A2C98-802A2CF4 29D5D8 005C+00 0/0 1/1 0/0 .text
 * getHandleSoundID__15JAISoundHandlesF10JAISoundID             */
JAISoundHandle* JAISoundHandles::getHandleSoundID(JAISoundID id) {
    for (int i = 0; i < numHandles_; i++) {
        if (handle_[i].isSoundAttached()) {
            if (handle_[i]->getID() == id) {
                return &handle_[i];
            }
        }
    }

    return NULL;
}

/* 802A2CF4-802A2D34 29D634 0040+00 0/0 2/2 0/0 .text            getFreeHandle__15JAISoundHandlesFv
 */
JAISoundHandle* JAISoundHandles::getFreeHandle() {
    for (int i = 0; i < numHandles_; i++) {
        if (!handle_[i].isSoundAttached()) {
            return &handle_[i];
        }
    }

    return NULL;
}
