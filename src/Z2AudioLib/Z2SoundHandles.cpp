#include "Z2AudioLib/Z2SoundHandles.h"
#include "JSystem/JAudio2/JAISoundInfo.h"

Z2SoundHandles::Z2SoundHandles() {
    handleNum_ = 0;
}

Z2SoundHandles::~Z2SoundHandles() {
    deleteHandlesPool();
}

void Z2SoundHandles::initHandlesPool(u8 handleNum) {
    handleNum_ = handleNum;
}

/* 802AB120-802AB200 2A5A60 00E0+00 1/1 1/1 0/0 .text deleteHandlesPool__14Z2SoundHandlesFv */
void Z2SoundHandles::deleteHandlesPool() {
    JSULink<Z2SoundHandlePool>* i;
    while (i = getFirst(), i != NULL) {
        Z2SoundHandlePool* handle = i->getObject();
        JUT_ASSERT(48, handle->getSupervisor() == this);

        remove(handle);
        delete handle;
    }

    handleNum_ = 0;
}

Z2SoundHandlePool* Z2SoundHandles::getHandleSoundID(JAISoundID soundID) {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        Z2SoundHandlePool* handle = i->getObject();
        if (handle->isSoundAttached()) {
            if ((*handle)->getID() == soundID) {
                return handle;
            }
        }
    }

    return NULL;
}

Z2SoundHandlePool* Z2SoundHandles::getHandleUserData(u32 userData) {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        Z2SoundHandlePool* handle = i->getObject();
        if (handle->isSoundAttached()) {
            if ((*handle)->getUserData() == userData) {
                return handle;
            }
        }
    }

    return NULL;
}

/* 802AB2D8-802AB3D0 2A5C18 00F8+00 0/0 3/3 0/0 .text            getFreeHandle__14Z2SoundHandlesFv
 */
Z2SoundHandlePool* Z2SoundHandles::getFreeHandle() {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        Z2SoundHandlePool* handle = i->getObject();
        if (!handle->isSoundAttached()) {
            return handle;
        }
    }

    if (getNumHandles() < handleNum_) {
        Z2SoundHandlePool* handle = new Z2SoundHandlePool();
        if (handle != NULL) {
            append(handle);
            JUT_ASSERT(113, handle->getSupervisor() == this);
            return handle;
        }

        JUT_WARN_DEVICE(118, 1, "%s", "cannot Alloc Handle !!\n");
    }

    return NULL;
}

/* 802AB3D0-802AB4A0 2A5D10 00D0+00 0/0 2/2 0/0 .text
 * getLowPrioSound__14Z2SoundHandlesF10JAISoundID               */
Z2SoundHandlePool* Z2SoundHandles::getLowPrioSound(JAISoundID soundID) {
    JAISoundInfo* soundInfo = JASGlobalInstance<JAISoundInfo>::getInstance();
    u32 low_prio = 0xFFFF;
    Z2SoundHandlePool* rethandle = NULL;

    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        Z2SoundHandlePool* handle = i->getObject();
        if (!handle->isSoundAttached()) {
            return handle;
        }

        u32 prio = soundInfo->getPriority((*handle)->getID());
        if (prio < low_prio) {
            low_prio = prio;
            rethandle = handle;
        }
    }

    #if DEBUG
    if (rethandle != NULL) {
        JUT_ASSERT(163, rethandle->getSupervisor() == this);
    }
    #endif

    if (soundInfo->getPriority(soundID) >= low_prio) {
        return rethandle;
    }

    return NULL;
}

void Z2SoundHandles::stopAllSounds(u32 fadeTime) {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        JAISoundHandle* handle = i->getObject();
        if (handle && (*handle)) {
            (*handle)->stop(fadeTime);
        }
    }
}

bool Z2SoundHandles::isActive() const {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        if (i->getObject()->isSoundAttached()) {
            return true;
        }
    }

    return false;
}

/* 802AB538-802AB64C 2A5E78 0114+00 0/0 1/1 0/0 .text
 * setPos__14Z2SoundHandlesFRCQ29JGeometry8TVec3<f>             */
void Z2SoundHandles::setPos(const JGeometry::TVec3<f32>& pos) {
    JSULink<Z2SoundHandlePool>* i;
    for (i = getFirst(); i != NULL; i = i->getNext()) {
        Z2SoundHandlePool* handle = i->getObject();
        JUT_ASSERT(209, handle);
        JUT_ASSERT(210, handle->getSupervisor() == this);

        if (handle->isSoundAttached()) {
            (*handle)->setPos(pos);
        }
        else {
            remove(handle);
            delete handle;
        }
    }
}
