#ifndef JAISOUNDHANDLES_H
#define JAISOUNDHANDLES_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JUtility/JUTAssert.h"

class JAISound;
class JAISoundID;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISoundHandle {
public:
    JAISoundHandle() {sound_ = NULL;};
    ~JAISoundHandle() { releaseSound(); }

    bool isSoundAttached() const { return sound_ != NULL; }

    JAISound* getSound() {
        JUT_ASSERT(41, sound_ != NULL);
        return sound_;
    }

    JAISound* operator->() const {
        JUT_ASSERT(58, sound_ != NULL);
        return sound_;
    }

    operator bool() const { return isSoundAttached(); }

    void releaseSound();

    JAISound* sound_;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISoundHandles {
public:
    JAISoundHandles(JAISoundHandle* handle, int handleNum) {
        handle_ = handle;
        numHandles_ = handleNum;
    };

    JAISoundHandle& operator[](int n) { return handle_[n]; }

    JAISoundHandle* getHandleSoundID(JAISoundID id);
    JAISoundHandle* getFreeHandle();

private:
    JAISoundHandle* handle_;
    int numHandles_;
};

#endif /* JAISOUNDHANDLES_H */
